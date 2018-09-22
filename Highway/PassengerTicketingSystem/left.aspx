<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <%--<link rel="stylesheet" href="skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="skin/css/menu.css" type="text/css" />--%>
    <link rel="stylesheet" href="skin/css/iconfont.css" type="text/css" />
    <link rel="stylesheet" href="skin/css/nav.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<%-- <script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="skin/js/frame/menu.js"></script>--%>
    <script language="javascript" type="text/javascript" src="js/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/nav.js"></script>
<base target="main" />
</head>
<body target="main">
    <form id="form1" runat="server">
    <div>
      

     <div class="nav">
	 <div class="nav-top">
		<div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ></div>
	</div>
	<ul>

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>车次信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="checixinxi_add.aspx"><span>车次信息添加</span></a></li>
				<li><a href="checixinxi_list.aspx"><span>车次信息查询</span></a></li>
			</ul>
		</li>

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>车票信息管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="chepiaoxinxi_add.aspx"><span>车票信息添加</span></a></li>
				<li><a href="chepiaoxinxi_list.aspx"><span>车票信息查询</span></a></li>
			</ul>
		</li>

         <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>信息查询</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="goupiaojilu_list.aspx"><span>购票记录查询</span></a></li>
                <li><a href="tuipiaojilu_list.aspx"><span>退票记录查询</span></a></li>
			</ul>
		</li>


         
		
        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>结算统计</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="yunying.aspx"><span>结算统计</span></a></li>
               
			</ul>
		</li>
        

        


         <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>留言反馈</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="lyb_gl.aspx"><span>留言反馈</span></a></li>
               
			</ul>
		</li>
       

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>资讯管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="allgonggao_list.aspx?lb=乘客须知"><span>乘客须知管理</span></a></li>
               
				<li><a href="allgonggao_list.aspx?lb=购票规则"><span>购票规则管理</span></a></li>
                
				<li><a href="allgonggao_list.aspx?lb=旅游资讯"><span>旅游资讯管理</span></a></li>
			</ul>
		</li>


         <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>友情链接管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="youqinglianjie_list.aspx"><span>友情链接管理</span></a></li>
               
			</ul>
		</li>
       
        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>基础设置</span><i class="my-icon nav-more"></i></a>
			<ul>
                <li><a href="time.aspx"><span>时间设置</span></a></li>
				<li><a href='databack.aspx' target='main'><span>数据备份</span></a></li>				                          
			</ul>
		</li>

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>系统用户管理</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="listuser.aspx"><span>系统管理员管理</span></a></li>
				<li><a href="yonghuzhuce_list.aspx"><span>注册用户管理</span></a></li>
                <li><a href="mod.aspx"><span>修改密码</span></a></li>
			</ul>
		</li>
       
	</ul>
</div>
  

    </div>
    </form>
</body>
</html>
