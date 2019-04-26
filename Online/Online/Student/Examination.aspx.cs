using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Online.student
{
    public partial class Examination : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        ExaminationBLL bll = new ExaminationBLL();
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataBind();
        }
        private void DataBind()
        {
            string strWhere = "1=1";
            if (DropDownList1.SelectedIndex > 0)
            {
                strWhere += "and WName='" + DropDownList1.SelectedValue + "'";
                
            }
            if (TextBox1.Text.Trim() != "")
            {
                strWhere += "and WName like '%" + TextBox1.Text.Trim() + "%'";

            }
            Gvexam. DataSource =bll.GetUserInfoList(strWhere);
            Gvexam. DataBind();
        }
        private string GetNameList()
        {
            string nameList = "";
            for (int i = 0; i <Gvexam. Rows.Count; i++)
            {
                CheckBox cb =Gvexam.Rows[i].Cells[0].FindControl("CheckBox1") as CheckBox;
                if (cb.Checked)
                {
                    nameList += "'" + Gvexam.Rows[i].Cells[i].Text + "',";
                }
            }
            if (nameList != "")
            {
                nameList = nameList.Substring(0, nameList.Length - 1);
            }
            return nameList;
        }
        }
}