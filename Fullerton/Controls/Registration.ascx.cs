﻿using FullertonBO;
using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fullerton.Controls
{
    public partial class Registration : System.Web.UI.UserControl
    {
        private readonly RegisterDAL _regDal = new RegisterDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindInstitutes();
                txtTeamName.Attributes.Add("style", "display:none");
                txtCourseOther.Attributes.Add("style", "display:none");
            }
        }
        

        private void BindInstitutes()
        {
            var Institutes = _regDal.BidInstitute();

            if (Institutes != null)
            {
                ddlInstitute.DataSource = Institutes;
                ddlInstitute.DataTextField = "InstituteName";
                ddlInstitute.DataValueField = "InstituteId";
                ddlInstitute.DataBind();
            }

            ddlInstitute.Items.Insert(0, new ListItem("SELECT", "0"));
        }
         
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var user = new UserBo()
            {
                Address = txtPerminentAddress.Text,
                CourseId = Convert.ToInt32(ddlCourse.SelectedValue),
                CourserType = Convert.ToInt32(ddlCourseType.SelectedValue),
                DOB = txtDOB.Text,
                EmailId = txtEmailId.Text,
                FirstName = txtFirstNAme.Text,
                Hometown = txtHomeTown.Text,
                Image = fluImage.FileBytes,
                InstituteID = Convert.ToInt32(ddlInstitute.SelectedValue),
                LastName = txtLastName.Text,
                MobileNo = txtMobileNo.Text,
                Password = txtPassword.Text,
                RollNo = txtRollNo.Text,
                SemisterId = Convert.ToInt32(ddlSemisters.SelectedValue),
                TeamId = Convert.ToInt32(ddlTeamNames.SelectedValue),
                TeamName = txtTeamName.Text,
                UserName = txtUserName.Text,
                OtherCourse = txtCourseOther.Text
            };

            _regDal.InsertStudentDet(user);

        }
        
    }
}