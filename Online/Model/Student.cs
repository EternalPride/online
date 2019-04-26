using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Student
    {
        private string xSID;
        private string xSName;

        public string XSName
        {
            get { return xSName; }
            set { xSName = value; }
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
        private string studentclass;

        public string Studentclass
        {
            get { return studentclass; }
            set { studentclass = value; }
        }
        private string studentgrade;

        public string Studentgrade
        {
            get { return studentgrade; }
            set { studentgrade = value; }
        }
        private string studentbirth;

        public string Studentbirth
        {
            get { return studentbirth; }
            set { studentbirth = value; }
        }
        public string XSID
        {
            get { return xSID; }
            set { xSID = value; }
        }
    }
}
