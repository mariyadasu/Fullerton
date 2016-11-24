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
    public class AdminDAL
    {
        public DataSet GetStudentDetails()
        {
            try
            {
                DataSet ds = new DataSet();
                ds = SqlDbHelper.ExecuteSelectCommand("GetStudentDetails", CommandType.StoredProcedure);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet GetTeamDetails()
        {
            try
            {
                DataSet ds = new DataSet();
                ds = SqlDbHelper.ExecuteSelectCommand("GetTeamDetails", CommandType.StoredProcedure);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataSet GetInstituteDetails()
        {
            try
            {
                DataSet ds = new DataSet();
                ds = SqlDbHelper.ExecuteSelectCommand("GetICCDetails", CommandType.StoredProcedure);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool SaveInstituteDetails(Institute Institute)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			new SqlParameter("@InstituteName", Institute.InstituteName),
			new SqlParameter("@ICName", Institute.ICName),
			new SqlParameter("@Email", Institute.Email),
            new SqlParameter("@Password", Institute.Password),
			new SqlParameter("@MobileNo", Institute.MobileNo)
		 
		     };
                return SqlDbHelper.ExecuteNonQuery("SaveInstituteDetails", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool UpdateInstituteDetails(Institute Institute)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			new SqlParameter("@InstituteName", Institute.InstituteName),
			new SqlParameter("@ICName", Institute.ICName),
			new SqlParameter("@Email", Institute.Email),
            new SqlParameter("@Password", Institute.Password),
			new SqlParameter("@MobileNo", Institute.MobileNo),
		    new SqlParameter("@InstituteId", Institute.InstituteId)
		     };
                return SqlDbHelper.ExecuteNonQuery("UpdateInstituteDetails", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool DeleteInstituteDetails(Institute Institute)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		       {                
		       new SqlParameter("@InstituteId", Institute.InstituteId),
		       };
                return SqlDbHelper.ExecuteNonQuery("DeleteInstituteDetails", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public DataSet GetEventDetails()
        {
            try
            {
                DataSet ds = new DataSet();
                ds = SqlDbHelper.ExecuteSelectCommand("GetEventDetails", CommandType.StoredProcedure);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool SaveEventDetails(Institute Institute)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
			new SqlParameter("@EventName", Institute.EventName),
			new SqlParameter("@EventDate", Institute.EventDate)
		     };
                return SqlDbHelper.ExecuteNonQuery("SaveEventDetails", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool UpdateEventDetails(Institute Institute)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		     {                
		     new SqlParameter("@EventName", Institute.EventName),
			new SqlParameter("@EventDate", Institute.EventDate),
		    new SqlParameter("@EventId", Institute.EventId)
		     };
                return SqlDbHelper.ExecuteNonQuery("UpdateEventDetails", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool DeleteEventDetails(Institute Institute)
        {
            try
            {
                SqlParameter[] parameters = new SqlParameter[]
		       {                
		       new SqlParameter("@EventId", Institute.EventId),
		       };
                return SqlDbHelper.ExecuteNonQuery("DeleteEventDetails", CommandType.StoredProcedure, parameters);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
