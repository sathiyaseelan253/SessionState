using System;

namespace SessionState
{
    public partial class DisplayForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["FirstName"] != null)
                {
                    lblFirstName.Text = Session["FirstName"].ToString();
                }
            if (Session["LastName"] != null)
            {
                lblLastName.Text = Session["LastName"].ToString();
            }
            if (Session["Email"] != null)
                {
                    lblEmail.Text = Session["Email"].ToString();
                }
            if (Session["Address"] != null)
            {
                lblAddress.Text = Session["Address"].ToString();
            }
            if (Session["City"] != null)
            {
                lblCity.Text = Session["City"].ToString();
            }
            if (Session["Pin Code"] != null)
            {
                lblPinCode.Text = Session["Pin Code"].ToString();
            }


        }
    }
}