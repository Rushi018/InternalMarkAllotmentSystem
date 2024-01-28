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
    public partial class Sturegs : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Step1: Open DataBase
            string path = ConfigurationManager.AppSettings["Mydb"];
            con = new SqlConnection(path);
            con.Open();

            // Step2: Apply Command (Parameterised Method)
            string insertQuery = "Insert into StudentRegDb (studentid, Name, Email, Dept, Password, Date) values (@studentid1, @Name1, @Email1, @Dept1, @Password1,@Date1)";
            com = new SqlCommand(insertQuery, con);

            // Pass Control To Query
            com.Parameters.AddWithValue("@studentid1", txtStudID.Text);
            com.Parameters.AddWithValue("@Name1", txtStudName.Text);
            com.Parameters.AddWithValue("@Email1", txtEmail.Text);
            com.Parameters.AddWithValue("@Dept1", ddlStudDept.SelectedValue);
            com.Parameters.AddWithValue("@Password1", txtPass.Text);
            com.Parameters.AddWithValue("@Date1", DateTime.Now.ToString("dd/MM/yyyy"));

            // Perform insert
            com.ExecuteNonQuery();

            Response.Write("<script>alert('Successfully registered')</script>");

        }

        protected void ddlStudDept_SelectedIndexChanged(object sender, EventArgs e)
        {

            // Step1: Open DataBase
            string path = ConfigurationManager.AppSettings["Mydb"];
            con = new SqlConnection(path);
            con.Open();

            // Step2: Apply Command (Parameterised Method)
            string k = "select count(studentid)+1 from StudentRegDb";
            com = new SqlCommand(k, con);
            txtStudID.Text = "STU-" + DateTime.Now.ToString("yyyy") + "-" + ddlStudDept.SelectedValue.ToString() + "-" + "00-" + com.ExecuteScalar().ToString();

            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}