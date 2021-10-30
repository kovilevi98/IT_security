using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Dto.Comment
{
    public class CommentDto
    {
        public int CommentId { get; set; }

        public string CommentText { get; set; }

        public string CommentedBy { get; set; }

        public int CommentedByUserId { get; set; }
    }
}
