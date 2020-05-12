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
        }


        protected void Li3_Click(object sender, EventArgs e)
        {

            SqlDataSource1.InsertParameters["wFullName"].DefaultValue = (GridView1.FooterRow.FindControl("txtfullName") as TextBox).Text;
            SqlDataSource1.InsertParameters["wCNIC"].DefaultValue = (GridView1.FooterRow.FindControl("txtCNIC") as TextBox).Text;
            SqlDataSource1.InsertParameters["wAddress"].DefaultValue = (GridView1.FooterRow.FindControl("txtAddress") as TextBox).Text;
            SqlDataSource1.InsertParameters["wMobileNo"].DefaultValue = (GridView1.FooterRow.FindControl("txtMobileNo") as TextBox).Text;
            SqlDataSource1.InsertParameters["wEmergencyContact"].DefaultValue = (GridView1.FooterRow.FindControl("txtEMobileNo") as TextBox).Text;
            SqlDataSource1.InsertParameters["wdateOfJoin"].DefaultValue = (GridView1.FooterRow.FindControl("Calendar1") as Calendar).SelectedDate.ToString();
            SqlDataSource1.InsertParameters["uIsActive"].DefaultValue = (GridView1.FooterRow.FindControl("isActive") as CheckBox).Checked.ToString();
            SqlDataSource1.Insert();
        }
    }
}