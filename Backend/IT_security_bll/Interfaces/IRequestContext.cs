using IT_security_common.Enums;

namespace IT_security_bll.Interfaces
{
    public interface IRequestContext
    {
        public string ApplicationUserId { get; }

        public string UserEmail { get; }

        public UserTypeEnum UserType { get; set; }

        public string AppBaseUrl { get; }

        public string IpAddress { get; }
    }
}
