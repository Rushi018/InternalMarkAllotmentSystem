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
    public partial class View_History : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string id = (string)Session["StudentID"];

                //step 1: create connection
                string path = ConfigurationManager.AppSettings["Mydb"].ToString();
                con = new SqlConnection(path);
                con.Open();

                //step 2: create command
                string k = "SELECT * FROM allotedb WHERE ID = @id1;";
                com = new SqlCommand(k, con);
                com.Parameters.AddWithValue("@id1", id);

                //step 3: execute command
                dr = com.ExecuteReader();
                if (dr.Read())
                {
                    lblId.Text = dr["ID"].ToString();
                    lblName1.Text = dr["Name"].ToString();
                    lblDept1.Text = dr["Dept"].ToString();
                    lblMarkalloted.Text = dr["Mark"].ToString();
                    dr.Close();
                }
                else
                {
                    Response.Write("Data not found");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}