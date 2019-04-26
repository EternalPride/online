<%@ Page Title="" Language="C#" MasterPageFile="~/admin/online.Master" AutoEventWireup="true" CodeBehind="WebStudentmanagement.aspx.cs" Inherits="Online.admin.WebStudentmanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width: 900px">
        <tr>
            <td style="width: 494px"><span style="font-size: medium">学生学号</span>：<asp:TextBox ID="txtstudentId" runat="server" Width="136px"></asp:TextBox>
                学生性别：<asp:DropDownList ID="ddlXSGender" runat="server" Width="174px">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSelect" runat="server" CssClass="btn-primary" Text="查询" OnClick="btnSelect_Click" />
            </td>
        </tr>
    </table>
    <div>

        <asp:GridView ID="gvStudent" runat="server" Height="130px" Width="890px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="选择">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="XSID" HeaderText="学生学号" />
                <asp:BoundField DataField="XSName" HeaderText="学生姓名" />
                <asp:BoundField DataField="Studentgrade" HeaderText="学生年级" />
                <asp:BoundField DataField="XSEnrollmentYear" HeaderText="入学年份" />
                <asp:BoundField DataField="Studentclass" HeaderText="学生班级" />
                <asp:BoundField DataField="XSGender" HeaderText="学生性别" />
                <asp:BoundField DataField="Studentbirth" HeaderText="出生日期" />
                <asp:BoundField DataField="StudentState" HeaderText="违规" />
                <asp:BoundField DataField="StudentRemarks" HeaderText="备注" />
                <asp:HyperLinkField DataNavigateUrlFields="XSName" DataNavigateUrlFormatString="WebStudentEdit.aspx?xsname" HeaderText="编辑" Text="编辑" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

    </div>
    <table style="width: 900px">
        <tr>
            <td style="width: 494px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnViolations" runat="server" CssClass="btn-primary" Text="违规" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnNOViolations" runat="server" CssClass="btn-primary" Text="未违规" />
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" CssClass="btn-primary" Text="删除" />
            </td>
        </tr>
    </table>
</asp:Content>
