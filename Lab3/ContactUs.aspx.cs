using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

using System.Data;
using System.Data.SqlClient;

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
            if(HiddenField1.Value == "1")
            {
                string ID = IDTextbox.Text;
                string Name = NameTextbox.Text;
                string Comment = CommentTextbox.InnerText;

                SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False");

                try
                {
                    con.Open();

                    SqlDataAdapter cmd = new SqlDataAdapter(); // Create an object of SqlDataAdapter class
                    cmd.InsertCommand = new SqlCommand("INSERT INTO MyTable VALUES (@id, @name, @comment) ", con); // Pass the connection object to cmd

                    cmd.InsertCommand.Parameters.Add("@id", SqlDbType.NText).Value = ID;
                    cmd.InsertCommand.Parameters.Add("@name", SqlDbType.Text).Value = Name;
                    cmd.InsertCommand.Parameters.Add("@comment", SqlDbType.Text).Value = Comment;

                    cmd.InsertCommand.ExecuteNonQuery(); // to execute the SQL command
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
                finally
                {
                    con.Close();
                }
                // change later
                StatusLabel.Text = "Your feedback has sent to us successfully!";
                IDTextbox.Text = "";
                NameTextbox.Text = "";
                CommentTextbox.InnerText = "";
            }else
            {
                StatusLabel.Text = "";
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            StatusLabel.Text = "";
            IDTextbox.Text = "";
            NameTextbox.Text = "";
            CommentTextbox.InnerText = "";
        }
    }
}