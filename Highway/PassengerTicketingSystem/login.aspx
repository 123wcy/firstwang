<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>

<html>
<head runat="server">
    <title>公路客运售票系统</title>
    <LINK href="qj.css" type=text/css rel=stylesheet>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
<style type="text/css">
#login tr td
{
    padding-bottom:15px;
}
    .yh {
       color:#495060;
       width:30%;
    }
    .sure1 {
        padding:8px;
        cursor:pointer;
    font-size:18px;
     border:1px solid #4296e7;
        border-radius:4px;
        background-color:#4296e7;
        color:#fff;
}
    .tex {
    width:70px;
    border-radius:4px;
    }
</style>
</head>
<script language=javascript>
function refreshimg(){ 
document.getElementById("getcode").src = "VerifyCode.aspx?"+Math.random(); 
} 
</script>
<body style="background-image:url(skin/images/frame/bg.jpg); margin:0 auto; width:500px;">

    <form id="form1" runat="server">
    <div>
       
<table height="80" border="0" cellpadding="0" cellspacing="0" style="width: 78%" align="center" >
    <tr>
      <td width="42%" height="27">&nbsp;</td>
      <td width="58%">&nbsp;</td>
    </tr>
    <tr>
      <td height="115" colspan="2" valign="bottom"><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 28pt; margin-top:5pt">
        <div align="center" class="STYLE5"><img src="skin/images/frame/ticket.png" style="vertical-align:bottom;" />公路客运售票系统</div>
      </div></td>
    </tr>
   

  </table> <br />
    <br />
  <table height="195" border="0" cellpadding="0" cellspacing="0"   style="width: 400px;background-color:#fff;border-radius:8px;padding:20px 60px;" align="center"  id="login" >
    <tr>
      <td  height="27">&nbsp;</td>
     
    </tr>
     <tr>
            <td  class="yh">用&nbsp;&nbsp;户:</td>
              <td colspan="2" height="30">
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="text1" placeholder="请输入用户名"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="yh" >密&nbsp;&nbsp;码:</td>
              <td colspan="2" height="25">
                  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="text1"  placeholder="请输入密码"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="yh">角&nbsp;&nbsp;色:</td>
              <td colspan="2" height="25">
                  <asp:DropDownList ID="cx" runat="server"  CssClass="text1">
                </asp:DropDownList></td>
          </tr>
          <tr>
              <td class="yh">
                  验证码:</td>
              <td height="25">
                  <asp:TextBox ID="yzm" runat="server"  Width="70px" CssClass="text1"></asp:TextBox></td>
              <td height="25" >
                 <a onclick="refreshimg()" style="cursor:pointer"><asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" CssClass="tex" /></a></td>
          </tr>
          
          <tr>
            <td height="25" colspan="3"><p align="center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登陆" CssClass="sure1" Width="100%"/>
               
          </tr>
</table>

    
    </div>
    </form>
</body>
</html>
