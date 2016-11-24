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

namespace Fullerton.DashBoard.Pages.TC
{
    public partial class StudentDetails : System.Web.UI.Page
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
                ds = objdal.GetStudentDetails();
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

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                hidUserId.Value = (grow.FindControl("lblUserId") as Label).Text;
            }
            catch
            {

            }
        }
        protected void btnReject_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = sender as Button;
                GridViewRow grow = btn.NamingContainer as GridViewRow;
                hidUserId.Value = (grow.FindControl("lblUserId") as Label).Text;
            }
            catch
            {

            }
        }
    }
}