using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        string prodid;
        protected void Page_Load(object sender, EventArgs e)
        {
            prodid = Request.QueryString["Parcaid"];
            if (IsPostBack == false)
            {
                getProductData();
            }
        }

        public void getProductData()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaResim ,Tbl_Parcalar.Kategoriid ,Tbl_Kategoriler.KategoriAdi , Tbl_Parcalar.ParcaAd, STRING_AGG(Ozellik,' ')  as 'ParcaOzellik' from Tbl_Parcalar, Tbl_Ozellik, Tbl_Kategoriler where Tbl_Parcalar.Parcaid =@p1 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid and Tbl_Parcalar.Kategoriid=Tbl_Kategoriler.Kategoriid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd, Tbl_Parcalar.Kategoriid, Tbl_Parcalar.ParcaResim, Tbl_Kategoriler.KategoriAdi", cnnclss.Connection());
            command.Parameters.AddWithValue("@p1", prodid);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                prodInfoBrand.Text = dr[1].ToString();
                prodInfoName.Text = dr[5].ToString();
                prodInfoAttribute.Text = dr[6].ToString();
                prodInfoCategory.Text = dr[4].ToString();
                prodImg.ImageUrl = dr[2].ToString();
            }
            cnnclss.Connection().Close();
        }
    }
}