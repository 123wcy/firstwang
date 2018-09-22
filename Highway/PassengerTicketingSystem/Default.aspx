<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<!doctype html  xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
<meta charset="utf-8">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="lib/css/fontello.css" type="text/css">
    <link rel="stylesheet" href="top.css" type="text/css">
<title>长途汽车查询</title>
    
</head>

<body runat="server">
    <form id="form1" runat="server">

<uc1:qttop ID="top" runat="server" />
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
              <li class="active" ><i class="icon-bus"></i><span>汽车票</span></li>
            <li ></li>
            <li ></li>
            <li ></li>
              <li ></li>
          </ul>
        </div>
        <div class="ssk-content-r">
          <div class="ssk-content-r-box active" id="book_train">
            <div class="ssk-hd">
              <ul>
                <li class="active" id="zzss" onClick="ss(0)">站站搜索</li>
               
                <li class="" id="ccss" onClick="ss(1)">车次搜索</li>
              </ul>
            </div>
            <div class="ssk-bd">
              <div class="item-box active" id="zzss_1">
                <form method="get" action="/search_hc_zhanzhan/" target="_blank">
                  <div class="ssk-fix">
                    <div class="ssk-search-left">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='chufazhan'  runat="server" CssClass="text111"></asp:TextBox> 
                            <span>从</span> <i class="icon-calendar"></i> </div>
                        <span class="lb">城市</span> </div>
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='zhongdianzhan'  runat="server" CssClass="text111"></asp:TextBox> 
                            <span>到</span> <i class="icon-calendar"></i> </div>
                      </div>
                      <div class="ssk-change jp-changge">换</div>
                    </div>
                    <div class="ssk-search-right">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                           <asp:TextBox ID='chufashijian'  runat="server" CssClass="text111"></asp:TextBox> 
                            <!--  <span>往</span> --> 
                          <i class="icon-calendar"></i> </div>
                        <span class="lb">日期</span> </div>
                      <div class="ssk-submit-box">
                         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜索" CssClass="ssk-submit btn" />
                                	
                      </div>
                    </div>
                  </div>
                </form>
                <div class="ssk-label-box f13 pl30 mt10"> <span class="pl5"></span>温馨提示：今日可购买2017年<font class="orange">12</font>月<font class="orange">31</font>日火车票! </div>
              </div>
              
              <div class="item-box" id="ccss_1">
                  <div class="ssk-fix">
                    <div class="ssk-search-left">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='checihao'  runat="server" CssClass="text111"></asp:TextBox> 
                           <i class="icon-calendar"></i> </div>
                        <span class="lb">车次</span> </div>
                    </div>
                    <div class="ssk-search-right">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='chufashijian2'  runat="server" CssClass="text111"></asp:TextBox> 
                           <i class="icon-calendar"></i> </div>
                        <span class="lb">日期</span> </div>
                      <div class="ssk-submit-box">
                       <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="搜索" CssClass="ssk-submit btn" />
                          
                      </div>
                    </div>
                  </div>
                
                <div class="ssk-label-box mt15"> 覆盖 <span class="orange">2569</span> 个站点，<span class="orange">8460</span> 个列车车次 </div>
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
<!-- 侧边导航 -->
<div class="wrapper rel"> 
  <div id="rmqc" class="mt30">
    <div class="common-title">
      <h3> <span>热门汽车站</span> </h3>
    </div>
    <div class="hot-car-station-list">
      <ul class="fold_wrap" id="sm">
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>河曲车站</h4>
          </div>
          <div class="pic_auto pic_auto1"></div>
          </a> </li>
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>贺州车站</h4>
          </div>
          <div class="pic_auto pic_auto2"></div>
          </a> </li>
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>金城江车站</h4>
          </div>
          <div class="pic_auto pic_auto3"></div>
          </a> </li>
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>临沂车站</h4>
          </div>
          <div class="pic_auto pic_auto4"></div>
          </a> </li>
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>荣城车站</h4>
          </div>
          <div class="pic_auto pic_auto5"></div>
          </a> </li>
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>太仓车站</h4>
          </div>
          <div class="pic_auto pic_auto6"></div>
          </a> </li>
        <li> <a href="http://www.16sucai.com/">
          <div class="mask_b">
            <h4>无锡车站</h4>
          </div>
          <div class="pic_auto pic_auto7"></div>
          </a> </li>
      </ul>
    </div>
  </div>
  <div id="qczb" class="mt30">
    <div class="slideBox2">
      <div class="common-title">
        <h3> <span>汽车周边游</span> </h3>
        <div class="hd">
          <div class="tit"> <i class="iconfont icon-qiche"></i> 汽车票 </div>
          <ul class="links fix">
            <li><a href="javascript:void(0)" class="item on"  id="xiamen" onClick="carPutUp(0)">厦门</a></li>
            <li ><a href="javascript:void(0)" class="" id="nanning" onClick="carPutUp(1)">南宁</a></li>
            <li><a href="javascript:void(0)" class="" id="tianjing" onClick="carPutUp(2)">天津</a></li>
            <li><a href="javascript:void(0)" class="" id="shenyang" onClick="carPutUp(3)">沈阳</a></li>
            <li><a href="javascript:void(0)" class="" id="beijing" onClick="carPutUp(4)">北京</a></li>
            <li><a href="javascript:void(0)" class="" id="zhengzhou" onClick="carPutUp(5)">郑州</a></li>
            <li class="more"><a target="_blank" href="checixinxilist.aspx" title="汽车时刻表">更多&gt;&gt;</a></li>
          </ul>
        </div>
      </div>
      <div class="bd" style="position: relative; width: 1200px; height: 528px;">
        <ul class="img-list col-5 fix" style="position: absolute; width: 1210px; left: 0px; top: 0px; display: none;" id="car_xiamen">
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-厦门-印江/" title="厦门到印江汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="印江">
              <div class="text abs">
                <p>印江</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">厦门</span> <i class=" icon-right-thin"></i> <span class="r">印江</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>321.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-厦门-修水/" title="厦门到修水汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="修水">
              <div class="text abs">
                <p>修水</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">厦门</span> <i class=" icon-right-thin"></i> <span class="r">修水</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>301.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-厦门-武宁/" title="厦门到武宁汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="武宁">
              <div class="text abs">
                <p>武宁</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">厦门</span> <i class=" icon-right-thin"></i> <span class="r">武宁</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>281.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-厦门-虬津/" title="厦门到虬津汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="虬津">
              <div class="text abs">
                <p>虬津</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">厦门</span> <i class=" icon-right-thin"></i> <span class="r">虬津</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>261.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-厦门-宜兴/" title="厦门到宜兴汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="宜兴">
              <div class="text abs">
                <p>宜兴</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">厦门</span> <i class=" icon-right-thin"></i> <span class="r">宜兴</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>459.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          
         
         
         
          
        </ul>

        <ul class="img-list col-5 fix" style="position: absolute; width: 1210px; left: 0px; top: 0px; display: none;" id="car_nanning">
       
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-南宁-永州/" title="南宁到永州汽车时刻表">
            <div class="img-box"> <img src="https://www.keyunzhan.com/uploads/jingdian/lunbo/26a75c4ff4bcdd892e6538db5c6784c4.jpg" alt="江永女书生态博物馆">
              <div class="text abs">
                <p>江永女书生态博物馆</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">南宁</span> <i class=" icon-right-thin"></i> <span class="r">永州</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>60.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-南宁-花都/" title="南宁到花都汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="花都">
              <div class="text abs">
                <p>花都</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">南宁</span> <i class=" icon-right-thin"></i> <span class="r">花都</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>300.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-南宁-石排/" title="南宁到石排汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="石排">
              <div class="text abs">
                <p>石排</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">南宁</span> <i class=" icon-right-thin"></i> <span class="r">石排</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>240.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-南宁-常平/" title="南宁到常平汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="常平">
              <div class="text abs">
                <p>常平</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">南宁</span> <i class=" icon-right-thin"></i> <span class="r">常平</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>340.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-南宁-大朗/" title="南宁到大朗汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="大朗">
              <div class="text abs">
                <p>大朗</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">南宁</span> <i class=" icon-right-thin"></i> <span class="r">大朗</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>320.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
        </ul>

        <ul class="img-list col-5 fix" style="position: absolute; width: 1210px; left: 0px; top: 0px; display: none;" id="car_tianjing">
         
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-天津-海兴/" title="天津到海兴汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="海兴">
              <div class="text abs">
                <p>海兴</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">天津</span> <i class=" icon-right-thin"></i> <span class="r">海兴</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>55.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-天津-孝子墓/" title="天津到孝子墓汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="孝子墓">
              <div class="text abs">
                <p>孝子墓</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">天津</span> <i class=" icon-right-thin"></i> <span class="r">孝子墓</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>32.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-天津-交河/" title="天津到交河汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="交河">
              <div class="text abs">
                <p>交河</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">天津</span> <i class=" icon-right-thin"></i> <span class="r">交河</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>50.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-天津-襄樊/" title="天津到襄樊汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="襄樊">
              <div class="text abs">
                <p>襄樊</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">天津</span> <i class=" icon-right-thin"></i> <span class="r">襄樊</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>300.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-天津-济阳/" title="天津到济阳汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="济阳">
              <div class="text abs">
                <p>济阳</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">天津</span> <i class=" icon-right-thin"></i> <span class="r">济阳</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>95.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
        </ul>


        <ul class="img-list col-5 fix" style="position: absolute; width: 1210px; left: 0px; top: 0px; display: none;" id="car_shenyang">
    
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-沈阳-通辽/" title="沈阳到通辽汽车时刻表">
            <div class="img-box"> <img src="https://www.keyunzhan.com/uploads/jingdian/lunbo/18eb48640c47bb53428d31195aa70a1a.jpg" alt="内蒙古通辽市孝庄园文化旅游区">
              <div class="text abs">
                <p>内蒙古通辽市孝庄园文</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">沈阳</span> <i class=" icon-right-thin"></i> <span class="r">通辽</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>81.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-沈阳-丁家房/" title="沈阳到丁家房汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="丁家房">
              <div class="text abs">
                <p>丁家房</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">沈阳</span> <i class=" icon-right-thin"></i> <span class="r">丁家房</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>20.50</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-沈阳-库伦旗/" title="沈阳到库伦旗汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="库伦旗">
              <div class="text abs">
                <p>库伦旗</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">沈阳</span> <i class=" icon-right-thin"></i> <span class="r">库伦旗</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>59.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-沈阳-黄家岭/" title="沈阳到黄家岭汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="黄家岭">
              <div class="text abs">
                <p>黄家岭</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">沈阳</span> <i class=" icon-right-thin"></i> <span class="r">黄家岭</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>22.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-沈阳-法库/" title="沈阳到法库汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="法库">
              <div class="text abs">
                <p>法库</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">沈阳</span> <i class=" icon-right-thin"></i> <span class="r">法库</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>22.50</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
        </ul>

        <ul class="img-list col-5 fix" style="position: absolute; width: 1210px; left: 0px; top: 0px; display: none;" id="car_beijing">
         
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-北京-高官屯/" title="北京到高官屯汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="高官屯">
              <div class="text abs">
                <p>高官屯</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">北京</span> <i class=" icon-right-thin"></i> <span class="r">高官屯</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>18.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-北京-下洼/" title="北京到下洼汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="下洼">
              <div class="text abs">
                <p>下洼</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">北京</span> <i class=" icon-right-thin"></i> <span class="r">下洼</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>127.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-北京-大堤/" title="北京到大堤汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="大堤">
              <div class="text abs">
                <p>大堤</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">北京</span> <i class=" icon-right-thin"></i> <span class="r">大堤</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>81.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-北京-滨海/" title="北京到滨海汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="滨海">
              <div class="text abs">
                <p>滨海</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">北京</span> <i class=" icon-right-thin"></i> <span class="r">滨海</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>262.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-北京-柿子园/" title="北京到柿子园汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="柿子园">
              <div class="text abs">
                <p>柿子园</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">北京</span> <i class=" icon-right-thin"></i> <span class="r">柿子园</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>136.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
        </ul>

        <ul class="img-list col-5 fix" style="position: absolute; width: 1210px; left: 0px; top: 0px; display: block;" id="car_zhengzhou">
        
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-郑州-惠民/" title="郑州到惠民汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="惠民">
              <div class="text abs">
                <p>惠民</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">郑州</span> <i class=" icon-right-thin"></i> <span class="r">惠民</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>161.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-郑州-商河/" title="郑州到商河汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="商河">
              <div class="text abs">
                <p>商河</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">郑州</span> <i class=" icon-right-thin"></i> <span class="r">商河</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>150.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-郑州-滁州/" title="郑州到滁州汽车时刻表">
            <div class="img-box"> <img src="https://www.keyunzhan.com/uploads/jingdian/lunbo/1461161581ad7a813ba20721c019f7bf.jpg" alt="明皇陵">
              <div class="text abs">
                <p>明皇陵</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">郑州</span> <i class=" icon-right-thin"></i> <span class="r">滁州</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>185.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-郑州-东海/" title="郑州到东海汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="东海">
              <div class="text abs">
                <p>东海</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">郑州</span> <i class=" icon-right-thin"></i> <span class="r">东海</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>162.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
          <li class="item"> <a target="_blank" href="//www.keyunzhan.com/b-郑州-西平/" title="郑州到西平汽车时刻表">
            <div class="img-box"> <img src="img/qicheskb.jpg" alt="西平">
              <div class="text abs">
                <p>西平</p>
              </div>
            </div>
            <div class="bot fix">
              <div class="bot-hd fix"> <span class="l">郑州</span> <i class=" icon-right-thin"></i> <span class="r">西平</span> </div>
              <div class="bot-bd fix"> <span class="l">汽车票价</span> <span class="price r"> ￥<em>42.00</em> <span>起</span> </span> </div>
            </div>
            </a> </li>
        </ul>

      </div>
    </div>
  </div>
   

  <div id="kyzx" class="mt30 pb30">
    <div class="common-title">
      <h3 class="mb0"> <span>客运资讯</span> <a target="_blank" href="//www.keyunzhan.com/keyun_news/" class="r" title="客运资讯">更多资讯&gt;&gt;</a> </h3>
    </div>
    <div class="ky-news-list fix">
      <div class="left l">
          <div class="slideBox4">
                       
                    <div class="hd">
                        
                        <ul class="links">
            <li ><a href="javascript:void(0)" class="item on" id="hangzhou" onClick="trainPutUp(0)">旅游资讯</a></li>
            <li ><a href="javascript:void(0)" class="" id="dalian" onClick="trainPutUp(1)">购票规则</a></li>
            <li><a href="javascript:void(0)" class="" id="guangzhou" onClick="trainPutUp(2)">乘客须知</a></li>
                                                         </ul>
                    </div>
                
                    <div class="bd">
                            <ul style="position: relative; width: 780px; height: 300px;top:40px;">
                                <li class="fix" style="position: absolute; width: 780px; left: 0px; top: 0px; display: none;" id="train_hangzhou">                                
          
            <ul class="recom-list">
               <li><a>
                   <asp:DataGrid ID="DataGrid3" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    ItemStyle-Height="25" ShowHeader="False" Width="100%" BorderColor="#ffffff">
                                    <Columns>
                                        <asp:TemplateColumn>
                                            <ItemTemplate>
                                                <img src="qtimages/1.jpg">
                                            </ItemTemplate>
                                            <HeaderStyle Width="30px" />
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="标题">
                                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                Font-Underline="False" HorizontalAlign="Left" />
                                            <ItemTemplate>
                                                <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                    <%# CutStr(DataBinder.Eval(Container.DataItem, "title"))%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="发布时间" ItemStyle-CssClass="sj">
                                            <HeaderStyle Width="100px" />
                                        </asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                   </a></li>
             </ul>
                                    
                                    
                                </li>
                                <li class="fix" style="position: absolute; width: 780px; left: 0px; top: 0px; display: list-item;" id="train_dalian">
                               <ul class="recom-list">
               <li><a>     <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    class="newsline" Height="120px" ItemStyle-Height="24" ShowHeader="False" Width="100%" BorderColor="#ffffff">
                                    <Columns>
                                        <asp:TemplateColumn>
                                            <ItemTemplate>
                                                <img src="qtimages/1.jpg">
                                            </ItemTemplate>
                                            <HeaderStyle Width="30px" />
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="标题">
                                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                Font-Underline="False" HorizontalAlign="Left" />
                                            <ItemTemplate>
                                                <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                    <%# CutStr2(DataBinder.Eval(Container.DataItem, "title "))%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    </Columns>
                                    <ItemStyle Height="25px" />
                                </asp:DataGrid>
                              </a></li>
             </ul>      
                                </li>
                                <li class="fix" style="position: absolute; width: 780px; left: 0px; top: 0px; display: none;" id="train_guangzhou">
                            <ul class="recom-list">
               <li><a>        
                                   <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BorderWidth="0"
                                    ItemStyle-Height="25" ShowHeader="False" Width="100%" BorderColor="#ffffff">
                                    <Columns>
                                        <asp:TemplateColumn>
                                            <ItemTemplate>
                                                <img src="qtimages/1.jpg">
                                            </ItemTemplate>
                                            
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="标题">
                                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                Font-Underline="False" HorizontalAlign="Left" />
                                            <ItemTemplate>
                                                <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="ckxz">
                                                    <%# CutStr(DataBinder.Eval(Container.DataItem, "title "))%>
                                                </a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="发布时间" ItemStyle-CssClass="sj">
                                            
                                        </asp:BoundColumn>
                                    </Columns>
                                </asp:DataGrid>
                                </a></li>
             </ul>      
                                </li>
                            </ul>
                        </div>
              </div>
                    </div>
        
      <div class="right r">
        <div class="media">
          <div class="media-body">
            <div class="media-heading">12306官网最新动态</div>
            
             
              <div class="recom-list">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <<asp:DropDownList ID="lb" runat="server" Style="border-right: #cadcb2 1px solid;
                                                                border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                color: #81b432; border-bottom: #cadcb2 1px solid">
                                                            </asp:DropDownList> </div>
                        <span class="lb">车站</span> </div>
                    </div>
              <div class="recom-list">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID="keyword" runat="server" Style="border-right: #cadcb2 1px solid;
                                                                border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                                                color: #81b432; border-bottom: #cadcb2 1px solid"></asp:TextBox></div>
                        <span class="lb">日期</span> </div>
                      <div class="ssk-submit-box">
                        <asp:Button ID="Button4" runat="server" OnClick="hh" Text="搜索" CssClass="ssk-submit btn" />
                          
                      </div>
                    </div>
             
             
          </div>
          <div class="media-right media-middle"> <a target="_blank" href="//www.keyunzhan.com/12306-3084" title="12306火车票怎么变更到站"> <img class="media-object"  src="img/index_news_12306.jpg" alt="铁路12306可以选座吗" title="铁路12306可以选座吗"> </a> </div>
        </div>
        
        
      </div>
        </div>
      </div>
    </div>
  
