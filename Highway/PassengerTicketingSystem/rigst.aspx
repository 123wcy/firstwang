<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rigst.aspx.cs" Inherits="login" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<title>注册</title>
<style>
* {
	margin: 0;
	padding: 0;
}
a
	{
	text-decoration: none;
}
.top_right a
	{
	color: #666;
	}
.main_foot a
	{
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
	padding: 0;
}
	
	.main_enter
	{
    padding: 40px 0px 30px 50px;
    width: 948px;
	height: 800px;
    border-left: 1px solid #dcdcdc;
    border-right: 1px solid #dcdcdc;
}
	.enter_left
	{
    float: left;
    width: 500px;
    
    height:800px;
	}
	.enter_right
	{
	float: right;
    width: 400px;
    overflow: hidden;
    border-left: 1px dashed #dcdcdc;
	}
.enter_left_form {
	padding-top: 0;
	margin-left: 20px;
}
	.enter_left_form ul li {
	height: 60px;
	width: 500px;
}
	.z4
	{
	color: lightgray;
	padding:5px 10px;
	margin-left: 5px;
	}
.z3 {
	border-radius: 4px;
	font-size: 10px;
	border: 1px solid #D2D2D2;
	width: 290px;
	padding: 10px 5px;
	margin-left: 5px;
}
.z {
	padding: 3px 5px;
	border: 1px;
	font-size: 20px;
	color: black;
	font-weight: 800;
	background: url(img/t0166577d8c458917a6.png);
	height: 36px;
	overflow: hidden;
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
.right_log
	{
		text-align: center;
	}
	
	.zcdl
	{width: 250px;
    text-align: center;
	font-size:18px;
	margin: 0px auto;
    border:none;
	border-bottom: 1px solid #ffffff;
	color:dodgerblue;
	font-weight: bolder;
	padding-bottom: 5px;
    background-color:#ffffff;
	}
	.right_log h6
	{
	padding-top: 20px;
    padding-bottom: 20px;
	font-weight: 300;
	font-size: 18px;
	}
	.right_qq
	{
	font-size: 8px;
    height: 20px;
    padding: 0px 20px;
    display: inline-block;
    background: url(img/pt_inco.png) no-repeat -1px -242px;
	color: black;
	}
	.right_web
	{
	font-size: 8px;
	height: 20px;
    padding-left: 25px;
    display: inline-block;
    background: url(img/pt_inco.png) no-repeat -1px -319px;
	color: black;
	}
	.right_foot
	{
	border-top: 1px solid #dcdcdc;
    margin-top: 8px;
    padding: 6px 0px;
	}
	.mi-11
	{
		width: 400px;
		height: 244px;
		overflow: hidden;
		margin: 0;
		padding: 0;
		float: left;
	}
	.mi-111
	{
		width: 400px;
		height: 200px;
		float: left;
	}
	.mi-112
	{
		width: 400px;
		height: 44px;
		background:#414046;
		float:left;
	}
	.mi-112 ul
	{
		list-style: none;
		padding:10 0px;
	}
	#scroll_number
	{
		color: aliceblue;
	}
	.mi-112 ul li
	{
		width: 66px;
		height: 44px;
		text-align: center;
		font-size: 14px;
		line-height: 44px;
		cursor: pointer;
		float:left;
		
	}
	.scroll_number_over
	{
		color: yellow;
		background-color:#323235; 
	}
	.main_title
	{
    height: 30px;
    padding-bottom: 5px;
    font: bold 18px 微软雅黑;
	}
	.main_head
	{
    background: url(img/pt_smnav.jpg);
    height: 38px;
	}
	.main_nav {
	background-image: url(img/pt_smnav.jpg);
	height: 48px;
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
.main_foot p
	{
		text-align: center;
		color: #fff;
		padding-top: 15px;
		font-size: 12px;
    }
				.main_box
				{
					position:absolute;
				}
				.main_boxt
				{
					position: fixed;
					left: 50%;
					margin-left: 525px;
					bottom: 100px;
				}
				
				.p{
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
					background-color:chocolate;
					color:aliceblue;
					opacity=0.9;
					filter: alpha(opacity=0.5);
					text-align: center;
					writing-mode: vertical-lr;
					top: 0;
					font-size: 12px;
					
				}
				.write {
	                position:relative;
		            display: inline-block;
					width: 28px;
					height: 28px;
					margin: 11px;
					vertical-align: 11px;
		            background: url(img/icon.png) no-repeat 0 -350px;
}
				.book
				{
					font-size: 0;
					background: url(img/icon.png) no-repeat 0 -385px;
					display: inline-block;
					width: 35px;
					height: 23px;
					margin: 14px 0 0 7px;
					vertical-align: 11px;
					position: relative;
					
				}
				.messege
				{
					font-size: 0;
					background: url(img/icon.png) no-repeat 0 -420px;
					display: inline-block;
					width: 30px;
					height: 29px;
					margin: 11px 0 0 10px;
					vertical-align: 11px;
					position: relative;
}
				.service
				{
					font-size: 0;
					background: url(img/icon.png) no-repeat 0 -460px;
					display: inline-block;
					width: 31px;
					height: 30px;
					margin: 11px 0 0 9px;
					vertical-align: 11px;
					position: relative;
				}
				.gotop
				{
					font-size: 0;
					background: url(img/icon.png) no-repeat 0 -500px;
					display: inline-block;
					width: 25px;
					height: 25px;
					margin: 14px 0 0 13px;
					vertical-align: 11px;
					position: relative;
				}
	</style>
</head>

<body>
    <form id="form1" runat="server">
<div class="top">
              <div class="wrap">
    <div class="top_left">欢迎来到客运站</div>
    <div class="top_right"> 
           <a href="#">退出</a>  |
            <a href="#">注册</a> | 
            <a href="#">登录</a> | 
            <a href="#">网址导航</a> 
            </div>
  </div>
            </div>
<div class="head">
              <div class="wrap"> <a href="#" target="_blank"><img src="img/top.jpg"></a> </div>
            </div>
<div class="main wrap">
	<div class="main_title">注册客运站账号</div>
	<div class="main_head"></div>
	<div class="main_enter">
		<div class="enter_left">
			<ul id="ul">
          <li><asp:RequiredFieldValidator ID="RequiredFieldValidatoryonghuming" runat="server" ValidationGroup="q" ControlToValidate="yonghuming" ErrorMessage="*必填"></asp:RequiredFieldValidator>            
              用户名：
              <asp:TextBox ID='yonghuming' runat='server' CssClass="z3" style="margin-left:16px;" placeholder="请以字母开头，长度在6-18之间，由字母、数字、下划线组成"></asp:TextBox>*      
          <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidatoryonghuming" runat="server" ControlToValidate="yonghuming"
        ErrorMessage="请以字母开头，长度在6-18之间，由字母、数字、下划线组成" 
        ValidationExpression="^^[a-zA-Z]\w{5,17}$" ValidationGroup="q"></asp:RegularExpressionValidator>
                </li>

          <li >           <asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ValidationGroup="q" ControlToValidate="mima" ErrorMessage="*必填"></asp:RequiredFieldValidator>            密码：
            <asp:TextBox ID="mima" runat="server" TextMode="Password" placeholder="密码" CssClass="z3" Style="margin-left: 32px;" ></asp:TextBox>*
            <asp:RegularExpressionValidator ID="RegularExpressionValidatormima" runat="server" ControlToValidate="mima"
        ErrorMessage="使用英文字母或数字，长度为6-16个字符，区分英文字母大小写"         ValidationExpression="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$" ValidationGroup="q"></asp:RegularExpressionValidator>            
          </li>



           <li><asp:RequiredFieldValidator ID="RequiredFieldValidatorzcqr" runat="server" ValidationGroup="q" ControlToValidate="zcqr" ErrorMessage="*必填"></asp:RequiredFieldValidator>            
               确认密码：
              <asp:TextBox ID='zcqr' runat='server' TextMode=Password CssClass="z3" Style="margin-left: -1px;"></asp:TextBox>*            <BR /><asp:CompareValidator ID="CompareValidatorzcqr" runat="server" ControlToCompare="mima"
                        ControlToValidate="zcqr" ErrorMessage="密码不一致" ValidationGroup="q"></asp:CompareValidator>
        
           </li>


            <li style="margin-left:45px;">姓名：
               <asp:TextBox ID='xingming' runat='server' CssClass="z3"  Style="margin-left: 32px;"></asp:TextBox>            
           </li>

<br />
            <li style="margin-left:45px;">性别：
                <asp:DropDownList ID='xingbie' runat='server' CssClass="z3" Style="margin-left: 32px;"></asp:DropDownList>            
           </li>

<br />


            <li style="margin-left:45px;">籍贯：
               <asp:TextBox ID='jiguan' runat='server' CssClass="z3" Style="margin-left: 32px;"></asp:TextBox>            
           </li>
   
<br />        

           <li><asp:RequiredFieldValidator ID="RequiredFieldValidatorshouji" runat="server" ControlToValidate="shouji" ValidationGroup="q" ErrorMessage="*必填"></asp:RequiredFieldValidator>            手机：
               <asp:TextBox ID='shouji' runat='server' CssClass="z3"  Style="margin-left: 32px;"></asp:TextBox>*             <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidatorshouji" runat="server" ControlToValidate="shouji"
        ErrorMessage="号码格式不正确"         ValidationExpression="^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$" ValidationGroup="q"></asp:RegularExpressionValidator>            </li>


             <li> <asp:RequiredFieldValidator ID="RequiredFieldValidatorshenfenzheng" runat="server" ValidationGroup="q" ControlToValidate="shenfenzheng" ErrorMessage="*必填"></asp:RequiredFieldValidator>            身份证：
               <asp:TextBox ID='shenfenzheng' runat='server' CssClass="z3"  Style="margin-left: 16px;"></asp:TextBox>*            <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="shenfenzheng"
        ErrorMessage="身份证无效"         ValidationExpression="^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$" ValidationGroup="q"></asp:RegularExpressionValidator>             </li>


                 <li  style="margin-left:45px;">备注：
                <asp:TextBox ID='beizhu'  Height='100px' TextMode='MultiLine' runat='server'  CssClass="z3"  Style="margin-left: 32px;"></asp:TextBox></td></tr>			
           </li>

                <br />

               <li style="height: 40px;font: 12px bold;">
            <p style="margin-left: 90px">
                          <asp:CheckBox ID="yd" runat="server" />
                          &nbsp;我已阅读同意遵守 <a href="#" style="height: 18px;color: aqua;padding-left: 20px;margin-left: 20px;">《客运站服务协议》</a></p>
          </li>


              <li>
               <asp:button id="Button1" runat="server" Text="确定" onclick="Button1_Click" ValidationGroup="q" CssClass="z1"></asp:button>
                <input id="Reset1" type="reset" value="重置" class="z1" />
          </li>
                    </ul>                                                                                                                                                                                                              
		</div>
		<div class="enter_right">
			<div class="right_log">
                <p><asp:Button ID="as" runat="server" OnClick="dl" Text="已经是客运站会员，直接登录" CssClass="zcdl"/></p>
                <h6>使用合作网站帐号登录</h6>
				<a href="#" class="right_qq">QQ登录</a>
                <a class="right_web" href="#">微博登录</a>
            </div>
            <div class="right_foot">
            	<div class="mi-11">
					<div class="mi-111">
					<img src="img/wKgB4lM89uCAG3kNAAdFRFmITI868.jpeg" alt="轮换显示的图片广告" id="dd_scroll" style="width: 400px;height: 200px;align-content: center">
					</div>
					<div class="mi-112" id="scroll_number">
					<ul>
					<li id="scroll_number_1" onMouseOver="loopShow(1)">云南洱海</li>
					<li id="scroll_number_2" onMouseOver="loopShow(2)">日月潭</li>
					<li id="scroll_number_3" onMouseOver="loopShow(3)">乌镇</li>
					<li id="scroll_number_4" onMouseOver="loopShow(4)">长城</li>
					<li id="scroll_number_5" onMouseOver="loopShow(5)">张家界</li>
					<li id="scroll_number_6" onMouseOver="loopShow(6)">西江苗寨</li>
				    </ul>
					</div></div>
            </div>
		</div>
	</div>
	<div class="main_nav">
    <ul>
                  <li><a href="#">返回客运站首页</a></li>
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
              <p> 
                 <a href="//www.keyunzhan.com/about.php" target="_blank">关于客运站</a>&nbsp;&nbsp;|&nbsp;&nbsp; 
                 <a href="//www.keyunzhan.com/" target="_blank">友情链接</a>&nbsp;&nbsp;|&nbsp;&nbsp;  
                 <a href="//www.keyunzhan.com" target="_blank">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;  
                 <a href="//www.keyunzhan.com/jiucuo/" target="_blank">意见反馈</a> 
              </p>
              <p>Copyright &copy;2011-2015 keyunzhan.com  <a href="//www.miibeian.gov.cn/" target="_blank"> 闽ICP备11014391号-404</a></p>
            </div>
<div class="main_box">
            	<div class="main_boxt">
            		<div style="float: left">
            			<ul>
                          <li class="p"><a href="#" align="center" class="write"><span class="span">写游记</span></a></li>
                          <li class="p"><a href="#" align="center" class="book"><span class="span">订票</span></a><li>
                          <li class="p">
                          <a href="#" align="center" class="messege"><span class="span">意见<br>反馈</span></a>
                          </li>
                          <li class="p"><a class="service" href="http://wpa.qq.com/msgrd?v=3&amp;uin=1139000487&amp;site=qq&amp;menu=yes" target="_blank"><span class="span">服务</span></a></li>
                          <li class="p">
                          <a class="gotop" href="#"><span class="span">返回<br>顶部</span></a>
                          </li>
                       </ul>
            		</div>
            	</div>
            </div>
<script LANGUAGE="JavaScript">
    document.getElementById("autoRandom").innerHTML = createCode(5);
    function createCode(len) {
        var seed = new Array(
                'abcdefghijklmnopqrstuvwxyz',
                'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                '0123456789'
        );               //创建需要的数据数组  
        var idx, i;
        var result = "";   //返回的结果变量  
        for (i = 0; i < len; i++) //根据指定的长度  
        {
            idx = Math.floor(Math.random() * 3); //获得随机数据的整数部分-获取一个随机整数  
            result += seed[idx].substr(Math.floor(Math.random() * (seed[idx].length)), 1);
            //根据随机数获取数据中一个值  
        }

        return result; //返回随机结果  
    }
    function test() {
        var inputRandom = document.getElementById("inputRandom").value;
        var span = document.getElementById("result1");
        var autoRandom = document.getElementById("autoRandom").innerHTML;
        if (inputRandom == autoRandom) {
            span.innerHTML = "<span style='font-size:12px; color:red;'>通过验证</span>";
            return true;
        }
        else {
            span.innerHTML = "<span style='font-size:12px; color:red;'>没有通过验证</span>";
            return false;
        }
    }
    function test1() {
        var password1 = document.getElementById("password1").value;
        var div = document.getElementById("result2");
        var password2 = document.getElementById("password2").value;
        if (password1 == password2) {
            div.innerHTML = "<img src='img/tick.png'>";
            return true;
        }
        else {
            div.innerHTML = "<span style='font-size:12px; color:red;padding-left:85px;'><br>密码输入不一致</span>";
            return false;
        }
    }
    function guess() {
        var password1 = document.getElementById("password1").value;
        var span = document.getElementById("result3");
        var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
        var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
        if ((password1.length < 8) || (!reg1.test(password1))) {
            span.innerHTML = "<span style='font-size:12px; color:red;padding-left:55px;'><br>请输入8个数字加字母格式</span>";
            return false;
        }
        else if (reg.test(password1)) {
            span.innerHTML = "<img src='img/tick.png'>";
            return true;
        }
        else {
            span.innerHTML = "<span style='font-size:12px; color:red;padding-left:55px;'>请输入8个数字加字母格式</span>";
            return false;
        }

    }
    		</script>
<script>
    var scroll_img = new Array();
    scroll_img[0] = "img/20160626180933_18451.jpg";
    scroll_img[1] = "img/wKgBsU-f3v_1Rc4_AADrgXcalnQ51.groupinfo.w600.jpeg";
    scroll_img[2] = "img/20160829033848_71659.jpg";
    scroll_img[3] = "img/wKgBpVYoiOiABLExAAJI8ZtJQtI51.jpeg";
    scroll_img[4] = "img/20121014114231751.JPG";
    scroll_img[5] = "img/wKgB6lSvPQOAKYUnAAhGSPd0eDM751.png";
    var scroll_number = new Array();
    scroll_number[0] = "scroll_number_1";
    scroll_number[1] = "scroll_number_2";
    scroll_number[2] = "scroll_number_3";
    scroll_number[3] = "scroll_number_4";
    scroll_number[4] = "scroll_number_5";
    scroll_number[5] = "scroll_number_6";
    var NowFrame = 1;
    var MaxFrame = 6;
    function loopShow(d1) {
        if (Number(d1)) {
            NowFrame = d1;
        }
        for (var i = 1; i < (MaxFrame + 1) ; i++) {
            if (i == NowFrame) {
                document.getElementById("dd_scroll").src = scroll_img[i - 1];
                document.getElementById(scroll_number[i - 1]).className = "scroll_number_over";
            }
            else {
                document.getElementById(scroll_number[i - 1]).className = "scroll_number_out";
            }
        }
        if (NowFrame == MaxFrame) {
            NowFrame = 1;
        }
        else {
            NowFrame++;
        }
    }
    var theTimer = setInterval('loopShow()', 2000);
	</script>
        </form>
</body>
</html>


