using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace IT_security_dal.Models
{
    public class Caff
    {
        public int CaffId { get; set; }

        [Required]
        [StringLength(200)]
        public string CaffName { get; set; }

        [Required]
        [StringLength(50)]
        public string GeneratedName { get; set; }

        [Required]
        [StringLength(500)]
        [Url]
        public string GifUrl { get; set; }

        [Required]
        [StringLength(500)]
        [Url]
        public string CaffUrl { get; set; }

        [Required]
        public DateTime UploadedDate { get; set; }

        public string UploadedByUserId { get; set; }
        public ApplicationUser UploadedByUser { get; set; }

        public ICollection<Comment> Comments { get; set; }
    }
}
