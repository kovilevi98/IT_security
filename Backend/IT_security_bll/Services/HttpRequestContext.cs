using IT_security_bll.Interfaces;
using IT_security_common.Enums;
using Microsoft.AspNetCore.Http;
using System;
using System.Linq;
using System.Security.Claims;

namespace IT_security_bll.Services
{
    public class HttpRequestContext : IRequestContext
    {
        private readonly IHttpContextAccessor _httpContextAccessor;

        public string ApplicationUserId { get; private set; }

        public string UserEmail { get; private set; }

        public UserTypeEnum UserType { get; set; }

        public string IpAddress => _httpContextAccessor.HttpContext.Connection.RemoteIpAddress.ToString();

        public string AppBaseUrl => $"{_httpContextAccessor.HttpContext.Request.Scheme}://{_httpContextAccessor.HttpContext.Request.Host}{_httpContextAccessor.HttpContext.Request.PathBase}";

        public HttpRequestContext(IHttpContextAccessor httpContextAccessor)
        {
            _httpContextAccessor = httpContextAccessor;

            if (_httpContextAccessor.HttpContext.User.Identity.IsAuthenticated)
            {
                ApplicationUserId = _httpContextAccessor.HttpContext.User.Claims.First(c => c.Type == ClaimTypes.NameIdentifier).Value;
                UserEmail = _httpContextAccessor.HttpContext.User.Claims.First(c => c.Type == ClaimTypes.Email).Value;
                var roleClaim = _httpContextAccessor.HttpContext.User.Claims.First(c => c.Type == ClaimTypes.Role);
                UserType = Enum.Parse<UserTypeEnum>(roleClaim.Value);
            }
        }
    }
}
