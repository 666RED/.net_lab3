using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

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
            string conString = "Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False";

            SqlConnection con;
            SqlCommand command;
            SqlDataReader reader;

            con = new SqlConnection(conString);
            command = con.CreateCommand();
            command.CommandType = CommandType.Text;

            string id = IDTextBox.Text;
            string password = PasswordTextBox.Text;

            command.CommandText = "SELECT id, password FROM Login";
            using(con) // no need to worry about garbage collector (auto close the connection)
            {
                con.Open();
                reader = command.ExecuteReader();

                while(reader.Read())
                {
                    if (id.Equals(reader.GetString(0)) && password.Equals(reader.GetString(1)))
                    {
                        Response.Redirect("default.aspx");
                    }
                }
            }

            StatusLabel.Text = "Login unsuccessful!";
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            IDTextBox.Text = "";
            PasswordTextBox.Text = "";
            StatusLabel.Text = "";
        }
    }
}