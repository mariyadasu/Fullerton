using FullertonBO;
using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Fullerton
{
    /// <summary>
    /// Summary description for FullertonService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class FullertonService : System.Web.Services.WebService
    {
        private readonly RegisterDAL _regDal = new RegisterDAL();
        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public string GetTeamsByInstitute(int id)
        {
            var teams = _regDal.GetTeamsByInstitute(id);

            return GenerateOpetions(teams);
        }

        private string GenerateOpetions(List<Team> teams)
        {
            string result = "";

            if (teams.Count > 0)
                result = "<option value='0'>SELECT</option>";

            teams.ForEach(x =>
            {

                result = string.Concat(result + "<option value=" + x.Id + ">" + x.Name + "</option>");
            });

            if (!string.IsNullOrEmpty(result))
                result = result+ "<option value='1000'>Other</option>";

            return result;
        }
    }
}
