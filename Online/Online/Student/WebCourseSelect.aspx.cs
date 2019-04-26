using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Online
{
    public partial class WebCourseSelect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private CurriculumBLL bll = new CurriculumBLL();

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            DataBind();
        }
        private void DataBind()
        {
            string strWhere = "1=1";
            //if(ddlAcademicterm.SelectedIndex>0)
            //{
            //    strWhere += "and Schoolyear='" + ddlAcademicterm.SelectedValue + "'";
            //}
            if(ddlClass.SelectedIndex>0)
            {
                strWhere += "and Class='" + ddlClass.SelectedValue + "'";
            }
            GridView1.DataSource = bll.GetList(strWhere);
            GridView1.DataBind();
        }
    }
}