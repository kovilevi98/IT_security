using IT_security_bll.Interfaces;
using IT_security_dal.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Services
{
    public class TokenService : ITokenService
    {
        private readonly ITSecurityDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly IConfiguration _configuration;

        public TokenService(
            ITSecurityDbContext context,
            UserManager<ApplicationUser> userManager,
            RoleManager<IdentityRole> roleManager,
            IConfiguration configuration)
        {
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
            _configuration = configuration;
        }


        public async Task<string> CreateAccessToken(ApplicationUser user)
        {
            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.NameIdentifier, user.Id),
                new Claim(ClaimTypes.Email, user.Email)
            };

            var userRoles = await _userManager.GetRolesAsync(user);
            foreach (var userRole in userRoles)
            {
                claims.Add(new Claim(ClaimTypes.Role, userRole));
                var role = await _roleManager.FindByNameAsync(userRole);
                if (role != null)
                {
                    var roleClaims = await _roleManager.GetClaimsAsync(role);
                    foreach (Claim roleClaim in roleClaims)
                    {
                        claims.Add(roleClaim);
                    }
                }
            }

            var secret = _configuration.GetSection("TokenOptions:Secret").Value;
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secret));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);

            var expirationString = _configuration.GetSection("TokenOptions:ExpirationSeconds").Value;
            var expiration = int.Parse(expirationString);
            var expires = DateTime.Now.AddSeconds(expiration);
            var notBefore = DateTime.Now;

            var token = new JwtSecurityToken(null, null, claims, notBefore, expires, creds);
            var tokenHandler = new JwtSecurityTokenHandler();
            return tokenHandler.WriteToken(token);
        }

        //public async Task<string> CreateRefreshToken(ApplicationUser user, int size = 32)
        //{
        //    var randomNumber = new byte[size];
        //    using (var rng = RandomNumberGenerator.Create())
        //    {
        //        rng.GetBytes(randomNumber);
        //        var refreshTokenString = Convert.ToBase64String(randomNumber);

        //        var refreshToken = new RefreshToken
        //        {
        //            ApplicationUserId = user.Id,
        //            Token = refreshTokenString,
        //            ExpiryDate = DateTime.Now.AddDays(30)
        //        };
        //        user.RefreshTokens.Add(refreshToken);
        //        if (await _context.SaveChangesAsync() > 0)
        //        {
        //            return refreshTokenString;
        //        }
        //        return null;
        //    }
        //}

        //public async Task<bool> ExchangeRefreshToken(ApplicationUser user, string refreshToken)
        //{
        //    var refreshTokenInDb = await _context.RefreshTokens
        //        .FirstOrDefaultAsync(r => r.Token == refreshToken && r.ExpiryDate > DateTime.Now);
        //    if (refreshTokenInDb is RefreshToken)
        //    {
        //        _context.RefreshTokens.Remove(refreshTokenInDb);
        //        user.LastSignInDate = DateTime.Now;
        //        await _context.SaveChangesAsync();
        //        return true;
        //    }
        //    return false;
        //}
    }
}
