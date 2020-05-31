using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi
{
    public partial class SayfaYapisi : System.Web.UI.MasterPage
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                cnnclss.Connection().Close();
                username.Text = "|" + Session["User"].ToString();
                logoutBTN.CssClass = "logoutBTN";

            }
        }

        protected void logoutBTN_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Session.Remove("UserID");
            Session.Remove("UserNAME");
            Session.Remove("UserMAIL");
            Response.Redirect("~/pages/Default.aspx");
        }
    }
}