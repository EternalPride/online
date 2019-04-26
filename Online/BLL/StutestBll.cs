using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;
using System.Data;

namespace BLL
{
   public class StutestBll
   {
       private StutestDal dal = new StutestDal();
       public int Add(Stutest modle)
       {
           return dal.Add(modle);
       }
    }
}
