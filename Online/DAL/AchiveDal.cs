using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Model;
namespace DAL
{
   public class AchiveDal
    {
       public DataTable GetAchievementlist(string strWhere)
       {
           string sql = "select * from Achievement";
           if (strWhere != "")
           {
               sql += " where ";
               sql += strWhere;
           }
           return DBHelperSQL.Query(sql);
       }
    }
}
