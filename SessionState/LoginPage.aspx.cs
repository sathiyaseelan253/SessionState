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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string firstName = txtName.Text;
            string password = txtPass.Text;
            bool status=UserRepository.CheckUser(firstName,password);
            if (status)
            {
                lbltext.Visible = false;
                Response.Redirect("Greetings.aspx");
            }
            else
            {
                lbltext.Visible = true;
            }

        }

      

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            UserDetails_Page page = new UserDetails_Page();
            page.btnSendData_Click(sender,e);
          

        }
    }
    }
