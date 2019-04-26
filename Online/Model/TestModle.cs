using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class TestModle
    {
       private int testID;

       public int TestID
       {
           get { return testID;}
           set { testID = value; }
       }

       private string testCourse;
       public string TestCourse
       {
           get { return testCourse; }
           set { testCourse = value; }
       }
       private string testName;
       public string TestName
       {
           get { return testName; }
           set { testName = value; }
       }
       private string testClass;
       public string TestClass
       {
           get { return testClass; }
           set { testClass = value; }
       }
       private string test;
       public string Test
       {
           get { return test; }
           set { test = value; }
       }
    }
}
