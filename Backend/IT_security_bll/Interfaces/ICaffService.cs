using IT_security_bll.Dto.Caff;
using IT_security_bll.Dto.Comment;
using IT_security_bll.Helper.Pagination;
using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace IT_security_bll.Interfaces
{
    public interface ICaffService
    {
        public Task<CaffDto> Upload(IFormFile caffFile);

        public Task<DownloadInfoDto> Download(int caffId);

        public Task<PageResponse<CaffDto>> Search(PageRequest pageRequest, CaffFilter caffFilter);

        public Task<CaffDto> Get(int caffId);

        public Task Delete(int caffId);

        public Task<PageResponse<CommentDto>> GetComments(int caffId, PageRequest pageRequest);

        public Task<CommentDto> AddComment(int caffId, AddCommentDto comment);

        public Task DeleteComment(int caffId, int commentId);
    }
}
