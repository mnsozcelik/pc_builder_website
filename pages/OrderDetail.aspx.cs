using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class OrderDetail : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        string userid;
        string orderIDs;
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if (Session["UserID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else { 
                userid = Session["UserID"].ToString();
                anyPrdInCart();
            }
            if (IsPostBack == false)
            {
                getOrderDetail();
            }
        }
        public void makeOrder()
        {
            SqlCommand command = new SqlCommand("select  STRING_AGG(Parcaid, '/') as 'OrderIDs' from Tbl_Sepet where Kullaniciid=@userid", cnnclss.Connection());
            command.Parameters.AddWithValue("@userid", userid);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                 orderIDs = dr[0].ToString();
            }
            SqlCommand addordercommand = new SqlCommand("insert into Tbl_Siparis (Siparis, SiparisAdres, SiparisNotu, Musteriid) values (@p1,@p2,@p3,@p4)", cnnclss.Connection());
            addordercommand.Parameters.AddWithValue("@p1", orderIDs);
            addordercommand.Parameters.AddWithValue("@p2", orderAdressTB.Text);
            addordercommand.Parameters.AddWithValue("@p3", orderNoteTB.Text);
            addordercommand.Parameters.AddWithValue("@p4", Convert.ToInt16(userid));
            addordercommand.ExecuteNonQuery();

            SqlCommand userbasketdeletecommand = new SqlCommand("delete from Tbl_Sepet where Kullaniciid=@p1", cnnclss.Connection());
            userbasketdeletecommand.Parameters.AddWithValue("@p1", userid);
            userbasketdeletecommand.ExecuteNonQuery();

            response.CssClass = "response";
            response.Text = "Siparişiniz Alınmıştır.";
            Response.AddHeader("REFRESH", "2;URL=PCBuilder.aspx");

            cnnclss.Connection().Close();

        }

        public void getOrderDetail()
        {
            userid = Session["UserID"].ToString();
            SqlCommand userbasketcommand = new SqlCommand("select * from Tbl_Sepet, Tbl_Parcalar where Tbl_Parcalar.Parcaid=Tbl_Sepet.Parcaid and Kullaniciid=@userid", cnnclss.Connection());
            userbasketcommand.Parameters.AddWithValue("@userid", userid);
            SqlDataReader basketdr = userbasketcommand.ExecuteReader();
            userOrderDataList.DataSource = basketdr;
            userOrderDataList.DataBind();
            cnnclss.Connection().Close();
        }

        protected void addOrderBTN_Click(object sender, EventArgs e)
        {
            makeOrder();
        }

        public void anyPrdInCart()
        {
            SqlCommand command = new SqlCommand("select  STRING_AGG(Parcaid, '/') as 'OrderIDs' from Tbl_Sepet where Kullaniciid=@userid", cnnclss.Connection());
            command.Parameters.AddWithValue("@userid", userid);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                orderIDs = dr[0].ToString();
            }
            if(orderIDs == "")
            {
                Response.Redirect("PCBuilder.aspx");
            }
        }
    }
}