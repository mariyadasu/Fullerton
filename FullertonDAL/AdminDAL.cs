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
    }
}
