using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminMessages : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                getAllMessages();
            }
        }

        public void getAllMessages()
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_KullaniciMesajlari", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            messagesDataList.DataSource = read;
            messagesDataList.DataBind();
            cnnclss.Connection().Close();
        }

        protected void messageButton_Click(object sender, EventArgs e)
        {
            string msgid = Request.QueryString["Mesajid"];
            SqlCommand messageCommand = new SqlCommand("select MesajAd, MesajMail, MesajMesaj from Tbl_KullaniciMesajlari where Tbl_KullaniciMesajlari.Mesajid =@p1", cnnclss.Connection());
            messageCommand.Parameters.AddWithValue("@p1", msgid);
            SqlDataReader dr = messageCommand.ExecuteReader();
            while (dr.Read())
            {
                nameLBL.Text = dr[0].ToString();
                messageLBL.Text = dr[2].ToString();
                mailLBL.Text = Convert.ToString(dr[1]);
            }
            cnnclss.Connection().Close();
        }

        protected void messageDelete_Click(object sender, EventArgs e)
        {
            string msgid = Request.QueryString["Mesajid"];
            SqlCommand command = new SqlCommand("delete from Tbl_KullaniciMesajlari where Mesajid=@p1", cnnclss.Connection());
            command.Parameters.AddWithValue("@p1", msgid);
            command.ExecuteNonQuery();
            cnnclss.Connection().Close();
            nameLBL.Text = "";
            messageLBL.Text = "";
            mailLBL.Text = "";
            Response.Redirect("AdminMessages.aspx");
            getAllMessages();
        }
    }
}