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
    public class cCustomerDAL
    {
        public int InsertCustomer(cCustomer customer)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

            if (con.State.ToString() == "open")
                con.Close();

            con.Open();

            string query = "INSERT into Customers (cFullname,cCNIC,cAddress,cMobileNo,cRemarks)" +
                "values('" + customer.cFullName + "','" + customer.cCNIC + "','" + customer.cAddress + "','" + customer.cMobileNo + "','" + customer.cRemarks+ "')";

            SqlCommand cmd = new SqlCommand(query, con);


            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();

            return result;
        }


        public List<cCustomer> getCustomers()
        {
            List<cCustomer> customers = new List<cCustomer>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Customers";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cCustomer u1 = new cCustomer();
                u1.cId = Convert.ToInt32(reader["cId"]);
                u1.cFullName = reader["cFullName"].ToString();
                u1.cCNIC = reader["cCNIC"].ToString();
                u1.cAddress = reader["cAddress"].ToString();
                u1.cMobileNo = reader["cMobileNo"].ToString();
                u1.cRemarks = reader["cRemarks"].ToString();
                customers.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return customers;
        }
        public List<cCustomer> getCustomers(string customername)
        {
            List<cCustomer> customers = new List<cCustomer>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Customers where cFullName LIKE '%" + customername + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cCustomer u1 = new cCustomer();
                u1.cId = Convert.ToInt32(reader["cId"]);
                u1.cFullName = reader["cFullName"].ToString();
                u1.cCNIC = reader["cCNIC"].ToString();
                u1.cAddress = reader["cAddress"].ToString();
                u1.cMobileNo = reader["cMobileNo"].ToString();
                u1.cRemarks = reader["cRemarks"].ToString();
                customers.Add(u1);
            }
            reader.Close();
            con.Close();
            con.Dispose();
            cmd.Dispose();
            return customers;
        }
        public int RemoveCustomer(int customerID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "DELETE FROM Customers WHERE cId ='" + customerID + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                var result = cmd.ExecuteNonQuery();
                con.Close();
                cmd.Dispose();
                con.Dispose();
                return result;
            }
            catch
            {
                return -1;
            }
        }
        public int UpdateCustomer(cCustomer customer)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "UPDATE Customers " +
                "SET cFullName = '" + customer.cFullName + "' , cCNIC = '" + customer.cCNIC + "' , cAddress = '" + customer.cAddress + "' , cMobileNo = '" + customer.cMobileNo + "' , cRemarks = '" + customer.cRemarks + "' " +
                " WHERE cId ='" + customer.cId + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }

        public int getId(cCustomer c)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "select cId from Customers where cFullName = '" + c.cFullName + "' and cCNIC= '" + c.cCNIC + "' and cAddress ='" + c.cAddress + "' and cMobileNo = '" + c.cMobileNo + "' and cRemarks = '" + c.cRemarks + "'";

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
