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
    public partial class DeptMark : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                //step 1
                string path = ConfigurationManager.AppSettings["Mydb"];
                con = new SqlConnection(path);
                con.Open();

                //step 2 Apply Command
                string k = "select Name from StudentRegDb WHERE Dept = @Dept1;";
                com = new SqlCommand(k, con);
                com.Parameters.AddWithValue("@Dept1", (string)Session["DeptFAC"]);

                //step 3 execute
                dr = com.ExecuteReader();

                //use data bound to get city from database
                ddlSelectStu.DataSource = dr;
                ddlSelectStu.DataTextField = "Name";
                ddlSelectStu.DataBind();
                ddlSelectStu.Items.Insert(0, "Select");

                dr.Close();
            }
        }

        protected void ddlSelectStu_SelectedIndexChanged(object sender, EventArgs e)
        {
            string path = ConfigurationManager.AppSettings["Mydb"];
            con = new SqlConnection(path);
            con.Open();
            //step 2 Apply Command
            string k = "select StudId,Name,Dept,Activity,Org from ActivityDB WHERE Name = @Name1;";
            com = new SqlCommand(k, con);
            com.Parameters.AddWithValue("@Name1", ddlSelectStu.SelectedValue.ToString());

            //step 3 
            dr = com.ExecuteReader();

            //connect record to data control
            marksallot.DataSource = dr;
            marksallot.DataBind();
            dr.Close();
        }

        protected void btnAlloted_Click(object sender, EventArgs e)
        {
            try
            {
                //step 1: create connection
                string path = ConfigurationManager.AppSettings["Mydb"].ToString();
                con = new SqlConnection(path);
                con.Open();

                //step 2: create command
                string k = "Insert into allotedb(ID,Name,Dept,ActivityName,OrganizationName,Mark) values(@id1,@name1,@dept1,@activity1,@org1,@mark1);";
                com = new SqlCommand(k, con);

                foreach (GridViewRow r2 in marksallot.Rows)
                {
                    TextBox txtMark = (TextBox)r2.FindControl("TxtMark");
                    com.Parameters.AddWithValue("@id1", r2.Cells[0].Text);
                    com.Parameters.AddWithValue("@name1", r2.Cells[1].Text);
                    com.Parameters.AddWithValue("@dept1", r2.Cells[2].Text);
                    com.Parameters.AddWithValue("@activity1", r2.Cells[3].Text);
                    com.Parameters.AddWithValue("@org1", r2.Cells[4].Text);
                    com.Parameters.AddWithValue("@mark1", txtMark.Text);


                }

                //step 3: execute command
                com.ExecuteNonQuery();

                Response.Write("<script>alert('Marks Alloted')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}