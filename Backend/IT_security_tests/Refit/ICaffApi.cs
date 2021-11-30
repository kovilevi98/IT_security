using IT_security_bll.Dto.Auth;
using IT_security_bll.Dto.Caff;
using Refit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_tests.Refit
{
    public interface ICaffApi
    {
        [Multipart]
        [Post("/api/caff/upload/")]
        Task<ApiResponse<CaffDto>> Upload([AliasAs("caffFile")] ByteArrayPart uploadCaffFile);


        [Post("/api/auth/login")]
        public Task<ApiResponse<LoginResponseDto>> Login([Body] SignInDto signInDto);
    }
}
