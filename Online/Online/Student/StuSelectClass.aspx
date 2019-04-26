<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="StuSelectClass.aspx.cs" Inherits="Online.Student.StuSelectClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="page-wrap"><span style="font-size: xx-large">网上选课系统</span></h1>
    <h1 class="page-wrap">正选<br />
    </h1>
    <table class="col-1-1">
        <tr>
            <td style="width: 704px; height: 17px">课程名称：<asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
            <td style="height: 17px">&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnSelect" runat="server" Text="查找" BackColor="#33CCCC" CssClass="bg-blue" Height="29px" Width="57px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <br />
                <table class="col-1-1">
                    <tr>
                        <td colspan="2">
                            <asp:GridView ID="Gvstudentclass" runat="server" AutoGenerateColumns="False" Height="210px" Width="754px">
                                <Columns>
                                    <asp:CheckBoxField HeaderText="选择" />
                                    <asp:BoundField DataField="ID" HeaderText="ID" />
                                    <asp:BoundField DataField="Name" HeaderText="课程名称" />
                                    <asp:BoundField DataField="curriculum" HeaderText="课程类型" />
                                    <asp:BoundField DataField="Term" HeaderText="开始时间" />
                                    <asp:BoundField DataField="Course" HeaderText="结束时间" />
                                    <asp:BoundField DataField="place" HeaderText="上课地点" />
                                    <asp:BoundField DataField="Assessment" HeaderText="考核方式" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 743px">&nbsp;</td>
                        <td>
                            <asp:Button ID="BtnConfirm" runat="server" Text="确定" Height="89px" Width="55px" />
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
