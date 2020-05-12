using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using TMS.Common;
using TMS.DAL;

namespace TMS_WEB
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["uFullName"].DefaultValue = (GridView1.FooterRow.FindControl("TextBox4") as TextBox).Text;
            SqlDataSource1.InsertParameters["uUserName"].DefaultValue = (GridView1.FooterRow.FindControl("TextBox5") as TextBox).Text;
            SqlDataSource1.InsertParameters["uPassword"].DefaultValue = (GridView1.FooterRow.FindControl("TextBox6") as TextBox).Text;
            SqlDataSource1.InsertParameters["uType"].DefaultValue = (GridView1.FooterRow.FindControl("userTypeList1") as DropDownList).SelectedValue;
            SqlDataSource1.InsertParameters["uIsActive"].DefaultValue = (GridView1.FooterRow.FindControl("Chbox1") as CheckBox).Checked.ToString();

            SqlDataSource1.Insert();
        }
    }
}