using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

namespace Online.Student
{
    public partial class StuTest : System.Web.UI.Page
    {
        private StutestBll bll = new StutestBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Stutest modle = new Stutest();

            modle.Chooseone = RadioButton1.Text;
            modle.Choosetwo = RadioButton4.Text;
            modle.Choosethree = RadioButton6.Text;
            modle.Choosefour = RadioButton8.Text;
            modle.Choosefive = RadioButton10.Text;
            modle.Textone = TextBox1.Text;
            modle.Texttwo = TextBox2.Text;
            modle.Textthree = TextBox3.Text;
            modle.Textfive = TextBox4.Text;
            modle.Textsix = TextBox5.Text;
            modle.Txteseven = TextBox7.Text;
            if (bll.Add(modle) > 0)
            {
                Response.Write("<script language='javascript'>alert('提交成功');</script>");
                Button1.Enabled = false;
                Button1.Text = "已提交";
            }
            else
            {
                Response.Write("<script language='javascript'>alert('添加成功');</script>");
            }
        }
    }
}