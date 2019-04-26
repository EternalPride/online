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
   public class ItemBll
   {
       private ItemDal dal = new ItemDal();
       public bool IsExistName(string name)
       {
           if (dal.GettestModelByUserName(name) != null)
               return true;
           else
               return false;
       }
       public int Add(Item model)
       {
           return dal.Add(model);
       }
    }
}
