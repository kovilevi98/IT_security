using System.ComponentModel.DataAnnotations;

namespace IT_security_dal.Models
{
    public class Comment
    {
        public int CommentId { get; set; }

        [Required]
        [StringLength(200, MinimumLength = 10)]
        public string CommentText { get; set; }

        public int CaffId { get; set; }
        public Caff Caff { get; set; }

        public string CommentedByUserId { get; set; }
        public ApplicationUser CommentedByUser { get; set; }
    }
}
