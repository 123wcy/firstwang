<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuzhuceadd.aspx.cs" Inherits="yonghuzhuceadd" %>


<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>
<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�û�ע��</title>
	<!--bixanjxiqxi-->
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
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script language="javascript">
    function show() {
        alert('��ӳɹ�');
    }
</script>
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
		<td><table id="Table2" width="978" height="785" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><uc3:qtleft ID="Qtleft1" runat="server" /></td>
              
    
            <td valign="top"><table id="Table12" width="758" height="785" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td height="785" valign="top"><table id="Table13" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="758" height="42" background="qtimages/1_02_02_02_01.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="95%" class="STYLE2"><strong>�û�ע��</strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="100%" valign="top"><table id="Table14" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td background="qtimages/1_02_02_02_02_01.jpg">&nbsp;</td>
                        <td width="733" height="183" valign="top" class=newsline>
                        
                              
                              
                              
                              
            <table width="98%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse" class="newsline">
	        <tr><td style="float:right;">            <asp:RequiredFieldValidator ID="RequiredFieldValidatoryonghuming" runat="server" ValidationGroup="q" ControlToValidate="yonghuming" ErrorMessage="*����"></asp:RequiredFieldValidator>            <FONT face='����'>�û���:</FONT></td><td width='79%'>            <asp:TextBox ID='yonghuming' Width="395px" runat='server' style='border:solid 1px #000000; color:Black; font-weight:bold;' placeholder="������ĸ��ͷ��������6-18֮�䣬����ĸ�����֡��»������"></asp:TextBox>*            <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidatoryonghuming" runat="server" ControlToValidate="yonghuming"
        ErrorMessage="������ĸ��ͷ��������6-18֮�䣬����ĸ�����֡��»������"         ValidationExpression="^^[a-zA-Z]\w{5,17}$" ValidationGroup="q"></asp:RegularExpressionValidator></td>            </tr>	        <tr><td style="float:right;">            <asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ValidationGroup="q" ControlToValidate="mima" ErrorMessage="*����"></asp:RequiredFieldValidator>            <FONT face='����'>����:</FONT></td><td width='79%'>            <asp:TextBox ID='mima' Width="395px" runat='server' TextMode=Password style='border:solid 1px #000000;  color:Black; font-weight:bold;' placeholder="ʹ��Ӣ����ĸ�����֣�����Ϊ6-16���ַ�������Ӣ����ĸ��Сд"></asp:TextBox>*            <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidatormima" runat="server" ControlToValidate="mima"
        ErrorMessage="ʹ��Ӣ����ĸ�����֣�����Ϊ6-16���ַ�������Ӣ����ĸ��Сд"         ValidationExpression="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$" ValidationGroup="q"></asp:RegularExpressionValidator>            </td></tr>            <tr><td style="float:right;">            <asp:RequiredFieldValidator ID="RequiredFieldValidatorzcqr" runat="server" ValidationGroup="q" ControlToValidate="zcqr" ErrorMessage="*����"></asp:RequiredFieldValidator>            <FONT face='����'>ȷ������:</FONT></td><td width='79%'>            <asp:TextBox ID='zcqr' Width="395px" runat='server' TextMode=Password style='border:solid 1px #000000;  color:Black; font-weight:bold;'></asp:TextBox>*            <BR /><asp:CompareValidator ID="CompareValidatorzcqr" runat="server" ControlToCompare="mima"
                        ControlToValidate="zcqr" ErrorMessage="���벻һ��" ValidationGroup="q"></asp:CompareValidator>            </td></tr>			<tr><td style="float:right;">            <FONT face='����'>����:</FONT></td><td width='79%'>            <asp:TextBox ID='xingming' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>            </td></tr>			<tr><td  style="float:right;">            <FONT face='����'>�Ա�:</FONT></td><td width='79%'>            <asp:DropDownList ID='xingbie' runat='server'></asp:DropDownList>            </td></tr>			<tr><td style="float:right;">            <FONT face='����'>����:</FONT></td><td width='79%'>            <asp:TextBox ID='jiguan' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>            </td></tr>			<tr><td style="float:right;">            <asp:RequiredFieldValidator ID="RequiredFieldValidatorshouji" runat="server" ControlToValidate="shouji" ValidationGroup="q" ErrorMessage="*����"></asp:RequiredFieldValidator>            <FONT face='����'>�ֻ�:</FONT></td><td width='79%'>            <asp:TextBox ID='shouji' Width="395px" runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*             <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidatorshouji" runat="server" ControlToValidate="shouji"
        ErrorMessage="�����ʽ����ȷ"         ValidationExpression="^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$" ValidationGroup="q"></asp:RegularExpressionValidator>            </td></tr>			<tr><td style="float:right;">            <asp:RequiredFieldValidator ID="RequiredFieldValidatorshenfenzheng" runat="server" ValidationGroup="q" ControlToValidate="shenfenzheng" ErrorMessage="*����"></asp:RequiredFieldValidator>            <FONT face='����'>���֤:</FONT></td><td width='79%'>            <asp:TextBox ID='shenfenzheng' Width='395px' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox>*            <BR /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="shenfenzheng"
        ErrorMessage="���֤��Ч"         ValidationExpression="^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$" ValidationGroup="q"></asp:RegularExpressionValidator>            </td></tr>			<tr><td style="float:right;"><FONT face='����'>��ע:</FONT></td><td width='79%'>                <asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' style='border:solid 1px #000000; color:#666666'></asp:TextBox></td></tr>			
			<tr><td></td><td><asp:CheckBox ID="hh" runat="server" Checked="false" />�����Ķ�����ͬ��<a href="" onclick="show()">���������</a>
                             
            </td></tr>
            	            <tr>
					            <td noWrap height="25" style="WIDTH: 80px">
						            <div align="right"><FONT face="����"></FONT>&nbsp;</div>     
					            </td>
					            <td width="59%" height="25">&nbsp;
						            <asp:button id="Button1" runat="server" Text="ȷ��" onclick="Button1_Click" ValidationGroup="q" style='border:solid 1px #000000; color:#666666'></asp:button><FONT face="����">&nbsp;</FONT>
                                    <input id="Reset1" type="reset" value="����" style='border:solid 1px #000000; color:#666666' /></td>
				            </tr>
            				
				            <tr bgColor="#f1f8f5">
					            <td colSpan="2">&nbsp;</td>
				            </tr>
			            </table>
                              
                              
                              
                              
                              </td>
                        <td width="13" background="qtimages/1_02_02_02_02_03.jpg">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="11"><img src="qtimages/1_02_02_02_03.jpg" width="758" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
    </div></form>
</body>
</html>


