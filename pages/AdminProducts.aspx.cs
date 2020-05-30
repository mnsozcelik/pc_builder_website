using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminProducts : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            getAllProducts();
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }


        public void getAllProducts()
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productsDataList.DataSource = read;
            productsDataList.DataBind();
            cnnclss.Connection().Close();
        }
    }
}