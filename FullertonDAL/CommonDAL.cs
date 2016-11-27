using FullertonBO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FullertonDAL
{
    public class CommonDAL
    {
        public List<EventsBo> GetMonthEvents(string year,string month)
        {
            DBConnection dbcon = new DBConnection();
            List<EventsBo> Events = new List<EventsBo>();
            try
            {
                string strQuery = "Proc_GetEvents";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@year", year);
                cmd.Parameters.AddWithValue("@month", month);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();

                if (ds.Tables[0].Rows.Count < 0)
                    return Events;

                foreach (DataRow item in ds.Tables[0].Rows)
                {
                    EventsBo objEvent = new EventsBo()
                    {
                        Title = Convert.ToString(item["EventName"]),
                        StartDate = Convert.ToString(item["EventDate"]),
                        EndDate=Convert.ToString(item["EventDate"])
                    };

                    Events.Add(objEvent);
                }
            }
            catch (Exception ex)
            {
               
            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return Events;

        }

        public Institute GetInstituteDetails(int id)
        {
            DBConnection dbcon = new DBConnection();
            Institute ins = new Institute();

            try
            {
                string strQuery = "PROC_GETINSTITUTEDETAILS";
                SqlCommand cmd = dbcon.setCommandProperties(strQuery);
                cmd.Parameters.AddWithValue("@INSTITUTEID", id);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                cmd.Dispose();

                if (ds.Tables[0].Rows.Count < 0)
                    return ins;

                ins.ICName = Convert.ToString(ds.Tables[0].Rows[0]["InstituteCoordinator"]);
                ins.Email= Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }
            return ins;

        }

        public void SaveEmail(string quary)
        {
            DBConnection dbcon = new DBConnection();
            
            try
            {
                SqlCommand cmd = dbcon.setCommandProperties(quary,CommandType.Text);
                cmd.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {

            }
            finally
            {
                if (dbcon != null) dbcon.closeDBConnection();
            }

        }
    }
}
