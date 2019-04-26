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
    public class ExaminationBLL
    {
        private ExaminationDAL dal = new ExaminationDAL();
        public DataTable GetUserInfoList(string strWhere)
        {
            return dal.GetUserInfoList(strWhere);
        }
    }
}
