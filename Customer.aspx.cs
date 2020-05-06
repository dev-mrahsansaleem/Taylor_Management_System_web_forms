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
    public partial class Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = new cCustomerDAL().getCustomers();
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cCustomer c = new cCustomer();
            c.cAddress = txtAddress.Text;
            c.cCNIC = txtCNIC.Text;
            c.cFullName = txtfullName.Text;
            c.cMobileNo = txtMobileNo.Text;
            c.cRemarks = txtRemarks.Text;
            new cCustomerDAL().InsertCustomer(c);
            GridView1.DataSource = new cCustomerDAL().getCustomers();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meaurements.aspx");
        }
    }
}