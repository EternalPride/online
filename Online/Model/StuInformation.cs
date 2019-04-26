using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class StuInformation
    {
        private string xSID;

        public string XSID
        {
            get { return xSID; }
            set { xSID = value; }
        }
        private string xSName;

        public string XSName
        {
            get { return xSName; }
            set { xSName = value; }
        }
        private string xSClass;

        public string XSClass
        {
            get { return xSClass; }
            set { xSClass = value; }
        }
        private string xSGender;

        public string XSGender
        {
            get { return xSGender; }
            set { xSGender = value; }
        }
        private string xSEnrollmentYear;

        public string XSEnrollmentYear
        {
            get { return xSEnrollmentYear; }
            set { xSEnrollmentYear = value; }
        }
    }
}
