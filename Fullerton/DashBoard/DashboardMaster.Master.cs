using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FullertonBO;

namespace Fullerton.DashBoard
{
    public partial class DashboardMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //pnlAdmin.Visible = true;
                string rolename = string.Empty;
                if (Session["RoleName"] != null)
                {
                    rolename = Session["RoleName"].ToString();
                    lblLoginName.Text = Session["Name"].ToString();
                    UserBo.RoleName role = (UserBo.RoleName)Enum.Parse(typeof(UserBo.RoleName), rolename);
                    switch (role)
                    {
                        case UserBo.RoleName.Admin:
                            pnlAdmin.Visible = true;
                            break;
                        case UserBo.RoleName.IC:
                            pnlInstituteCoordinator.Visible = true;
                            break;
                        case UserBo.RoleName.TC:
                            pnlTeamCoordinator.Visible = true;
                            break;
                        case UserBo.RoleName.TM:
                            pnlTeamMember.Visible = true;
                            break;
                    }
                }
                else
                    Response.Redirect("~/Home.aspx");
            }
        }

        protected void lnkbtnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }
    }
}