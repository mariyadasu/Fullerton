using Fullerton.Utility;
using FullertonBO;
using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Fullerton
{
    /// <summary>
    /// Summary description for FullertonService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class FullertonService : System.Web.Services.WebService
    {
        private readonly RegisterDAL _regDal = new RegisterDAL();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string GetTeamsByInstitute(int id)
        {
            var teams = _regDal.GetTeamsByInstitute(id);

            return GenerateOpetions(teams);

        }

        private string GenerateOpetions(List<Team> teams)
        {
            string result = "";

            if (teams.Count > 0)
                result = "<option value='0'>SELECT</option>";

            teams.ForEach(x =>
            {

                result = string.Concat(result + "<option value=" + x.Id + ">" + x.Name + "</option>");
            });

            if (!string.IsNullOrEmpty(result))
                result = result + "<option value='1000'>Other</option>";

            return result;
        }
        [WebMethod]
        public bool IsValidUser(string email, string password, string role)
        {
            UserBo objbo = new UserBo();
            objbo.EmailId = email.Trim();
            objbo.Password = password.Trim();
            objbo.LoginTypeID = Convert.ToInt32(role);
            DataSet dsLogin = _regDal.CheckLogin(objbo);

            if (dsLogin.Tables[0].Rows.Count > 0)
                return true;

            return false;
        }

        [WebMethod]
        public bool CheckEmailExist(string email)
        {
            DataSet dsLogin = _regDal.GetStudentbyEmail(email);

            if (dsLogin.Tables[0].Rows.Count > 0)
                return true;

            return false;
        }

        [WebMethod]
        public bool SaveContactUs(string CUserName, string CEmail, string CCommentsss)
        {
            UserBo objbo = new UserBo();
            objbo.UserName = CUserName.Trim();
            objbo.EmailId = CEmail.Trim();
            objbo.Comments = CCommentsss.Trim();
            bool flag = _regDal.SaveContactUs(objbo);
            return flag;
        }

        [WebMethod]
        public string SendOTP(string emailMobile, string isEmail, string existOTP)
        {
            if(string.IsNullOrEmpty(existOTP))
            {
                DataSet ds = _regDal.GetStudentbyEmail(emailMobile);
                if (ds.Tables[0].Rows.Count < 1)
                    return string.Empty;
            }
            
            string OTP =  string.IsNullOrEmpty(existOTP)? RandomOTP(): existOTP;

            if (string.IsNullOrEmpty(isEmail))
                SendMails.SendAnEmail(emailMobile, SendMails.FORGOTPASSWORD_SUB_OTP,
                    string.Format(SendMails.FORGOTPASSWORD_BODY_OTP, OTP));

            return OTP;

        }

        private string RandomOTP()
        {
            char[] charArr = "0123456789".ToCharArray();
            string strrandom = string.Empty;
            Random objran = new Random();
            int noofcharacters = Convert.ToInt32(5);
            for (int i = 0; i < noofcharacters; i++)
            {
                int pos = objran.Next(1, charArr.Length);
                if (!strrandom.Contains(charArr.GetValue(pos).ToString()))
                    strrandom += charArr.GetValue(pos);
                else
                    i--;
            }

            return strrandom;
        }
    }
}
