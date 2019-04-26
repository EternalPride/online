using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;

namespace BLL
{
    public class UserinfoBLL
    {
        private UserinfoDAL dal = new UserinfoDAL();
        public int login(string userName, string pwd)
        {
            UserInfoModel model = dal.GetUserModelByUserName(userName);

            if (model == null)
                return 0;
            else
                if (pwd == model.UPassword)
                    return 1;

                else
                    return -1;
        }
        /// <summary>
        /// 判断密码
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public bool IsExistName(string name)
        {
            if (dal.GetUserModelByUserName(name) != null)
                return true;
            else
                return false;
        }
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Add(UserInfoModel model)
        {
            return dal.Add(model);
        }
        /// <summary>
        /// 查询修改密码内容
        /// </summary>
        /// <param name="userName"></param>
        /// <returns></returns>
        public UserInfoModel GetUserModelByUserName(string userName)
        {


            return dal.GetUserModelByUserName(userName);

        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public int Edit(UserInfoModel model)
        {
            return dal.Edit(model);
        }


        public int Adduser(Teacher modle)
        {
            throw new NotImplementedException();
        }

        public int DeleteByNames(string strWhere)
        {
            throw new NotImplementedException();
        }
    }
}
