using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminOrders : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Siparis, Tbl_Kullanicilar where Tbl_Siparis.Musteriid=Tbl_Kullanicilar.Kullaniciid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            ordersDataList.DataSource = read;
            ordersDataList.DataBind();
            cnnclss.Connection().Close();
        }
    }
}