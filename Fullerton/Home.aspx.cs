using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using FullertonDAL;
using FullertonBO;
using System.Net.Mail;
using System.Web.Services;
namespace Fullerton
{
    public partial class Home : System.Web.UI.Page
    {
        RegisterDAL objreg = new RegisterDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindLoginTypes();
                BindInstitute();
                Session.Abandon();
                Session.Clear();
            }
        }
        private void BindInstitute()
        {
            try
            {
                DataSet dsinstitute = objreg.BidInstitute();
                ddlinstitute.DataSource = dsinstitute.Tables[0];
                ddlinstitute.DataValueField = "InstituteID";
                ddlinstitute.DataTextField = "InstituteName";
                ddlinstitute.DataBind();
                ddlinstitute.Items.Insert(0, new ListItem("Select Institute", ""));

            }
            catch (Exception)
            {

                throw;
            }
        }
        private void BindLoginTypes()
        {
            try
            {
                DataSet dslogins = objreg.BidLoginTypes();
                ddlLoginType.DataSource = dslogins.Tables[0];
                ddlLoginType.DataValueField = "RoleId";
                ddlLoginType.DataTextField = "NAME";
                ddlLoginType.DataBind();
                ddlLoginType.Items.Insert(0, new ListItem("Select Login", "0"));

            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                UserBo objBo = new UserBo();
                objBo.UserId = txtSignupUserId.Text.Trim();
                objBo.Password = txtSignupPwd.Text.Trim();
                //objBo.CnfPassword = txtConfirmPassword.Text.Trim();
                objBo.FirstName = txtfname.Text.Trim();
                objBo.LastName = txtlname.Text.Trim();
                objBo.DOB = txtdob.Text.Trim();
                objBo.Institute = ddlinstitute.SelectedValue;
                objBo.EmailId = txtEmailID.Text;
                int Result = objreg.InsertStudentDet(objBo);
                if (Result > 0)
                {
                    lblMessage.Text = "Registration Successfully Completed";
                    clearControls(pnlReg);
                }
                else
                    lblMessage.Text = "Error occur while registration";
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            UserBo objbo = new UserBo();
            objbo.EmailId = txtuserid.Text.Trim();
            objbo.Password = txtpassword.Text.Trim();
            objbo.LoginTypeID =Convert.ToInt32( ddlLoginType.SelectedValue);
            DataSet dsLogin = objreg.CheckLogin(objbo);
            if (dsLogin.Tables[0].Rows.Count > 0)
            {
                Session["UserId"] = dsLogin.Tables[0].Rows[0]["UserId"].ToString();
                Session["RoleName"] = dsLogin.Tables[0].Rows[0]["RoleName"].ToString();
                Session["Name"] = dsLogin.Tables[0].Rows[0]["Name"].ToString();
                Session["TeamID"] = dsLogin.Tables[0].Rows[0]["teamId"].ToString();
                UserBo.RoleName role = (UserBo.RoleName)Enum.Parse(typeof(UserBo.RoleName), dsLogin.Tables[0].Rows[0]["RoleName"].ToString());
                switch (role)
                {
                    case UserBo.RoleName.Admin:
                        Response.Redirect("~/DashBoard/Pages/Admin/AdminDashBoard.aspx");
                        break;
                    case UserBo.RoleName.IC:
                        Response.Redirect("~/DashBoard/Pages/IC/ICDashBoard.aspx");
                        break;
                    case UserBo.RoleName.TC:
                        Response.Redirect("~/DashBoard/Pages/TC/TCDashBoard.aspx");
                        break;
                    case UserBo.RoleName.TM:
                        Response.Redirect("~/DashBoard/Pages/TM/TMDashBoard.aspx");
                        break;
                }
            }
            else
            {
                lblLoginMsg.Text = "UserID/Password incorrect.";
            }

        }
        protected void btnForgot_Click(object sender, EventArgs e)
        {
            try
            {
                string stremail = txtFPEmail.Text.Trim();
                DataSet dsinstitute = objreg.GetStudentbyEmail(stremail);
                if (dsinstitute.Tables[0].Rows.Count > 0)
                {
                    MailMessage Msg = new MailMessage();
                    // Sender e-mail address.
                    Msg.From = new MailAddress(stremail);
                    // Recipient e-mail address.
                    Msg.To.Add(stremail);
                    Msg.Subject = "Your Password Details";
                    Msg.Body = "Dear " + dsinstitute.Tables[0].Rows[0]["StudentName"] + ", <br/>Please check your Login Detailss<br/><br/>Your UserID: " + stremail + "<br/><br/>Your Password: " + dsinstitute.Tables[0].Rows[0]["Password"] + "<br/><br/>";
                    Msg.IsBodyHtml = true;
                    // your remote SMTP server IP.
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("ganapathi.power@gmail.com", "ganasahithi");
                    smtp.EnableSsl = true;
                    smtp.Send(Msg);
                    //Msg = null;
                    lblForgetMessage.Text = "Your Password Details Sent to your mail";
                    // Clear the textbox valuess
                    txtFPEmail.Text = "";
                    
                }
                else
                {
                    lblForgetMessage.Text = "The Email you entered not exists.";
                    txtFPEmail.Focus();
                }

                
            }
            catch (Exception)
            {

                throw;
            }
            
        }
        private void clearControls(Panel PanelID)
        {
            foreach (Control c in PanelID.Controls)
            {
                if (c is TextBox)
                {
                    TextBox txtbox = c as TextBox;
                    if (txtbox != null)
                    {
                        txtbox.Text = "";
                    }
                    DropDownList dropdown = c as DropDownList;
                    if (dropdown != null)
                    {
                        dropdown.SelectedValue = "0";
                    }
                }
            }
        }
        
        
    }
}