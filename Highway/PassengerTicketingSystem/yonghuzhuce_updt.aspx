<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuzhuce_updt.aspx.cs" Inherits="yonghuzhuce_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>用户注册</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="qj.css" type=text/css rel=stylesheet>
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
 <tr><td class="title">注册用户信息修改</td></tr>
        </table><br />
			   <table width="100%" border="0" align="center" id="table">
				<tr><td class="addtitle"><FONT face='宋体'>用户名：</FONT></td><td width='79%'><asp:textbox id='yonghuming' runat='server' CssClass="textbox"></asp:textbox></td></tr>				<tr><td class="addtitle"><FONT face='宋体'>密码：</FONT></td><td width='79%'><asp:textbox id='mima' runat='server' CssClass="textbox"></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatormima" runat="server" ControlToValidate="mima" ErrorMessage="必填"></asp:RequiredFieldValidator>				<tr><td class="addtitle"><FONT face='宋体'>姓名：</FONT></td><td width='79%'><asp:textbox id='xingming' runat='server' CssClass="textbox"></asp:textbox></td></tr>				<tr><td class="addtitle"><FONT face='宋体'>性别：</FONT></td><td width='79%'><asp:DropDownList ID='xingbie' runat='server' CssClass="textbox"></asp:DropDownList></td></tr>				<tr><td class="addtitle"><FONT face='宋体'>籍贯：</FONT></td><td width='79%'><asp:textbox id='jiguan' runat='server' CssClass="textbox"></asp:textbox></td></tr>				<tr><td class="addtitle"><FONT face='宋体'>手机：</FONT></td><td width='79%'><asp:textbox id='shouji' runat='server' CssClass="textbox"></asp:textbox></td></tr>				<tr><td class="addtitle"><FONT face='宋体'>身份证：</FONT></td><td width='79%'><asp:textbox id='shenfenzheng' Width='395px' runat='server' CssClass="textbox"></asp:textbox></td></tr>								<tr><td  class="addtitle"><FONT face='宋体'>备注：</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' CssClass="textbox"></asp:textbox></td></tr>				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click"  CssClass="sure"></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="重置"   class="sure" /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>

