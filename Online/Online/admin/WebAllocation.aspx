<%@ Page Title="" Language="C#" MasterPageFile="~/admin/online.Master" AutoEventWireup="true" CodeBehind="WebAllocation.aspx.cs" Inherits="Online.admin.WebAllocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 900px">
        <tr>
            <td class="text-center" colspan="2" style="font-size: xx-large"><strong>教学任务分配</strong></td>
        </tr>
        <tr>
            <td style="width: 132px">教师工号：</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 132px">所授课程：</td>
            <td>
                <asp:TextBox ID="txtCourses" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCourses" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 132px">课程时长：</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtDuration" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDuration" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 132px">任务发布者：</td>
            <td style="height: 26px">
                <asp:Label ID="Label1" runat="server" Text="管理员"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 132px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="发布" />
            </td>
        </tr>
    </table>
</asp:Content>
