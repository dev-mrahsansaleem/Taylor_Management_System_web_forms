using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TMS.Common
{
    public class cWorker
    {
        public int wId { get; set; }
        public string wFullName { get; set; }
        public string wCNIC { get; set; }
        public string wAddress { get; set; }
        public string wMobileNo { get; set; }
        public string wEmergencyContact { get; set; }
        public DateTime wdateOfJoin { get; set; }
        public bool wIsActive { get; set; }
    }
}
