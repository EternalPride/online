using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class UserInfoModel
    {
        private string uName;
        private string uPassword;
        private string uType;
        private string uTel;
        private string uEmail;
        private string uHeadPhoto;

        public string UHeadPhoto
        {
            get { return uHeadPhoto; }
            set { uHeadPhoto = value; }
        }

        public string UEmail
        {
            get { return uEmail; }
            set { uEmail = value; }
        }

        public string UTel
        {
            get { return uTel; }
            set { uTel = value; }
        }

        public string UType
        {
            get { return uType; }
            set { uType = value; }
        }


        /// <summary>
        /// 
        /// </summary>
        public string UPassword
        {
            get { return uPassword; }
            set { uPassword = value; }
        }

        public string UName
        {
            get { return uName; }
            set { uName = value; }
        }
       
       
       
    }
}
