using IT_security_bll.Dto.Auth;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    public class AuthController : BaseController
    {
        [HttpPost("login/admin")]
        public async Task<LoginResponseDto> AdminLogin(SignInDto signInDto)
        {
            throw new NotImplementedException();
        }

        [HttpPost("login")]
        public async Task<ActionResult<LoginResponseDto>> Login(SignInDto signInDto)
        {
            throw new NotImplementedException();
        }

        [HttpPost("register")]
        public async Task<ActionResult<LoginResponseDto>> Register(RegistrationDto signInDto)
        {
            throw new NotImplementedException();
        }
    }
}
