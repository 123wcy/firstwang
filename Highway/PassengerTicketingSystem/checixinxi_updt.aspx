<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checixinxi_updt.aspx.cs" Inherits="checixinxi_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>������Ϣ</title>
	<!--bixanjxiqxi-->
     <link rel="stylesheet" href="qj.css" />
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
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
	<body>
		<form id="Form1" method="post" runat="server">
			<table>
 <tr><td class="title">�޸ĳ�����Ϣ</td></tr>
        </table><br />
			   <table width="100%" align="center" id="table">
				<tr><td  class="addtitle"><FONT face='����'>���κ�:</FONT></td><td width='79%'><asp:textbox id='checihao' runat='server' CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='����'>����ʱ��:</FONT></td><td width='79%'><asp:textbox id='chufashijian' runat='server' CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='����'>����վ:</FONT></td><td width='79%'><asp:textbox id='chufazhan' Width='395px' runat='server' CssClass="text1"></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchufazhan" runat="server" ControlToValidate="chufazhan" ErrorMessage="����"></asp:RequiredFieldValidator>				<tr><td  class="addtitle"><FONT face='����'>����ʱ��:</FONT></td><td width='79%'><asp:textbox id='daodashijian' runat='server' CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='����'>�յ�վ:</FONT></td><td width='79%'><asp:textbox id='zhongdianzhan' Width='395px' runat='server' CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='����'>��Ʊ��:</FONT></td><td width='79%'><asp:textbox id='zongpiaoshu' runat='server' CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='����'>��Ʊ:</FONT></td><td width='79%'><asp:textbox id='yupiao' runat='server' CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='����'>�г���Ƭ:</FONT></td><td width='79%'><asp:textbox id='liechezhaopian' Width='395px' runat='server'  CssClass="text1"></asp:textbox>&nbsp;<a href="javaScript:OpenScript('hsgupfile.aspx?Result=liechezhaopian',500,30)" class="check1">�ϴ�</a></td></tr>				<tr><td  class="addtitle"><FONT face='����'>��ע:</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' CssClass="text1"></asp:textbox></td></tr>				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="�޸�" CssClass="sure"  OnClick="Button1_Click"></asp:button><FONT face="����">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="����" class="sure" /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>

