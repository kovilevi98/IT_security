using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Dto.Comment
{
    public class AddCommentDto
    {
        [Required]
        [StringLength(200, MinimumLength = 10)]
        public string CommentText { get; set; }
    }
}
