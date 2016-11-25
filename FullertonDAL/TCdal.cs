using FullertonBO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace FullertonDAL
{
    public class TCdal
    {
       

        public UserBo GetUserDetailsByUserId(int userID)
        {
            DBConnection dbcon = new DBConnection();
            UserBo user = new UserBo();
            
            try
            {
                string strQuery = "PROC_TCACTIVESTATUS_GET";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@USERID", userID);

                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                if(ds.Tables[0].Rows.Count>0)
                {
                    user.PartialTc =Convert.ToBoolean(ds.Tables[0].Rows[0]["PartialTc"]);
                    user.InstituteID = Convert.ToInt32(ds.Tables[0].Rows[0]["InstituteID"]);
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return user;
        }

        public int UpdateTCActivation(int userID, bool status)
        {
            DBConnection dbcon = new DBConnection();
            int Result = 0;
            try
            {
                string strQuery = "PROC_TCACTIVESTATUS_UPDATE";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@USERID", userID);
                cmd.Parameters.AddWithValue("@STATUS", status);

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

        public List<UserBo> GetUserDetailsByTeamId(int teamId)
        {
            DBConnection dbcon = new DBConnection();
            List<UserBo> users = new List<UserBo>();

            try
            {
                string strQuery = "PROC_GET_USERDETAILS_TEAMID";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@TEAMID", teamId);

                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        UserBo user = new UserBo();

                        user.UserId =Convert.ToString(item["UserId"]);
                        user.UserName = Convert.ToString(item["UserName"]);
                        user.EmailId = Convert.ToString(item["Email"]);
                        user.MobileNo = Convert.ToString(item["MobileNo"]);
                        user.CourseName = Convert.ToString(item["Course"]);
                        user.RollNo = Convert.ToString(item["RollNo"]);
                        user.NewTcId = Convert.ToInt32(item["NewTcId"]);

                        users.Add(user);
                    }
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return users;
        }

        public bool UpdateNewTcByTeamID(int userID, int teamId)
        {
            DBConnection dbcon = new DBConnection();
            int Result = 0;
            try
            {
                string strQuery = "PROC_UPDATNEWTCTOTEAM";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@USERID", userID);
                cmd.Parameters.AddWithValue("@TEAMID", teamId);

                Result = cmd.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return Result >= 1 ? true : false;
        }

        public bool InActiveTeamMember(int userID, int teamId)
        {
            DBConnection dbcon = new DBConnection();
            int Result = 0;
            try
            {
                string strQuery = "PROC_INACTIVETEAMMEMBER";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@USERID", userID);
                cmd.Parameters.AddWithValue("@TEAMID", teamId);

                Result = cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return Result >= 1 ? true : false;
        }

    }
}
