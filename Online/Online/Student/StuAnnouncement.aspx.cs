using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Online.Student
{
    public partial class StuExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private AnnouncementBLL bll = new AnnouncementBLL();
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
       

        protected void btn1_Click(object sender, EventArgs e)
        {
            DataBind();
        }
        private void DataBind()
        {
            string strWhere = "1=1";
            if (ddlName.SelectedIndex > 0)
            {
                strWhere += "and Name='" + ddlName.SelectedValue + "'";
            }
            
            GridView1.DataSource = bll.GetList(strWhere);
            GridView1.DataBind();
        }
    }
}