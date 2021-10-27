using System.ComponentModel.DataAnnotations;

namespace IT_security_bll.Dto.Auth
{
    public class RegistrationDto
    {
        [Required]
        [StringLength(50)]
        public string LastName { get; set; }
        [Required]
        [StringLength(50)]
        public string FirstName { get; set; }
        [Required]
        [EmailAddress]
        [StringLength(254)]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
        [Required]
        [Compare("Password", ErrorMessage = "Password and Confirmation Password must match.")]
        public string PasswordAgain { get; set; }
    }
}
