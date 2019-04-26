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
    public class StudentBll
    {
        private StudentDAl dal = new StudentDAl();
        public bool IsExistName(string name)
        {
            if (dal.GetStudentModelByUserName(name) != null)
                return true;
            else
                return false;
        }
        public int Add(Student model)
        {
            return dal.Add(model);
        }
        public DataTable GetStudentinfolist(string strWhere)
        {
            return dal.GetStudentinfolist(strWhere);
        }
       
    }
}
