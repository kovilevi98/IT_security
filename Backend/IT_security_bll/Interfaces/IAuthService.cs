using IT_security_bll.Dto.Auth;
using System.Threading.Tasks;

namespace IT_security_bll.Interfaces
{
    public interface IAuthService
    {
        public Task<LoginResponseDto> AdminLogin(SignInDto signInDto);

        public Task<LoginResponseDto> Login(SignInDto signInDto);

        public Task<LoginResponseDto> Register(RegistrationDto signInDto);
    }
}
