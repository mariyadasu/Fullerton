using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using FullertonBO;
namespace FullertonDAL
{
    public class RegisterDAL
    {
        public DataSet BidInstitute()
        {
            DBConnection dbcon = new DBConnection();
            try
            {
                string strQuery = "BindInstituteNames";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            
        }
        public int InsertStudentDet(UserBo objbo)
        {
            DBConnection dbcon = new DBConnection();
            try
            {
                string strQuery = "InsertStudentDetails";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.Add("@UserID", SqlDbType.VarChar).Value = objbo.UserId;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = objbo.Password;
                cmd.Parameters.Add("@ConPassword", SqlDbType.VarChar).Value = objbo.CnfPassword;
                cmd.Parameters.Add("@FName", SqlDbType.VarChar).Value = objbo.FirstName;
                cmd.Parameters.Add("@LName", SqlDbType.VarChar).Value = objbo.LastName;
                cmd.Parameters.Add("@DOB", SqlDbType.DateTime).Value = objbo.DOB;
                cmd.Parameters.Add("@Institute", SqlDbType.VarChar).Value = objbo.Institute;
                cmd.Parameters.Add("@EmailID", SqlDbType.VarChar).Value = objbo.EmailId;
                int Result = cmd.ExecuteNonQuery();
                return Result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
             
             
        }
        public DataSet CheckLogin(UserBo objbo)
        {
            int Result = 0;
            DBConnection dbcon = new DBConnection();
            try
            {
                string strQuery = "CheckLogin";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@EmailID", objbo.EmailId);
                cmd.Parameters.AddWithValue("@Password", objbo.Password);
                cmd.Parameters.AddWithValue("@LoginTypeId", objbo.LoginTypeID);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
        }
        public DataSet GetStudentbyEmail(string Email)
        {
            DBConnection dbcon = new DBConnection();
            try
            {
                string strQuery = "GetStudentByEmail";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@Email", Email);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
             
        }
        public DataSet BidLoginTypes()
        {
            DBConnection dbcon = new DBConnection();
            try
            {
                string strQuery = "GetLogins";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            
        }
    }
}
