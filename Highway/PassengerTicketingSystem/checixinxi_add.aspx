<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checixinxi_add.aspx.cs" Inherits="checixinxi_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
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
<!--hxsglxiangdxongjxs-->
	<body>
		<form id="Form1" method="post" runat="server">
             <table>
 <tr><td class="title">��ӳ�����Ϣ</td></tr>
        </table><br />
			   <table width="100%" align="center" id="table">
		<tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">���г����б�</td>
                </tr>
			<tr><td  class="addtitle">���κ�:</td><td width='79%'><asp:TextBox ID='checihao' runat='server' CssClass="text1"></asp:TextBox></td></tr>			<tr><td  class="addtitle">����ʱ��:</td><td width='79%'><asp:TextBox ID='chufashijian' runat='server' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" CssClass="text1"></asp:TextBox></td></tr>			<tr><td  class="addtitle">����վ:</td><td width='79%'><asp:TextBox ID='chufazhan' Width='395px' runat='server' CssClass="text1"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchufazhan" runat="server" ControlToValidate="chufazhan" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr>			<tr><td  class="addtitle">����ʱ��:</td><td width='79%'><asp:TextBox ID='daodashijian' runat='server' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd HH:mm:ss'})" CssClass="text1"></asp:TextBox></td></tr>			<tr><td  class="addtitle">�յ�վ:</td><td width='79%'><asp:TextBox ID='zhongdianzhan' Width='395px' runat='server' CssClass="text1"></asp:TextBox></td></tr>			<tr><td  class="addtitle">��Ʊ��:</td><td width='79%'><asp:TextBox ID='zongpiaoshu' runat='server' CssClass="text1"></asp:TextBox> ���������� <asp:RegularExpressionValidator ID="gsyzzongpiaoshu" runat="server" ControlToValidate="zongpiaoshu" ErrorMessage="��������" ValidationExpression="^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$"></asp:RegularExpressionValidator> </td></tr>			<tr><td  class="addtitle">��Ʊ:</td><td width='79%'><asp:TextBox ID='yupiao' runat='server' class="textbox"></asp:TextBox> ���������� <asp:RegularExpressionValidator ID="gsyzyupiao" runat="server" ControlToValidate="yupiao" ErrorMessage="��������" ValidationExpression="^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$"></asp:RegularExpressionValidator> </td></tr>			<tr><td  class="addtitle">�г���Ƭ:</td><td width='79%'><asp:textbox id='liechezhaopian' Width='395px' runat='server' CssClass="text1"></asp:textbox>&nbsp;<a href="javaScript:OpenScript('hsgupfile.aspx?Result=liechezhaopian',500,30)"  class="check1">�ϴ�</a></td></tr>			<tr><td  class="addtitle">��ע:</td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' CssClass="text1"></asp:TextBox></td></tr>			
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="����"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="���" onclick="Button1_Click" CssClass="sure"></asp:button><FONT face="����">&nbsp;</FONT>
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