<div class="bged pt30 pb30">
  <div class="wrapper">
    <div class="slide-list">
      <dl class="fix">
        <dt>友情链接</dt>
        <dd><asp:DataGrid ID="DataGridyqlj" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                                    Height="100%" ShowHeader="False" Width="100%" AlternatingItemStyle-BorderStyle="None">
                                                    <Columns>
                                                       
                                                        <asp:TemplateColumn HeaderText="gregre">
                                                            <ItemTemplate>
                                                                <a href='<%#DataBinder.Eval(Container.DataItem, "wangzhi") %>' target="_blank" class="yq">
                                  <%#DataBinder.Eval(Container.DataItem, "wangzhanmingcheng") %>
                                                                </a>
                                                            </ItemTemplate>
                                                        </asp:TemplateColumn>
                                                        
                                                    </Columns>
                                                    
            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                                                Font-Underline="False" HorizontalAlign="Left" CssClass="yq" BorderStyle="None" BorderColor="#ededed" />
                                                </asp:DataGrid></dd>
        
      </dl>
      <div class="icon-box"> <span class="down"></span> </div>
    </div>
    <div class="slide-list">
      <dl class="fix">
        <dt>合作联盟</dt>
        <dd><a target="_blank" href="http://www.lvmama.com ">驴妈妈旅游网 </a></dd>
        <dd><a target="_blank" href="http://www.tuniu.com/">途牛旅游网</a></dd>
        <dd><a target="_blank" href="http://you.ctrip.com/">携程旅游网</a></dd>
        <dd><a target="_blank" href="http://www.yododo.com/">游多多自助游</a></dd>
        <dd><a target="_blank" href="http://www.jiazhao.com/">驾照网</a></dd>
        <dd><a target="_blank" href="http://www.gaotie.cn/">高铁网</a></dd>
      </dl>
      <div class="icon-box"> <span class="down"></span> </div>
    </div>
    <div class="slide-list">
      <dl class="fix">
        <dt>网站导航</dt>
        <dd><a target="_blank" href="http://www.0460.com/">0460网站之家</a></dd>
        <dd><a target="_blank" href="https://www.weimao.com/">企业信息查询</a></dd>
      </dl>
      <div class="icon-box"> <span class="down"></span> </div>
    </div>
  </div>
