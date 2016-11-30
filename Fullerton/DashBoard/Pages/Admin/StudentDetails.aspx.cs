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
using System.IO;

namespace Fullerton.DashBoard.Pages.Admin
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
                    if (ds.Tables[0].Columns.Contains("UserId"))
                        ds.Tables[0].Columns.Remove("UserId");
                    gvStudent.DataSource = ds;
                    gvStudent.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
        protected void gvStudent_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvStudent.PageIndex = e.NewPageIndex;
            BindData();
        }
        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "StudentDetails" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gvStudent.AllowPaging = false;
            gvStudent.AllowSorting = false;
            //styles
            gvStudent.GridLines = GridLines.Both;
            gvStudent.HeaderStyle.Font.Bold = true;
            //render
            gvStudent.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
            gvStudent.Dispose();
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