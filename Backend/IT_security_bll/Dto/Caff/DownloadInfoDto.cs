﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Dto.Caff
{
    public class DownloadInfoDto
    {
        public string FileName { get; set; }

        public byte[] FileContent { get; set; }
    }
}
