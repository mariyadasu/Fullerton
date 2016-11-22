using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FullertonBO
{
    public class UserBo
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailId { get; set; }
        public string UserId { get; set; }
        public string Password { get; set; }
        public string CnfPassword { get; set; }
        public string DOB { get; set; }
        public string Institute { get; set; }
        public int LoginTypeID { get; set; }

       
        public enum RoleName
        {
            TC = 1,
            TM = 2,
            IC = 3,
            Admin = 4
        }
    }

   
}
