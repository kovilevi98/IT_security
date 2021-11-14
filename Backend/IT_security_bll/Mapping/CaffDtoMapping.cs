using AutoMapper;
using IT_security_bll.Dto.Caff;
using IT_security_bll.Interfaces;
using IT_security_dal.Models;

namespace IT_security_bll.Mapping
{
    public class CaffDtoMapping : IMappingAction<Caff, CaffDto>
    {
        private readonly IRequestContext _requestContext;

        public CaffDtoMapping(IRequestContext requestContext)
        {
            _requestContext = requestContext;
        }

        public void Process(Caff source, CaffDto destination, ResolutionContext context)
        {
            destination.GifUrl = $"{_requestContext.AppBaseUrl}/{source.GifUrl}";
            destination.CaffUrl = $"{_requestContext.AppBaseUrl}/api/caff/{source.CaffId}/download";
            destination.UploadedBy = source.UploadedByUser.UserName;
        }
    }
}
