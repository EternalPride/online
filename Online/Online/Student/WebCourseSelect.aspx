<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebCourseSelect.aspx.cs" Inherits="Online.WebCourseSelect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3 style="font-size: xx-large; color: #33CCFF; text-align: center;">学生查询课表</h3>
        <table style="width: 878px">
            <tr>
                <%--<td style="width: 88px">学年：</td>
                <td style="width: 209px">
                    <asp:DropDownList ID="ddlAcademicterm" runat="server" Height="25px" Width="174px">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>2018-2019学年</asp:ListItem>
                        <asp:ListItem>2019-2020学年</asp:ListItem>
                    </asp:DropDownList>--%>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 班级：<asp:DropDownList ID="ddlClass" runat="server" Height="38px" Width="138px">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>软件1701</asp:ListItem>
                        <asp:ListItem>软件1702</asp:ListItem>
                        <asp:ListItem>软件1703</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnSelect" runat="server" Text="检索" OnClick="btnSelect_Click" CssClass="btn" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="290px" Width="881px" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Class" HeaderText="班级" />
                            <asp:BoundField DataField="Session" HeaderText="节次" />
                            <asp:BoundField HeaderText="星期一" DataField="Monday" />
                            <asp:BoundField HeaderText="星期二" DataField="Tuesday" />
                            <asp:BoundField HeaderText="星期三" DataField="Wednesday" />
                            <asp:BoundField HeaderText="星期四" DataField="Thursday" />
                            <asp:BoundField HeaderText="星期五" DataField="Friday" />
                            <asp:BoundField HeaderText="星期六" DataField="Saturday" />
                            <asp:BoundField HeaderText="星期日" DataField="Sunday" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <span style="background-color: #FFFFFF">&nbsp;</span></td>
            </tr>
        </table>

    </div>
</asp:Content>
