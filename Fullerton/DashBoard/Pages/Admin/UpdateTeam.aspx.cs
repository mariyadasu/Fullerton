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

namespace Fullerton.DashBoard.Pages.Admin
{
    public partial class UpdateTeam : System.Web.UI.Page
    {
        AdminDAL objdal = new AdminDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        protected void BindData()
        {
            DataSet ds = new DataSet();
            try
            {
                ds = objdal.GetTeamDetails();
                if (ds != null && ds.Tables[0].Rows.Count > 0)
                {
                    gvTeamDetails.DataSource = ds;
                    gvTeamDetails.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvTeamDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTeamDetails.PageIndex = e.NewPageIndex;
            BindData();
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                hidTeamId.Value = (grow.FindControl("lblTeamId") as Label).Text;
                BindMemberDetails();
            }
            catch
            {

            }
        }
        public void BindMemberDetails()
        {
            DataSet ds = new DataSet();
            try
            {
                ds = objdal.GetMemberDetailsByTeamId(Convert.ToInt32(hidTeamId.Value));
                if (ds != null && ds.Tables[0].Rows.Count > 0)
                {
                    MemberSection.Visible = true;
                    gvMemberDetails.DataSource = ds;
                    gvMemberDetails.DataBind();
                }
                else
                    MemberSection.Visible = false;
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvMemberDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMemberDetails.PageIndex = e.NewPageIndex;
            BindMemberDetails();
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                hidUserId.Value = (grow.FindControl("lblUserId") as Label).Text;
                txtFirstName.Text = (grow.FindControl("lblFirstName") as Label).Text;
                txtLastName.Text = (grow.FindControl("lblLastName") as Label).Text;
                string strrolename = (grow.FindControl("lblShortName") as Label).Text;
                ddlRole.SelectedIndex = ddlRole.Items.IndexOf(ddlRole.Items.FindByText(strrolename));
                ddlRole.Enabled=ddlRole.SelectedIndex == 1 ? false :true;
                divUpdateView.Visible = true;
            }
            catch
            {

            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                UserBo objUser = new UserBo();
                objUser.FirstName = txtFirstName.Text.Trim();
                objUser.LastName = txtLastName.Text.Trim();
                objUser.RollNo = ddlRole.SelectedValue;
                objUser.UserId = hidUserId.Value;
                bool flag = objdal.UpdateMemberDetails(objUser);
                BindMemberDetails();
                divUpdateView.Visible = false;
                lblMessage.Text = "Updated Successfully.";
            }
            catch
            {
                throw;
            }

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                int UserId = Convert.ToInt32((grow.FindControl("lblUserId") as Label).Text);
                bool flag = objdal.DeleteMember(UserId);
                BindMemberDetails();
                lblMessage.Text = "Deleted Successfully.";
            }
            catch
            {

            }

        }
    }
}