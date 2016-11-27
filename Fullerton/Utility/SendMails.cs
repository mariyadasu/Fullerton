using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

namespace Fullerton.Utility
{
    public static class SendMails
    {
        public static readonly CommonDAL _comDal = new CommonDAL();

        public static string REGISTRATION_SUB_APPLICANT = ":: New User Registration ::";
        public static string REGISTRATION_BODY_APPLICANT = "Dear {0} {1}, \n\n Thanks for the registration your account will be activated in 24 hours.";

        public static string REGISTRATION_SUB_IC = ":: New User Registration ::";
        public static string REGISTRATION_BODY_IC = "Dear {0}, \n\n {1} {2} has registered your institute please activate.";
        public static void SendAnEmail(string toEmail, string subject, string body)
        {
            try
            {
                using (MailMessage mm = new MailMessage("ganapathi.power@gmail.com", toEmail))
                {
                    mm.Subject = subject;
                    mm.Body = body;
                    mm.IsBodyHtml = false;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;

                    NetworkCredential NetworkCred = new NetworkCredential("ganapathi.power@gmail.com", "ganasahithi");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);

                    string query = string.Format("INSERT INTO Trans_Emails(Subject,Body,ToEmail,FromEmail,Password,IsSent) VALUES('{0},'{1}','{2}','{3}','{4}','{5}'", subject, body, toEmail, "ganapathi.power@gmail.com", "ganasahithi", "1");
                    _comDal.SaveEmail(query);
                }
            }
            catch (Exception ex)
            {
                string query = string.Format("INSERT INTO Trans_Emails(Subject,Body,ToEmail,FromEmail,Password,IsSent) VALUES('{0},'{1}','{2}','{3}','{4}','{5}'",subject,body,toEmail, "ganapathi.power@gmail.com", "ganasahithi", "0");
                _comDal.SaveEmail(query);
            }
        }
    }
}