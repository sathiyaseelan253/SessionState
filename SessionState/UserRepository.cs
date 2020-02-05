using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System;

namespace SessionState
{
    public class UserRepository
    {
       internal static string path = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

        public static bool CheckUser(string fName,string pass)
        {

            SqlConnection con = new SqlConnection(path);
            SqlCommand com = new SqlCommand("sp_CheckUser", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("@firstName", fName);
            SqlParameter p2 = new SqlParameter("@password", pass);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                return true;
            }
            else
            {
                return false;
             
            }
        }
        public static void ConnectToDatabase()
        {
            
            
            using (SqlConnection connection = new SqlConnection(path))
            {
                SqlCommand command = new SqlCommand("spInsertIntoTables", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add("@FirstName", SqlDbType.VarChar).
                    
                    
                    Value = User.FirstName;

                command.Parameters.Add("@LastName", SqlDbType.VarChar).Value = User.LastName;

                command.Parameters.Add("@Email", SqlDbType.VarChar).Value = User.Email;

                command.Parameters.Add("@age", SqlDbType.Int).Value =User.Age;

                command.Parameters.Add("@address", SqlDbType.VarChar).Value = User.Address;

                command.Parameters.Add("@qualification", SqlDbType.VarChar).Value = User.Qualification;

                command.Parameters.Add("@city", SqlDbType.VarChar).Value = User.City;

                command.Parameters.Add("@pincode", SqlDbType.VarChar).Value = User.Pincode;

                command.Parameters.Add("@password", SqlDbType.VarChar).Value = User.Password;

                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                }
                catch (Exception e)
                {

                    System.Console.WriteLine(e.Message);
                }

            }
           


        }
    }
}