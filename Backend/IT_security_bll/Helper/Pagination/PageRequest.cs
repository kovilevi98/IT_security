using IT_security_common.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Helper.Pagination
{
    public class PageRequest
    {
        public int PageSize { get; set; } = 50;

        public int Page { get; set; }

        public string OrderBy { get; set; }

        public OrderDirection OrderDirection { get; set; } = OrderDirection.Ascending;
    }
}
