using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class About : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select siteInfo from Tbl_Hakkimizda where siteID=1", cnnclss.Connection());
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read())
            {
                aboutUsText.Text = dr[0].ToString();
            }
        }
    }
}