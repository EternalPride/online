using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace Online.Student
{    
    public partial class StuSelectClass : System.Web.UI.Page
    {
        StuSelectcBll bll = new StuSelectcBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            DataBind();

        }
        private void DataBind()
        {
            string str = "1=1";
            if (TxtName.Text.Trim() != "")
            {
                str += " and ID like '%" + TxtName.Text.Trim() + "%'";

            }
            Gvstudentclass.DataSource = bll.Getselectclass(str);
           Gvstudentclass.DataBind();
        }

        protected void btnSelect_Click1(object sender, EventArgs e)
        {

        }
    }
}