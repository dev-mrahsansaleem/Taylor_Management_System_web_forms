using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TMS.Common
{
    public class cDetails
    {
        public int mId { get; set; }
        public string field_name { get; set; }
        public double field_value { get; set; }
        public string tempType { set; get; }
    }
    public class cMeaurements
    {
        public int cId { set; get; }
        public string mType { set; get; }
    }
}
