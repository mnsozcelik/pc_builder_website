using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class Login : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                Response.Redirect("~/pages/Default.aspx");
            }
        }

        protected void loginBTN_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand command = new SqlCommand("select count(*) from Tbl_Kullanicilar where KullaniciAdi='" + usernameLogin.Text + "' and Sifre='" + passwordLogin.Text + "'", cnnclss.Connection());
                command.ExecuteNonQuery();
                String output = command.ExecuteScalar().ToString();

                if (output == "1")
                {
                    cnnclss.Connection().Close();
                    Session["User"] = usernameLogin.Text;
                    Response.Redirect("~/pages/Default.aspx");
                }
                else
                {
                    cnnclss.Connection().Close();
                    response.CssClass = "response";
                    response.Text = "Lütfen Bilgilerinizi Doğru Giriniz..";
                    usernameLogin.Text = "";
                    passwordLogin.Text = "";
                }
            }catch(Exception Ex)
            {
                cnnclss.Connection().Close();
                response.CssClass = "response";
                response.Text = Ex.Message;
                usernameLogin.Text = "";
                passwordLogin.Text = "";
            }            
        }
    }
}