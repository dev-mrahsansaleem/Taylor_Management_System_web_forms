using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TMS.DAL;

namespace TMS_WEB
{
    public partial class AssignWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!Page.IsPostBack)
            //{
            //    if(new cAssignedWorkDAL().getAllAssigned()<=0)
            //    {
            //        DataTable dtbl = new DataTable();
            //        dtbl.Rows.Add(dtbl.NewRow());
            //        GridView1.DataSource = dtbl;
            //        GridView1.DataBind();
            //        GridView1.Rows[0].Cells.Clear();
            //        GridView1.Rows[0].Cells.Add(new TableCell());
            //        GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            //        GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
            //        GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            //    }
            //}
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["wId"].DefaultValue = (GridView1.FooterRow.FindControl("workerIDs") as DropDownList).SelectedValue;
            SqlDataSource1.InsertParameters["mId"].DefaultValue = (GridView1.FooterRow.FindControl("customerIDs") as DropDownList).SelectedValue;
            SqlDataSource1.InsertParameters["astatus"].DefaultValue = (GridView1.FooterRow.FindControl("status") as DropDownList).SelectedValue;
            SqlDataSource1.InsertParameters["aDueDate"].DefaultValue = (GridView1.FooterRow.FindControl("duedate") as Calendar).SelectedDate.ToString();
            SqlDataSource1.InsertParameters["aRemarks"].DefaultValue = (GridView1.FooterRow.FindControl("remarkss") as TextBox).Text;
            SqlDataSource1.InsertParameters["aPrice"].DefaultValue = (GridView1.FooterRow.FindControl("price") as TextBox).Text;
            SqlDataSource1.Insert();
        }
    }
}