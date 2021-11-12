using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_common.Exceptions
{
    public class ValidationException : BusinessException
    {
        public ValidationException(
            List<ValidationError> errors,
            string message = null,
            string title = null,
            Uri type = null,
            Exception innerException = null)
            : base(message, innerException, title, type)
        {
            Errors = errors;
        }

        public ValidationException(
            ValidationError error,
            string message = null,
            string title = null,
            Uri type = null,
            Exception innerException = null)
            : this(new List<ValidationError> { error }, message, title, type, innerException)
        {
        }

        public ValidationException(
            string key,
            string error,
            string message = null,
            string title = null,
            Uri type = null,
            Exception innerException = null)
            : this(new ValidationError(key, error), message, title, type, innerException)
        {
        }

        public List<ValidationError> Errors { get; }
    }
}
