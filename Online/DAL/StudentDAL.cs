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
    public class StudentDAl
    {
        public Student GetStudentModelByUserName(string studentName)
        {

            DataTable dt = GetStudentinfolist("XSName='" + studentName + "'");
            Student model = new Student();
            if (dt.Rows.Count == 0)
                return null;
            model.XSName = dt.Rows[0][1].ToString();
            model.XSGender = dt.Rows[0][2].ToString();
            model.XSEnrollmentYear = dt.Rows[0][3].ToString();
            model.Studentclass = dt.Rows[0][4].ToString();
            model.Studentgrade = dt.Rows[0][5].ToString();
            model.Studentgrade = dt.Rows[0][6].ToString();
            return model;

        }
        public DataTable GetStudentinfolist(string strWhere)
        {
            string sql = "select * from Student";
            if (strWhere != "")
            {
                sql += " where ";
                sql += strWhere;
            }
            return DBHelperSQL.Query(sql);
        }
        public int Add(Student model)
        {
            string sql = "insert into Student(XSName,XSGender,XSEnrollmentYear,Studentclass,Studentgrade,Studentbirth) values(@XSName,@XSGender,@XSEnrollmentYear,@Studentclass,@Studentgrade,@Studentbirth)";
            SqlParameter[] para =
            {
            new SqlParameter("@XSName",model.XSName),
            new SqlParameter("@XSGender", model.XSGender),
            new SqlParameter("@XSEnrollmentYear", model.XSEnrollmentYear),
            new SqlParameter("@Studentclass", model.Studentclass),
            new SqlParameter("@Studentgrade", model.Studentgrade),
             new SqlParameter("@Studentbirth", model.Studentbirth)
           
            };
            return DBHelperSQL.Execute(sql, para);
        }

        
    }
}
