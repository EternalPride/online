<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="StuAnnouncement.aspx.cs" Inherits="Online.Student.StuExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="page-wrap" style="height: 14px; font-size: xx-large; width: 402px;" colspan="2">查看公告</td>
            <td class="page-wrap" style="height: 14px; font-size: xx-large" rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="page-wrap" style="height: 14px; font-size: xx-large; width: 402px;">发布者：<asp:DropDownList ID="ddlName" runat="server" Height="50px" Width="182px">
                <asp:ListItem>--请选择--</asp:ListItem>
                <asp:ListItem>教务处</asp:ListItem>
                <asp:ListItem>教导处</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="page-wrap" style="height: 14px; font-size: xx-large; width: 402px;">
                <asp:Button ID="btn1" runat="server" Height="49px" Text="查询" Width="140px" />
            </td>
        </tr>
        <tr>
            <td style="height: 17px" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="331px" Width="981px">
                    <Columns>
<asp:BoundField DataField="ID" HeaderText="ID"></asp:BoundField>
                        <asp:BoundField DataField="Name" HeaderText="发布者" />
                        <asp:BoundField DataField="Title" HeaderText="公告标题" />
                        <asp:BoundField DataField="Time" HeaderText="发布时间" />
                        <asp:HyperLinkField HeaderText="查看" Text="查看内容" DataNavigateUrlFields="id,name" DataNavigateUrlFormatString="WebForm.aspx?name={1}&amp;id={1}" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
