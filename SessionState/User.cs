using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SessionState
{

    public class User
    {
        public static string FirstName { get; set; }
        public static string LastName { get; set; }
        public static string Email { get; set; }
        public static string Address { get; set; }
        public static string City { get; set; }
        public static int Age { get; set; }
        public static string Qualification { get; set; }
        public static string Pincode { get; set; }
        public static string Password { get; set; }
        public User()
        {

        }
        public User(string fname,string lName, string email, int age,string address, string qualification, string city, string pincode,string pass)
        {
            FirstName = fname;
            LastName = lName;
            Email = Email;
            Address = address;
            City = city;
            Age = age;
            Pincode = pincode;
            Qualification = qualification;
            Password = pass;
        }
    }
}