</div>
<div class="slogan-bar">
  <div class="wrapper">
    <ul class="fix">
      <li> <i class="icon-ticket"></i> <strong>快速出票</strong>
        <p>第一时间反馈出票时间</p>
      </li>
      <li> <i class=" icon-globe"></i> <strong>全面覆盖</strong>
        <p>近百个城市已能在线预订</p>
      </li>
      <li> <i class=" icon-shield"></i> <strong>安全支付</strong>
        <p>支持支付宝支付，放心购票</p>
      </li>
      <li> <i class="icon-rocket"></i> <strong>方便快捷</strong>
        <p>取票自由，车站直接取票上车</p>
      </li>
    </ul>
  </div>
</div>
<div class="footer mt30 bgf">
  <div class="wrapper fix">
    <div class="footer-hd fix">
      <dl>
        <dt>关于客运</dt>
        <dd><a target="_blank" href="//www.keyunzhan.com/about.php/">关于我们</a></dd>
        <dd><a target="_blank" href="//www.keyunzhan.com/daohang/">网站地图</a></dd>
        <dd><a href="javascript:void(0)">联系我们</a></dd>
      </dl>
      <dl>
        <dt>加盟合作</dt>
        <dd><a target="_blank" href="//www.keyunzhan.com/huoche/">火车票预订</a></dd>
        <dd><a target="_blank" href="//www.keyunzhan.com/hotel/">酒店预订</a></dd>
        <dd><a target="_blank" href="//www.keyunzhan.com/about.php/">广告合作</a></dd>
      </dl>
      <dl>
        <dt>客运官方微博</dt>
        <dd><img src="img/weibo-code.jpg" alt="客运官方微博"></dd>
      </dl>
      <dl>
        <dt>客运官方微信</dt>
        <dd><img src="img/wechat-code.jpg" alt="客运官方微信"></dd>
      </dl>
    </div>
    <div class="footer-bd">
      <p>关于客运站对外合作、侵权，请联系客运站客服（广告合作）QQ:1139000487 我们将会在48小时内给与处理！客运旅游网会员交流群：203304115 </p>
      <p>版权所有 2011-2017 本站所有内容，未经许可，均不得转载 © 客运站-<a href="http://www.miitbeian.gov.cn/ " target="_blank" rel="nofollow">闽ICP备11014391号-404</a> <a href="https://12321.cn/&#10;" target="_blank" rel="nofollow">“扫黄打非”举报专区</a></p>
    </div>
  </div>
