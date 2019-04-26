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
   public class AnnouncementBLL
    {
       private AnnouncementDAL dal=new AnnouncementDAL();
       public int Add(AnnouncementModel model)
       {
           return dal.Add(model);
       }
       public DataTable GetList(string strWhere)
       {
           return dal.GetList(strWhere);
       }
       //public AnnouncementModel GetModelByID()
       //{
           
       //}
       public int Edit(AnnouncementModel model)
       {
           return dal.Edit(model);
       }
    }
}
