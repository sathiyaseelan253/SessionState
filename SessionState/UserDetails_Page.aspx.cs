using System;

namespace SessionState
{
    public partial class UserDetails_Page : System.Web.UI.Page
    {
       

        protected void btnSendData_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = txtFirstName.Text;
            Session["LastName"] = txtLastName.Text;
            Session["Email"] = txtEmail.Text;
            Session["Address"] = txtAddress.Text;
            Session["City"] = txtCity.Text;
            Session["Pin Code"] = txtPin.Text;
            Response.Redirect("DisplayForm.aspx");
        }
    }
}