using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionState
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbltext.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string firstName = txtName.Text;
            string password = txtPass.Text;
            bool status=UserRepository.CheckUser(firstName,password);
            if (status)
            {
                Response.Redirect("Greetings.aspx");
            }
            else
            lbltext.Visible = true;
          

        }

      

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("UserDetails_Page.aspx");

        }
    }
    }
                  