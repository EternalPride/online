<%@ Page Title="" Language="C#" MasterPageFile="~/Desk.Master" AutoEventWireup="true" CodeBehind="StuTest.aspx.cs" Inherits="Online.Student.StuTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title></title>
        <style>
            h2{
                float:left;
                color:red;
            }
        </style>
        <script type="text/javascript" src="../js/JS.js"> </script>
        <script type="text/javascript" src="../js/JS1.js"> </script>
    </head>

    <body>
        <h2>距离考试结束还有:</h2><div id="remainSeconds" style="display: none ">10</div>
        <div id="remainTime" style="font-size: 16px; font-weight: 800; color: red"></div>
        <table style="width: 100%; height: 351px">
    <tr>
        <td colspan="5">一、选择题</td>
    </tr>
    <tr>
        <td colspan="5">1.C语言中的变量名只能由字母，数字和下划线三种字符组成，且第一个字符？(每题 分,共 分)</td>
    </tr>
    <tr>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="必须为下划线" />
        </td>
        <td style="width: 161px">
            <asp:RadioButton ID="RadioButton2" runat="server" Text="必须为字母或下划线" />
        </td>
        <td>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="必须为字母" />
        </td>
        <td colspan="2">
            <asp:RadioButton ID="RadioButton4" runat="server" Text="可以是字母，数字或下划线中的任意一种" />
        </td>
    </tr>
    <tr>
        <td colspan="5">2.表达式：10!=9的值是？</td>
    </tr>
    <tr>
        <td>
            <asp:RadioButton ID="RadioButton5" runat="server" Text="false" />
        </td>
        <td style="width: 161px">
            <asp:RadioButton ID="RadioButton6" runat="server" Text="1" />
        </td>
        <td>
            <asp:RadioButton ID="RadioButton7" runat="server" Text="true" />
        </td>
        <td colspan="2">
            <asp:RadioButton ID="RadioButton8" runat="server" Text="0" />
        </td>
    </tr>
    <tr>
        <td colspan="5">3.输出函数？</td>
    </tr>
    <tr>
        <td>
            <asp:RadioButton ID="RadioButton9" runat="server" Text="echo()" />
        </td>
        <td style="width: 161px">
            <asp:RadioButton ID="RadioButton10" runat="server" Text="输出: ·" />
        </td>
        <td>
            <asp:RadioButton ID="RadioButton11" runat="server" Text="prentf()" />
        </td>
        <td colspan="2">
            <asp:RadioButton ID="RadioButton12" runat="server" Text="scanf()" />
        </td>
    </tr>
    <tr>
        <td colspan="5">4.C语言程序的基本单位是？</td>
    </tr>
    <tr>
        <td>
            <asp:RadioButton ID="RadioButton13" runat="server" Text="语句" />
        </td>
        <td style="width: 161px">
            <asp:RadioButton ID="RadioButton14" runat="server" Text="函数" />
        </td>
        <td>
            <asp:RadioButton ID="RadioButton15" runat="server" Text="变量" />
        </td>
        <td colspan="2">
            <asp:RadioButton ID="RadioButton16" runat="server" Text="字符" />
        </td>
    </tr>
    <tr>
        <td colspan="5">5.命名变量正确的是？</td>
    </tr>
    <tr>
        <td>
            <asp:RadioButton ID="RadioButton17" runat="server" Text="int a;" />
        </td>
        <td style="width: 161px">
            <asp:RadioButton ID="RadioButton18" runat="server" Text="a int;" />
        </td>
        <td>
            <asp:RadioButton ID="RadioButton19" runat="server" Text="int 4_" />
        </td>
        <td colspan="2">
            <asp:RadioButton ID="RadioButton20" runat="server" Text="int 5a" />
        </td>
    </tr>
    <tr>
        <td colspan="5">-----------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
    </tr>
    <tr>
        <td colspan="5">二、填空题(每题 分,共 分)</td>
    </tr>
    <tr>
        <td colspan="2">1.逻辑运算符!是_结合性。</td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" Width="139px"></asp:TextBox>
        </td>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">2.若有fp=fopen(“al.dat”,“a+”)打开文件语句，这个文件的数据是以_的形式存放在内存中，该文件的使用方式</td>
    </tr>
    <tr>
        <td colspan="5" style="height: 21px">
            <asp:TextBox ID="TextBox2" runat="server" Width="140px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="5">3.feof(fp)函数用来判断文件是否结束,如果遇到文件结束,函数值为_ 否则为_<br />
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:TextBox ID="TextBox3" runat="server" Width="136px"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Width="128px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="5">4.int x=2;z=++x+1;则x的值为_.</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:TextBox ID="TextBox5" runat="server" Width="136px"></asp:TextBox>
        </td>
    </tr>
    <%--<tr>
        <td colspan="5">5.在C语言程序中，转义字符“”的功能是_。</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:TextBox ID="TextBox6" runat="server" Width="135px"></asp:TextBox>
        </td>
    </tr>--%>
    <tr>
        <td colspan="5">
            -----------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
    </tr>
    <tr>
        <td colspan="5">三、简答题(每题 分,共 分)</td>
    </tr>
    <tr>
        <td colspan="5">1.简述Const的作用，Const与#define相比，有何特点？</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:TextBox ID="TextBox7" runat="server" Height="54px" TextMode="MultiLine" Width="510px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="5">2<span style="color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">.</span>请用一个条件表达式写出：如果C的值是大写字母，则将其转换成对应的小写字母，否则其值不变</td>
    </tr>
    <tr>
        <td colspan="5">
            <asp:TextBox ID="TextBox8" runat="server" Height="54px" TextMode="MultiLine" Width="510px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="height: 27px"></td>
        <td style="height: 27px"></td>
        <td style="height: 27px"></td>
        <td style="height: 27px">&nbsp;<asp:Button ID="Button1" runat="server" Text="交卷" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="5">
    </td>
    </tr>
</table>
    </body>
    </html>

</asp:Content>
