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
    public partial class TeamDetails : System.Web.UI.Page
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
                    gvTeam.DataSource = ds;
                    gvTeam.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvTeam_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTeam.PageIndex = e.NewPageIndex;
            BindData();
        }
    }
}