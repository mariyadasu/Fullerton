using Fullerton.Utility;
using FullertonBO;
using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using static FullertonBO.UserBo;

namespace Fullerton.Controls
{
    public partial class Registration : System.Web.UI.UserControl
    {
        private readonly RegisterDAL _regDal = new RegisterDAL();
        private readonly TCdal _tcDal = new TCdal();
        private readonly CommonDAL _comDal = new CommonDAL();

        public String MSG = "Registration Successfully Completed";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindInstitutes();
                txtTeamName.Attributes.Add("style", "display:none");
                txtCourseOther.Attributes.Add("style", "display:none");

                BindUserInformation();
            }
        }

        private void BindUserInformation()
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            UserBo user = _tcDal.GetUserDetailsByUserId(userId);

            if (user.RoleID != 2)
                return;

            txtEmailId.Text = user.EmailId;
            txtPassword.Text = user.Password;
            txtConformPwd.Text = user.Password;
            txtPassword.Enabled = false;
            txtConformPwd.Enabled = false;

            txtFirstNAme.Text = user.FirstName;
            txtLastName.Text = user.LastName;
            txtDOB.Text = user.DOB;

            ddlInstitute.SelectedValue = user.InstituteID.ToString();
            ddlInstitute.Enabled = false;
            txtMobileNo.Text = user.MobileNo;
            GetCourseId(user.CourseName);
            ddlCourseType.SelectedValue = user.CourserType.ToString();
            txtHomeTown.Text = user.Hometown;
            txtPerminentAddress.Text = user.Address;
            ddlSemisters.SelectedValue = user.SemisterId.ToString();
            txtRollNo.Text = user.RollNo;
            txtRollNo.Enabled = false;
            //ddlTeamNames.SelectedValue = Convert.ToString(user.TeamId);
            

            var teams = _regDal.GetTeamsByInstitute(user.InstituteID);

            ddlTeamNames.DataSource = teams;
            ddlTeamNames.DataTextField = "Name";
            ddlTeamNames.DataValueField = "Id";
            ddlTeamNames.DataBind();
            ddlTeamNames.SelectedValue =Convert.ToString(user.TeamId);
            ddlTeamNames.Enabled = false;

            btnSubmit.Text = "Update";
        }

        private void GetCourseId(string courseName)
        {
            switch (courseName.ToLower())
            {
                case "be/btech":
                    ddlCourse.SelectedValue = "1";
                    break;

                case "m.tech":
                    ddlCourse.SelectedValue = "2";
                    break;
                case "polytechnic":
                    ddlCourse.SelectedValue = "3";
                    break;
                case "Incubated Startup":
                    ddlCourse.SelectedValue = "4";
                    break;
                default:
                    ddlCourse.SelectedValue = "1000";
                    txtCourseOther.Text = courseName;
                    break;
            }
        }

        private void BindInstitutes()
        {
            var Institutes = _regDal.GetInstitutes();

            if (Session["TeamID"] != null)
            {
                int userId = Convert.ToInt32(Session["UserId"]);
                UserBo user = _tcDal.GetUserDetailsByUserId(userId);
                Institutes = Institutes.Where(ins => ins.InstituteId == user.InstituteID).ToList();

            }

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
                CourseName = ddlCourse.SelectedItem.Text,
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
                TeamId = Convert.ToInt32(hdnTeamdID.Value),
                TeamName = txtTeamName.Text,
                UserName = "",
                OtherCourse = txtCourseOther.Text
            };

            int userId = Convert.ToInt32(Session["UserId"]);

            if (btnSubmit.Text.ToLower() == "update")
            {
                MSG = "Profile updation successfully completed";
                _regDal.InsertStudentDet(user, Convert.ToInt32(userId));

            }
            else
                _regDal.InsertStudentDet(user, 0);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Redirection()", true);

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            if (btnSubmit.Text.ToLower() == "update")
            {
                Response.Redirect("~/DashBoard/Pages/TM/TmProfile.aspx");
                return;
            }


            string applicantBody = string.Format(SendMails.REGISTRATION_BODY_APPLICANT, txtFirstNAme.Text, txtLastName.Text);
            Institute ins = _comDal.GetInstituteDetails(Convert.ToInt32(ddlInstitute.SelectedValue));
            string icBody = string.Format(SendMails.REGISTRATION_BODY_IC, ins.ICName, txtFirstNAme.Text, txtLastName.Text);

            SendMails.SendAnEmail(txtEmailId.Text, SendMails.REGISTRATION_SUB_APPLICANT, applicantBody);
            SendMails.SendAnEmail(ins.Email, SendMails.REGISTRATION_SUB_IC, icBody);

            if (Session["UserId"] != null)
            {
                Response.Redirect("~/DashBoard/Pages/TC/TcDashBoard.aspx");
            }
            Response.Redirect("~/Home.aspx");
        }
    }
}