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
    public partial class InstituteCoordinatorDetails : System.Web.UI.Page
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
                ds = objdal.GetInstituteDetails();
                if (ds != null && ds.Tables[0].Rows.Count > 0)
                {
                    gvICDetails.DataSource = ds;
                    gvICDetails.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvICDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvICDetails.PageIndex = e.NewPageIndex;
            BindData();
        }

        void ClearControls()
        {
            txtIEmail.Text = "";
            txtIMobileNo.Text = "";
            txtInstitueName.Text = "";
            txtInstituteCoordinator.Text = "";
            hidInstituteId.Value = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Institute objIns = new Institute();
                objIns.InstituteName = txtInstitueName.Text.Trim();
                objIns.ICName = txtInstituteCoordinator.Text.Trim();
                objIns.Email = txtIEmail.Text.Trim();
                objIns.Password = txtIPwd.Text.Trim();
                objIns.MobileNo = txtIMobileNo.Text.Trim();
                bool flag = objdal.SaveInstituteDetails(objIns);
                BindData();
                ClearControls();
                lblMessage.Text = "Saved Successfully.";
            }
            catch
            {
                lblMessage.Text = "Error Occured in backend.";
                throw;
            }
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                ClearControls();
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                hidInstituteId.Value = (grow.FindControl("lblInstituteId") as Label).Text;
                txtInstitueName.Text = (grow.FindControl("lblIstuteName") as Label).Text;
                txtInstituteCoordinator.Text = (grow.FindControl("lblInstituteCoordinator") as Label).Text;
                txtIEmail.Text = (grow.FindControl("lblEmail") as Label).Text;
                txtIPwd.Text = (grow.FindControl("lblPassword") as Label).Text;
                txtIMobileNo.Text = (grow.FindControl("lblContactNo") as Label).Text;
                btnSave.Visible = false;
                btnUpdate.Visible = true;
            }
            catch
            {

            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                Institute objIns = new Institute();
                objIns.InstituteName = txtInstitueName.Text.Trim();
                objIns.ICName = txtInstituteCoordinator.Text.Trim();
                objIns.Email = txtIEmail.Text.Trim();
                objIns.Password = txtIPwd.Text.Trim();
                objIns.MobileNo = txtIMobileNo.Text.Trim();
                objIns.InstituteId =Convert.ToInt32(hidInstituteId.Value);
                bool flag = objdal.UpdateInstituteDetails(objIns);
                BindData();
                ClearControls();
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
                ClearControls();
                Institute objIns = new Institute();
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                objIns.InstituteId = Convert.ToInt32((grow.FindControl("lblInstituteId") as Label).Text);
                bool flag = objdal.DeleteInstituteDetails(objIns);
                BindData();
                ClearControls();
                lblMessage.Text = "Deleted Successfully.";
            }
            catch
            {

            }
            
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            try
            {
                ClearControls();
            }
            catch
            {
                throw;
            }
        }
    }
}