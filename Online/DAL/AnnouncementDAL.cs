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
   public class AnnouncementDAL
    {
        //public DataTable UserList(string strWhere)
        //{
        //    string sql = "select * from Release";
        //    if (strWhere != "")
        //    {
        //        sql += "where";
        //        sql += strWhere;
        //    }
        //    return DBHelperSQL.Query(sql);
        //}
        public int Add(AnnouncementModel model)
        {
            string sql = "insert into Release(ID,Name,Title,Time)Values(@ID,@Name,@Title,@Time)";
            SqlParameter[] para ={
                                   new SqlParameter("@ID",model.ID),
                                   new SqlParameter("@Name",model.Name),
                                   new SqlParameter("@Title",model.Title),
                                   new SqlParameter("@Time",model.Time)
                               };
            return DBHelperSQL.Execute(sql, para);
        }
        public int Edit(AnnouncementModel model)
        {
            string sql = "update Release set ID=@ID,Name=@Name,Title=@Title,Time=@Time";
            SqlParameter[] para ={
                                   new SqlParameter("@ID",model.ID),
                                   new SqlParameter("@Name",model.Name),
                                   new SqlParameter("@Title",model.Title),
                                   new SqlParameter("@Time",model.Time)
                               };
            return DBHelperSQL.Execute(sql, para);
        }
        public DataTable GetList(string strWhere)
        {
            string sql = "select * from Release";
            if (strWhere != "")
            {
                sql += " where ";
                sql += strWhere;
            }
            return DBHelperSQL.Query(sql);

        }


    }
}