</div>

</form>
<script type="text/javascript">
    var arr=new Array();
    arr[0]="zzss_1";
    arr[1]="ccss_1";
    var arrClass=new Array();
    arrClass[0]="zzss";
    arrClass[1]="ccss";
    function ss(elementId)
    {
        for(var i=0;i<arr.length;i++)
        {
            if(elementId==i)
            {
                document.getElementById(arr[i]).style.display="block";
                document.getElementById(arrClass[i]).className="active";
            }
            else
            {
                document.getElementById(arr[i]).style.display="none";
                document.getElementById(arrClass[i]).className="";
            }
        }
    }
	
</script>
<script>
    var ar=new Array();
    ar[0]="gjhc_1";
    ar[1]="gjlx_1";
    ar[2]="gjzd_1";
    var arClass=new Array();
    arClass[0]="gjhc";
    arClass[1]="gjlx";
    arClass[2]="gjzd";
    function sss(elementId)
    {
        for(var i=0;i<ar.length;i++)
        {
            if(elementId==i)
            {
                document.getElementById(ar[i]).style.display="block";
                document.getElementById(arClass[i]).className="active";
            }
            else
            {
                document.getElementById(ar[i]).style.display="none";
                document.getElementById(arClass[i]).className="";
            }
        }
    }
</script>
<script>
    var scroll_img=new Array();
    scroll_img[0]="img/lunbo1.jpg";
    scroll_img[1]="img/lunbo2.jpg";
    scroll_img[2]="img/lunbo3.jpg";
    var scroll_number=new Array();
    scroll_number[0]="scroll_number_1";
    scroll_number[1]="scroll_number_2";
    scroll_number[2]="scroll_number_3";
    var NowFrame=1;
    var MaxFrame=3;
    function loopShow(d1)
    {
        if(Number(d1))
        {
            NowFrame=d1;
        }
        for(var i=1;i<(MaxFrame+1);i++)
			
        {
            if(i==NowFrame)
            {
                document.getElementById("dd_scroll").src=scroll_img[i-1];
                document.getElementById(scroll_number[i-1]).className="on";
            }
            else
            {
                document.getElementById(scroll_number[i-1]).className="scroll_number_out";
					
            }
        }
        if(NowFrame==MaxFrame)
        {
            NowFrame=1;
        }
        else
        {
            NowFrame++;
        }
    }
    var theTimer=setInterval('loopShow()',2000);
	</script> 
