<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebViewcourse.aspx.cs" Inherits="Online.WebCKKC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <h1 class="page-wrap" style="font-size: xx-large">查看课表</h1>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">学年学期：</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>2018-2019学年第一学期</asp:ListItem>
                        <asp:ListItem>2018-2019学年第二学期</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">教师名称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="请输入教师姓名！" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="查询" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="189px" Width="939px">
            <Columns>
                <asp:BoundField DataField="Monday" HeaderText="星期一" />
                <asp:BoundField DataField="Tuesday " HeaderText="星期二" />
                <asp:BoundField DataField="Wednesday" HeaderText="星期三" />
                <asp:BoundField DataField="Thursday" HeaderText="星期四" />
                <asp:BoundField DataField="Friday" HeaderText="星期五" />
                <asp:BoundField DataField="Saturday" HeaderText="星期六" />
                <asp:BoundField DataField="Sunday" HeaderText="星期日" />
            </Columns>
        </asp:GridView>
</asp:Content>
