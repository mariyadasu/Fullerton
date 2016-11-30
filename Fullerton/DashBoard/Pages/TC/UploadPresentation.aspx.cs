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

namespace Fullerton.DashBoard.Pages.TC
{
    public partial class UploadPresentation : System.Web.UI.Page
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
            DataSet ds = obj.GetPresentationbyUserid(TeamID);
            gvConcepts.DataSource = ds;
            gvConcepts.DataBind();
          
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int fileLen = fileConceptFile.PostedFile.ContentLength;
            byte[] input = new byte[fileLen - 1];
            input = fileConceptFile.FileBytes;
            int id = Convert.ToInt32(hidConceptId.Value);
            string extensioin = fileConceptFile.FileName.Substring(fileConceptFile.FileName.LastIndexOf(".") + 1).ToLower();
            string fileType = "";
            EventsBo objBo = new EventsBo();
            objBo.ConceptIdea = txtNameOfIdea.Text.Trim();
            objBo.FileType = fileType;
            objBo.FileBytes = input;
            objBo.FileExtenstion = extensioin;
            objBo.ConceptId = id;
            objBo.TCUserid = TeamID;
            obj.InsertPresentations(objBo);
            txtNameOfIdea.Text = "";
            BindData();
            if (hidConceptId.Value == "0")
                lblMessage.Text = "Presentation saved success.";
            else
                lblMessage.Text = "Presentation Updated success.";
            hidConceptId.Value = "0";
            btnSave.Text = "Save";

        }
        protected void grdData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "download")
            {
                DataSet ds = obj.GetPresentionbyConceptId(id);
                DataRow dr = ds.Tables[0].Rows[0];
                Byte[] data = (Byte[])dr["ContentFile"];
                Response.Clear();
                MemoryStream ms = new MemoryStream(data);
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=Presentation." + dr["Extension"]);
                Response.Buffer = true;
                ms.WriteTo(Response.OutputStream);
                Response.End();
            }
            if (e.CommandName == "editrec")
            {
                DataSet ds = obj.GetPresentionbyConceptId(id);
                txtNameOfIdea.Text = ds.Tables[0].Rows[0]["ContentText"].ToString();
                btnSave.Text = "Update";
                btnSave.Enabled = true;
                hidConceptId.Value = id.ToString();
            }
            if (e.CommandName == "deleterec")
            {
                bool flag = obj.DeletePresentation(id);
                if (flag)
                    lblMessage.Text = "Presentation deleted success";
                else
                    lblMessage.Text = "Presentation not deleted.";
                BindData();
            }
        }

        protected void ClearConcept_Click(object sender, EventArgs e)
        {
            txtNameOfIdea.Text = "";
            BindData();
            hidConceptId.Value = "0";
            btnSave.Text = "Save";
        }
        protected void gvConcepts_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvConcepts.PageIndex = e.NewPageIndex;
            BindData();
        }
    }
}