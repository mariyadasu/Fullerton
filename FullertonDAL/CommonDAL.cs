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
    }
}
