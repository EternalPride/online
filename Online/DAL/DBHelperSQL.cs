using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAL
{
    public static class DBHelperSQL
    {
        public static DataTable Query(string sql)
        {
            
            string connStr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(connStr);
            sqlConn.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(sql, sqlConn);
            sda.Fill(ds);
            return ds.Tables[0];
        }
        public static int Execute(string sql, SqlParameter[] para)
        {
            string connStr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(connStr);
            sqlConn.Open();
            SqlCommand cmd = new SqlCommand(sql, sqlConn);
            cmd.Parameters.AddRange(para);
            int id = cmd.ExecuteNonQuery();
            return id;
        }
        public static int Execute(string sql)
        {
            string connStr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            SqlConnection sqlConn = new SqlConnection(connStr);
            sqlConn.Open();
            SqlCommand cmd = new SqlCommand(sql, sqlConn);

            int id = cmd.ExecuteNonQuery();
            return id;
        }

    }
}
