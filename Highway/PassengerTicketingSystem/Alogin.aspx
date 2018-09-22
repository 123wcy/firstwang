<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alogin.aspx.cs" Inherits="login" %>
<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<title>登录</title>
<style>
* {
	margin: 0;
	padding: 0;
}
a {
	text-decoration: none;
}
.top_right a {
	color: #666;
}
.main_foot a {
	color: aliceblue;
}
ul li {
	list-style: none;
}
.top {
	background: #eee;
	height: 28px;
	line-height: 28px;
	color: #666;
	border-bottom: 1px solid #ccc;
	font-size: 12px;
	margin-left: auto;
	margin-right: auto;
	padding: 0;
}
.wrap {
	width: 1000px;
	margin: 0 auto;
}
.top_left {
	float: left;
	margin: 0;
	padding: 0;
}
.top_right {
	float: right;
	margin: 0;
	padding-left: 10px;
}
.head {
}
.main {
}
.main_line {
	background-image: url(img/pt_smnav.jpg);
	height: 5px;
}
.main_enter {
	padding: 40px 60px 60px;
	width: 878px;
	height: 400px;
	border-left: 1px solid #dcdcdc;
	border-right: 1px solid #dcdcdc;
}
.main_nav {
	background-image: url(img/pt_smnav.jpg);
	height: 48px;
}
.enter_left {
	float: left;
	width: 500px;
	overflow: hidden;
}
.enter_left_form {
	padding-top: 0;
	margin-left: 20px;
}
.enter_right {
	float: right;
	width: 267px;
	overflow: hidden;
	border-left: 1px dashed #ececec;
	border-left-width: 1px;
	border-left-style: dashed;
	border-left-color: rgb(236, 236, 236);
	margin-top: 58px;
	padding: 0px 10px 0px 80px;
}
.enter_left_form ul li {
	height: 60px;
	width: 500px;
}
.z3 {
	border-radius: 4px;
	font-size: 10px;
	border: 1px solid #D2D2D2;
	width: 300px;
	padding: 10px 5px;
	margin-left: 5px;
   
}
.z {
	padding: 3px 5px;
	border: 1px;
	font-size: 16px;
	color: black;
	font-weight: 800;
	height: 36px;
	overflow: hidden;
    vertical-align:middle;
    border: 1px solid #D2D2D2;
}
.z1 {
	width: 150px;
	height: 50px;
	background: #0080FF;
	border-radius: 4px;
	border: 1px solid #0080FF;
	font-size: 25px;
	color: #FFF;
	margin-left: 90px;
	}
.enter_left_foot {
}
.enter_left_foot p {
	font-size: 16px;
	color: #666;
	padding-top: 20px;
}
.enter_left_foot a {
	color: #666;
	padding-top: 20px;
	float: left;
	height: 20px;
	width: 100px;
	padding-left: 20px;
	font-size: 12px;
}
.enter_right img {
	padding-top: 20px;
}
.enter_right_a1 {
	display: block;
	text-align: center;
	color: aliceblue;
	width: 180px;
	background: #0080FF;
	margin: 40px 38px;
	padding: 10px 0px;
	font: bold 20px 微软雅黑;
}
.enter_right_a2 {
	float: right;
	color: #F39800;
	height: 20px;
	font: bold 16px 宋体;
	padding: 30px 0px 0px 30px;
	background: url(img/pt_inco.png) -1px -605px no-repeat;
}
.main_nav ul {
	padding-left: 50px;
}
.main_nav ul li {
	width: 14.1%;
	float: left;
	font-size: 14px;
	padding: 15px 0;
}
.main_nav ul li a {
	font-size: 14px;
	color: aliceblue;
	text-align: center;
}
.main_img {
	margin-top: 10px;
	text-align: center;
}
.main_foot {
	background: url(img/pt_foot.jpg) repeat-y;
	padding: 20px 0px 40px;
	margin-top: 20px;
	margin-left: auto;
	margin-right: auto;
}
.main_foot p {
	text-align: center;
	color: #fff;
	padding-top: 15px;
	font-size: 12px;
}
.main_box {
	position: absolute;
}
.main_boxt {
	position: fixed;
	left: 50%;
	margin-left: 525px;
	bottom: 100px;
}
.p {
	display: block;
	position: relative;
	width: 50px;
	height: 50px;
	background: #f1f1f1;
}
.p:hover span {
	height: 100%
}
.span {
	position: absolute;
	left: 0;
	overflow: hidden;
	width: 100%;
	height: 0;
	background-color: chocolate;
	color: aliceblue;
 opacity=0.9;
	filter: alpha(opacity=0.5);
	text-align: center;
	writing-mode: vertical-lr;
	top: 0;
	font-size: 12px;
}
.write {
	position: relative;
	display: inline-block;
	width: 28px;
	height: 28px;
	margin: 11px;
	vertical-align: 11px;
	background: url(img/icon.png) no-repeat 0 -350px;
}
.book {
	font-size: 0;
	background: url(img/icon.png) no-repeat 0 -385px;
	display: inline-block;
	width: 35px;
	height: 23px;
	margin: 14px 0 0 7px;
	vertical-align: 11px;
	position: relative;
}
.messege {
	font-size: 0;
	background: url(img/icon.png) no-repeat 0 -420px;
	display: inline-block;
	width: 30px;
	height: 29px;
	margin: 11px 0 0 10px;
	vertical-align: 11px;
	position: relative;
}
.service {
	font-size: 0;
	background: url(img/icon.png) no-repeat 0 -460px;
	display: inline-block;
	width: 31px;
	height: 30px;
	margin: 11px 0 0 9px;
	vertical-align: 11px;
	position: relative;
}
.gotop {
	font-size: 0;
	background: url(img/icon.png) no-repeat 0 -500px;
	display: inline-block;
	width: 25px;
	height: 25px;
	margin: 14px 0 0 13px;
	vertical-align: 11px;
	position: relative;
}
member.css:4 a {
 color: #020202;
 text-decoration: none;
}
    #ul li {
    margin-bottom:15px;
    }
