using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Online.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        UserinfoBLL bll = new UserinfoBLL();
        protected void btnSub_Click(object sender, EventArgs e)
        {
            int re = bll.login(TxtUserID.Text.Trim(), TxtPWD.Text.Trim());
            if (re == 0)
                Response.Write("<script language='javascript'>alert('用户不存在！！！');</script>");
            else if (re == -1)
                Response.Write("<script language='javascript'>alert('密码错误！！！');</script>");
            else
            {
                Session["c"] = TxtUserID.Text.Trim();
                Session["p"] = TxtPWD.Text.Trim();
                Response.Redirect("../Webmain.aspx");

            }
        }
    }
}