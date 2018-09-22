<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checixinxidetail.aspx.cs" Inherits="checixinxidetail" %>


<%@ Register Src="qtdown1.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>车次信息</title>
	<!--bixanjxiqxi-->
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


    <style>
        .tichtebuspic .tichtebuspic-a ul li span {
    position: absolute;
    top: 6px;
    left: 13px;
    z-index: 1;
    background-image: url(images/qnalpic.png);
    display: block;
    border: 1px solid transparent;
    height: 80px;
    width: 80px;
}
        .ticket-tittle {
    line-height: 60px;
    border-bottom: 1px solid #a1a5a8;
    color: #000000;
}
        .tichtebuspic .tichtebuspic-a {
    border-bottom: 1px dashed gainsboro;
    overflow: hidden;
    height: 134px;
}
        .tichtebuspic .tichtebuspic-a ul li {
    float: left;
    height: 100%;
    width: 110px;
    text-align: center;
    font-size: 17px;
    padding-top: 90px;
    position: relative;
}
ul li {
    list-style: none;
}
    </style>
    <script>
        function wodedingdan(){
            window.open("goupiaojilu_list2.aspx");
        }
        function fankuijianyi()
        {
            window.open(".aspx");
        }
    </script>
</head>
<script language="javascript">
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
   
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
       <table width="978"  border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td>
            <table id="Table1" style="width: 978px; margin-right: auto;margin-left: auto;" border="0" cellpadding="0" cellspacing="0">
              <tr>
                        <td width="95%" class="STYLE2"><strong>&nbsp;</strong></td>
                      </tr>
                    </table>
            </td>
        </tr>
            
                  <tr>
                    <td height="100%" valign="top">
                        <table id="Table2" width="300" height="100%" border="0" cellpadding="0" cellspacing="0" style="float:right;">
                      <tr>
                        
                        <td width="300" height="183" valign="top" class=newsline>
                       <div style="float: right;width: 350px;height: auto;overflow: hidden;">
		<div class="dynamic-box" style="width: 100%;margin-top: 0px;">
				<div class="ticket-tittle qiehuantitle" style="border-bottom: 1px solid #66ccff;overflow: hidden;">
					<h2 class="fl fyfy" data-gs="gsl">订票小助手</h2>
					
				</div>
				<div class="gsl tichtebuspic" data-gs="gsl" style="padding: 10px;overflow: hidden;background-color: white;height: 281px;">
					<div class="tichtebuspic-a">
						<ul>
							<li onclick="wodedingdan()">我的订单 <span style="background-position: -60px -206px;"></span></li>
							<li onclick="fankuijianyi()">反馈建议 <span style="background-position: -209px -206px;"></span></li>
							<li onclick="shikechaxun()">订票帮助<span style="background-position: -135px -206px;"></span></li> 
						</ul>
					</div>
					<div class="tichtebuspic-b">
						<p style="color: red;font-size: 16px;margin-top: 21px;padding-left: 34px;">24小时客服电话</p>
						<p style="font-size: 28px;color: red;margin-top: 10px;padding-left: 33px;">
							<img style="width:25px;height:25px" src="images/icon-telphone.png">
							<span>023-96096</span>
						</p>
					</div>
				</div>
				</div>

			</div>
                        </td>
                      </tr>
                    </table>
                    
                            <table  width="800"  border="0" cellpadding="0" cellspacing="0" style="float:left;border:1px solid #d5d4d4;">                
                <tr>
								 <td width='11%' height=44>车次号：</td><td width='39%'><%=nchecihao%></td><td  rowspan=7 align=center><a href="<%=nliechezhaopian%>" target=_blank><img src=<%=nliechezhaopian%> width=272 height=135 border=0></a></td></tr><tr>			<td width='11%' height=44>出发时间：</td><td width='39%'><%=nchufashijian%></td></tr><tr>			<td width='11%' height=44>出发站：</td><td width='39%'><%=nchufazhan%></td></tr><tr>			<td width='11%' height=44>到达时间：</td><td width='39%'><%=ndaodashijian%></td></tr><tr>			<td width='11%' height=44>终点站：</td><td width='39%'><%=nzhongdianzhan%></td></tr><tr>			<td width='11%' height=44>总票数：</td><td width='39%'><%=nzongpiaoshu%></td></tr><tr>			<td width='11%' height=44>余票：</td><td width='39%'><%=nyupiao%></td></tr>
      
     <td colspan=3 align=center>
        <input type=button name=Submit5 value=返回 onClick="javascript:history.back()" style='width:80px;
    font-size:18px;
     border:1px solid #4296e7;
        border-radius:4px;
        background-color:#4296e7;
        color:#fff;' />
         <input type=button name=Submit52 value=收藏 onClick="javascript:location.href='jrsc.aspx?id=<%=nid%>    &biao=checixinxi&ziduan=checihao';" style='width:80px;
    font-size:18px;
     border:1px solid #4296e7;
        border-radius:4px;
        background-color:#4296e7;
        color:#fff;'  /></td>
							  </table>
                              
                              
                              
                              
                              </td>
                      
                      </tr>
                    </table>
                
    
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
	
<!-- dfexnxxiaxng -->
    </div></form>
</body>
</html>


