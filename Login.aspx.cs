using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace InternalMarkAllotmentSystem
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Step1: Open DataBase
            string path = ConfigurationManager.AppSettings["Mydb"];
            con = new SqlConnection(path);
            con.Open();

            // Step2: Apply Command (Parameterised Method)
            string selectQuery = " Select * From StudentRegDb Where Email=@Email1 And Password=@Password1 ";
            com = new SqlCommand(selectQuery, con);

            // Pass Control To Query
            com.Parameters.AddWithValue("@Email1", txtEmail.Text);
            com.Parameters.AddWithValue("@Password1", txtPass.Text);

            dr = com.ExecuteReader();


            if (dr.Read())
            {
                Session["StudentID"] = dr["studentid"].ToString();
                Session["Name"] = dr["Name"].ToString();
                Session["Dept"] = dr["Dept"].ToString();
                Response.Redirect("StudentPanel.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Email or Password')</script>");
            }
        }
    }
}