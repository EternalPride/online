using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

namespace Online
{
    public partial class WebBJTK : System.Web.UI.Page
    {
        
        private TestBLL testbll = new TestBLL();

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            TestModle modle = new TestModle();
            modle.TestName = ddlTestName.SelectedValue;
            modle.TestCourse = ddlTestCourse.SelectedValue;
            modle.TestClass = ddlTestClass.SelectedValue;
            modle.Test = ddlTest.SelectedValue;
            if (testbll.Add(modle) > 0)
            {
                Response.Write("<script language='javascript'>alert('添加成功');</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('添加成功');</script>");
            }
        }


       
    }
}