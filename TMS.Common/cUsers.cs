using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TMS.Common
{
    public class cUsers
    {
        public int uId { get; set; }
        public string uFullName { get; set; }
        public string uUserName { get; set; }
        public string uPassword { get; set; }
        public string uType { get; set; }
        public bool uIsActive { get; set; }
    }
}