</style>
</head>

<body>
    <form id="Form1" method="post" runat="server">
<div class="top">
  <div class="wrap">
    <div class="top_left">欢迎来到客运站</div>
    <div class="top_right"> <a href="#">退出</a> <a href="rigst.html">注册</a> <a href="#">登录</a> <a href="#">网址导航</a> </div>
  </div>
</div>
<div class="head">
  <div class="wrap"> <a href="#" target="_blank"><img src="img/top.jpg"></a> </div>
</div>
<div class="main wrap">
  <div class="main_line"></div>
  <div class="main_enter">
    <div class="enter_left">
      <h2 style="color:dodgerblue;padding-bottom:25px;font-weight: 600;">登录客运站</h2>
      
       <ul id="ul">
          <li>用户名：&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"  placeholder="用户名" CssClass="z3" style="margin-left:16px;"></asp:TextBox>
          </li>
          <li>输入密码：
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="密码" CssClass="z3" ></asp:TextBox>
          </li>
          <li>验证码：&nbsp;
             <asp:TextBox ID="yzm" runat="server" CssClass="z3" style="width: 20%;margin-left:16px;"></asp:TextBox>
            <asp:Image ID="getcode" runat="server" src="VerifyCode.aspx" CssClass="z" />
            </li>
         
                            <td colspan="2" style="display:none;">
                                <asp:DropDownList ID="cx" runat="server">
                                </asp:DropDownList></td>
       
          <li style="height: 40px;font: 12px bold;">
            <p style="margin-left: 90px">
              <input type="checkbox">
              &nbsp;记住密码 <a href="#" style="height: 18px;background:url(img/pt_inco.png) no-repeat -1px -559px;color: black;padding-left: 20px;margin-left: 20px;">忘记密码？</a></p>
          </li>
          <li>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" 登 录" CssClass="z1" />
          </li>
        </ul>
      
      
      <div class="enter_left_foot">
        <p> 您还可以使用以下合作网站账号登录客运站旅游网: </p>
        <a href="#" style="background: url(img/pt_inco.png) no-repeat -1px -222px;">QQ登录</a> <a href="#" style="background: url(img/pt_inco.png) no-repeat -1px -300px;padding-left: 25px;">微博登录</a> <a href="#" style="background: url(img/pt_inco.png) no-repeat -1px -377px;padding-left: 30px;">人人登录</a> </div>
    </div>
    <div class="enter_right"> <img src="img/pt_text.jpg"> <asp:Button ID="dlzc" runat="server" OnClick="zc" CssClass="enter_right_a1" Text="立即注册"/>  <a href="#" class="enter_right_a2">旅行社登录</a> </div>
  </div>
  <div class="main_nav">
    <ul>
      <li><a href="keyun.html">返回客运站首页</a></li>
      <li><a href="#">汽车时刻表</a></li>
      <li><a href="#">火车时刻表</a></li>
      <li><a href="#">公交查询</a></li>
      <li><a href="#">酒店预订</a></li>
      <li><a href="#">旅游景点</a></li>
      <li><a href="#">天气预报</a></li>
    </ul>
  </div>
</div>
<div class="main_img"> <a href="#"><img src="img/1000_70-258.png"></a> </div>
<div class="main_foot">
  <p> <a href="//www.keyunzhan.com/about.php" target="_blank">关于客运站</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="//www.keyunzhan.com/" target="_blank">友情链接</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="//www.keyunzhan.com" target="_blank">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp; <a href="//www.keyunzhan.com/jiucuo/" target="_blank">意见反馈</a> </p>
  <p>Copyright &copy;2011-2015 keyunzhan.com <a href="//www.miibeian.gov.cn/" target="_blank"> 闽ICP备11014391号-404</a></p>
</div>
<div class="main_box">
  <div class="main_boxt">
    <div style="float: left">
      <ul>
        <li class="p"><a href="#" align="center" class="write"><span class="span">写游记</span></a></li>
        <li class="p"><a href="http://piaowu.keyunzhan.com/huochedingpiao/" align="center" class="book"><span class="span">订票</span></a>
        <li class="p"> <a href="https://www.keyunzhan.com/jiucuo/" align="center" class="messege"><span class="span">意见<br>
          反馈</span></a> </li>
        <li class="p"><a class="service" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1139000487&amp;site=qq&amp;menu=yes" target="_blank"><span class="span">服务</span></a></li>
        <li class="p"> <a class="gotop" href="#"><span class="span">返回<br>
          顶部</span></a> </li>
      </ul>
    </div>
  </div>
</div>

        </form>
</body>
</html>

