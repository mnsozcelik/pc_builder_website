using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminSiteInfo : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                getSiteInfo();
            }
        }

        protected void siteInfoUpdateBTN_Click(object sender, EventArgs e)
        {
            string siteInfoString = siteInfoTB.Text;
            SqlCommand updatecommand = new SqlCommand("update Tbl_Hakkimizda set siteInfo=@p1 where siteID=1", cnnclss.Connection());
            updatecommand.Parameters.AddWithValue("@p1", siteInfoString);
            updatecommand.ExecuteNonQuery();
            cnnclss.Connection().Close();
            getSiteInfo();
        }
        public void getSiteInfo()
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Hakkimizda", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            while (read.Read())
            {
                siteInfoTB.Text = read[1].ToString();
            }
            cnnclss.Connection().Close();
        }
    }
}