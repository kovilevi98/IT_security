using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IT_security_bll.Dto.Caff
{
    public class UpdateCaffDto
    {
        [Required]
        [StringLength(200)]
        public string CaffName { get; set; }
    }
}
