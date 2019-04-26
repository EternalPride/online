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
   public class TeacherBLL
    {
       private TeacherDAL dal = new TeacherDAL();
       public int Add(Teacher model)
       {
           return dal.Add(model);
       }
    }
}
