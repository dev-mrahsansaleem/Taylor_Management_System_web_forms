using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TMS.Common;

namespace TMS.DAL
{
    public class cUserDAL
    {
        public int InsertUser(cUsers user)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);

            if (con.State.ToString() == "open")
                con.Close();

            con.Open();

            string query = "INSERT into Users (uFullname,uUserName,uPassword,uType,uIsActive) values('"+user.uFullName+"','"+user.uUserName+"','"+user.uPassword+"','"+user.uType+"','"+user.uIsActive+"')";

            SqlCommand cmd = new SqlCommand(query, con);
            
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();


            return result;
        }
        
        public List<cUsers> getUsers()
        {
            List<cUsers> users = new List<cUsers>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Users";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                cUsers u1 = new cUsers();
                u1.uId = Convert.ToInt32(reader["uId"]);
                u1.uFullName = reader["uFullName"].ToString();
                u1.uPassword = reader["uPassword"].ToString();
                u1.uType = reader["uType"].ToString();
                u1.uUserName = reader["uUserName"].ToString();
                u1.uIsActive = Convert.ToBoolean(reader["uIsActive"]);
                users.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return users;
        }

        public DataTable getUsers(bool datatablecall)
        {
            //List<cUsers> users = new List<cUsers>();
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Users";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);

            /* SqlDataReader reader = cmd.ExecuteReader();
             while(reader.Read())
             {
                 cUsers u1 = new cUsers();
                 u1.uId = Convert.ToInt32(reader["uId"]);
                 u1.uFullName = reader["uFullName"].ToString();
                 u1.uPassword = reader["uPassword"].ToString();
                 u1.uType = reader["uType"].ToString();
                 u1.uUserName = reader["uUserName"].ToString();
                 u1.uIsActive = Convert.ToBoolean(reader["uIsActive"]);
                 users.Add(u1);
             }
             reader.Close();*/
            con.Close();

            con.Dispose();
            return dt;
        }



        public List<cUsers> getUsers(string username)
        {
            List<cUsers> users = new List<cUsers>();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();

            string query = "select * from Users where uUserName LIKE '%"+username+"%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cUsers u1 = new cUsers();
                u1.uId = Convert.ToInt32(reader["uId"]);
                u1.uFullName = reader["uFullName"].ToString();
                u1.uPassword = reader["uPassword"].ToString();
                u1.uType = reader["uType"].ToString();
                u1.uUserName = reader["uUserName"].ToString();
                u1.uIsActive = Convert.ToBoolean(reader["uIsActive"]);
                users.Add(u1);
            }
            reader.Close();
            con.Close();

            con.Dispose();
            cmd.Dispose();
            return users;
        }
        public int RemoveUser(int userId)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "DELETE FROM Users WHERE uId ='" + userId + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }
        public int UpdateUser(cUsers user)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            if (con.State == System.Data.ConnectionState.Open)
                con.Close();
            con.Open();
            string query = "UPDATE Users " +
                "SET uFullName = '" + user.uFullName + "' , uUserName = '" + user.uUserName + "' , uPassword = '" + user.uPassword + "' , uType = '" + user.uType + "' , uIsActive = '" + user.uIsActive + "'" +
                " WHERE uId ='" + user.uId + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            var result = cmd.ExecuteNonQuery();
            con.Close();
            cmd.Dispose();
            con.Dispose();
            return result;
        }

    }
}
