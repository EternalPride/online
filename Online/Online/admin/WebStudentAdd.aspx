<%@ Page Title="" Language="C#" MasterPageFile="~/admin/online.Master" AutoEventWireup="true" CodeBehind="WebStudentAdd.aspx.cs" Inherits="Online.admin.WebStudentAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 900px; height: 191px;">
        <tr>
            <td style="font-size: xx-large; height: 33px;" class="text-center" colspan="4"><strong>添加学生信息</strong></td>
        </tr>
        <tr>
            <td style="width: 82px; height: 76px;">学生姓名：</td>
            <td style="width: 304px; height: 76px;">
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td style="width: 151px; height: 76px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 性别：</td>
            <td style="height: 76px">
                <asp:RadioButtonList ID="rdgender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 82px; height: 47px;">班级：</td>
            <td style="height: 47px; width: 304px">
                <asp:DropDownList ID="Ddlclass" runat="server" Height="21px" Width="123px">
                    <asp:ListItem>一年级</asp:ListItem>
                    <asp:ListItem>二年级</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 151px; height: 47px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 入学年份：</td>
            <td style="height: 47px">
                <asp:DropDownList ID="Ddyear" runat="server" Height="21px" Width="123px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 82px; height: 46px;">年级</td>
            <td style="height: 46px; width: 304px">
                <asp:DropDownList ID="Ddlgrade" runat="server" Height="21px" Width="123px">
                    <asp:ListItem>01班</asp:ListItem>
                    <asp:ListItem>02班</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 151px; height: 46px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 出生日期</td>
            <td style="height: 46px">
                <asp:TextBox ID="txtbrith" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnEdit" runat="server" CssClass="btn btn-success" Text="添加" OnClick="btnEdit_Click" />
            </td>
        </tr>
        </table>
</asp:Content>
