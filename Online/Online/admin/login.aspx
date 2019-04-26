<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Online.admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Carbon - Admin Template</title>
    <link rel="stylesheet" href="./vendor/simple-line-icons/css/simple-line-icons.css"/>
    <link rel="stylesheet" href="./vendor/font-awesome/css/fontawesome-all.min.css"/>
    <link rel="stylesheet" href="./css/styles.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="page-wrapper flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card p-4">
                    <div class="card-header text-center text-uppercase h4 font-weight-light">
                       登录
                    </div>

                    <div class="card-body py-5">
                        <div class="form-group">
                            <label class="form-control-label">账号</label>
                            <asp:TextBox ID="TxtUserID" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">密码</label>
                            <asp:TextBox ID="TxtPWD" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </div>

                        <div class="custom-control custom-checkbox mt-4">
                            <input type="checkbox" class="custom-control-input" id="login"/>
                            <label class="custom-control-label" for="login">Check this custom checkbox</label>
                        </div>
                    </div>

                    <div class="card-footer">
                        <div class="row">
                            <div class="col-6">
                                
                                <asp:Button ID="btnSub" runat="server" Text="登录"  CssClass="btn btn-primary px-5" OnClick="btnSub_Click"  />
                            </div>

                            <div class="col-6">
                                <a href="WebRegister.aspx" class="btn btn-link">尚未账号？</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./vendor/jquery/jquery.min.js"></script>
<script src="./vendor/popper.js/popper.min.js"></script>
<script src="./vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="./vendor/chart.js/chart.min.js"></script>
<script src="./js/carbon.js"></script>
<script src="./js/demo.js"></script>
    </form>
</body>
</html>
