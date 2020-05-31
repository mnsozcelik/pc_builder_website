using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi
{
    public partial class AdminSayfaYapisi : System.Web.UI.MasterPage
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User"] != null)
            {
                SqlCommand command = new SqlCommand("select isAdmin from Tbl_Kullanicilar where KullaniciAdi= '" + Session["User"] + "'", cnnclss.Connection());
                String output = command.ExecuteScalar().ToString();
                if (output == "False")
                {
                    cnnclss.Connection().Close();
                    Response.Redirect("~/pages/Default.aspx");
                }
                else
                {
                    cnnclss.Connection().Close();
                    Adminusername.Text = "|" + Session["User"].ToString();
                    AdminLogoutBTN.CssClass = "logoutBTN";
                }

            }
            else
            {
                Response.Redirect("~/pages/Login.aspx");
            }
        }

        protected void AdminLogoutBTN_Click(object sender, EventArgs e)
        {
            Session.Remove("User");
            Session.Remove("UserID");
            Session.Remove("UserNAME");
            Session.Remove("UserMAIL");
            Response.Redirect("~/pages/Default.aspx");
        }
    }
}