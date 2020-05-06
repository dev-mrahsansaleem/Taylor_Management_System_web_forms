using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMS.Common;
using TMS.DAL;

namespace TMS_WEB
{
    public partial class Worker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.DataSource = new cWorkerDAL().getWorkers();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cWorker w = new cWorker();
            w.wAddress = txtAddress.Text;
            w.wCNIC = txtCNIC.Text;
            w.wdateOfJoin = Calendar1.SelectedDate;
            w.wEmergencyContact = txtMobileNo.Text;
            w.wFullName = txtfullName.Text;
            w.wIsActive = active.Checked;
            w.wMobileNo = txtMobileNo.Text;
            new cWorkerDAL().InsertWorker(w);

            GridView1.DataSource = new cWorkerDAL().getWorkers();
            GridView1.DataBind();
        }
    }
}