using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
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
        cDetails d = new cDetails();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                DirectoryInfo di = new DirectoryInfo(Server.MapPath(@"~\Measurements\"));//Assuming Test is your Folder
                FileInfo[] Files = di.GetFiles("*.txt");
                List<string> fNames = new List<string>();
                foreach (var f in Files)
                {
                    fNames.Add(f.Name);
                }
                Dictionary<string, string> fileHash = fNames.ToDictionary(fname => fname);
                filesdrop.DataTextField = "Value";
                filesdrop.DataValueField = "key";
                filesdrop.DataSource = fileHash;
                filesdrop.DataBind();
            }
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


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            id.Text = GridView1.SelectedValue.ToString(); //id of selected customer

        }

        protected void files_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (filesdrop.SelectedItem.Text!= "")
                {
                    DataTable dt = new DataTable();
                    DataRow drow;
                    //creating two datacolums dc1 and dc2 
                    DataColumn dc1 = new DataColumn("Name", typeof(string));
                    DataColumn dc2 = new DataColumn("Value", typeof(string));
                    //adding datacolumn to datatable
                    dt.Columns.Add(dc1);
                    dt.Columns.Add(dc2);

                    string s = "";
                    StreamReader sr = new StreamReader(Server.MapPath(@"~\Measurements\" + filesdrop.SelectedValue));
                    sr.BaseStream.Seek(0, SeekOrigin.Begin);
                    s = sr.ReadLine();
                    d.tempType = s;
                    type.Text = s;
                    s = sr.ReadLine();
                    while (s != null)
                    {
                        drow = dt.NewRow();

                        drow["Name"] = s;
                        drow["Value"] = "";
                        dt.Rows.Add(drow);
                        //GridView2.  Rows.Add(s, '0');
                        s = sr.ReadLine();
                    }
                    sr.Close();


                    GridView2.DataSource = dt;
                    GridView2.DataBind();

                }
            }
            catch
            {
                id.Text = "Error";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cMeaurements m = new cMeaurements();
            m.cId = Convert.ToInt32(GridView1.SelectedValue.ToString());
            m.mType = d.tempType;
            m.mType = type.Text;
            new cMeaurementsDAL().InsertMeaurements(m);
            //added meausurement
            d.mId = new cMeaurementsDAL().getId(m);
            foreach (GridViewRow r in GridView2.Rows)
            {
                var ts = (r.FindControl("valuetxt") as TextBox).Text;
                d.field_name= (r.FindControl("namelbl") as Label).Text;
                d.field_value = Convert.ToInt32((r.FindControl("valuetxt") as TextBox).Text);
                d.tempType = type.Text;
                //detailsList.Add(d);
                new cMeaurementsDAL().InsertDetails(d);
            }
        }
    }
}