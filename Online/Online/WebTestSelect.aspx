<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="WebTestSelect.aspx.cs" Inherits="Online.WebTestSelect" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <h2 style="margin-bottom: 19px; font-size: xx-large;" class="page-wrap"><strong>查询题库</strong></h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 73px">试卷ID:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">ID不能为空!!</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 73px">
                    <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                </td>
                <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="810px">
                    <Columns>
                        <asp:TemplateField HeaderText="选择">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="QuestionID" HeaderText="试卷ID" />
                        <asp:BoundField DataField="Qusetion" HeaderText="课程" />
                        <asp:BoundField DataField="QChapter" HeaderText="章节" />
                        <asp:BoundField DataField="Qtext" HeaderText="题型" />
                        <asp:BoundField HeaderText="内容" DataField="Qcontent" />
                        <asp:BoundField HeaderText="答案" DataField="Qanswer" />
                        <asp:BoundField DataField="Qtme" HeaderText="编写时间" />
                        <asp:BoundField DataField="Qauthor" HeaderText="试卷简介" />
                        <asp:BoundField DataField="QSemester" HeaderText="学期" />
                        <asp:HyperLinkField DataNavigateUrlFields="Qusetion" DataNavigateUrlFormatString="WebForm3.aspx?Qusetion={0}" HeaderText="编辑" Text="编辑" />
                    </Columns>
                </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 73px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>
