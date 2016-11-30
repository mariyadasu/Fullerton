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
    public partial class UploadConceptNotes : System.Web.UI.Page
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
            DataSet ds = obj.GetConceptNotesbyUserid(TeamID);
            gvConcepts.DataSource = ds;
            gvConcepts.DataBind();
            if (ds.Tables[0].Rows.Count >= 2)
            {
                btnSave.Enabled = false;
                lblMessage.Text = "You have added max number of Concept Notes, Delete existing notes to add another or edit ro modify existing note.";
            }
            else
            {
                btnSave.Enabled = true;
                lblMessage.Text = "";
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int fileLen = fileConceptFile.PostedFile.ContentLength;
            byte[] input = new byte[fileLen - 1];
            input = fileConceptFile.FileBytes;
            int id = Convert.ToInt32(hidConceptId.Value);

            string extensioin = fileConceptFile.FileName.Substring(fileConceptFile.FileName.LastIndexOf(".") + 1).ToLower();
            string fileType = null;
            //set the file type based on File Extension
            switch (extensioin)
            {
                case "doc":
                    fileType = "application/vnd.ms-word";
                    break;
                case "docx":
                    fileType = "application/vnd.ms-word";
                    break;
                case "pdf":
                    fileType = "application/pdf";
                    break;
            }
            EventsBo objBo = new EventsBo();
            objBo.ConceptIdea = txtNameOfIdea.Text.Trim();
            objBo.FileType=fileType;
            objBo.FileBytes=input;
            objBo.FileExtenstion = extensioin;
            objBo.ConceptId = id;
            objBo.TCUserid = TeamID;
            obj.InsertConceptNote(objBo);
            txtNameOfIdea.Text = "";
            BindData();
            if(hidConceptId.Value == "0")
              lblMessage.Text = "Concept note saved success.";
            else
              lblMessage.Text = "Concept note Updated success.";
            hidConceptId.Value = "0";
            btnSave.Text = "Save";
            
        }
        protected void grdData_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            if (e.CommandName == "download")
            {
                DataSet ds = obj.GetConceptNotesbyConceptId(id);
                DataRow dr = ds.Tables[0].Rows[0];
                Byte[] data = (Byte[])dr["ContentFile"];
                Response.Clear();
                MemoryStream ms = new MemoryStream(data);
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-disposition", "attachment;filename=ConceptNote." + dr["Extension"]);
                Response.Buffer = true;
                ms.WriteTo(Response.OutputStream);
                Response.End();
            }
            if (e.CommandName == "editrec")
            {
                DataSet ds = obj.GetConceptNotesbyConceptId(id);
                txtNameOfIdea.Text = ds.Tables[0].Rows[0]["ContentText"].ToString();
                btnSave.Text = "Update";
                btnSave.Enabled = true;
                hidConceptId.Value = id.ToString();
            }
            if (e.CommandName == "deleterec")
            {
                bool flag= obj.DeleteConceptNote(id);
                if (flag)
                    lblMessage.Text = "Concept note deleted success";
                else
                    lblMessage.Text = "Concept note not deleted.";
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