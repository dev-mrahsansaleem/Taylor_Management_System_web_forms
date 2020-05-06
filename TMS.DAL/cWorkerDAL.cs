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
    public class cWorkerDAL
    {
        public int InsertWorker(cWorker worker)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "INSERT into Workers (wFullname,wCNIC,wAddress,wMobileNo,wEmergencyContact,wdateOfJoin,uIsActive)" + 
                "values('" + worker.wFullName + "','" + worker.wCNIC + "','" + worker.wAddress + "','" + worker.wMobileNo + "','" + worker.wEmergencyContact + "','" + worker.wdateOfJoin + "','" + worker.wIsActive + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }


        public List<cWorker> getWorkers()
        {
            List<cWorker> workers = new List<cWorker>();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Workers";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cWorker u1 = new cWorker();
                u1.wId = Convert.ToInt32(reader["wId"]);
                u1.wFullName = reader["wFullName"].ToString();
                u1.wCNIC = reader["wCNIC"].ToString();
                u1.wAddress = reader["wAddress"].ToString();
                u1.wMobileNo = reader["wMobileNo"].ToString();
                u1.wEmergencyContact = reader["wEmergencyContact"].ToString();
                u1.wdateOfJoin = Convert.ToDateTime(reader["wdateOfJoin"]);
                u1.wIsActive = Convert.ToBoolean(reader["uIsActive"]);
                workers.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return workers;
        }
        public List<cWorker> getWorkers(string workername)
        {
            List<cWorker> workers = new List<cWorker>();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Workers where wFullName LIKE '%" + workername + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cWorker u1 = new cWorker();
                u1.wId = Convert.ToInt32(reader["wId"]);
                u1.wFullName = reader["wFullName"].ToString();
                u1.wCNIC = reader["wCNIC"].ToString();
                u1.wAddress = reader["wAddress"].ToString();
                u1.wMobileNo = reader["wMobileNo"].ToString();
                u1.wEmergencyContact = reader["wEmergencyContact"].ToString();
                u1.wdateOfJoin = Convert.ToDateTime(reader["wdateOfJoin"]);
                u1.wIsActive = Convert.ToBoolean(reader["uIsActive"]);
                workers.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return workers;
        }

        public int UpdateWorker(cWorker worker)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "UPDATE Workers "+
                "SET wFullname = '" + worker.wFullName + "',wCNIC='" + worker.wCNIC + "',wAddress='" + worker.wAddress + "',wMobileNo='" + worker.wMobileNo + "',wEmergencyContact='" + worker.wEmergencyContact + "',wdateOfJoin='" + worker.wdateOfJoin + "',uIsActive='" + worker.wIsActive + "'" +
                " WHERE wId ='" + worker.wId+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }

        public int RemoveWorker(int workerid)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "DELETE FROM Workers WHERE wId ='" + workerid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }
    }
}
