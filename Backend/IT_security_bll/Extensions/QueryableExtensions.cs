using IT_security_bll.Helper.Pagination;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace IT_security_bll.Extensions
{
    public static class QueryableExtensions
    {
        public static IQueryable<TSource> Where<TSource>(this IQueryable<TSource> source, bool condition, Expression<Func<TSource, bool>> conditionTruePredicate, Expression<Func<TSource, bool>> conditionFalsePredicate = null)
        {
            if (condition)
            {
                return source.Where(conditionTruePredicate);
            }
            else if (conditionFalsePredicate != null)
            {
                return source.Where(conditionFalsePredicate);
            }
            else
            {
                return source;
            }
        }

        public static async Task<PageResponse<TSource>> ToPagedListAsync<TSource>(
            this IQueryable<TSource> source, PageRequest pageRequest, CancellationToken cancellationToken = default)
        {
            var totalCount = await source.CountAsync(cancellationToken);

            return new PageResponse<TSource>(
                await source.Skip((pageRequest.Page-1) * pageRequest.PageSize)
                            .Take(pageRequest.PageSize)
                            .ToListAsync(cancellationToken), pageRequest.Page, totalCount);
        }
    }
}
