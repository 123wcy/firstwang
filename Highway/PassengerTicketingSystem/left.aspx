<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�ޱ���ҳ</title>
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
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>������Ϣ����</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="checixinxi_add.aspx"><span>������Ϣ���</span></a></li>
				<li><a href="checixinxi_list.aspx"><span>������Ϣ��ѯ</span></a></li>
			</ul>
		</li>

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>��Ʊ��Ϣ����</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="chepiaoxinxi_add.aspx"><span>��Ʊ��Ϣ���</span></a></li>
				<li><a href="chepiaoxinxi_list.aspx"><span>��Ʊ��Ϣ��ѯ</span></a></li>
			</ul>
		</li>

         <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>��Ϣ��ѯ</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="goupiaojilu_list.aspx"><span>��Ʊ��¼��ѯ</span></a></li>
                <li><a href="tuipiaojilu_list.aspx"><span>��Ʊ��¼��ѯ</span></a></li>
			</ul>
		</li>


         
		
        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>����ͳ��</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="yunying.aspx"><span>����ͳ��</span></a></li>
               
			</ul>
		</li>
        

        


         <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>���Է���</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="lyb_gl.aspx"><span>���Է���</span></a></li>
               
			</ul>
		</li>
       

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>��Ѷ����</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="allgonggao_list.aspx?lb=�˿���֪"><span>�˿���֪����</span></a></li>
               
				<li><a href="allgonggao_list.aspx?lb=��Ʊ����"><span>��Ʊ�������</span></a></li>
                
				<li><a href="allgonggao_list.aspx?lb=������Ѷ"><span>������Ѷ����</span></a></li>
			</ul>
		</li>


         <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>�������ӹ���</span><i class="my-icon nav-more"></i></a>
			<ul>
				
				<li><a href="youqinglianjie_list.aspx"><span>�������ӹ���</span></a></li>
               
			</ul>
		</li>
       
        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>��������</span><i class="my-icon nav-more"></i></a>
			<ul>
                <li><a href="time.aspx"><span>ʱ������</span></a></li>
				<li><a href='databack.aspx' target='main'><span>���ݱ���</span></a></li>				                          
			</ul>
		</li>

        <li class="nav-item">
			<a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>ϵͳ�û�����</span><i class="my-icon nav-more"></i></a>
			<ul>
				<li><a href="listuser.aspx"><span>ϵͳ����Ա����</span></a></li>
				<li><a href="yonghuzhuce_list.aspx"><span>ע���û�����</span></a></li>
                <li><a href="mod.aspx"><span>�޸�����</span></a></li>
			</ul>
		</li>
       
	</ul>
</div>
  

    </div>
    </form>
</body>
</html>
