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
    public partial class Events : System.Web.UI.Page
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
                ds = objdal.GetEventDetails();
                if (ds != null && ds.Tables[0].Rows.Count > 0)
                {
                    gvEvents.DataSource = ds;
                    gvEvents.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvEvents_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvEvents.PageIndex = e.NewPageIndex;
            BindData();
        }

        void ClearControls()
        {
            txtEventName.Text = "";
            txtEventDate.Text = "";
            hidEventId.Value = "";
            btnSave.Visible = true;
            btnUpdate.Visible = false;

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                Institute objIns = new Institute();
                objIns.EventName = txtEventName.Text.Trim();
                objIns.EventDate = txtEventDate.Text.Trim();
                bool flag = objdal.SaveEventDetails(objIns);
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
                hidEventId.Value = (grow.FindControl("lblEventId") as Label).Text;
                txtEventName.Text = (grow.FindControl("lblEventName") as Label).Text;
                txtEventDate.Text = (grow.FindControl("lblEventDate") as Label).Text;
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
                objIns.EventName = txtEventName.Text.Trim();
                objIns.EventDate = txtEventDate.Text.Trim();
                objIns.EventId = Convert.ToInt32(hidEventId.Value);
                bool flag = objdal.UpdateEventDetails(objIns);
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
                objIns.EventId = Convert.ToInt32((grow.FindControl("lblEventId") as Label).Text);
                bool flag = objdal.DeleteEventDetails(objIns);
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