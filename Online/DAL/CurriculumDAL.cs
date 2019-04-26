using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Model;
using System.Data.SqlClient;

namespace DAL
{
   public class CurriculumDAL
    {
       public DataTable UserList(string strWhere)
       {
           string sql = "select * from Curriculum";
           if(strWhere !="")
           {
               sql += "where";
               sql += strWhere;
           }
           return DBHelperSQL.Query(sql);
       }
       public int Add(CurriculumModel model)
       {
           string sql = "insert into Curriculum(Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday)Values(@Monday,@Tuesday,@Wednesday,@Thursday,@Friday,@Saturday,@Sunday)";
           SqlParameter[] para ={
                                   new SqlParameter("@Monday",model.Monday),
                                   new SqlParameter("@Tuesday",model.Tuesday),
                                   new SqlParameter("@Wednesday",model.Wednesday),
                                   new SqlParameter("@Thursday",model.Thursday),
                                   new SqlParameter("@Friday",model.Friday),
                                   new SqlParameter("@Saturday",model.Saturday),
                                   new SqlParameter("@Sunday",model.Sunday)
                               };
           return DBHelperSQL.Execute(sql, para);
       }
       public int Edit(CurriculumModel model)
       {
           string sql = "update Curriculum set Monday=@Monday,Tuesday=@Tuesday,Wednesday=@Wednesday,Thursday=@Thursday,Friday=@Friday,Saturday=@Saturday,Sunday=@Sunday";
           SqlParameter[] para ={
                                   new SqlParameter("@Monday",model.Monday),
                                   new SqlParameter("@Tuesday",model.Tuesday),
                                   new SqlParameter("@Wednesday",model.Wednesday),
                                   new SqlParameter("@Thursday",model.Thursday),
                                   new SqlParameter("@Friday",model.Friday),
                                   new SqlParameter("@Saturday",model.Saturday),
                                   new SqlParameter("@Sunday",model.Sunday)
                               };
           return DBHelperSQL.Execute(sql, para);
       }
       public DataTable GetList(string strWhere)
       {
           string sql = "select * from Curriculum";
           if (strWhere != "")
           {
               sql += " where ";
               sql += strWhere;
           }
           return DBHelperSQL.Query(sql);

       }
      
    }
}

