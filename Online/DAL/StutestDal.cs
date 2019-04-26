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
   public class StutestDal
    {
       public int Add(Stutest modle)
       {
           string sql = "insert into Stutest(Chooseone,Choosetwo,Choosethree,Choosefour,Choosefive,Textone,Texttwo,Textthree,Textfive,Textsix,Txteseven)values(@Chooseone,@Choosetwo,@Choosethree,@Choosefour,@Choosefive,@Textone,@Texttwo,@Textthree,@Textfive,@Textsix,@Txteseven)";

           SqlParameter[] para ={
                                   new SqlParameter("@Chooseone",modle.Chooseone),
                                   new SqlParameter("@Choosetwo",modle.Choosetwo),
                                   new SqlParameter("@Choosethree",modle.Choosethree),
                                   new SqlParameter("@Choosefour",modle.Choosefour),
                                   new SqlParameter("@Choosefive",modle.Choosefive),
                                    new SqlParameter("@Textone",modle.Textone),
                                   new SqlParameter("@Texttwo",modle.Texttwo),
                                   new SqlParameter("@Textthree",modle.Textthree),
                                   new SqlParameter("@Textfive",modle.Textfive),
                                   new SqlParameter("@Textsix",modle.Textsix),
                                   new SqlParameter("@Txteseven",modle.Txteseven)
                               };
           return DBHelperSQL.Execute(sql, para);
       }
    }
}
