<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="日本語プロジェクト.header.header" %>
<script type="text/javascript">
    window.setTimeout("showTime()", 1000);
    function getVNTime() {

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
    return hr + ":" + min　+" "+ year + "/" + month + "/" + day + " " + dow;
    }
    function showTime(){
        var vnclock = document.getElementById("vnclock");
        if (vnclock != null)
            vnclock.innerHTML = getVNTime();
        setTimeout("showTime()", 1000);
    }
</script>
<div id="clock1">
    <span id="vnclock"></span>
</div>
<nav id="nav">
    <ul>
        <li>
            <img id="user2" src="./image/user.jpg" title="青木大介">
            <ul class="cap_2">
                <li><a href="../account/account.aspx">マイアカウント</a></li>
                <li><a href="../setting/setting.aspx">設定</a></li>
                <li><a href="#">ログアウト</a></li> 
            </ul>
        </li>
    </ul>
</nav>
 <div align="center">
    <img id="line1" src="./image/line.PNG">
</div>
