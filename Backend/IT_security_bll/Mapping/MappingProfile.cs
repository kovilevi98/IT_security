using AutoMapper;
using IT_security_bll.Dto.Caff;
using IT_security_bll.Dto.Comment;
using IT_security_dal.Models;

namespace IT_security_bll.Mapping
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<Caff, CaffDto>().AfterMap<CaffDtoMapping>();

            CreateMap<Comment, CommentDto>();
        }
    }
}
