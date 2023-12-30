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
    public partial class DeleteStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string studentId = Request.QueryString["studentId"];

            string conString = "Data Source =.\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False";

            SqlConnection con;
            SqlCommand command;

            con = new SqlConnection(conString);
            command = con.CreateCommand();
            command.CommandType = CommandType.Text;

            con.Open();

            command.CommandText = "DELETE FROM studentTableLab6 WHERE studentId = '" + studentId + "'";

            command.ExecuteNonQuery();

            con.Close();

            Response.Redirect("StudentInfo.aspx");
        }
    }
}