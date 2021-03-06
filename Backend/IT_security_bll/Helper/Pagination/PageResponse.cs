using System;
using System.Collections.Generic;

namespace IT_security_bll.Helper.Pagination
{
    public class PageResponse<T>
    {
        public PageResponse(List<T> results, int currentPage, int totalCount)
        {
            Results = results;
            CurrentPage = currentPage;
            TotalCount = totalCount;
        }

        public List<T> Results { get; set; }

        public int CurrentPage { get; set; }

        public int TotalCount { get; set; }
    }
}
