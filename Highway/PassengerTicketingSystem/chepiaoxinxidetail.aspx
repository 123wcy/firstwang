<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chepiaoxinxidetail.aspx.cs" Inherits="chepiaoxinxidetail" %>


<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>
<%@ Register Src="qtdown2.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��Ϣ</title>
	<!--bixanjxiqxi-->
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
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
        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table1">
	<tr>
		<td>
            <uc1:qttop ID="Qttop2" runat="server" />
        </td>
	</tr>

    <tr>
		<td>
            <table id="Table2" style="width: 978px; margin-right: auto;margin-left: auto;" border="0" cellpadding="0" cellspacing="0">
              <tr>
                        <td width="95%" class="STYLE2"><strong>&nbsp;</strong></td>
                      </tr>
                    </table>
            </td>
        </tr>
           
	<tr>	
                <td height="100%" valign="top">

                     <table id="Table3" width="300" height="100%" border="0" cellpadding="0" cellspacing="0" style="float:right;">
                      <tr>
                        
                        <td width="300" height="183" valign="top" class=newsline>
                       
                            <div class="car-child-notice" style="height: 255px;">
			<span style="margin: 0px 0px 10px 0px;">��ܰ��ʾ:</span>
			<p style="font-size: 12px;line-height: 30px;">1.������б��еġ���Ʊ����ָ���Ͽ���ʣ��Ʊ���� ������վʵ�ʿ�����Ʊ����</p>
			<p style="font-size: 12px;line-height: 30px;">2.������Ʊֻ�ṩȫ��Ʊ����ͯƱ�Ͷ�ͯ��Ʊ ��</p>
			<p style="font-size: 12px;line-height: 30px;">3.һ����Ч���֤�����ڵ���ͬһ����ֻ������һ�ų�Ʊ��</p>
			<p style="font-size: 12px;line-height: 30px;">4.���ܵ�������Ʊ��Ҳ�������Ʊ����Ʊ��</p>
			<!-- <p style="font-size: 12px;line-height: 30px;">4.��ǰ�ɹ���15���ڵĳ�Ʊ��</p> -->
			<p style="font-size: 12px;line-height: 30px;">
				����鿴<a href="news.aspx?lb=��Ʊ����" target="_blan">����Ʊ��֪��</a>
			</p>
		</div>



                        </td>
                      </tr>
                    </table>
                              
                              
                               <table  width="800"  border="0" cellpadding="0" cellspacing="0" style="float:left;border:1px solid #d5d4d4;" > 
                                     <tbody>
               
                
                <tr><td  width='45%' height=44>���κţ�</td><td width='5%'>&nbsp;</td><td width='45%'><%=nchecihao%></td></tr>                <tr><td  width='45%' height=44>����ʱ�䣺</td><td width='5%'>&nbsp;</td><td width='45%'><%=nchufashijian%></td></tr><tr>			<td width='45%' height=44>����վ��</td><td width='5%'>&nbsp;</td><td width='45%'><%=nchufazhan%></td></tr><tr>			<td width='45%' height=44>����ʱ�䣺</td><td width='5%'>&nbsp;</td><td width='45%'><%=ndaodashijian%></td></tr><tr>			<td width='45%' height=44>�յ�վ��</td><td width='5%'>&nbsp;</td><td width='45%'><%=nzhongdianzhan%></td></tr><tr>					<td width='45%' height=44>��λ�ţ�</td><td width='5%'>&nbsp;</td><td width='45%'><%=nzuoweihao%></td></tr><tr>         			<td width='45%' height=44>�������ͣ�</td><td width='5%'>&nbsp;</td><td width='45%'><%=nliecheleixing%></td></tr><tr>			<td width='45%' height=44>��Ʊ���ͣ�</td><td width='5%'>&nbsp;</td><td width='45%'><%=nzuoweileixing%></td></tr><tr>			<td width='45%' height=44>Ʊ�ۣ�</td><td width='5%'>&nbsp;</td><td width='45%'><%=npiaojia%></td></tr><tr>			<td width='45%' height=44>״̬��</td><td width='5%'>&nbsp;</td><td width='45%'><%=nzhuangtai%></td></tr><tr>			<td width='45%' height=44>��ע��</td><td width='5%'>&nbsp;</td><td width='45%'><%=nbeizhu%></td></tr>			<tr><td colspan=4 align=center><input type=button name=Submit5 value=����  class="sure" onClick="javascript:history.back()" />
                <input type=button name=Submit52 value=��ӡ onClick="    javascript:window.print()" class="sure" />
                 <input type=button name=Submit52 value=��Ʊ onClick="javascript:location.href='goupiaojiluadd.aspx?id=<%=nid%>    &zhuangtai=<%=nzhuangtai%>    '" class="sure" /></td></tr>
					</tbody>
                                   </table>
             			
            </td>
        
        </tr>
        </table>      
		<td>
            <uc2:qtdown ID="Qtdown2" runat="server" />
        </td>
	
    </div></form>
</body>
</html>


