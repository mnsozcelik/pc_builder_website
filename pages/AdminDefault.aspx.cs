using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace pc_toplama_sistemi.pages
{
    public partial class AdminDefault : System.Web.UI.Page
    {
        SqlClass cnnclss = new SqlClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            getAllUsers();
        }
        protected void userSearchButton_Click(object sender, EventArgs e)
        {
            getUserDataByID();
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void userSave_Click(object sender, EventArgs e)
        {
            updateUser();
            getAllUsers();
        }

        protected void userDelete_Click(object sender, EventArgs e)
        {
            deleteUser();
            getAllUsers();
        }

        public void getAllUsers()
        {
            SqlCommand command = new SqlCommand("Select * From Tbl_Kullanicilar", cnnclss.Connection());
            SqlDataReader read = command.ExecuteReader();
            usersDataList.DataSource = read;
            usersDataList.DataBind();
            cnnclss.Connection().Close();
        }
        public void getUserDataByID ()
        {
            string userid = TextBox5.Text;
            SqlCommand usercommand = new SqlCommand("Select * From Tbl_Kullanicilar where Kullaniciid='" + userid + "'", cnnclss.Connection());
            SqlDataReader userread = usercommand.ExecuteReader();
            UserDataView.DataSource = userread;
            UserDataView.DataBind();
            cnnclss.Connection().Close();
        }
        public void updateUser()
        {

        }
        public void deleteUser()
        {

        }
    }
}