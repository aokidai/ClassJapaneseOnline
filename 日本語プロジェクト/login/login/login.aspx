<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="日本語プロジェクト.login.login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>オンラインサービス「みんなと一緒に日本語を勉強しましょう」公式サイト</title>
    <link rel="icon" type="image/png" sizes="32x16" href="./image/star.PNG">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script type="text/javascript" src="./js/common.js"></script>
</head>
<body id="backgroud" background="./image/backgroud.jpg">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pntLogin" runat="server">
                <div id="box">
                    <div id="application">
                        <div align="center" id="login">
                            <div>
                                <span id="texttt"><p>勉強システムへサインイン</p>
                                <p>
                                    &nbsp;</p>
                                </span>
                                <div><!--username-->
                                    <asp:TextBox ID="txtUserName" runat="server" Width="325px"></asp:TextBox>
                                </div>
                                <div><!--password-->
                                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="295px"></asp:TextBox>
                                    <asp:Button ID="btnSubmit" runat="server" Text="-&gt;" />
                                </div>
                                <div><!--check save user-->
                                    <br />
                                    <asp:CheckBox ID="chkSaveAcc" runat="server" Text="サインインしたままにする" />
                                </div>
                                <br />
                                <span id="forgotpass"><a href="#">Student IDまたはパスワードをお忘れですか？</a></span>
                                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                                <span id="fotxt">Copyright © 2020 Dragon Inc. All rights reserved.</span>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
