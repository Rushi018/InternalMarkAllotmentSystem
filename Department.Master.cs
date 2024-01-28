using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternalMarkAllotmentSystem
{
    public partial class Department : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFId.Text = (string)Session["facID"].ToString();
            lblDeptN.Text = (string)Session["DeptFAC"].ToString();
        }
    }
}