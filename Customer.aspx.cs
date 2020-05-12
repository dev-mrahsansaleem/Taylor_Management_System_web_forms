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
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meaurements.aspx");
        }

        protected void LinkB1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["cFullName"].DefaultValue = (GridView1.FooterRow.FindControl("txtfullName") as TextBox).Text;
            SqlDataSource1.InsertParameters["cCNIC"].DefaultValue = (GridView1.FooterRow.FindControl("txtCNIC") as TextBox).Text;
            SqlDataSource1.InsertParameters["cAddress"].DefaultValue = (GridView1.FooterRow.FindControl("txtAddress") as TextBox).Text;
            SqlDataSource1.InsertParameters["cMobileNo"].DefaultValue = (GridView1.FooterRow.FindControl("txtMobileNo") as TextBox).Text;
            SqlDataSource1.InsertParameters["cRemarks"].DefaultValue = (GridView1.FooterRow.FindControl("txtRemarks") as TextBox).Text;
            SqlDataSource1.Insert();

        }
    }
}