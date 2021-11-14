using IT_security_bll.Dto.Auth;
using IT_security_bll.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    public class AuthController : BaseController
    {
        private readonly IAuthService _authService;

        public AuthController(IAuthService authService)
        {
            _authService = authService;
        }

        [HttpPost("login/admin")]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public Task<LoginResponseDto> AdminLogin(SignInDto signInDto)
            => _authService.AdminLogin(signInDto);

        [HttpPost("login")]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public Task<LoginResponseDto> Login(SignInDto signInDto)
            => _authService.Login(signInDto);

        [HttpPost("register")]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public Task<LoginResponseDto> Register(RegistrationDto signInDto)
            => _authService.Register(signInDto);
    }
}
