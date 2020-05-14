using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMS.DAL;

namespace TMS_WEB
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"]!=null)
            {
                Response.Redirect("dashBoard.aspx");
            }

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if(Txtpassword.Text!="")
            {
                foreach (var user in new cUserDAL().getUsers())
                {

                    if (user.uUserName == usernameDropDownList.SelectedValue && user.uPassword == Txtpassword.Text)
                    {

                        //valid user
                        Session["username"] = "Hello...!!! " + usernameDropDownList.Text;
                        Response.Redirect("dashBoard.aspx");
                    }
                    else
                    {
                        lblmsg.Text = "Invalid Password";
                    }
                }

                
            }
            else
            {
                lblmsg.Text = "Password field should not be empty";
            }
        }
    }
}