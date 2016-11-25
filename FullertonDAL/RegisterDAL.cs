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

        public List<Team> GetTeamsByInstitute(int instituteId)
        {
            DBConnection dbcon = new DBConnection();
            List<Team> teams = new List<Team>();
            try
            {
                string strQuery = "Proc_GetTeams";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@InstituteId", instituteId);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();

                if (ds.Tables[0].Rows.Count < 0)
                    return teams;

                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    Team team = new Team()
                    {
                        Id = Convert.ToInt32(item["TeamId"]),
                        Name = Convert.ToString(item["TeamName"])
                    };

                    teams.Add(team);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return teams;

        }

        public List<Institute> GetInstitutes()
        {
            DBConnection dbcon = new DBConnection();
            List<Institute> institutes = new List<Institute>();
            try
            {
                string strQuery = "BindInstituteNames";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();

                if (ds.Tables[0].Rows.Count < 0)
                    return institutes;

                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    Institute ins = new Institute()
                    {
                        InstituteId = Convert.ToInt32(item["InstituteId"]),
                        InstituteName = Convert.ToString(item["InstituteName"])
                    };

                    institutes.Add(ins);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return institutes;

        }
        public int InsertStudentDet(UserBo user)
        {
            DBConnection dbcon = new DBConnection();
            int Result=0;
            try
            {
                string strQuery = "PROC_UserRegistration";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@USERNAME", user.UserName);
                cmd.Parameters.AddWithValue("@PASSWORD", user.Password);
                cmd.Parameters.AddWithValue("@FIRSTNAME", user.FirstName);
                cmd.Parameters.AddWithValue("@LASTNAME", user.LastName);
                cmd.Parameters.AddWithValue("@DOB", user.DOB);
                cmd.Parameters.AddWithValue("@INSTITUTEID", user.InstituteID);
                cmd.Parameters.AddWithValue("@EMAILID", user.EmailId);
                cmd.Parameters.AddWithValue("@MOBILE", user.MobileNo);
                cmd.Parameters.AddWithValue("@COURSEID", user.CourseId);
                cmd.Parameters.AddWithValue("@COURSETYPE", user.CourserType);
                cmd.Parameters.AddWithValue("@HOMETOWN", user.Hometown);
                cmd.Parameters.AddWithValue("@ADDRESS", user.Address);
                cmd.Parameters.AddWithValue("@SEMISTERID", user.SemisterId);
                cmd.Parameters.AddWithValue("@ROLLNO", user.RollNo);
                cmd.Parameters.AddWithValue("@TEAMNAME", user.TeamName);
                cmd.Parameters.AddWithValue("@TEAMID", user.TeamId);
                cmd.Parameters.AddWithValue("@IMAGE", user.Image);
                cmd.Parameters.AddWithValue("@CourseName", user.OtherCourse);

                Result = cmd.ExecuteNonQuery();
                return Result;
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return Result;
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
