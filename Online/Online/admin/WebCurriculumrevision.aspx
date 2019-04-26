<%@ Page Title="" Language="C#" MasterPageFile="~/admin/online.Master" AutoEventWireup="true" CodeBehind="WebCourseAdd.aspx.cs" Inherits="Online.admin.WebCoursemanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 900px">
    <tr>
        <td class="text-center" colspan="2" style="font-size: xx-large"><strong>课程修改</strong></td>
    </tr>
    <tr>
        <td style="width: 181px">课程名称：</td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="White" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; width: 181px">课程简介：</td>
        <td style="height: 26px">
            <asp:TextBox ID="txt2" runat="server" Height="74px" TextMode="MultiLine" Width="180px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" BackColor="White" ControlToValidate="txt2" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 181px">任教教师：</td>
        <td>
            <asp:TextBox ID="txtTeacher" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" BackColor="White" ControlToValidate="txtTeacher" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 181px">考核方式：</td>
        <td>
            <asp:TextBox ID="txtAssess" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" BackColor="White" ControlToValidate="txtAssess" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 181px">课程周时：</td>
        <td>
            <asp:TextBox ID="txtWeek" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" BackColor="White" ControlToValidate="txtWeek" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 181px">结课时间：</td>
        <td>
            <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" BackColor="White" ControlToValidate="txtTime" ErrorMessage="RequiredFieldValidator" ForeColor="Red">不能为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 181px">&nbsp;</td>
        <td>
            <asp:Button ID="btnUpdate" runat="server" CssClass="btn-primary" Text="修改" />
        </td>
    </tr>
</table>
</asp:Content>
