using IT_security_bll.Dto.Auth;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    public class AuthController : BaseController
    {
        [HttpPost("login/admin")]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<LoginResponseDto> AdminLogin(SignInDto signInDto)
        {
            throw new NotImplementedException();
        }

        [HttpPost("login")]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<LoginResponseDto> Login(SignInDto signInDto)
        {
            throw new NotImplementedException();
        }

        [HttpPost("register")]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<LoginResponseDto> Register(RegistrationDto signInDto)
        {
            throw new NotImplementedException();
        }
    }
}
