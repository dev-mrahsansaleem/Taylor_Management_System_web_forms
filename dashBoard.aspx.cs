using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMS.DAL;

namespace TMS_WEB
{
    public partial class dashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MyBody.Attributes["data-percent"] = "70";

            users.Attributes["data-percent"] = new cUserDAL().getUsers().Count.ToString();
        }
    }
}