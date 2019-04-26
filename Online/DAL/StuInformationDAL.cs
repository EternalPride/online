using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAL;
using Model;

namespace DAL
{
    public class StuInformationDAL
    {
        public DataTable GetUserInfoList(string strWhere)
        {
            string sql = "select * from Studentl";
            if (strWhere != "")
            {
                sql += " where ";
                sql += strWhere;
            }
            return DBHelperSQL.Query(sql);
        }
        public Examination GetUserModelDyUserName(string XSID)
        {
            string strWhere = "XSID='" + XSID + "'";
            DataTable dt = GetUserInfoList(strWhere);
            Examination odel = new Examination();
            if (dt.Rows.Count == 0)
                return null;
            odel.WName = dt.Rows[0][0].ToString();
            odel.WTime = dt.Rows[0][1].ToString();
            odel.WType = dt.Rows[0][2].ToString();
            odel.WStime = dt.Rows[0][3].ToString();
            odel.WEtime = dt.Rows[0][4].ToString();
            return odel;
        }
    }
}
