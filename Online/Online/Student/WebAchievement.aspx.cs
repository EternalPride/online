using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;


namespace Online
{
    public partial class WebAchievement : System.Web.UI.Page
    {
        AchiveBll bll = new AchiveBll();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnselect_Click(object sender, EventArgs e)
        {
            DataBind();
        }
        private void DataBind()
        {
            string str = "1=1";
            if (ddltype.SelectedIndex > 0)
            {
                str += " and WoType='" + ddltype.SelectedValue + "'";

            }
            if (ddlsemester.SelectedIndex > 0)
            {
                str += " and Semester='" + ddlsemester.SelectedValue + "'";
            }
            gvachie.DataSource = bll.GetAchievementlist(str);
           gvachie. DataBind();
        }
    }
}