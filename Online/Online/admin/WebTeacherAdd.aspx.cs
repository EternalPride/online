using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

namespace Online.admin
{
    public partial class WebTeacherAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        UserinfoBLL bll = new UserinfoBLL();

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(!bll.IsExistName(txtName.Text.Trim()))
            {
                lblinfo.Text = "该用户名已注册！";
            }
            Teacher modle = new Teacher();
            modle.Uname = txtName.Text.Trim();
            modle.UPosition = txtPosition.Text.Trim();
            modle.UDepartments = txtDepartments.Text.Trim();
            modle.UProfession = txtProfession.Text.Trim();
            if(bll.Adduser(modle)==1)
            {
                lblinfo.Text = "添加成功";
            }
            else
            {
                lblinfo.Text = "添加失败";
            }
        }
        
    }
}