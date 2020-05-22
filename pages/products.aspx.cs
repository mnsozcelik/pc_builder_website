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
        { allCommand(); }

        protected void categoryAll_Click(object sender, EventArgs e)
        { allCommand(); }

        protected void categoryCpu_Click(object sender, EventArgs e)
        { catCommand(1); }

        protected void categoryMainboard_Click(object sender, EventArgs e)
        { catCommand(2); }

        protected void categoryRam_Click(object sender, EventArgs e)
        { catCommand(3); }

        protected void categoryGpu_Click(object sender, EventArgs e)
        { catCommand(4); }

        protected void categorypsu_Click(object sender, EventArgs e)
        { catCommand(5); }

        protected void categorydisc_Click(object sender, EventArgs e)
        { catCommand(6); }

        public void catCommand (int a)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Parcalar.Kategoriid=" + a + " and Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }

        public void allCommand()
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productPageDataList.DataSource = read;
            productPageDataList.DataBind();
        }
    }
}