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
            Workers.Attributes["data-percent"] = new cWorkerDAL().getWorkers().Count.ToString();
            customers.Attributes["data-percent"] = new cCustomerDAL().getCustomers().Count.ToString();
            completed_task.Attributes["data-percent"] = new cAssignedWorkDAL().getAssignedTaskToWorker("complete").ToString();
            pending_task.Attributes["data-percent"] = new cAssignedWorkDAL().getAssignedTaskToWorker("pending").ToString();
            rejected_task.Attributes["data-percent"] = new cAssignedWorkDAL().getAssignedTaskToWorker("rejected").ToString();

        }
    }
}