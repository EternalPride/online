<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebTeacherInformation.aspx.cs" Inherits="Online.WebTeacherInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <h1 class="page-wrap" style="font-size: xx-large">教师信息</h1>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">教师姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请输入教师姓名！" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style6">工号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="请输入教师工号！" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="168px" Width="938px">
            <Columns>
                <asp:BoundField DataField="TeacherID" HeaderText="教职工号" />
                <asp:BoundField DataField="TeacherName" HeaderText="教师姓名" />
                <asp:BoundField DataField="TeacherTitle" HeaderText="教师职称" />
                <asp:BoundField DataField="Department" HeaderText="系部" />
                <asp:BoundField DataField="Major" HeaderText="专业" />
            </Columns>
        </asp:GridView>
</asp:Content>
