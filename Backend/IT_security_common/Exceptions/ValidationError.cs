using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_common.Exceptions
{
    public class ValidationError
    {
        public ValidationError(string key, string error)
        {
            Key = key;
            Error = error;
        }

        public string Key { get; }

        public string Error { get; }
    }
}
