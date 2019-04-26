<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebEditTest.aspx.cs" Inherits="Online.WebBJTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2">
                    <h1 class="page-wrap"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: xx-large"> 添加题库</span></strong></h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">课程：</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlquse" runat="server">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>Asp.Net</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>Linux</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">章节：</td>
                <td>
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;
                    &nbsp;<asp:CheckBoxList ID="Ckchaper" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>章节一</asp:ListItem>
                        <asp:ListItem>章节二</asp:ListItem>
                        <asp:ListItem>章节三</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">题型：</td>
                <td>
                    <asp:DropDownList ID="ddltext" runat="server">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>选择题</asp:ListItem>
                        <asp:ListItem>判断题</asp:ListItem>
                        <asp:ListItem>填空题</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">内容：</td>
                <td>
                    <asp:TextBox ID="Txtcontent" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">答案：</td>
                <td>
                    <asp:TextBox ID="Txtanser" runat="server"></asp:TextBox>
                    <br />
                    <asp:CheckBox ID="A" runat="server" Text="A" />
                    <asp:TextBox ID="TextBox1" runat="server" Width="48px"></asp:TextBox>
                    <asp:CheckBox ID="B" runat="server" Text="B" />
                    <asp:TextBox ID="TextBox2" runat="server" Width="48px"></asp:TextBox>
                    <asp:CheckBox ID="C" runat="server" Text="C" />
                    <asp:TextBox ID="TextBox3" runat="server" Width="48px"></asp:TextBox>
                    <asp:CheckBox ID="D" runat="server" Text="D" />
                    <asp:TextBox ID="TextBox4" runat="server" Width="48px"></asp:TextBox>
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="T" />
                    <asp:TextBox ID="TextBox5" runat="server" Width="53px"></asp:TextBox>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="F" />
                    <asp:TextBox ID="TextBox6" runat="server" Width="53px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">出题人：</td>
                <td>
                    <asp:TextBox ID="Txtanu" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">学期：</td>
                <td>
                    <asp:DropDownList ID="DdlSemester" runat="server">
                        <asp:ListItem>第一学期</asp:ListItem>
                        <asp:ListItem>第二学期</asp:ListItem>
                        <asp:ListItem>--请选择--</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn" runat="server" CssClass="btn btn-primary" OnClick="Btn_Click" Text="添加题库" ValidationGroup="a" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
