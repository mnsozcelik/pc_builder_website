using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class PCBuilder : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            getPrdCpu();
            getPrdMainboard();
            getPrdRam();
            getPrdGpu();
            getPrdPsu();
            getPrdDisc();
            if (Session["UserID"] != null)
            {
                getUserBasket();
            }
            else
            {
                sepetPanel.Visible = false;
            }
            if (Request.QueryString["Silid"] != null)
            {
                deleteUserBasketItem(Request.QueryString["Silid"]);
            }
            if(Request.QueryString["Ekleid"] != null)
            {
                addUserBasketItem(Request.QueryString["Ekleid"]);
            }
        }
        protected void sepetProBTN_Click(object sender, EventArgs e)
        {

        }
        public void getUserBasket()
        {
            userid = Session["UserID"].ToString();
            SqlCommand userbasketcommand = new SqlCommand("select * from Tbl_Sepet, Tbl_Parcalar where Tbl_Parcalar.Parcaid=Tbl_Sepet.Parcaid and Kullaniciid=@userid", cnnclss.Connection());
            userbasketcommand.Parameters.AddWithValue("@userid", userid);
            SqlDataReader basketdr = userbasketcommand.ExecuteReader();
            userBasketDataList.DataSource = basketdr;
            userBasketDataList.DataBind();
            cnnclss.Connection().Close();
        }

        public void deleteUserBasketItem(string silid)
        {
            userid = Session["UserID"].ToString();
            SqlCommand userbasketdeletecommand = new SqlCommand("delete from Tbl_Sepet where Kullaniciid=@p1 and Parcaid=@p2", cnnclss.Connection());
            userbasketdeletecommand.Parameters.AddWithValue("@p1", userid);
            userbasketdeletecommand.Parameters.AddWithValue("@p2", silid);
            userbasketdeletecommand.ExecuteNonQuery();
            cnnclss.Connection().Close();
            Response.Redirect("PCBuilder.aspx");
        }
        public void addUserBasketItem(string ekleid)
        {
            if (Session["UserID"] != null)
            {
                userid = Session["UserID"].ToString();
                SqlCommand command = new SqlCommand("insert into Tbl_Sepet (Kullaniciid, Parcaid) values (@p1,@p2)", cnnclss.Connection());
                command.Parameters.AddWithValue("@p1", userid);
                command.Parameters.AddWithValue("@p2", ekleid);
                command.ExecuteNonQuery();
                cnnclss.Connection().Close();
                Response.Redirect("PCBuilder.aspx");
            }
            else
            {
                response.CssClass = "response";
                response.Text = "Lütfen sepete ürün eklemek için giriş yapınız..";
                Response.AddHeader("REFRESH", "3;URL=PCBuilder.aspx");
            }
        }

        public void getPrdCpu()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka + ' ' + Tbl_Parcalar.ParcaAd + ' ' + STRING_AGG(Ozellik, ' ') as 'Ozellik' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Kategoriid = 1 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            cpudatalist.DataSource = dr;
            cpudatalist.DataBind();
            cnnclss.Connection().Close();
        }

        public void getPrdMainboard()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka + ' ' + Tbl_Parcalar.ParcaAd + ' ' + STRING_AGG(Ozellik, ' ') as 'Ozellik' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Kategoriid = 2 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            mainboarddatalist.DataSource = dr;
            mainboarddatalist.DataBind();
            cnnclss.Connection().Close();
        }

        public void getPrdRam()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka + ' ' + Tbl_Parcalar.ParcaAd + ' ' + STRING_AGG(Ozellik, ' ') as 'Ozellik' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Kategoriid = 3 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            ramdatalist.DataSource = dr;
            ramdatalist.DataBind();
            cnnclss.Connection().Close();
        }

        public void getPrdGpu()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka + ' ' + Tbl_Parcalar.ParcaAd + ' ' + STRING_AGG(Ozellik, ' ') as 'Ozellik' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Kategoriid = 4 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            gpudatalist.DataSource = dr;
            gpudatalist.DataBind();
            cnnclss.Connection().Close();
        }

        public void getPrdPsu()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka + ' ' + Tbl_Parcalar.ParcaAd + ' ' + STRING_AGG(Ozellik, ' ') as 'Ozellik' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Kategoriid = 5 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            psudatalist.DataSource = dr;
            psudatalist.DataBind();
            cnnclss.Connection().Close();
        }

        public void getPrdDisc()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka + ' ' + Tbl_Parcalar.ParcaAd + ' ' + STRING_AGG(Ozellik, ' ') as 'Ozellik' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Kategoriid = 6 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            discdatalist.DataSource = dr;
            discdatalist.DataBind();
            cnnclss.Connection().Close();
        }

        protected void makeorder_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderDetail.aspx");
        }
    }
}