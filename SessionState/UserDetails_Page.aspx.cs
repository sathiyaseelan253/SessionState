using System;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class UserDetails_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Error.Visible = false;
            LoadCityDropDownList();
            DisplayCity();
        }

        public void LoadCityDropDownList()
        {
            ListItem li1 = new ListItem("UG");
            ddlQualification.Items.Add(li1);

            ListItem li2 = new ListItem("PG");
            ddlQualification.Items.Add(li2);

            ListItem li3 = new ListItem("Doctorate");
            ddlQualification.Items.Add(li3);
        }
        public void DisplayCity()
        {
            ListItem li1 = new ListItem("Chennai");
            ddlCity.Items.Add(li1);

            ListItem li2 = new ListItem("Coimbatore");
            ddlCity.Items.Add(li2);

            ListItem li3 = new ListItem("Madurai");
            ddlCity.Items.Add(li3);

            ListItem li4 = new ListItem("Karur");
            ddlCity.Items.Add(li4);

            ListItem li5 = new ListItem("Theni");
            ddlCity.Items.Add(li5);

            ListItem li6 = new ListItem("Salem");
            ddlCity.Items.Add(li6);
        }
     

        protected void Submit_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            int age = Convert.ToInt32(txtAge.Text);
            string Address = txtAddress.Text;
            string Qualification = ddlQualification.Text;
            string City = ddlCity.Text;
            string PinCode = txtPin.Text;
            string password = txtPassword.Text;
            new User(firstName, lastName, email, age, Address, Qualification, City, PinCode, password);

            bool status=UserRepository.ConnectToDatabase();
            if (status)
            {

                  Response.Redirect("DisplayForm.aspx");
                Response.Redirect("LoginPage.aspx");
            }
            else       
                Error.Visible = true;
            
        }
    }
}