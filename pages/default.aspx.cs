﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pc_toplama_sistemi.pages
{
    public partial class Default : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar,Tbl_Kategoriler where Tbl_Kategoriler.Kategoriid=Tbl_Parcalar.Kategoriid", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            mainPageDataList.DataSource = read;
            mainPageDataList.DataBind();
        }
    }
}