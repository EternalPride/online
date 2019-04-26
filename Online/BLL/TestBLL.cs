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
    public class TestBLL
    {
        private TestDAL dal = new TestDAL();
        public int Add(TestModle modle)
        {
            return dal.Add(modle);
        }
        public DataTable GetList(string strWhere)
        {
            return dal.GetList(strWhere);
        }
        public TestModle GetModleByID(string ID)
        {
            return dal.GetModleByID(ID);
        }
        public int Edit(TestModle modle)
        {
            return dal.Edit(modle);
        }
    }
}
