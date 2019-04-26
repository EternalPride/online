<%@ Page Title="" Language="C#" MasterPageFile="~/admin/online.Master" AutoEventWireup="true" CodeBehind="WebCourseselection.aspx.cs" Inherits="Online.admin.WebCourseselection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 900px">
        <tr>
            <td class="text-center" colspan="2" style="font-size: xx-large"><strong>选课发布</strong></td>
        </tr>
        <tr>
            <td style="width: 154px">课程名称：</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">任课教师：</td>
            <td>
                <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">限选人数：</td>
            <td>
                <asp:TextBox ID="txtRestrictednumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 154px">上课时间：</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">上课地点：</td>
            <td>
                <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRelease" runat="server" CssClass="btn-primary" Text="发布" />
            </td>
        </tr>
    </table>
</asp:Content>
