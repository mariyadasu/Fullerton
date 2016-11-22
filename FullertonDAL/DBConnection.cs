using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace FullertonDAL
{
    public class DBConnection
    {
        SqlConnection scon;
        string dbString;

        public DBConnection()
        {
            try
            {
                dbString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                scon = new SqlConnection(dbString);
                scon.Open();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public SqlCommand setCommandProperties(string strStoredProcedureName)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = strStoredProcedureName;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = scon;
                return cmd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public SqlCommand setCommandProperties(string cmdText, CommandType cmdType)
        {
            try
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = cmdText;
                cmd.CommandType = cmdType;
                cmd.Connection = scon;
                return cmd;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public void closeDBConnection()
        {
            try
            {
                if (scon != null)
                {
                    if (scon.State != ConnectionState.Closed)
                    {
                        scon.Close();
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }

        public SqlTransaction beginTransaction()
        {
            if (scon != null && scon.State == ConnectionState.Open)
            {
                return scon.BeginTransaction();
            }
            return null;
        }
    }
}
