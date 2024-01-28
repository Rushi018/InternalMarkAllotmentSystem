using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternalMarkAllotmentSystem
{
    public partial class Student : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = (string)Session["Name"].ToString();
            lblDept.Text = (string)Session["Dept"].ToString();
        }

        
    }
}