<script>
    var scroll_img1=new Array();
    scroll_img1[0]="m1";
    scroll_img1[1]="m2";
    scroll_img1[2]="m3";
    var scroll_number1=new Array();
    scroll_number1[0]="scroll1";
    scroll_number1[1]="scroll2";
    scroll_number1[2]="scroll3";
    var NowFrame1=1;
    var MaxFrame1=3;
    function loopShow1(d1)
    {
        if(Number(d1))
        {
            NowFrame1=d1;
        }
        for(var i=1;i<(MaxFrame1+1);i++)
			
        {
            if(i==NowFrame1)
            {
                document.getElementById(scroll_img1[i-1]).style.display="block";
                document.getElementById(scroll_number1[i-1]).className="k";
						
            }
            else
            {
                document.getElementById(scroll_img1[i-1]).style.display="none";
                document.getElementById(scroll_number1[i-1]).className="";
					
            }
        }
        if(NowFrame1==MaxFrame1)
        {
            NowFrame1=1;
        }
        else
        {
            NowFrame1++;
        }
    }
    var theTimer=setInterval('loopShow1()',2000);
	</script> 
<script type="text/javascript">
    var bookCate=new Array();
    bookCate[0]="book_car";
    bookCate[1]="book_train";
    bookCate[2]="book_plane";
    bookCate[3]="book_grogshop";
    bookCate[4]="book_bus";
    var bookClass=new Array();
    bookClass[0]="car";
    bookClass[1]="train";
    bookClass[2]="plane";
    bookClass[3]="grogshop";
    bookClass[4]="bus";
    function bookPutUp(elementId)
    {
        for(var i=0;i<bookCate.length;i++)
        {
            if(elementId==i)
            {
                document.getElementById(bookCate[i]).style.display="block";
                document.getElementById(bookClass[i]).className="active";
            }
            else
            {
                document.getElementById(bookCate[i]).style.display="none";
                document.getElementById(bookClass[i]).className="ssk-content-l li";
            }
        }
    }
	
