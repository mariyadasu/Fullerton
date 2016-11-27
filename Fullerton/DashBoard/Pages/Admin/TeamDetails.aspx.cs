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
using System.Text;
using System.IO;
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
        protected void btnEnableRecord_Click(object sender, EventArgs e)
        {
            try
            {
                StringBuilder strEnableteams = new StringBuilder();
                StringBuilder strDisableteams = new StringBuilder();
                foreach (GridViewRow grow in gvTeam.Rows)
                {
                    CheckBox chkenable = (CheckBox)grow.FindControl("chkenable");
                    if (chkenable.Checked)
                    {
                        int TeamId = Convert.ToInt32((grow.FindControl("lblTeamId") as Label).Text);
                        strEnableteams.Append(TeamId + ",");
                    }
                    CheckBox chkdisable = (CheckBox)grow.FindControl("chkDisable");
                    if (!chkdisable.Checked)
                    {
                        int TeamId = Convert.ToInt32((grow.FindControl("lblTeamId") as Label).Text);
                        strDisableteams.Append(TeamId + ",");
                    }
                }
                EnablePresantationUpload(strEnableteams.ToString().TrimEnd(','), strDisableteams.ToString().TrimEnd(',')); 
            }
            catch (Exception)
            {
                lblMessage.Text = "Error occured in backend.";
            }
            
            
        }
        public void EnablePresantationUpload(string EnableTeamIds, string DisableTeamIds)
        {
            try
            {
                bool flag = objdal.EnableDisableUploads(EnableTeamIds, DisableTeamIds);
                if (flag)
                    lblMessage.Text = "Succesfully Enable/Disable Presentation Upload to selected teams";
                else
                    lblMessage.Text = "Something wrong in backend.";
                BindData();
                hfEnableCount.Value = "0";
                hfDisableCount.Value = "0";
            }
            catch
            {
                lblMessage.Text = "Error occured in backend.";
            }
        }
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "TeamDetails" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gvTeam.AllowPaging = false;
            gvTeam.AllowSorting = false;
            //Hide column
            gvTeam.Columns[4].Visible = false;
            //styles
            gvTeam.GridLines = GridLines.Both;
            gvTeam.HeaderStyle.Font.Bold = true;
            //render
            gvTeam.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
            gvTeam.Dispose();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
    }
}