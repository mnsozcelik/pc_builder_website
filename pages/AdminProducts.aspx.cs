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
        //protected void userSearchButton_Click(object sender, EventArgs e)
        //{
        //    getProductDataByID();
        //}

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        //protected void userSave_Click(object sender, EventArgs e)
        //{
        //    updateUser();
        //    getAllProducts();
        //}

        //protected void userDelete_Click(object sender, EventArgs e)
        //{
        //    deleteUser();
        //    getAllProducts();
        //}

        public void getAllProducts()
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Parcalar", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            productsDataList.DataSource = read;
            productsDataList.DataBind();
            cnnclss.Connection().Close();
        }
        //public void getProductDataByID()
        //{
        //    string userid = TextBox5.Text;
        //    SqlCommand usercommand = new SqlCommand("Select * From Tbl_Kullanicilar where Kullaniciid='" + userid + "'", cnnclss.Connection());
        //    SqlDataReader userread = usercommand.ExecuteReader();
        //    productsDataList.DataSource = userread;
        //    productsDataList.DataBind();
        //    cnnclss.Connection().Close();
        //}
        //public void updateUser()
        //{
        //    string userid = TextBox5.Text;
        //    SqlCommand command = new SqlCommand("update Tbl_Kullanicilar set Adi=@p1, KullaniciAdi=@p2, Sifre=@p3, isAdmin=@p4, EPosta=@p5 where Kullaniciid=@p6", cnnclss.Connection());
        //    command.Parameters.AddWithValue("@p1", HiddenField1.Value);
        //    command.Parameters.AddWithValue("@p2", HiddenField2.Value);
        //    command.Parameters.AddWithValue("@p3", HiddenField3.Value);
        //    command.Parameters.AddWithValue("@p4", HiddenField4.Value);
        //    command.Parameters.AddWithValue("@p5", HiddenField5.Value);
        //    command.Parameters.AddWithValue("@p6", userid);
        //    command.ExecuteNonQuery();
        //    cnnclss.Connection().Close();
        //    getAllUsers();
        //}
        //public void deleteUser()
        //{
        //    string userid = TextBox5.Text;
        //    SqlCommand command = new SqlCommand("delete from Tbl_Kullanicilar where Kullaniciid=@p1", cnnclss.Connection());
        //    command.Parameters.AddWithValue("@p1", userid);
        //    command.ExecuteNonQuery();
        //    cnnclss.Connection().Close();
        //    getAllUsers();
        //}
    }
}