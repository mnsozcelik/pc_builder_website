using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.Entity;
using System.Configuration;

namespace pc_toplama_sistemi
{
    public class SqlClass
    {
        public SqlConnection Connection()
        {
            string connString = ConfigurationManager.ConnectionStrings["pcbuild"].ConnectionString;
            SqlConnection connect = new SqlConnection(connString);
            connect.Open();
            return connect;
        }
    }
}