</script> 
<script type="text/javascript">
    var carCate=new Array();
    carCate[0]="car_xiamen";
    carCate[1]="car_nanning";
    carCate[2]="car_tianjing";
    carCate[3]="car_shenyang";
    carCate[4]="car_beijing";
    carCate[5]="car_zhengzhou";
    var carClass=new Array();
    carClass[0]="xiamen";
    carClass[1]="nanning";
    carClass[2]="tianjing";
    carClass[3]="shenyang";
    carClass[4]="beijing";
    carClass[5]="zhengzhou";
    function carPutUp(elementId)
    {
        for(var i=0;i<carCate.length;i++)
        {
            if(elementId==i)
            {
                document.getElementById(carCate[i]).style.display="block";
                document.getElementById(carClass[i]).className="on";
						
            }
            else
            {
                document.getElementById(carCate[i]).style.display="none";
                document.getElementById(carClass[i]).className="";
				    
            }
        }
    }
	
</script> 
  <script type="text/javascript">
      var trainCate=new Array();
      trainCate[0]="train_hangzhou";
      trainCate[1]="train_dalian";
      trainCate[2]="train_guangzhou";
     
      var trainClass=new Array();
      trainClass[0]="hangzhou";
      trainClass[1]="dalian";
      trainClass[2]="guangzhou";
     
      function trainPutUp(elementId)
      {
          for(var i=0;i<trainCate.length;i++)
          {
              if(elementId==i)
              {
                  document.getElementById(trainCate[i]).style.display="block";
                  document.getElementById(trainClass[i]).className="on";
              }
              else
              {
                  document.getElementById(trainCate[i]).style.display="none";
                  document.getElementById(trainClass[i]).className="";
              }
          }
      }
	
