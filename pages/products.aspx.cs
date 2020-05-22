using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class Products : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categoryAll_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categoryCpu_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=1 and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categoryMainboard_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=2 and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categoryRam_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=3 and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categoryGpu_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=4 and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categorypsu_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=5 and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        protected void categorydisc_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=6 and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }
    }
}