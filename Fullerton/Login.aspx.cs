using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FullertonDAL;
using FullertonBO;
namespace Fullerton
{
    public partial class Login : System.Web.UI.Page
    {
        RegisterDAL objDAL = new RegisterDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserID"] != null && Request.Cookies["Password"] != null)
            {
               txtuserid.Text = Request.Cookies["UserID"].Value;
               txtpassword.Attributes["value"] = Request.Cookies["Password"].Value;
               chkremeber.Checked = true;
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            UserBo objbo = new UserBo();
            objbo.UserId=txtuserid.Text.Trim();
            objbo.Password=txtpassword.Text.Trim();
            //int Result = objDAL.CheckLogin(objbo);
            //if (Result > 0)
            //{
            //    msgdiv.InnerText="Successfully Login.";
            //    if (chkremeber.Checked)
            //    {
            //        Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(30);
            //        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            //    }
            //    else
            //    {
            //        Response.Cookies["UserID"].Expires = DateTime.Now.AddDays(-1);
            //        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
            //    }
            //    Response.Cookies["UserID"].Value = txtuserid.Text;
            //    Response.Cookies["Password"].Value = txtpassword.Text;
            //}
            //else
            //    msgdiv.InnerText="UserID/Password incorrect.";

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            chkremeber.Checked = false;
            txtuserid.Text = string.Empty;
            txtpassword.Text = string.Empty;
        }
    }
}