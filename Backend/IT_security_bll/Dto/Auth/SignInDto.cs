using System.ComponentModel.DataAnnotations;

namespace IT_security_bll.Dto.Auth
{
    public class SignInDto
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
    }
}
