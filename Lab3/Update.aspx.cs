using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string studentId = Request.QueryString["studentId"];

                string conString = "Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False";

                SqlConnection con;
                SqlCommand command;
                SqlDataReader reader;

                con = new SqlConnection(conString);
                command = con.CreateCommand();
                command.CommandType = CommandType.Text;

                command.CommandText = "SELECT * FROM studentTableLab6 WHERE studentId = '" + studentId + "'";

                using (con)
                {
                    con.Open();
                    reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        StudentName.Text = reader["studentName"].ToString();
                        StudentId.Text = reader["studentId"].ToString();

                        DropDownList1.ClearSelection();

                        string courseValue = reader["studentCourse"].ToString();
                        ListItem selectedListItem = DropDownList1.Items.FindByValue(courseValue);
                        if (selectedListItem != null)
                        {
                            selectedListItem.Selected = true;
                        }
                    }

                    con.Close();
                }
            }

        }
        protected void SaveButtonClick(object sender, EventArgs e)
        {
            string studentId = Request.QueryString["studentId"];
            string name = StudentName.Text;
            string course = DropDownList1.SelectedValue;

            Label4.Text = name + "," + course + "." + studentId;

            string conString = "Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False";

            SqlConnection con;
            SqlCommand command;

            con = new SqlConnection(conString);
            con.Open();
            command = con.CreateCommand();
            command.CommandType = CommandType.Text;

            command.CommandText = "UPDATE studentTableLab6 SET studentName = @name, studentCourse = @course WHERE studentId = @studentId";
            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@course", course);
            command.Parameters.AddWithValue("@studentId", studentId);


            command.ExecuteNonQuery();

            con.Close();

            Response.Redirect("StudentInfo.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentInfo.aspx");
        }
    }
}