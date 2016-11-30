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
        public string DOB { get; set; }
        public string Institute { get; set; }
        public int LoginTypeID { get; set; }


        public string Address { get; set; }
        public int CourseId { get; set; }
        public int CourserType { get; set; }
        public string Hometown { get; set; }
        public byte[] Image { get; set; }
        public int InstituteID { get; set; }
        public string MobileNo { get; set; }
        public string RollNo { get; set; }
        public int SemisterId { get; set; }
        public int TeamId { get; set; }
        public string TeamName { get; set; }
        public string UserName { get; set; }
        public string OtherCourse { get; set; }

        public string CourseName { get; set; }
        public bool PartialTc { get; set; }
        public int NewTcId { get; set; }

        public string Comments { get; set; }

        public int RoleID { get; set; }

        public enum RoleName
        {
            TC = 1,
            TM = 2,
            IC = 3,
            Admin = 4
        }
    }

    public class Team
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }
}
