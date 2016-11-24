using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FullertonBO
{
   public class Institute
    {
        public int InstituteId { get; set; }
        public string InstituteName { get; set; }
        public string ICName { get; set; }
        public string Email { get; set; }
        public string MobileNo { get; set; }
        public string Password { get; set; }
        
       //Event Properties
        public int EventId { get; set; }
        public string EventName { get; set; }
        public string EventDate { get; set; }
    }
}
