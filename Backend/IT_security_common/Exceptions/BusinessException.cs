using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_common.Exceptions
{
    public class BusinessException : Exception
    {
        public BusinessException(
            string message,
            string title = null,
            Uri type = null)
            : this(message, null, title, type)
        {
        }

        public BusinessException(
            string message,
            Exception innerException,
            string title = null,
            Uri type = null)
            : base(message, innerException)
        {
            Title = title;
            Type = type;
        }

        public string Title { get; }

        public Uri Type { get; }
    }
}
