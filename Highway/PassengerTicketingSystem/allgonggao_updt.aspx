<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allgonggao_updt.aspx.cs" Inherits="allgonggao_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
   <link rel="stylesheet" href="qj.css" />
	<script charset="utf-8" src="kindeditor-4.1.10/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content', {
				cssPath : 'kindeditor-4.1.10/plugins/code/prettify.css',
				uploadJson : 'kindeditor-4.1.10/asp.net/upload_json.ashx',
				fileManagerJson : 'kindeditor-4.1.10/asp.net/file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
    <script language="javascript" src="js/Calendar.js"></script><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
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
 <tr><td class="title">修改<%=lbtxt %></td></tr>
        </table><br />
			<table width="100%" align="center"  id="table">
				<tr><td noWrap class="add">标题:</td><td width='79%'>
                    <asp:textbox id='title' Width='395px' runat='server' CssClass="text1"></asp:textbox>*
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatortitle" runat="server" ControlToValidate="title" ErrorMessage="必填"></asp:RequiredFieldValidator>
                <tr><td noWrap class="add">内容:</td><td width='79%'><textarea id="content" cols="100" rows="8" style="width:700px;height:200px;visibility:hidden;" runat="server"></textarea></td></tr>
                    
                <tr><td noWrap class="add">类别:</td><td width='79%'><asp:textbox id='leibie' runat='server' CssClass="text1"></asp:textbox>*
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorleibie" runat="server" ControlToValidate="leibie" ErrorMessage="必填"></asp:RequiredFieldValidator>
                <tr><td noWrap class="add">首页图片:</td><td width='79%'><asp:textbox id='shouyetupian' Width='395px' runat='server' CssClass="text1"></asp:textbox>&nbsp;
                    <a href="javaScript:OpenScript('hsgupfile.aspx?Result=shouyetupian',500,30)"></a></td></tr><tr><td noWrap class="add">点击率:</td>
                        <td width='79%'><asp:textbox id='dianjilv' runat='server' CssClass="text1"></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatordianjilv" runat="server" ControlToValidate="dianjilv" ErrorMessage="必填"></asp:RequiredFieldValidator>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click"   CssClass="sure"></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="重置" class="sure" /></td>
				</tr>
				
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>