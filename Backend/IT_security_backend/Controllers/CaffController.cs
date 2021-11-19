using IT_security_bll.Dto.Caff;
using IT_security_bll.Dto.Comment;
using IT_security_bll.Helper.Pagination;
using IT_security_bll.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize]
    public class CaffController : BaseController
    {
        private readonly ICaffService _caffService;

        public CaffController(ICaffService caffService)
        {
            _caffService = caffService;
        }

        [HttpPost("upload")]
        [RequestSizeLimit(10_000_000)]
        public Task<CaffDto> Upload([FromForm] IFormFile caffFile)
            => _caffService.Upload(caffFile);

        [HttpGet]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public Task<PageResponse<CaffDto>> Search([FromQuery] PageRequest pageRequest, [FromQuery] CaffFilter caffFilter)
            => _caffService.Search(pageRequest, caffFilter);

        [HttpGet("{caffId}")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public Task<CaffDto> Get([FromRoute] int caffId)
            => _caffService.Get(caffId);

        [HttpPut("{caffId}")]
        [Authorize(Roles = "Admin")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public Task<CaffDto> Update([FromRoute] int caffId, [FromBody] UpdateCaffDto updateCaffDto)
            => _caffService.Update(caffId, updateCaffDto);

        [HttpGet("{caffId}/download")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public async Task<FileContentResult> Download([FromRoute] int caffId)
        {
            var downloadInfo = await _caffService.Download(caffId);

            return new FileContentResult(downloadInfo.FileContent, "application/octet-stream")
            {
                FileDownloadName = downloadInfo.FileName
            };
        }

        [HttpDelete("{caffId}")]
        [Authorize(Roles ="Admin")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public Task Delete([FromRoute] int caffId)
            => _caffService.Delete(caffId);

        [HttpGet("{caffId}/comment")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public Task<PageResponse<CommentDto>> GetComments([FromRoute] int caffId, [FromQuery] PageRequest pageRequest)
            => _caffService.GetComments(caffId, pageRequest);

        [HttpPost("{caffId}/comment")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        [ProducesResponseType(typeof(ValidationProblemDetails), StatusCodes.Status400BadRequest)]
        public Task<CommentDto> AddComment([FromRoute] int caffId, [FromBody] AddCommentDto comment)
            => _caffService.AddComment(caffId, comment);

        [HttpDelete("{caffId}/comment/{commentId}/delete")]
        [Authorize(Roles = "Admin")]
        [ProducesResponseType(typeof(ProblemDetails), StatusCodes.Status404NotFound)]
        public Task DeleteComment([FromRoute] int caffId, [FromRoute] int commentId)
            => _caffService.DeleteComment(caffId, commentId);
    }
}
