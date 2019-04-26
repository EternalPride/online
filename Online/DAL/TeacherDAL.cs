using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
  public  class TeacherDAL
    {
      public int Add(Teacher model)
      {
          string sql = "insert into Teacher(TeacherName,TeacherPosition,Department,Profession) values(@TeacherName,@TeacherPosition,@Department,@Profession)";
          SqlParameter[] para =
          {
              new SqlParameter("@TeacherName",model.Uname),
              new SqlParameter("@TeacherPosition",model.UPosition),
              new SqlParameter("@Department",model.UDepartments),
              new SqlParameter("@Profession",model.UProfession),
          };
          return DBHelperSQL.Execute(sql, para);
      }
     
    }
}
