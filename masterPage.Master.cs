using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TMS_WEB
{
    public partial class masterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] !=null)
            {
                lblUsername.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void Customer_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customer.aspx");
        }

        protected void Worker_Click(object sender, EventArgs e)
        {
            Response.Redirect("Worker.aspx");
        }

        protected void User_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

        protected void AssignWork_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignWork.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("dashBoard.aspx");
        }
    }
}