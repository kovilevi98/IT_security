using IT_security_common.Enums;
using System;
using System.ComponentModel.DataAnnotations;

namespace IT_security_bll.Helper.Pagination
{
    public class PageRequest
    {
        [Range(1, 50)]
        public int PageSize { get; set; } = 10;

        [Range(1, int.MaxValue)]
        public int Page { get; set; } = 1;

        public string OrderBy { get; set; }

        public OrderDirection OrderDirection { get; set; } = OrderDirection.Ascending;
    }
}
