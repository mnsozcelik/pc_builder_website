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
        SqlClass cnn = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmnd = new SqlCommand("Select ParcaMarka, ParcaAd from Tbl_Parcalar where Kategoriid=1", cnn.Connection());
            SqlDataReader read = cmnd.ExecuteReader();
            cpusDataTable.DataSource = read;
            cpusDataTable.DataBind();
        }
    }
}