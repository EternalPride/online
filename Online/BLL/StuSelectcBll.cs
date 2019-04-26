using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAL;
using System.Data;
namespace BLL
{   
   public class StuSelectcBll
   {
       private StuselectDal dal = new StuselectDal();
       public DataTable Getselectclass(string str)
       {   //作品管理里的查询
           return dal.Getselectclass(str);
       }
    }
}
