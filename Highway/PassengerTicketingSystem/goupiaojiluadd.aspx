<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goupiaojiluadd.aspx.cs" Inherits="goupiaojiluadd" %>


<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>
<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��¼</title>
	<!--bixanjxiqxi-->
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
     #gp tr td {
    padding:15px;
    }
        #gp tr td:first-child {
        font-weight:800;
        float:right;
        font-size:16px;
        vertical-align:middle;
        }
    .asptext {
 
    width:160px;
     border-radius:4px;
     border: 1px solid #ccc;
     padding:5px;
     
     font-weight:500;
     vertical-align:middle;
    }
</style>
   
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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
       <table width="978" height="1081" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
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
                        
                          <table  width="800"  border="0" cellpadding="0" cellspacing="0" style="float:left;border:1px solid #d5d4d4;" id="gp" > 
                                <tr><td><FONT face='����'>���κ�:</FONT></td><td width='79%'><asp:TextBox ID='checihao' runat='server' CSSClass="asptext"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchecihao" runat="server" ControlToValidate="checihao" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='����'>����ʱ��:</FONT></td><td width='79%'><asp:TextBox ID='chufashijian' runat='server' CSSClass="asptext"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchufashijian" runat="server" ControlToValidate="chufashijian" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='����'>����վ:</FONT></td><td width='79%'><asp:TextBox ID='chufazhan' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>����ʱ��:</FONT></td><td width='79%'><asp:TextBox ID='daodashijian' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>�յ�վ:</FONT></td><td width='79%'><asp:TextBox ID='zhongdianzhan' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>					<tr><td><FONT face='����'>��λ��:</FONT></td><td width='79%'><asp:TextBox ID='zuoweihao' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>��������:</FONT></td><td width='79%'><asp:TextBox ID='liecheleixing' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>��Ʊ����:</FONT></td><td width='79%'><asp:TextBox ID='zuoweileixing' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>״̬:</FONT></td><td width='79%'><asp:TextBox ID='zhuangtai' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>Ʊ��:</FONT></td><td width='79%'><asp:TextBox ID='piaojia' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>��Ʊ��:</FONT></td><td width='79%'><asp:TextBox ID='goupiaoren' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>            <tr><td><FONT face='����'>��Ʊ��:</FONT></td><td width='79%'><asp:TextBox ID='username' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>����:</FONT></td><td width='79%'><asp:TextBox ID='xingming' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>���֤:</FONT></td><td width='79%'><asp:TextBox ID='shenfenzheng' Width='395px' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='����'>��ע:</FONT></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			
				            <tr>
					            <td noWrap height="25" style="WIDTH: 80px">
						            <div align="right"><FONT face="����"></FONT>&nbsp;</div>
					            </td>
					            <td width="59%" height="25">&nbsp;
						            <asp:button id="Button1" runat="server" Text="ȷ��" onclick="Button1_Click" CssClass="sure"></asp:button><FONT face="����">&nbsp;</FONT>
                                    <input id="Reset1" type="reset" value="����" class="sure" /></td>
				            </tr>
            				
				            <tr bgColor="#f1f8f5">
					            <td colSpan="2">&nbsp;</td>
				            </tr>
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


