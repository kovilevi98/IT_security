using IT_security_bll.Dto.User;
using IT_security_bll.Helper.Pagination;
using Microsoft.AspNetCore.Http;
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
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<UserDto> GetUser([FromRoute] int userId)
        {
            throw new NotImplementedException();
        }

        [HttpPut("{userId}")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<UserDto> UpdateUser([FromRoute] int userId, [FromBody] UpdateUserDto updateUser)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{userId}")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> DeleteUser([FromRoute] int userId)
        {
            throw new NotImplementedException();
        }

        [HttpGet]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<PageResponse<UserDto>> SearchUsers([FromQuery] PageRequest pageRequest, [FromQuery] UserFilter userFilter)
        {
            throw new NotImplementedException();
        }
    }
}
