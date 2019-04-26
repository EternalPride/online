<%@ Page Title="" Language="C#" MasterPageFile="~/admin/online.Master" AutoEventWireup="true" CodeBehind="WebTeacherAdd.aspx.cs" Inherits="Online.admin.WebTeacherAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 900px">
        <tr>
            <td colspan="2" style="font-weight: 700; text-align: center; font-size: xx-large">添加教师信息</td>
        </tr>
        <tr>
            <td style="width: 178px">教师姓名：</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">教师职位：</td>
            <td>
                <asp:TextBox ID="txtPosition" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPosition" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">系部：</td>
            <td>
                <asp:TextBox ID="txtDepartments" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDepartments" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">专业：</td>
            <td>
                <asp:TextBox ID="txtProfession" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtProfession" ErrorMessage="RequiredFieldValidator" ForeColor="#CC0000">不能为空</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 178px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" CssClass="btn-primary" OnClick="btnAdd_Click" Text="添加" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblinfo" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
