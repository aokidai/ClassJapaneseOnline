<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lock_screen.aspx.cs" Inherits="日本語プロジェクト.login.lock_screen.lock_screen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>オンラインサービス「みんなと一緒に日本語を勉強しましょう」公式サイト</title>
    <link rel="icon" type="image/png" sizes="32x16" href="./image/star.PNG">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script type="text/javascript" src="./js/common.js"></script>
</head>
<script>
  window.setTimeout("showTime()", 1000);
    function getVNTime(){
    var time = new Date();
    var dow = time.getDay();
    if(dow==0)
        dow = "日曜日";
    else if (dow==1)
        dow = "月曜日";
    else if (dow==2)
        dow = "火曜日";
    else if (dow==3)
        dow = "水曜日";
    else if (dow==4)
        dow = "木曜日";
    else if (dow==5)
        dow = "金曜日";
    else if (dow==6)
        dow = "土曜日";  
    var day = time.getDate();
    var month = time.getMonth()+1;
    var year = time.getFullYear();
    var hr = time.getHours();
    var min = time.getMinutes();
    var sec = time.getSeconds();
    day = ((day < 10) ? "0" : "") + day;
    month = ((month < 10) ? "0" : "") + month;
    hr = ((hr < 10) ? "0" : "") + hr;
    min = ((min < 10) ? "0" : "") + min;
    sec = ((sec < 10) ? "0" : "") + sec;
    return hr + ":" + min　+" "+"<br/>"+ year + "/" + month + "/" + day + " " + dow;
    }
    function showTime(){
        var vnclock = document.getElementById("vnclock");
        if (vnclock != null)
            vnclock.innerHTML = getVNTime();
        setTimeout("showTime()", 1000);
    }
</script>
<%--<script>
    function changePage() {
        if (event.keyCode == 13) {
            document.write("<a href="'../lock_screen/lock_screen.aspx'"></a>");
        }
    }
</script>--%>
<body id="backgroud" background="./image/backgroud.jpg">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pntLock" runat="server">
                <header id="header1">
                    <div>
                        <div id="clock1"><span id="vnclock"></span></div>
                        <br/>
                        <div align="center" id="haha">
                            <span id="text1">空白ボタンを押して解除</span><br/>
                            <a href="../login/login.aspx"><img id="line1" src="./image/line.PNG"></a>
                        </div>
                    </div>
                </header>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
