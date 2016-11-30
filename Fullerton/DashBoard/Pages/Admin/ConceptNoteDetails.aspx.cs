using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FullertonDAL;
using FullertonBO;
using System.Data;
using System.IO;

namespace Fullerton.DashBoard.Pages.Admin
{
    public partial class ConceptNoteDetails : System.Web.UI.Page
    {
        CommonDAL obj = new CommonDAL();
        int TeamID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TeamID"] != null)
                TeamID = Convert.ToInt32(Session["TeamID"].ToString());
            if (!IsPostBack)
            {
                BindData();
            }

        }
        private void BindData()
        {
            DataSet ds = obj.GetConceptNoteDetails();
            gvConcepts.DataSource = ds;
            gvConcepts.DataBind();

        }
        protected void grdData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DataSet ds=new DataSet();
            string filename = string.Empty;
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "CPdownload")
            {
                ds = obj.GetConceptNotesbyConceptId(id);
                filename = "ConceptNote";
            }
            else
            {
                ds = obj.GetPresentionbyConceptId(id);
                filename = "Presentation";
            }
                DataRow dr = ds.Tables[0].Rows[0];
                Byte[] data = (Byte[])dr["ContentFile"];
                Response.Clear();
                MemoryStream ms = new MemoryStream(data);
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=" + filename +"." +dr["Extension"]);
                Response.Buffer = true;
                ms.WriteTo(Response.OutputStream);
                Response.End();
          
        }


        protected void gvConcepts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvConcepts.PageIndex = e.NewPageIndex;
            BindData();
        }
    }
}