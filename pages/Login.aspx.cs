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
                SqlCommand command = new SqlCommand("select isAdmin from Tbl_Kullanicilar where KullaniciAdi= '" + Session["User"] + "'", cnnclss.Connection());
                String output = command.ExecuteScalar().ToString();
                if(output == "True")
                {
                    cnnclss.Connection().Close();
                    Response.Redirect("~/pages/AdminDefault.aspx");
                }
                else
                {
                    cnnclss.Connection().Close();
                    Response.Redirect("~/pages/Default.aspx");
                }
                
            }
        }

        protected void loginBTN_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand command = new SqlCommand("select count(*) from Tbl_Kullanicilar where KullaniciAdi='" + usernameLogin.Text + "' and Sifre='" + passwordLogin.Text + "'", cnnclss.Connection());
                cnnclss.Connection().Close();
                String output = command.ExecuteScalar().ToString();
                Session["User"] = usernameLogin.Text;
                SqlCommand usercommand = new SqlCommand("select * from Tbl_Kullanicilar where KullaniciAdi='"+ Session["User"] +"'", cnnclss.Connection());
                SqlDataReader userdr = usercommand.ExecuteReader();
                while (userdr.Read())
                {
                    Session["UserID"] = userdr[0].ToString();
                    Session["UserNAME"] = userdr[1].ToString();
                    Session["UserMAIL"] = userdr[5].ToString();
                }
                if (output == "1")
                {
                    SqlCommand commandAdmin = new SqlCommand("select isAdmin from Tbl_Kullanicilar where KullaniciAdi= '" + usernameLogin.Text + "'", cnnclss.Connection());
                    String outputAdmin = commandAdmin.ExecuteScalar().ToString();
                    if (outputAdmin == "True")
                    {
                        cnnclss.Connection().Close();
                        Response.Redirect("~/pages/AdminDefault.aspx");
                    }
                    else
                    {
                        cnnclss.Connection().Close();
                        Response.Redirect("~/pages/Default.aspx");
                    }
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