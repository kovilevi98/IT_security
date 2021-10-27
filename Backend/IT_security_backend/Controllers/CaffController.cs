using IT_security_bll.Dto.Caff;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace IT_security_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CaffController : ControllerBase
    {
        [HttpPost("upload")]
        [RequestSizeLimit(4_000_000)]
        public async Task<CaffUploadResponseDto> Upload([FromForm] IFormFile caffFile)
        {
            throw new NotImplementedException();
        }
    }
}
