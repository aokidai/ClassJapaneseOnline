<%@ Page Title="" Language="C#" MasterPageFile="~/MasterFrom.Master" AutoEventWireup="true" CodeBehind="app1.aspx.cs" Inherits="日本語プロジェクト.app1.app1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <dautrang:header id="Header" runat="server" />
    <article>
            <div id="naiyo">
                <br/>
                <table align="center">
                    <tr>
                        <td>
                            <div class="imgless2"><a href="../less/hinakata/hinakata.aspx"><img src="./image/hirakata.png" title="ひらがな＆カタカナ"><span id="text"><br/>ひらがな<br/>カタカナ</span></div>
                        </td>
                        <td>
                            <div class="imgless2"><a href="../less/jlptn5/n5.aspx"><img src="./image/n5.png" title="N5"><span id="text"><br/>みんなの日本語<br/>N5</span></div>
                        </td>
                        <td>
                            <div class="imgless2"><a href="../less/jlptn4/n4.aspx"><img src="./image/n4.png" title="N4"><span id="text"><br/>みんなの日本語<br/>N4</span></div>
                        </td>
                    </tr>
                </table>
            </div>
        </article>
    <cuoitrang2:Fooder2 id="Fooder" runat="server" />
</asp:Content>