</script>    

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script> 
<script type="text/javascript">
    (function(){
       
        var slideMenu=function(){
            var sp,st,t,m,sa,l,w,gw,ot;
            return{
                destruct:function(){
                    if(m){
                        clearInterval(m.htimer);
                        clearInterval(m.timer);
                    }
                },
                build:function(sm,sw,mt,s,sl,h){
                    sp=s; 
                    st=sw; 
                    t=mt;
                    m=document.getElementById(sm);
                    sa=m.getElementsByTagName('li');
                    l=sa.length; 
                    w=m.offsetWidth; 
                    gw=w/l;
                    ot=Math.floor((w-st)/(l-1)); 
                    var i=0;
                    for(i;i<l;i++){
                        s=sa[i]; 
                        s.style.width=gw+'px'; 
                        this.timer(s)
                    }
                    if(sl!=null){
                        m.timer=setInterval(function(){
                            slideMenu.slide(sa[sl-1])
                        },t)}
                },
                timer:function(s){
                    s.onmouseover=function(){
                        clearInterval(m.htimer);
                        clearInterval(m.timer);
                        m.timer = setInterval(function(){
                            slideMenu.slide(s)
                        },t);
                        //console.log($(this).find('.mask_b').html());
                        $(this).find('.mask_b').hide();
                        //console.log($(this).find('.mask_b').attr("style"));
                    }
                    s.onmouseout=function(){
                        clearInterval(m.timer);
                        clearInterval(m.htimer);
                        m.htimer=setInterval(function(){
                            slideMenu.slide(s,true)
                        },t);
                        //console.log($(this).find('.mask_b').html());
                        $(this).find('.mask_b').show();
                        //console.log($(this).find('.mask_b').attr("style"));
                    }
                },
                slide:function(s,c){
                    var cw=parseInt(s.style.width);
                    if((cw<st && !c) || (cw>gw && c)){
                        var owt=0; var i=0;
                        for(i;i<l;i++){
                            if(sa[i]!=s){
                                var o,ow; var oi=0; o=sa[i]; ow=parseInt(o.style.width);
                                if(ow<gw && c){
                                    oi=Math.floor((gw-ow)/sp); 
                                    oi=(oi>0)?oi:1; 
                                    o.style.width=(ow+oi)+'px';
                                    //console.log(o);
                                    //console.log(o.style.width);
                                }else if(ow>ot && !c){
                                    oi=Math.floor((ow-ot)/sp); 
                                    oi=(oi>0)?oi:1; 
                                    o.style.width=(ow-oi)+'px';
                                    //console.log(o);
                                    //console.log(o.style.width);
                                }
                                if(c){
                                    owt=owt+(ow+oi)
                                }else{
                                    owt=owt+(ow-oi)
                                }
                            }
                        }
                        s.style.width=(w-owt)+'px';
                    }else{
                        if(m.htimer)
                            clearInterval(m.htimer)
                        if(m.timer)
                            clearInterval(m.timer);
                    }
                }
            };
        }();
        slideMenu.build('sm',336,1,1,1);
    })();
</script>
</body>
</html>


