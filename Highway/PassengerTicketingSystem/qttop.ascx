<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qttop.ascx.cs" Inherits="qttop" %>
<link rel="stylesheet" href="top.css" type="text/css">
<link rel="stylesheet" href="lib/css/fontello.css" type="text/css">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<style>
    .XXX {
    position: relative;
    display: block;
    padding: 0 23px;
    color: #fff;
    height:40px;
    transition: all 0.3s;
    background-color:#3897d8; 
    border:none;
    cursor:pointer;

    }
     .XXX:hover {
         background-color:#3288c2;
         border:none;
     }
        .yq {
            border:none;
            text-decoration:none;
            width:70px;
            float:left;
            font-size:12px;
            padding-right:15px;
            color: #707580

        }
         .yq1 {
            
            float:left;          

        }
        .ckxz {
        
            width:100px;
        }
        .sj {
        font-size: 12px;
    color: #666;
        }
        .tc {
        border:none; margin-left: 20px;color: #666;background-color:#ffffff;font-size:14px;cursor:pointer;
        }
    </style>


<div class="header">
  <div class="head"> 
      <a href="default.aspx" class="l"> <img src="img/logo.png" alt="客运站"> </a>
    <div class="header_right"> 
     
        <div class="header_right"> 
     <asp:Panel ID="Panel1" runat="server" CssClass="header_right">
        <asp:Button ID="Button5" runat="server" OnClick="dl" CssClass="tc" Text=" 登录 " Width="46px" />
         <asp:Button ID="Button6" runat="server" OnClick="zc" CssClass="tc" Text=" 注册 " Width="46px" />
         
     <a target="_blank" href="//m.keyunzhan.com"><i class="icon-mobile"></i>手机版</a> 
     <i class="icon-qq"></i><asp:Button ID="Button9" runat="server" OnClick="lyb" CssClass="tc" Text=" 联系我们 " />
         
     </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="header_right">
            <a style="background-color: #1076bc;border-radius: 8px;color: aliceblue"><%=Session["cx"].ToString().Trim() %> <%=Session["username"].ToString().Trim() %></a>          
              <asp:Button ID="Button8" runat="server" OnClick="tc" CssClass="tc" Text=" 退 出 " Width="46px" />
            <asp:Button ID="Button7" runat="server" OnClick="grzx" CssClass="tc"  Text="个人中心" />                            
                </asp:Panel>    
     </div>
     </div>
  </div>
</div>

<div class="nav">
  <div class="wrapper">
    <ul class="nav-list fix">
      <li class="item"> <a href="default.aspx" class="first active">首页</a> </li>
      <li class="item"> <a><asp:Button ID="qcp" runat="server" OnClick="qcpx" Text="汽车票" CssClass="XXX" /></a></li>
      <li class="item"> <a><asp:Button ID="qcxxlb" runat="server" OnClick="ccxxlb" Text="汽车时刻表" CssClass="XXX"/></a></li>
      <li class="item"> <a><asp:Button ID="lyb2" runat="server" OnClick="lyb" Text="在线留言" CssClass="XXX"/></a></li>
      <li class="item"> <a><asp:Button ID="zx" runat="server" OnClick="zxx" Text="资讯" CssClass="XXX"/><i class="icon-down-open-1"></i></a>
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
 