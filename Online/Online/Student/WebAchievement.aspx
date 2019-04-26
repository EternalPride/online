<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebAchievement.aspx.cs" Inherits="Online.WebAchievement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 考试类型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddltype" runat="server" Height="21px" Width="101px">
            <asp:ListItem>--请选择--</asp:ListItem>
            <asp:ListItem>数学</asp:ListItem>
            <asp:ListItem>英语</asp:ListItem>
            <asp:ListItem>物理</asp:ListItem>
            <asp:ListItem>生物</asp:ListItem>
            <asp:ListItem>政治</asp:ListItem>
            <asp:ListItem>语文</asp:ListItem>
            <asp:ListItem>地理</asp:ListItem>
            <asp:ListItem>历史</asp:ListItem>
            <asp:ListItem>美术</asp:ListItem>
            <asp:ListItem>音乐</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:DropDownList ID="ddlsemester" runat="server" Height="33px" Width="102px">
            <asp:ListItem>-- 请选择--</asp:ListItem>
            <asp:ListItem>第一学期</asp:ListItem>
            <asp:ListItem>第二学期</asp:ListItem>
            <asp:ListItem>第三学期</asp:ListItem>
            <asp:ListItem>第四学期</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Btnselect" runat="server" CssClass="btn btn-primary" Height="29px" OnClick="Btnselect_Click" Text="查询" Width="83px" />
        <asp:GridView ID="gvachie" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="113px" Width="577px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" />
                <asp:BoundField DataField="name" HeaderText="试卷名称" />
                <asp:BoundField DataField="Semester" HeaderText="学期" />
                <asp:BoundField DataField="WoType" HeaderText="类型" />
                <asp:BoundField DataField="StudentID" HeaderText="学生ID" />
                <asp:BoundField DataField="StudentName" HeaderText="学生名字" />
                <asp:BoundField DataField="studentmark" HeaderText="成绩" />
                <asp:BoundField DataField="date" HeaderText="时间" />
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
    </p>
    <p>
        &nbsp;</p>
&nbsp; 

</asp:Content>
