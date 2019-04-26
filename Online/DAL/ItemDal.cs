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
   public class ItemDal
    {
       public DataTable Gettestinfolist(string strWhere)
       {
           string sql = "select * from Itembank";
           if (strWhere != "")
           {
               sql += " where ";
               sql += strWhere;
           }
           return DBHelperSQL.Query(sql);
       }
       public Item GettestModelByUserName(string studentName)
       {

           DataTable dt = Gettestinfolist("Qusetion='" + studentName + "'");
           Item model = new Item();
           if (dt.Rows.Count == 0)
               return null;
           model.Qusetion = dt.Rows[0][1].ToString();
           model.Chapter = dt.Rows[0][2].ToString();
           model.Qtext = dt.Rows[0][3].ToString();
           model.Qcontent = dt.Rows[0][4].ToString();
           model.Qanswer = dt.Rows[0][5].ToString();
           model.Qauthor = dt.Rows[0][7].ToString();
           model.QSemester = dt.Rows[0][8].ToString();
           return model;

       }
       public int Add(Item model)
       {
           string sql = "insert into Itembank(Qusetion,Chapter,Qtext,Qcontent,Qanswer,Qauthor,QSemester) values(@Qusetion,@Chapter,@Qtext,@Qcontent,@Qanswer,@Qauthor,@QSemester)";
           SqlParameter[] para =
            {
            new SqlParameter("@Qusetion",model.Qusetion),
            new SqlParameter("@Chapter", model.Chapter),
            new SqlParameter("@Qtext", model.Qtext),
            new SqlParameter("@Qcontent", model.Qcontent),
            new SqlParameter("@Qanswer", model.Qanswer),
             new SqlParameter("@Qauthor", model.Qauthor),
             new SqlParameter("@QSemester",model.QSemester)
            };
           return DBHelperSQL.Execute(sql, para);
       }
    }
}
