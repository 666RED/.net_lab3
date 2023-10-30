using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Login : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string id = IDTextBox.Text;
            string password = PasswordTextBox.Text;

            if (id.Equals("admin") && password.Equals("hello world")) 
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                StatusLabel.Text = "Login unsuccessful!";
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            IDTextBox.Text = "";
            PasswordTextBox.Text = "";
            StatusLabel.Text = "";
        }
    }
}