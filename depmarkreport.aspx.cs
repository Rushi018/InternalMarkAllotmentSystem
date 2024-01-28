using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    //Library
using System.Configuration;
namespace InternalMarkAllotmentSystem
{
    public partial class depmarkreport : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dept = (string)Session["DeptFAC"];

                string path = ConfigurationManager.AppSettings["Mydb"];
                con = new SqlConnection(path);
                con.Open();

                // Count the number of students
                string countQuery = "SELECT COUNT(*) FROM allotedb WHERE Dept = @Dept;";
                SqlCommand countCmd = new SqlCommand(countQuery, con);
                countCmd.Parameters.AddWithValue("@Dept", dept);
                int studentCount = (int)countCmd.ExecuteScalar();

                // Display the count
                lblCount.Text = studentCount.ToString();

                //step 2 Apply Command
                string k = "select * from allotedb WHERE Dept = @Dept;";
                com = new SqlCommand(k, con);
                com.Parameters.AddWithValue("@Dept", dept);
                //step 3 
                dr = com.ExecuteReader();

                //connect record to data control
                MarkReport.DataSource = dr;
                MarkReport.DataBind();
                dr.Close();
            }
        }
    }
}