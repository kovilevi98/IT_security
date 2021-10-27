﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_common.Exceptions
{
    public class ForbiddenException : BusinessException
    {
        public ForbiddenException(string message, string title = null, Uri type = null)
            : base(message, title, type)
        {
        }
    }
}
