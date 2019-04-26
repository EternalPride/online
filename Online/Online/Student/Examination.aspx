<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="Examination.aspx.cs" Inherits="Online.student.Examination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="height: 52px">
                    <h2 style="margin-bottom: 19px; font-size: xx-large;" class="page-wrap">查看考试安排</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 161px; height: 23px; font-size: large;"><span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 试卷类型：</span></td>
                <td class="auto-style4" style="height: 23px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>C#</asp:ListItem>
                        <asp:ListItem>ASP.Net</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 161px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large">&nbsp;&nbsp;&nbsp;&nbsp; 试卷名称：</span></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" CssClass="layui-btn layui-btn-normal" Height="52px" Width="159px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 161px">&nbsp;</td>
                <td>
                    <asp:GridView ID="Gvexam" runat="server" AutoGenerateColumns="False" Width="804px" Height="242px">
                        <Columns>
                            <asp:BoundField DataField="WName" HeaderText="试卷名称" />
                            <asp:BoundField DataField="WTime" HeaderText="考试时长" />
                            <asp:BoundField DataField="WType" HeaderText="考试类型" />
                            <asp:BoundField DataField="WStime" HeaderText="开始时间" />
                            <asp:BoundField HeaderText="结束时间" DataField="WEtime" />
                            <asp:HyperLinkField HeaderText="生成试卷" Text="生成试卷" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 161px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
