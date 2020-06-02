using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminOrderDetail : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        string orderid;
        string prdIDs;
        string prdimg;
        string prdbrand;
        string prdname;
        protected void Page_Load(object sender, EventArgs e)
        {
            getOrder();
        }
        public void getOrder()
        {
            orderid = Request.QueryString["Siparisid"];
            SqlCommand userbasketcommand = new SqlCommand("select * from Tbl_Siparis where Siparisid=@orderid", cnnclss.Connection());
            userbasketcommand.Parameters.AddWithValue("@orderid", orderid);
            SqlDataReader basketdr = userbasketcommand.ExecuteReader();
            cnnclss.Connection().Close();
            while (basketdr.Read())
            {
                prdIDs = basketdr[1].ToString();
            }
            string[] prds = prdIDs.Split('/');
            foreach (string prd in prds)
            {
                string prdid = prd;

                SqlCommand prdcommand = new SqlCommand("select * from Tbl_Parcalar where Parcaid=@prdid",cnnclss.Connection());
                prdcommand.Parameters.AddWithValue("@prdid", prdid);
                SqlDataReader dr = prdcommand.ExecuteReader();
                while (dr.Read())
                {
                    prdimg = dr[3].ToString();
                    prdbrand = dr[2].ToString();
                    prdname = dr[1].ToString();
                }
                MyPlaceholder.Controls.Add(new Literal() { Text = "<div class='orderPrd orderw'> <img src="+prdimg+" class=\"orderPrdIMG\"> <span class='orderPrdLBL'>"+prdbrand+" "+prdname+"</span></div>"});
                cnnclss.Connection().Close();
            }
            cnnclss.Connection().Close();
        }
    }
}