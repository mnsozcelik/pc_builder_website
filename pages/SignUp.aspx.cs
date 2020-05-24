using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace pc_toplama_sistemi.pages
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpBTN_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand command = new SqlCommand("insert into Tbl_Kullanicilar (Adi,KullaniciAdi,EPosta,Sifre) values (@t1,@t2,@t3,@t4)", cnnclss.Connection());
                command.Parameters.AddWithValue("@t1", signUpName.Text);
                command.Parameters.AddWithValue("@t2", signUpUsername.Text);
                command.Parameters.AddWithValue("@t3", signUpMail.Text);
                command.Parameters.AddWithValue("@t4", signUpPassword.Text);
                command.ExecuteNonQuery();
                cnnclss.Connection().Close();
                response.CssClass = "response";
                response.Text = "Kullanıcı Kaydedilmiştir. GİRİŞ Sayfasına Yönlendiriliyorsunuz.";
                signUpName.Text = "";
                signUpUsername.Text = "";
                signUpMail.Text = "";
                signUpPassword.Text = "";
                signUpPasswordAgain.Text = "";
                Response.AppendHeader("Refresh", "4;url=Login.aspx");
            }
            catch (Exception Ex)
            {
                response.CssClass = "response";
                response.Text = "Kullanıcı Kaydedilemedi.. HATA:"+ Ex;
            }

        }
    }
}