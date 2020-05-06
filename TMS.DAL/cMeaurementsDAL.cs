using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TMS.Common;

namespace TMS.DAL
{
    public class cMeaurementsDAL
    {
        public int InsertMeaurements(cMeaurements m)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

            if (con.State.ToString() == "open")
                con.Close();

            con.Open();

            string query = "INSERT INTO Measurement(cId,mType) values('"+m.cId+"','"+m.mType+"')";

            SqlCommand cmd = new SqlCommand(query, con);


            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();

            return result;
        }

        public List<cMeaurements> getMeasurements(int customerID)
        {
            List<cMeaurements> customers = new List<cMeaurements>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Measurement where cId='"+customerID+"' ";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cMeaurements u1 = new cMeaurements();
                u1.cId = Convert.ToInt32(reader["cId"]);
                u1.mType = reader["mType"].ToString();
                customers.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return customers;
        }

        public int InsertDetails(cDetails d)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

            if (con.State.ToString() == "open")
                con.Close();

            con.Open();

            string query = "INSERT INTO mDetails(mId,dFieldName,dFieldvalue) values('" + d.mId + "','" + d.field_name + "','" + d.field_value + "')";

            SqlCommand cmd = new SqlCommand(query, con);


            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();

            return result;
        }

        public int getId(cMeaurements m)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "SELECT mId FROM Measurement WHERE cId = '" + m.cId + "' and mType= '" + m.mType + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            Int32 count = (Int32)cmd.ExecuteScalar();

            /*
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();*/
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return count;
        }
        public int getId(string m)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "SELECT mId FROM Measurement WHERE mType= '" + m + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            Int32 count = (Int32)cmd.ExecuteScalar();

            /*
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();*/
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return count;
        }
    }
}
