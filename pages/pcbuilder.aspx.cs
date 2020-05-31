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
            if(Session["UserID"] != null)
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
    }
}