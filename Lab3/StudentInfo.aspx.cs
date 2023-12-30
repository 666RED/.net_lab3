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
    public partial class StudentInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conString = "Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False";

            SqlConnection con;
            SqlCommand command;
            SqlDataReader reader;

            con = new SqlConnection(conString);
            command = con.CreateCommand();
            command.CommandType = CommandType.Text;

            command.CommandText = "SELECT * FROM studentTableLab6";

            using (con)
            {
                con.Open();
                reader = command.ExecuteReader();

                while (reader.Read())
                {

                    TableRow row = new TableRow();
                    TableCell nameCell = new TableCell();
                    TableCell idCell = new TableCell();
                    TableCell courseCell = new TableCell();
                    TableCell selectCell = new TableCell();
                    TableCell deleteCell = new TableCell();

                    nameCell.Text = reader["studentName"].ToString();
                    idCell.Text = reader["studentId"].ToString();
                    courseCell.Text = reader["studentCourse"].ToString();
                    selectCell.Text = "<a href='Update.aspx?studentId=" + idCell.Text + "'>Select</a>";
                    deleteCell.Text = "<a href='#' onclick='confirmDelete(\"" + reader["studentId"].ToString() + "\")'>Delete</a>";
                    row.Cells.Add(nameCell);
                    row.Cells.Add(idCell);
                    row.Cells.Add(courseCell);
                    row.Cells.Add(selectCell);
                    row.Cells.Add(deleteCell);
                    Table1.Rows.Add(row);
                }
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void AddNewStudentButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewStudent.aspx");
        }
    }
}