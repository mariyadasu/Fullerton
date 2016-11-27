using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FullertonBO
{
    public class EventsBo
    {
        public string Title { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }

        //Concept notes Properites
        public string ConceptIdea { get; set; }
        public string FileType { get; set; }
        public byte[] FileBytes { get; set; }
        public string FileExtenstion { get; set; }
        public int ConceptId { get; set; }
        public int TCUserid { get; set; }
    }
}
