using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

            // show list of users


            /*
            
            SqlConnection con = new SqlConnection(constr);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Customers";
            SqlCommand cmd = new SqlCommand(query, con);
            usernameDropDownList.DataTextField = ds.Tables[0].Columns["uUserName"].ToString();
            usernameDropDownList.DataValueField = ds.Tables[0].Columns["uId"].ToString();
            usernameDropDownList.DataSource = ds.Tables[0];
            usernameDropDownList.DataBind();
            
             */
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if(Txtpassword.Text!="")
            {
                if(true)
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
            else
            {
                lblmsg.Text = "Password field should not be empty";
            }
        }
    }
}