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
    public partial class Student_Activity : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            //step1 - open database
            string path = ConfigurationManager.AppSettings["Mydb"];
            con = new SqlConnection(path);
            con.Open();

            //step 2
            //apply command (parameterized method)
            string kl = "select * from StudentRegDb WHERE studentid = @studentID";
            com = new SqlCommand(kl, con);  //pass through parameter
            com.Parameters.AddWithValue("@studentID", (string)Session["studentid"]);


            //step 3
            //how to read data reader
            dr = com.ExecuteReader();

            //how to check data reader
            if (dr.Read())
            {
                //display column data value to specific control
                txtId.Text = dr["studentid"].ToString();
                txtName.Text = dr["Name"].ToString();
                txtDept.Text = dr["Dept"].ToString();

            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                //step1 - open database
                string path = ConfigurationManager.AppSettings["Mydb"];
                con = new SqlConnection(path);
                con.Open();

                //step 2
                string kl = "Insert into ActivityDB (StudId,Name,Dept,Activity,Org,DOA,Remark) values (@StudId,@Name,@Dept,@Activity1,@org,@DOA1,@Remark);";
                com = new SqlCommand(kl, con);  //pass through parameter
                com.Parameters.AddWithValue("@StudId", txtId.Text);
                com.Parameters.AddWithValue("@Name", txtName.Text);
                com.Parameters.AddWithValue("@Dept", txtDept.Text);
                com.Parameters.AddWithValue("@Activity1", txtActivityN.Text);
                com.Parameters.AddWithValue("@org", txtOrg.Text);
                com.Parameters.AddWithValue("@DOA1", txtDoa.Text);
                com.Parameters.AddWithValue("@Remark", txtRemark.Text);

                //step 3
                //how to read data reader
                com.ExecuteNonQuery();

                Response.Write("<script>alert('Successfully Submitted')</script>");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}