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
    public class cAssignedWorkDAL
    {
        public int InsertAssignedWork(cAssignedWork assignedWork)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State.ToString() == "open")
                con.Close();
            con.Open();
            string query = "INSERT into AssignedWork ([wId],[mId],[astatus],[aDueDate],[aRemarks],[aPrice])"+
                " values('" + assignedWork.wId + "','" + assignedWork.mId + "','" + assignedWork.astatus + "','" + assignedWork.aDueDate + "','" + assignedWork.aRemarks + "','" + assignedWork.aPrice + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }

        public int getAssignedTaskToWorker(int wId, string v)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State.ToString() == "open")
                con.Close();
            con.Open();
            string query = "select COUNT(*) from AssignedWork where wId='" + wId + "' and astatus='"+v+"'";

            SqlCommand cmd = new SqlCommand(query, con);
            Int32 count = (Int32)cmd.ExecuteScalar();

            /*SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();*/
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return count;
        }

        public int getAssignedTaskToWorker(int workerId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State.ToString() == "open")
                con.Close();
            con.Open();
            string query = "select COUNT(*) from AssignedWork where wId='"+ workerId + "'";

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
        public List<cAssignedWork> getAssignedWorks()
        {
            List<cAssignedWork> works = new List<cAssignedWork>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from AssignedWork";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cAssignedWork u1 = new cAssignedWork();
                u1.mId = Convert.ToInt32(reader["mId"]);
                u1.aId = Convert.ToInt32(reader["aId"]);
                u1.wId = Convert.ToInt32(reader["wId"]);
                u1.aPrice = Convert.ToInt32(reader["aPrice"]);
                u1.aRemarks = reader["aRemarks"].ToString();
                u1.aDueDate = Convert.ToDateTime(reader["aDueDate"]);
                u1.astatus = reader["astatus"].ToString();
                works.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return works; ;
        }
        public int UpdateAssignedWork(cAssignedWork w1)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "UPDATE AssignedWork " +
                "SET mId = '" + w1.mId + "' , wId = '" + w1.wId + "' , aPrice = '" + w1.aPrice + "' , aRemarks = '" + w1.aRemarks + "' , aDueDate = '" + w1.aDueDate + "' , astatus = '" + w1.astatus + "' " +
                " WHERE aId ='" + w1.aId + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }
        public int RemoveAssignedWork(int assignedWorkid)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "DELETE FROM AssignedWork WHERE aId ='" + assignedWorkid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }
    }
}
