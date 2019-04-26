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
   public class TestDAL
    {
       //添加试卷
       public int Add(TestModle modle)
       {
           string sql = "insert into Paper(QID,Questionname,Qauthor,Teacherclass,Test)values(@QID,@Questionname,@Qauthor,@Teacherclass,@Test)";
           SqlParameter[] para ={
                                   new SqlParameter("@QID",modle.TestID),
                                   new SqlParameter("@Questionname",modle.TestCourse),
                                   new SqlParameter("@Qauthor",modle.TestName),
                                   new SqlParameter("@Teacherclass",modle.TestClass),
                                   new SqlParameter("@Test",modle.Test)
                               };
           return DBHelperSQL.Execute(sql, para);
       }
       public int Edit(TestModle modle)
       {
           string sql = "update Paper set QID=@QID,Questionname=@Questionname,Qauthor=@Qauthor,Teacherclass=@Teacherclass,Test=@Test";
           SqlParameter[] para ={
                                   new SqlParameter("@QID",modle.TestID),
                                   new SqlParameter("@Questionname",modle.TestCourse),
                                   new SqlParameter("@Qauthor",modle.TestName),
                                   new SqlParameter("@Teacherclass",modle.TestClass),
                                   new SqlParameter("@Test",modle.Test)
                               };
           return DBHelperSQL.Execute(sql, para);
       }
       public DataTable GetList(string strWhere)
       {
           string sql = "select * from Paper";
           if (strWhere != "")
           {
               sql += " where ";
               sql += strWhere;
           }
           return DBHelperSQL.Query(sql);

       }
       public TestModle GetModleByID(string ID)
       {
           string strWhere = " ActivityID='" + ID + "'";
           DataTable dt = GetList(strWhere);
           if (dt.Rows.Count == 0)
               return null;
           TestModle modle = new TestModle();
           modle.TestID = Int32.Parse(ID);
           if (dt.Rows[0][1] != null)
               modle.TestCourse = dt.Rows[0][1].ToString();  
           if (dt.Rows[0][3] != null)
               modle.TestName = dt.Rows[0][3].ToString();
           if (dt.Rows[0][4] != null)
               modle.TestClass = dt.Rows[0][4].ToString();
           if (dt.Rows[0][5] != null)
               modle.Test = dt.Rows[0][5].ToString();
           return modle;
       }
    }
}
