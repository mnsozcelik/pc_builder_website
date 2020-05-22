using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace pc_toplama_sistemi.pages
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void contactButton_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("insert into Tbl_KullaniciMesajlari (MesajAd,MesajMail,MesajMesaj) values (@t1,@t2,@t3)", cnnclss.Connection());
            command.Parameters.AddWithValue("@t1", contactNameTB.Text);
            command.Parameters.AddWithValue("@t2", contactMailTB.Text);
            command.Parameters.AddWithValue("@t3", contactMessageTB.Text);
            command.ExecuteNonQuery();
            cnnclss.Connection().Close();
            response.CssClass = "response";
            response.Text = "Mesajınız Kaydedilmiştir..";
            contactNameTB.Text = "";
            contactMailTB.Text = "";
            contactMessageTB.Text = "";
        }
    }
}