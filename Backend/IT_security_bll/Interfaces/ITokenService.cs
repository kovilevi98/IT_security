using IT_security_dal.Models;
using System.Threading.Tasks;

namespace IT_security_bll.Interfaces
{
    public interface ITokenService
    {
        public Task<string> CreateAccessToken(ApplicationUser user);
    }
}
