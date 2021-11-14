using System.ComponentModel.DataAnnotations;

namespace IT_security_bll.Dto.Comment
{
    public class AddCommentDto
    {
        [Required]
        [StringLength(200, MinimumLength = 10)]
        public string CommentText { get; set; }
    }
}
