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
        public static bool ConnectToDatabase()
        {    
            
            using (SqlConnection connection = new SqlConnection(path))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("spInsertToTables", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@FirstName",User.FirstName);

                command.Parameters.AddWithValue("@LastName", User.LastName);

                command.Parameters.AddWithValue("@Email", User.Email);

                command.Parameters.AddWithValue("@age",User.Age);

                command.Parameters.AddWithValue("@address",User.Address);

                command.Parameters.AddWithValue("@qualification",User.Qualification);

                command.Parameters.AddWithValue("@city",User.City);

                command.Parameters.AddWithValue("@pincode", User.Pincode);

                command.Parameters.AddWithValue("@password",User.Password);

                try
                {
                   
                    command.ExecuteNonQuery();
                    return true;
                }
                catch (Exception e)
                {
                    
                    return false;
                    
                }

            }
           


        }
    }
}