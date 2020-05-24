using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pc_toplama_sistemi
{
    public partial class SayfaYapisi : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"] != null)
            {
                username.Text = "|"+Session["User"].ToString();
                logoutBTN.CssClass = "logoutBTN";
            }
        }

        protected void logoutBTN_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Response.Redirect("~/pages/Default.aspx");
        }
    }
}