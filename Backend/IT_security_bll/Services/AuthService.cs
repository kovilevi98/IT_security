using IT_security_bll.Dto.Auth;
using IT_security_bll.Interfaces;
using IT_security_common.Enums;
using IT_security_common.Exceptions;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System;
using System.Threading.Tasks;

namespace IT_security_bll.Services
{
    public class AuthService : IAuthService
    {
        private readonly ITokenService _tokenService;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly ITSecurityDbContext _dbContext;

        public AuthService(
            ITokenService tokenService,
            UserManager<ApplicationUser> userManager,
            SignInManager<ApplicationUser> signInManager,
            RoleManager<IdentityRole> roleManager,
            ITSecurityDbContext dbContext)
        {
            _tokenService = tokenService;
            _userManager = userManager;
            _signInManager = signInManager;
            _roleManager = roleManager;
            _dbContext = dbContext;
        }

        public async Task<LoginResponseDto> AdminLogin(SignInDto signInDto)
        {
            var user = await GetApplicationUserByEmail(signInDto.Email)
                 ?? throw new BusinessException("Invalid credentials");

            var roles = await _userManager.GetRolesAsync(user);
            if(!roles.Contains(UserTypeEnum.Admin.ToString()))
                throw new BusinessException("Invalid credentials");

            if (await CheckSignInCredentials(user, signInDto.Password))
            {
                return await SignInUser(user);
            }
            throw new BusinessException("Invalid credentials");
        }

        public async Task<LoginResponseDto> Login(SignInDto signInDto)
        {
            var user = await GetApplicationUserByEmail(signInDto.Email)
                ?? throw new BusinessException("Invalid credentials");

            var roles = await _userManager.GetRolesAsync(user);
            if (!roles.Contains(UserTypeEnum.User.ToString()))
                throw new BusinessException("Invalid credentials");

            if (await CheckSignInCredentials(user, signInDto.Password))
            {
                return await SignInUser(user);
            }
            throw new BusinessException("Invalid credentials");
        }

        public async Task<LoginResponseDto> Register(RegistrationDto registrationDto)
        {
            var user = new ApplicationUser
            {
                Email = registrationDto.Email,
                UserName = registrationDto.Email,
                FirstName = registrationDto.FirstName,
                LastName = registrationDto.LastName,
                EmailConfirmed = true,
            };

            await _userManager.CreateAsync(user, registrationDto.Password);
            await _userManager.AddToRoleAsync(user, UserTypeEnum.User.ToString());
            await _dbContext.SaveChangesAsync();

            return await SignInUser(user);
        }

        private async Task<LoginResponseDto> SignInUser(ApplicationUser applicationUser)
        {
            var accessToken = await _tokenService.CreateAccessToken(applicationUser);
            // var refreshToken = await _tokenService.CreateRefreshToken(applicationUser);
            if (accessToken is string)
            {
                return new LoginResponseDto
                {
                    UserId = applicationUser.Id,
                    Token = accessToken,
                    RefreshToken = "TODO"
                };
            }
            throw new BusinessException("Unexpected erro while creating token");
        }

        private async Task<ApplicationUser> GetApplicationUserByEmail(string email)
            => await _dbContext.Users.FirstOrDefaultAsync(a => a.Email == email);

        private async Task<bool> CheckSignInCredentials(ApplicationUser user, string password)
        {
            var result = await _signInManager.CheckPasswordSignInAsync(user, password, false);
            return result.Succeeded;
        }
    }
}
