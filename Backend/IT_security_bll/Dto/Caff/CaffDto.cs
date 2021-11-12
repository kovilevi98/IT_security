using System;

namespace IT_security_bll.Dto.Caff
{
    public class CaffDto
    {
        public int CaffId { get; set; }

        public string CaffName { get; set; }

        public string GifUrl { get; set; }

        public string CaffUrl { get; set; }

        public DateTime UploadedDate { get; set; }

        public string UploadedBy { get; set; }
    }
}
