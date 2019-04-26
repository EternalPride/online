using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Item
    {
        private string questionID;

        public string QuestionID
        {
            get { return questionID; }
            set { questionID = value; }
        }
        private string qusetion;

        public string Qusetion
        {
            get { return qusetion; }
            set { qusetion = value; }
        }
        private string chapter;

        public string Chapter
        {
            get { return chapter; }
            set { chapter = value; }
        }
        private string qtext;

        public string Qtext
        {
            get { return qtext; }
            set { qtext = value; }
        }
        private string qtime;

        public string Qtime
        {
            get { return qtime; }
            set { qtime = value; }
        }
        private string qauthor;

        public string Qauthor
        {
            get { return qauthor; }
            set { qauthor = value; }
        }
        private string qSemester;

        public string QSemester
        {
            get { return qSemester; }
            set { qSemester = value; }
        }
        private string qcontent;

        public string Qcontent
        {
            get { return qcontent; }
            set { qcontent = value; }
        }
        private string qanswer;

        public string Qanswer
        {
            get { return qanswer; }
            set { qanswer = value; }
        }

    }
}
