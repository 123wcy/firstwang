<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lybb_hf.aspx.cs" Inherits="lyb_hf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
	<style>TD { FONT-SIZE: 12px; FONT-FAMILY: 宋体 }
	TH { FONT-SIZE: 12px; FONT-FAMILY: 宋体 }
		</style>
	<link rel="stylesheet" href="qj.css" />
    <script charset="utf-8" src="kindeditor-4.1.10/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10/plugins/code/prettify.js"></script>
	<script>
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content', {
	            cssPath: 'kindeditor-4.1.10/plugins/code/prettify.css',
	            uploadJson: 'kindeditor-4.1.10/asp.net/upload_json.ashx',
	            fileManagerJson: 'kindeditor-4.1.10/asp.net/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
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

</head><script language="javascript">
    function OpenScript(url, width, height) {
        var win = window.open(url, "SelectToSort", 'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes');
    }
    function OpenDialog(sURL, iWidth, iHeight) {
        var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
        oDialog.focus();
    }
</script>
<body>
    <form id="form1" runat="server">
         <table>
 <tr><td class="title">留言板回复</td></tr>
        </table><br />
			<table width="100%" align="center"  id="table">
			<tr>
					<td width="40%" class="addtitle">
                        回复内容：</td>
					<td width="80%" >
						<textarea id="content" cols="100" rows="8" style="width:700px;height:290px;visibility:hidden;" runat="server"></textarea></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;
						<asp:Button id="Button1" runat="server" Width="48px" Text="回复" onclick="Button1_Click" CssClass="sure"></asp:Button>&nbsp;
                        <input id="Reset1" style="width: 50px" type="reset" value="重填" class="sure" /></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>