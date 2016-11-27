using FullertonDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using FullertonBO;

namespace Fullerton.DashBoard.Pages.TC
{
    public partial class EnentsCallender : System.Web.UI.Page
    {
        private readonly CommonDAL _commonDAl = new CommonDAL();

        public string events = "";
        public string defaultDate = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Month = DateTime.Now.Month.ToString();
                string Year = DateTime.Now.Year.ToString();

                defaultDate = string.Format("'{0}-{1}-01'", Year, Month);

                ddlMonth.SelectedValue = string.Format("{0}-{1}", Month, Year);
                GenerateEvents(Month, Year);
            }
        }

        private void GenerateEvents(string month, string year)
        {
            List<EventsBo> eventsList = _commonDAl.GetMonthEvents(year, month);
            StringBuilder eventsBuilder = new StringBuilder();

            if (eventsList.Count < 1)
                return;

            string strEvent = "";
            int i = 0;
            foreach (var item in eventsList)
            {
                strEvent = "";
                if (i == 0)
                    strEvent = strEvent + "[";

                strEvent = strEvent + "{";
                strEvent = strEvent + string.Format("title:'{0}',start:'{1}',end:'{2}'", item.Title, item.StartDate, item.EndDate);

                strEvent = strEvent + "},";
                eventsBuilder.Append(strEvent);

                i = i + 1;
            }

            events = eventsBuilder.ToString().Trim();

            events = events.Remove(events.Length - 1);
            events = events + "]";
        }

        protected void btnGetEnets_Click(object sender, EventArgs e)
        {
            string[] MonthYear = ddlMonth.SelectedValue.Split('-');
            defaultDate = string.Format("'{0}-{1}-01'", MonthYear[1], MonthYear[0]);
            GenerateEvents(MonthYear[0], MonthYear[1]);
        }
    }
}