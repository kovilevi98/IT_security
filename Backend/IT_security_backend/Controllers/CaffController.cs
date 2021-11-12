using IT_security_bll.Dto.Caff;
using IT_security_bll.Dto.Comment;
using IT_security_bll.Helper.Pagination;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CaffController : BaseController
    {
        [HttpPost("upload")]
        [RequestSizeLimit(4_000_000)]
        public async Task<CaffDto> Upload([FromForm] IFormFile caffFile)
        {
            throw new NotImplementedException();
        }

        [HttpGet]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<PageResponse<CaffDto>> Search([FromQuery] PageRequest pageRequest, [FromQuery] CaffFilter caffFilter)
        {
            throw new NotImplementedException();
        }

        [HttpGet("{caffId}")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<CaffDto> Get([FromRoute] int caffId)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{caffId}")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> Delete([FromRoute] int caffId)
        {
            throw new NotImplementedException();
        }

        [HttpGet("{caffId}/comment")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<PageResponse<CommentDto>> GetComments([FromRoute] int caffId, [FromQuery] PageRequest pageRequest)
        {
            throw new NotImplementedException();
        }

        [HttpPost("{caffId}/comment")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public async Task<CommentDto> AddComment([FromRoute] int caffId, [FromBody] AddCommentDto comment)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("{caffId}/comment/{commentId}/delete")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<IActionResult> DeleteComment([FromRoute] int caffId, [FromRoute] int commentId)
        {
            throw new NotImplementedException();
        }
    }
}
