using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

namespace Online
{
    public partial class WebBJTK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ItemBll bll = new ItemBll();

        protected void Btn_Click(object sender, EventArgs e)
        {
            Item model = new Item();
            model.Qusetion = ddlquse.SelectedValue;
            model.Chapter = Ckchaper.SelectedValue;
            model.Qtext = ddltext.SelectedValue;
            model.Qcontent = Txtcontent.Text.Trim();
            model.Qanswer = Txtanser.Text.Trim();
            model.Qauthor = Txtanu.Text.Trim();
            model.QSemester = DdlSemester.SelectedValue;
            if (bll.IsExistName(model.Qusetion)) 
            {

                Response.Write("<script language='javascript'>alert('用户已存在。');</script>");
                return;
            }
            if (bll.Add(model) == 1)
            {

                Response.Write("<script language='javascript'>alert('已添加。');</script>");
            }
            else
            {

                Response.Write("<script language='javascript'>alert('未添加。');</script>");
            }
        }
       
    }
}