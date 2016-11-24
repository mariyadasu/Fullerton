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
namespace Fullerton
{
    public partial class Registration : System.Web.UI.Page
    {
        RegisterDAL objreg = new RegisterDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
                //BindInstitute();
        }
        //private void BindInstitute()
        //{
        //    try
        //    {
        //        DataSet dsinstitute = objreg.BidInstitute();
        //        ddlinstitute.DataSource = dsinstitute.Tables[0];
        //        ddlinstitute.DataValueField = "InstituteID";
        //        ddlinstitute.DataTextField = "InstituteName";
        //        ddlinstitute.DataBind();
        //        ddlinstitute.Items.Insert(0, new ListItem("Select", ""));        
                    
        //    }
        //    catch (Exception)
        //    {
                
        //        throw;
        //    }
        //}

        //protected void btnRegister_Click(object sender, EventArgs e)
        //{
        //    //try
        //    //{
        //    //    UserBo objBo = new UserBo();
        //    //    objBo.UserId = txtUserID.Text.Trim();
        //    //    objBo.Password = txtPassword.Text.Trim();
        //    //    objBo.CnfPassword = txtConfirmPassword.Text.Trim();
        //    //    objBo.FirstName = txtfname.Text.Trim();
        //    //    objBo.LastName = txtlname.Text.Trim();
        //    //    objBo.DOB = txtdob.Text.Trim();
        //    //    objBo.Institute = ddlinstitute.SelectedValue;
        //    //    objBo.EmailId = txtEmailID.Text;
        //    //    int Result = objreg.InsertStudentDet(objBo);
        //    //    if (Result > 0)
        //    //        msgdiv.InnerText = "Registration Successfully Completed";
        //    //    else
        //    //        Response.Redirect("Registration.aspx?", false);
        //    //}
        //    //catch (Exception)
        //    //{
                
        //    //    throw;
        //    //}
        //}
    }
}