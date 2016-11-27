using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fullerton.TC
{
    public partial class TcDashBoard : System.Web.UI.Page
    {
        private readonly TCdal _regDal = new TCdal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMemebers();
            }
        }

        private void BindMemebers()
        {
            int teamId = Convert.ToInt32(Session["TeamID"]);
            int tcId = Convert.ToInt32(Session["UserId"]);

            var users = _regDal.GetUserDetailsByTeamId(teamId);
            users = users.Where(user => user.UserId != tcId.ToString()).ToList();

            if (users == null || users.Count < 1)
                gdvMembers.Visible = false;

            gdvMembers.DataSource = users;
            gdvMembers.DataBind();
        }

        protected void gdvMembers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edited")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("~/TC/StudentRegistration.aspx?MemId="+userId);
            }

            if (e.CommandName == "Deleted")
            {
                int teamId = Convert.ToInt32(Session["TeamID"]);
                int userId = Convert.ToInt32(e.CommandArgument);
                bool result = _regDal.InActiveTeamMember(userId, teamId);

                BindMemebers();
            }

        }
    }
}