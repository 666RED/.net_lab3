using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Lab3
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // change later
            StatusLabel.Text = "Your feedback has sent to us successfully!";
            IDTextbox.Text = "";
            NameTextbox.Text = "";
            CommentTextbox.InnerText = "";
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            IDTextbox.Text = "";
            NameTextbox.Text = "";
            CommentTextbox.InnerText = "";
        }
    }
}