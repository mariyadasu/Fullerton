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
                string rolename=string.Empty;
                if (Session["RoleName"] != null)
                {
                    rolename = Session["RoleName"].ToString();
                    UserBo.RoleName role = (UserBo.RoleName)Enum.Parse(typeof(UserBo.RoleName), rolename);
                    switch (role)
                    {
                        case UserBo.RoleName.Admin:
                            pnlAdmin.Visible = true;
                            break;
                        case UserBo.RoleName.IC:
                            pnlInstituteCoordinator.Visible = true;
                            break;
                    }
                }
                //else
                //    Response.Redirect("~/Home.aspx");
            }
        }
    }
}