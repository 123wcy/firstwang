<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qttop.ascx.cs" Inherits="qttop" %>
<%-- <table id="Table1" width="978" height="187" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="978" height="150" valign="top" background="qtimages/1_01_01.jpg"><table width="55%" height="74" border="0" align="left">
              <tr>
                <td align="left"><div style="font-family:宋体; color:#996633; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 25pt; margin-top:1pt">
                    
                      <div align="center" >车站售票管理系统</div>
                
                </div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="978" height="37" background="qtimages/1_01_02.jpg"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center"><a href="default.aspx"><span class="STYLE5">首页</span></a></td>
                <td align="center" class="red"><a href="news.aspx?lb=乘客须知"><span class="STYLE5"><strong>乘客须知</strong></span></a></td>
                <td align="center" class="red"><a href="dx_detail.aspx?lb=系统简介"><span class="STYLE5"><strong>系统简介</strong></span></a></td>
                <td align="center" class="red"><a href="yonghuzhuceadd.aspx"><span class="STYLE5"><strong>用户注册</strong></span></a></td>
                <td align="center" class="red"><a href="lyb.aspx"><span class="STYLE5"><strong>在线留言</strong></span></a></td>
                <td align="center" class="red"><a href="checixinxilist.aspx"><span class="STYLE5"><strong>列车时刻表</strong></span></a></td>
                <td align="center" class="red"><a href="chepiaoxinxilist.aspx"><span class="STYLE5"><strong>在线购票</strong></span></a></td>
                <td align="center" class="red"><a href="news.aspx?lb=购票规则"><span class="STYLE5"><strong>购票规则</strong></span></a></td>
                <td align="center" class="red"><a href="news.aspx?lb=旅游资讯"><span class="STYLE5"><strong>旅游资讯</strong></span></a></td>
                <td align="center" class="red"><a href="login.aspx"><span class="STYLE5"><strong>后台管理</strong></span></a></td>
              </tr>
            </table></td>
          </tr>
        </table>--%>
<link rel="stylesheet" href="top.css" type="text/css">
<link rel="stylesheet" href="lib/css/fontello.css" type="text/css">
<div class="header">
  <div class="head"> <a href="default.aspx" class="l"> <img src="img/logo.png" alt="客运站"> </a>
    <div class="header_right"> <a target="_blank" href="login.html">登陆</a> <a target="_blank" href="yonghuzhuceadd.aspx">注册</a>
     <a target="_blank" href="//m.keyunzhan.com"><i class="icon-mobile"></i>手机版</a> 
    <a href="lyb.aspx"><i class="icon-qq"></i>联系我们</a> </div>
  </div>
</div>
<div class="nav">
  <div class="wrapper">
    <ul class="nav-list fix">
      <li class="item"> <a href="default.aspx" class="first active">首页</a> </li>
      <li class="item"> <a target="_blank" href="chepiaoxinxilist.aspx">汽车票</a></li>
      <li class="item"> <a target="_blank" href="checixinxilist.aspx">汽车时刻表</a></li>
      <li class="item"> <a target="_blank" href="news.aspx?lb=旅游资讯">旅游</a></li>
      <li class="item"> <a target="_blank" href="">资讯<i class="icon-down-open-1"></i></a>
          <div class="sub-nav-wrap">
          <ul class="sub-nav-list fix" style="padding-left: 400px;">
            <li><a target="_blank" href="news.aspx?lb=乘客须知">乘客须知</a></li>
            <li><a target="_blank" href="news.aspx?lb=购票规则">购票规则</a></li>
            <li><a target="_blank" href="news.aspx?lb=旅游资讯">旅游资讯</a></li>
          </ul>
        </div>
      </li>
        <li class="item"> <a target="_blank" href="login.aspx">后台管理</a> </li>
    </ul>
  </div>
</div>
<div class="main-top">
 <div class="slideBox">
  <div class="hd">
    <ul>
      <li id="scroll_number_1" onMouseOver="loopShow(1)"></li>
      <li id="scroll_number_2" onMouseOver="loopShow(2)"></li>
      <li id="scroll_number_3" onMouseOver="loopShow(3)"></li>
    </ul>
  </div>
  <div class="bd" style=" width: 1345px; height: 400px;margin-top: 74px"> 
    <!-- <ul style="position: relative; width: 1345px; height: 400px;margin-top: 103px">
        <li style="position: absolute; width: 1345px; left: 0px; top: 0px; display: list-item;"><a target="_blank" href="//www.keyunzhan.com/qicheshikebiao/"><img src="img/lunbo1.jpg"></a></li>
        <li style="position: absolute; width: 1345px; left: 0px; top: 0px; display: none;"><a target="_blank" href="//www.keyunzhan.com/hotel/"><img src="img/lunbo2.jpg"></a></li>
        <li style="position: absolute; width: 1345px; left: 0px; top: 0px; display: none;"><a target="_blank" href="//www.keyunzhan.com/jipiao/"><img src="img/lunbo3.jpg"></a></li>--> 
    <img src="img/lunbo2.jpg" alt="轮换显示的图片广告" id="dd_scroll" style=" width: 2000px;height: 400px; left: 0px; top: 0px; display: list-item;z-index:0;"> </div>
