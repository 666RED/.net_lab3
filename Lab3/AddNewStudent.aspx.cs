using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class AddNewStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInfo.aspx");
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            string name = StudentName.Text;
            string id = StudentId.Text;
            string course = DropDownList1.SelectedValue;

            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(id) || course.Equals("-1"))
            {
                Label4.Text = "Please insert all fields";
            }else
            {
                string conString = "Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False";

                SqlConnection con;
                SqlCommand command;
                SqlDataReader reader;

                con = new SqlConnection(conString);
                command = con.CreateCommand();
                command.CommandType = CommandType.Text;

                command.CommandText = "SELECT studentId FROM studentTableLab6 WHERE studentId = '" + id + "'";

                using (con)
                {
                    con.Open();
                    reader = command.ExecuteReader();

                    if (reader.HasRows)
                    {
                        Label4.Text = "Student Id already existed";
                    }else
                    {
                        con.Close();

                        con.Open();

                        command.CommandText = "INSERT INTO studentTableLab6 VALUES (@name, @id, @course)";
                        command.Parameters.AddWithValue("@name", name);
                        command.Parameters.AddWithValue("@id", id);
                        command.Parameters.AddWithValue("@course", course);

                        command.ExecuteNonQuery();

                        Response.Redirect("StudentInfo.aspx");
                    }
                }
            }
        }
    }
}