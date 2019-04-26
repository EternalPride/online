<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="StuInformation.aspx.cs" Inherits="Online.Student.StuInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100% auto; padding-left:80px;">
        <tr>
            <td class="page-wrap" style="height: 14px; font-size: xx-large">查看信息</td>
        </tr>
        <tr>
            <td style="height: 27px; width: 761px"><span style="font-size: large">学生学号：</span><asp:TextBox ID="TxtStuID" runat="server" Height="25px" Width="292px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnQuery" runat="server" CssClass="layui-btn layui-btn-normal" Text="查找" Height="56px" Width="157px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="320px" Width="873px">
                    <Columns>
                        <asp:BoundField DataField="XSID" HeaderText="学生学号" />
                        <asp:BoundField DataField="XSName" HeaderText="学生姓名" />
                        <asp:BoundField DataField="XSClass" HeaderText="学生班级" />
                        <asp:BoundField DataField="XSGender" HeaderText="学生性别" />
                        <asp:BoundField DataField="XSEnrollmentYear" HeaderText="入学年份" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
