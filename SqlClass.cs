using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace pc_toplama_sistemi
{
    public class SqlClass
    {
        public SqlConnection Connection()
        {
            SqlConnection connect = new SqlConnection(@"DESKTOP-CS4BDGI\SQLEXPRESS;Initial Catalog=pcbuild;Integrated Security=True");
            connect.Open();
            return connect;
        }
    }
}