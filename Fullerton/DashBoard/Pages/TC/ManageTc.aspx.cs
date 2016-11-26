﻿using FullertonBO;
using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fullerton.TC
{

    /*
     change status tc
     
        add new tc to team

        get approval

        change tc status to 0 and add new tc in team table
         */
    public partial class MamageTC : System.Web.UI.Page
    {

        private readonly TCdal _tcDal = new TCdal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                BindTcStatus();
                BindTeammembers();
            }
                
        }


        private void BindTeammembers()
        {

            int teamId = Convert.ToInt32(Session["TeamID"]);

            var teamMembers = _tcDal.GetUserDetailsByTeamId(teamId);

            if (teamMembers != null)
            {
                ddlTeamMembers.DataSource = teamMembers;
                ddlTeamMembers.DataTextField = "UserName";
                ddlTeamMembers.DataValueField = "UserId";
                ddlTeamMembers.DataBind();

            }

            ddlTeamMembers.Items.Insert(0, new ListItem("SELECT", "0"));

            var newTc = teamMembers.FirstOrDefault(user => user.NewTcId != 0);

            if (newTc != null)
                ddlTeamMembers.SelectedValue = Convert.ToString(newTc.NewTcId);

        }

        private void BindTcStatus()
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            UserBo user = _tcDal.GetUserDetailsByUserId(userId);

            ddlStatus.SelectedValue = user.PartialTc ? "0" : "1";
        }

        protected void btnUpdateStatus_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            bool status = ddlStatus.SelectedValue == "0" ? true : false;

            int reult = _tcDal.UpdateTCActivation(userId, status);

            Response.Redirect("~/DashBoard/Pages/TC/ManageTc.aspx");
        }

        protected void btnNewTcUpdate_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(ddlTeamMembers.SelectedValue);
            int teamId = Convert.ToInt32(Session["TeamID"]);

            bool reult = _tcDal.UpdateNewTcByTeamID(userId, teamId);

            if (reult)
                lblNewTcMsg.Text =string.Format("Your request has been sent to {0}. It will be completed after their approval",ddlTeamMembers.SelectedValue);
        }
    }
}