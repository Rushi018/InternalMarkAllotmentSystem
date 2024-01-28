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
    public partial class Departmentlogin : System.Web.UI.Page
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
            try
            {
                //step 1: create connection
                string path = ConfigurationManager.AppSettings["Mydb"].ToString();
                con = new SqlConnection(path);
                con.Open();

                //step 2: create command
                string k = "SELECT * FROM DeptloginDB WHERE facultyid = @facid1 AND password = @Pass1;";
                com = new SqlCommand(k, con);
                com.Parameters.AddWithValue("@facid1", txtFid.Text);
                com.Parameters.AddWithValue("@Pass1", txtFpass.Text);

                //step 3: execute command
                dr = com.ExecuteReader();


                if (dr.Read())
                {
                    Session["facID"] = dr["facultyid"].ToString();
                    Session["DeptFAC"] = dr["dept"].ToString();
                    Response.Redirect("Departmentpanel.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid ID or Password')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}