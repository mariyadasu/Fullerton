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

namespace Fullerton.DashBoard.Pages.TC
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        AdminDAL objdal = new AdminDAL();

        private readonly RegisterDAL _regDal = new RegisterDAL();

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
                    gdvMembers.DataSource = ds;
                    gdvMembers.DataBind();
                }
            }
            catch (Exception ex)
            {
            }
        }
       
        protected void btnUpdateStatus_Click(object sender, EventArgs e)
        {
            try
            {
                int enableCount = 0;
                int disableCount = 0;

                StringBuilder enableBuilder = new StringBuilder();
                StringBuilder disableBuilder = new StringBuilder();
                foreach (GridViewRow grow in gdvMembers.Rows)
                {
                    CheckBox chkstatus = (CheckBox)grow.FindControl("chkstatus");
                    HiddenField hdnUserId=(HiddenField)grow.FindControl("hdnUserId");
                    HiddenField hdnStatus = (HiddenField)grow.FindControl("hdnStatus");
                    if (chkstatus.Checked)
                    {
                        if(hdnStatus.Value.ToLower()=="pending" || hdnStatus.Value.ToLower() == "rejected")
                        {
                            enableBuilder = enableBuilder.Append(hdnUserId.Value + ",");
                            enableCount = enableCount + 1;
                        }
                        
                    }

                    if (!chkstatus.Checked)
                    {
                        if (hdnStatus.Value.ToLower() == "done")
                        {
                            disableBuilder = disableBuilder.Append(hdnUserId.Value + ",");
                            disableCount = disableCount + 1;
                        }

                    }
                }

                if(enableCount!=0 || disableCount!=0)
                {
                    _regDal.UpdateUserStatus(enableBuilder.ToString().TrimEnd(','),
                        disableBuilder.ToString().TrimEnd(','));
                    BindData();
                    string msg = string.Format("alert('{0} registrations approved/{1} registrations rejected')",enableCount,disableCount);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", msg, true);
                }
                  
            }
            catch (Exception)
            {
               
            }
        }

        protected void gdvMembers_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkstatus = (CheckBox)e.Row.FindControl("chkstatus");
                HiddenField hdnStatus = (HiddenField)e.Row.FindControl("hdnStatus");

                if (hdnStatus.Value.ToLower() == "done")
                    chkstatus.Checked = true;

            }
        }
    }
}