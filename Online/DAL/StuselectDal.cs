using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
   public class StuselectDal
    {
       public DataTable Getselectclass(string str)
       {   //作品管理里的查询
           string sql = " select * from Courseselection";
           if (str != "")
           {
               sql += " where ";
               sql += str;
           }
           return DBHelperSQL.Query(sql);
       }
    }
}
