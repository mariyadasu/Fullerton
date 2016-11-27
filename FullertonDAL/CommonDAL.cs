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
        public bool InsertConceptNote(EventsBo objbo)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			new SqlParameter("@Name", objbo.ConceptIdea),
			new SqlParameter("@FileType", objbo.FileType),
            new SqlParameter("@Data", objbo.FileBytes),
			new SqlParameter("@Extension", objbo.FileExtenstion),
            new SqlParameter("@UserId", objbo.TCUserid),
            new SqlParameter("@ID", objbo.ConceptId)
		     };
            return SqlDbHelper.ExecuteNonQuery("UploadConceptNote", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }
        public bool InsertPresentations(EventsBo objbo)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			new SqlParameter("@Name", objbo.ConceptIdea),
			new SqlParameter("@FileType", objbo.FileType),
            new SqlParameter("@Data", objbo.FileBytes),
			new SqlParameter("@Extension", objbo.FileExtenstion),
            new SqlParameter("@UserId", objbo.TCUserid),
            new SqlParameter("@ID", objbo.ConceptId)
		     };
                return SqlDbHelper.ExecuteNonQuery("SaveUpdatePresentations", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public DataSet GetConceptNotesbyUserid(int UserId)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			   new SqlParameter("@UserId", UserId)
		     };
                return SqlDbHelper.ExecuteParamerizedSelectCommand("PROC_GET_CONCEPTNOTES", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }
        public DataSet GetPresentationbyUserid(int UserId)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			   new SqlParameter("@UserId", UserId)
		     };
                return SqlDbHelper.ExecuteParamerizedSelectCommand("PROC_GET_PresentationUpload", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public DataSet GetConceptNotesbyConceptId(int ConceptId)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			   new SqlParameter("@ConceptId", ConceptId)
		     };
                return SqlDbHelper.ExecuteParamerizedSelectCommand("PROC_GET_CONCEPTNOTESBYID", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public DataSet GetPresentionbyConceptId(int ConceptId)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			   new SqlParameter("@ConceptId", ConceptId)
		     };
                return SqlDbHelper.ExecuteParamerizedSelectCommand("PROC_GET_PRESENTATIONSBYID", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public bool DeleteConceptNote(int ConceptId)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		       {                
		       new SqlParameter("@ConceptId", ConceptId),
		       };
                return SqlDbHelper.ExecuteNonQuery("PROC_DELETE_CONCEPT_NOTE", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool DeletePresentation(int ConceptId)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		       {                
		       new SqlParameter("@ConceptId", ConceptId),
		       };
                return SqlDbHelper.ExecuteNonQuery("PROC_DELETE_PRESENTATION", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
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
