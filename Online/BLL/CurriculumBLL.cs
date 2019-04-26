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
   public class CurriculumBLL
    {
       private CurriculumDAL dal = new CurriculumDAL();

       public int Add(CurriculumModel model)
       {

           return dal.Add(model);
       }
       public DataTable GetList(string strWhere)
       {
           return dal.GetList(strWhere);
       }
       //public CurriculumModel GetModleByID(string ID)
       //{
       //    return dal.GetModleByID(ID);
       //}
       public int Edit(CurriculumModel modle)
       {
           return dal.Edit(modle);
       }
      
    }
}
