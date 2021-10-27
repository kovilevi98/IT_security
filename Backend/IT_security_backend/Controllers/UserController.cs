using IT_security_bll.Dto.User;
using IT_security_bll.Helper.Pagination;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : BaseController
    {
        [HttpGet("{userId}")]
        public async Task<UserDto> GetUser([FromRoute] int userId)
        {
            throw new NotImplementedException();
        }

        [HttpGet]
        public async Task<PageResponse<UserDto>> SearchUsers([FromQuery] PageRequest pageRequest)
        {
            throw new NotImplementedException();
        }
    }
}
