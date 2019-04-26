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
    public class UserinfoDAL
    {
        public DataTable GetUserinfolist(string strWhere)
        {
            string sql = "select * from Userinfo";
            if (strWhere != "")
            {
                sql += " where ";
                sql += strWhere;
            }
            return DBHelperSQL.Query(sql);
        }

        public UserInfoModel GetUserModelByUserName(string userName)
        {

            DataTable dt = GetUserinfolist("UName='" + userName + "'");
            UserInfoModel model = new UserInfoModel();
            if (dt.Rows.Count == 0)
                return null;
            model.UName = dt.Rows[0][0].ToString();
            model.UPassword = dt.Rows[0][1].ToString();
            model.UType = dt.Rows[0][2].ToString();
            model.UTel = dt.Rows[0][3].ToString();
            model.UEmail = dt.Rows[0][4].ToString();
            model.UHeadPhoto = dt.Rows[0][5].ToString();
            return model;

        }
        public int Add(UserInfoModel model)
        {
            string sql = "insert into Userinfo(UName,UPassword,UType,UTel,UEmail,UHeadPhoto) values(@UName,@UPassword,@UTel,@UType,@UEmail,@UHeadPhoto)";
            SqlParameter[] para =
            {
            new SqlParameter("@UName",model.UName),
            new SqlParameter("@UPassword", model.UPassword),
            new SqlParameter("@UTel", model.UTel),
            new SqlParameter("@UType", model.UType),
            new SqlParameter("@UEmail", model.UEmail),
            new SqlParameter("@UHeadPhoto", model.UHeadPhoto)
            };
            return DBHelperSQL.Execute(sql, para);
        }
        public int Edit(UserInfoModel model)
        {
            string sql = "update UserInfo set  UPassword=@UPassword,UType=@UType,UTel=@UTel,UEmail=@UEmail,UHeadPhoto=@UHeadPhoto where  UName=@UName";
            SqlParameter[] para =
            {
            new SqlParameter("@UName",model.UName),
            new SqlParameter("@UPassword", model.UPassword),
            new SqlParameter("@UType", model.UType),
            new SqlParameter("@UTel", model.UTel),
            new SqlParameter("@UEmail", model.UEmail),
             new SqlParameter("@UHeadPhoto", model.UHeadPhoto),
      
            }; return DBHelperSQL.Execute(sql, para);
        }


        //public int adduser(teacherdal model)
        //{
        //    string sql = "insert into teacher (teachername,teacherposition,department,profession) values(@teachername,@teacherposition,@department,@profession)";
        //    sqlparameter[] para ={
        //                            new sqlparameter("@teacher",model.uname),
        //                            new sqlparameter("@teacherposition",model.uposition),
        //                            new sqlparameter("@department",model.udepartments),
        //                            new sqlparameter("@profession",model.uprofession),
        //                        };
        //    return dbhelpersql.execute(sql, para);
        //}
    }
}