</div>
  <div class="wrapper rel">  
    <div class="ssk-box">
      <div class="ssk-content">
        <div class="ssk-content-l">
          <ul>
            <li class="active" id="car"><i class="icon-bus"></i><span>汽车票</span></li>
            <li class="" ></li>
            <li class="" ></li>
            <li class="" ></li>
            <li class=""></li>
          </ul>
        </div>
        <div class="ssk-content-r">
          <div class="ssk-content-r-box active" id="book_car">
            <div class="ssk-hd">
              <ul>
                <li class="active">汽车票</li>
              </ul>
            </div>
            <div class="ssk-bd">
              <div class="item-box active">
                <form action="/zhandaozhan_search/" method="get" target="_blank">
                  <input type="hidden" name="so" value="1">
                  <div class="ssk-fix">
                    <div class="ssk-search-left">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <input type="text" value="上海" name="startstate" class="ssk-begin" id="qichecity"  ischecked="1" data-error="请重新选择出发城市" data-empty="请选择出发城市"  autocomplete="off">
                          <span>从</span> <i class="icon-calendar"></i> </div>
                        <span class="lb">城市</span> </div>
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <input type="text" value="南通" name="endstate" class="ssk-end" id="qichecity2" ischecked="1" data-error="请重新选择到达城市" data-empty="请选择到达城市"  autocomplete="off">
                          <span>到</span> <i class="icon-calendar"></i> </div>
                      </div>
                      <div class="ssk-change jp-changge">换</div>
                    </div>
                    <div class="ssk-search-right">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <input type="text" value="2017-12-05" name="date" id="cardate" class="city_text tt carCalendar" readonly>
                          <i class="icon-calendar"></i> </div>
                        <span class="lb">日期</span> </div>
                      <div class="ssk-submit-box">
                        <input type="submit" value="搜 索" class="ssk-submit btn">
                      </div>
                    </div>
                  </div>
                </form>
                <div class="ssk-label-box f13 pl30 mt10"> <span class="pl5">已覆盖全国</span><span class="orange">359</span> 个城市，<span class="orange">5293</span> 个汽车站网上售票大厅 </div>
              </div>
            </div>
          </div>
          
          <div class="f">
            <ul>
              <li> 客运站车票100%保障体系 </li>
              <li> 商家认证 </li>
              <li> 交易安全 </li>
              <li> 出行无忧 </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
    var scroll_img = new Array();
    scroll_img[0] = "img/lunbo1.jpg";
    scroll_img[1] = "img/lunbo2.jpg";
    scroll_img[2] = "img/lunbo3.jpg";
    var scroll_number = new Array();
    scroll_number[0] = "scroll_number_1";
    scroll_number[1] = "scroll_number_2";
    scroll_number[2] = "scroll_number_3";
    var NowFrame = 1;
    var MaxFrame = 3;
    function loopShow(d1) {
        if (Number(d1)) {
            NowFrame = d1;
        }
        for (var i = 1; i < (MaxFrame + 1) ; i++) {
            if (i == NowFrame) {
                document.getElementById("dd_scroll").src = scroll_img[i - 1];
                document.getElementById(scroll_number[i - 1]).className = "on";
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
<script>
    var scroll_img1 = new Array();
    scroll_img1[0] = "m1";
    scroll_img1[1] = "m2";
    scroll_img1[2] = "m3";
    var scroll_number1 = new Array();
    scroll_number1[0] = "scroll1";
    scroll_number1[1] = "scroll2";
    scroll_number1[2] = "scroll3";
    var NowFrame1 = 1;
    var MaxFrame1 = 3;
    function loopShow1(d1) {
        if (Number(d1)) {
            NowFrame1 = d1;
        }
        for (var i = 1; i < (MaxFrame1 + 1) ; i++) {
            if (i == NowFrame1) {
                document.getElementById(scroll_img1[i - 1]).style.display = "block";
                document.getElementById(scroll_number1[i - 1]).className = "k";

            }
            else {
                document.getElementById(scroll_img1[i - 1]).style.display = "none";
                document.getElementById(scroll_number1[i - 1]).className = "";

            }
        }
        if (NowFrame1 == MaxFrame1) {
            NowFrame1 = 1;
        }
        else {
            NowFrame1++;
        }
    }
    var theTimer = setInterval('loopShow1()', 2000);
	</script> 
 