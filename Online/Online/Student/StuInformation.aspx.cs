using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Online.Student
{
    public partial class StuInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        StuInformationBLL bll = new StuInformationBLL();
        private void DataBind()
        {
            string strWhere = "1=1";
            if (TxtStuID.Text.Trim()!="")
            {
                strWhere += "and XSID like '%" + TxtStuID.Text.Trim() + "%'";

            }
            GridView1.DataSource = bll.GetUserInfoList(strWhere);
            GridView1.DataBind();
        }
        private string GetNameList()
        {
            string nameList = "";
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox cb = GridView1.Rows[i].Cells[0].FindControl("CheckBox1") as CheckBox;
                if (cb.Checked)
                {
                    nameList += "'" + GridView1.Rows[i].Cells[i].Text + "',";
                }
            }
            if (nameList != "")
            {
                nameList = nameList.Substring(0, nameList.Length - 1);
            }
            return nameList;
        }

        protected void BtnQuery_Click(object sender, EventArgs e)
        {
            DataBind();
        }
    }
}