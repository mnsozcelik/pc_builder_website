using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminProductDetail : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        string prdid;
        protected void Page_Load(object sender, EventArgs e)
        {
            prdid = Request.QueryString["Parcaid"];

            if (IsPostBack == false)
            {
                getProductData();
            }
        }

        protected void prdDetailSaveBTN_Click(object sender, EventArgs e)
        {
            SqlCommand savecommand = new SqlCommand("update Tbl_Parcalar set ParcaAd=@p1, ParcaMarka=@p2, ParcaResim=@p3, Kategoriid=@p4 where Parcaid=@p5", cnnclss.Connection());
            savecommand.Parameters.AddWithValue("@p1", prdNameTB.Text);
            savecommand.Parameters.AddWithValue("@p2", prdBrandTB.Text);
            savecommand.Parameters.AddWithValue("@p3", prgImageTB.Text);
            savecommand.Parameters.AddWithValue("@p4", prdCategoryList.SelectedValue);
            savecommand.Parameters.AddWithValue("@p5", prdid);
            savecommand.ExecuteNonQuery();
            cnnclss.Connection().Close();
            getProductData();
        }

        public void getProductData()
        {
            SqlCommand command = new SqlCommand("select Tbl_Parcalar.Parcaid,Tbl_Parcalar.ParcaMarka,Tbl_Parcalar.ParcaResim ,Tbl_Parcalar.Kategoriid , Tbl_Parcalar.ParcaAd, STRING_AGG(Ozellik,' ')  as 'Ozellikler' from Tbl_Parcalar, Tbl_Ozellik where Tbl_Parcalar.Parcaid =@p1 and Tbl_Ozellik.Parcaid = Tbl_Parcalar.Parcaid group by Tbl_Parcalar.Parcaid, Tbl_Parcalar.ParcaMarka, Tbl_Parcalar.ParcaAd, Tbl_Parcalar.Kategoriid, Tbl_Parcalar.ParcaResim", cnnclss.Connection());
            command.Parameters.AddWithValue("@p1", prdid);
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                prdHBrand.Text = dr[1].ToString();
                prdBrandTB.Text = dr[1].ToString();
                prdHName.Text = dr[4].ToString();
                prdNameTB.Text = dr[4].ToString();
                prdCategoryList.SelectedValue = dr[3].ToString();
                prgImageTB.Text = dr[2].ToString();
                prdAttributeTB.Text = dr[5].ToString();
                prdAttributeTB.Attributes.Add("readonly", "readonly");
            }
            cnnclss.Connection().Close();
        }

        protected void prdDetailDeleteBTN_Click(object sender, EventArgs e)
        {
            SqlCommand deletecommand = new SqlCommand("delete from Tbl_Parcalar where Parcaid=@p1", cnnclss.Connection());
            deletecommand.Parameters.AddWithValue("@p1", prdid);
            deletecommand.ExecuteNonQuery();
            cnnclss.Connection().Close();
            Response.Redirect("AdminProducts.aspx");
        }
    }
}