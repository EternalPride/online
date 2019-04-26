using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Examination
    {
        private string wName;

        public string WName
        {
            get { return wName; }
            set { wName = value; }
        }
        private string wTime;

        public string WTime
        {
            get { return wTime; }
            set { wTime = value; }
        }
        private string wType;

        public string WType
        {
            get { return wType; }
            set { wType = value; }
        }
        private string wStime;

        public string WStime
        {
            get { return wStime; }
            set { wStime = value; }
        }
        private string wEtime;

        public string WEtime
        {
            get { return wEtime; }
            set { wEtime = value; }
        }

    }
}
