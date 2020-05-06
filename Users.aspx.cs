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
            if(!IsPostBack)
            {
                DataTable dtbl = new cUserDAL().getUsers(true);
                if (dtbl.Rows.Count > 0)
                {
                    GridView1.DataSource = dtbl;
                    GridView1.DataBind();
                }
                else
                {
                    dtbl.Rows.Add(dtbl.NewRow());
                    GridView1.DataSource = dtbl;
                    GridView1.DataBind();
                    GridView1.Rows[0].Cells.Clear();
                    GridView1.Rows[0].Cells.Add(new TableCell());
                    GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                    GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
                    GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cUsers u = new cUsers();
            u.uFullName = txtfullName.Text;
            u.uUserName = txtusername.Text;
            u.uPassword = txtPassword.Text;
            u.uType = userTypeDropDownList.Text;
            u.uIsActive = CheckBox1.Checked;
            new cUserDAL().InsertUser(u);
            GridView1.DataSource = new cUserDAL().getUsers();
            GridView1.DataBind();
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("insert"))
            {
                cUsers u = new cUsers();
                u.uFullName = ((GridView1.FooterRow.FindControl("TxtuFullNameFooter")) as TextBox).Text;
                u.uUserName = ((GridView1.FooterRow.FindControl("TxtuUserNameFooter")) as TextBox).Text;
                u.uPassword = ((GridView1.FooterRow.FindControl("TxtuPasswordFooter")) as TextBox).Text;
                u.uType = ((GridView1.FooterRow.FindControl("dropuTypeFooter")) as DropDownList).SelectedValue;
                u.uIsActive = ((GridView1.FooterRow.FindControl("TxtuIsActiveFooter")) as CheckBox).Checked;
                new cUserDAL().InsertUser(u);

            }
            GridView1.DataSource = new cUserDAL().getUsers();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
        }
    }
}