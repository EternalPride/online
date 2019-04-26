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
    public class StuInformationBLL
    {
        private StuInformationDAL dal = new StuInformationDAL();
        public DataTable GetUserInfoList(string strWhere)
        {
            return dal.GetUserInfoList(strWhere);
        }
    }
}
