<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebEditTest.aspx.cs" Inherits="Online.WebBJTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" style="font-size: xx-large;" Text="添加试卷"></asp:Label>
        <br />
    </h1>
    <table style="width: 100%">
        <tr>
            <td class="avatar-lg" style="width: 77px">课程：</td>
            <td>
                <asp:DropDownList ID="ddlTestCourse" runat="server">
                    <asp:ListItem>--请选择--</asp:ListItem>
                    <asp:ListItem>C#</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>Asp.Net</asp:ListItem>
                    <asp:ListItem>Linux</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="avatar-lg" style="width: 77px; height: 23px;">出题人</td>
            <td style="height: 23px">
                <asp:DropDownList ID="ddlTestName" runat="server">
                    <asp:ListItem>--请选择--</asp:ListItem>
                    <asp:ListItem>教师A</asp:ListItem>
                    <asp:ListItem>教师B</asp:ListItem>
                    <asp:ListItem>教师C</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="avatar-lg" style="width: 77px; height: 23px;">考试班级:</td>
            <td style="height: 23px">
                <asp:DropDownList ID="ddlTestClass" runat="server">
                    <asp:ListItem>--请选择--</asp:ListItem>
                    <asp:ListItem>软件1701</asp:ListItem>
                    <asp:ListItem>软件1702</asp:ListItem>
                    <asp:ListItem>软件1703</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="avatar-lg" style="width: 77px; height: 28px">选择题目:</td>
            <td style="height: 28px">
                <asp:DropDownList ID="ddlTest" runat="server">
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                </asp:DropDownList>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="随机抽题" />
            </td>
        </tr>
        <tr>
            <td class="avatar-lg" style="width: 77px; height: 27px;"></td>
            <td style="height: 27px">
                <asp:Button ID="btnSelect" runat="server" CssClass="bg-primary" Text="添加" OnClick="btnSelect_Click" />
            </td>
        </tr>
        <tr>
            <td class="avatar-lg" style="width: 77px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    </div>
</asp:Content>
