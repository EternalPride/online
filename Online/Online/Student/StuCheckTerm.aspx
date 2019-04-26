<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="StuCheckTerm.aspx.cs" Inherits="Online.Student.StuCheckTerm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 查看班级信息</span><br />
        学生学号:<asp:TextBox ID="TxtID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtID" ErrorMessage="学号不能为空！" style="color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnSelect" runat="server" Text="查找" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="237px" Width="740px">
            <Columns>
                <asp:BoundField DataField="ClassName" HeaderText="班级名称" />
                <asp:BoundField DataField="ClassNumber" HeaderText="班级人数" />
                <asp:BoundField DataField="ClassMajor" HeaderText="所属专业" />
                <asp:BoundField DataField="ClassTeacher" HeaderText="班级导员" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>
</asp:Content>
