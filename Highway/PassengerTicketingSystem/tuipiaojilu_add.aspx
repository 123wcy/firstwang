<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tuipiaojilu_add.aspx.cs" Inherits="tuipiaojilu_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��¼</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
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
<!--hxsglxiangdxongjxs-->
	<body>
		<form id="Form1" method="post" runat="server">
            <table>
 <tr><td class="title">�����Ʊ��¼</td></tr>
        </table><br />
			<br />
			   <table align="center"  width="95%" id="table" border="0">
				
				
			<tr><td  class="addtitle">���κ�:</td><td  width='39%'><asp:TextBox ID='checihao' runat='server' CSSClass="textbox"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchecihao" runat="server" ControlToValidate="checihao" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr>			<tr><td  class="addtitle">����ʱ��:</td><td  width='39%'><asp:TextBox ID='chufashijian' runat='server' CSSClass="asptext"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchufashijian" runat="server" ControlToValidate="chufashijian" ErrorMessage="����"></asp:RequiredFieldValidator></td></tr>			<tr><td   class="addtitle">����վ:</td><td  width='39%'><asp:TextBox ID='chufazhan' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">����ʱ��:</td><td  width='39%'><asp:TextBox ID='daodashijian' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>            <tr><td   class="addtitle">��Ʊʱ��:</td><td  width='39%'><asp:TextBox ID='saletime' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">�յ�վ:</td><td  width='39%'><asp:TextBox ID='zhongdianzhan' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">��λ��:</td><td  width='39%'><asp:TextBox ID='zuoweihao' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">Ʊ��:</td><td  width='39%'><asp:TextBox ID='piaojia' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">��Ʊ��:</td><td  width='39%'><asp:TextBox ID='tuipiaoren' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">����:</td><td  width='39%'><asp:TextBox ID='xingming' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">���֤:</td><td  width='39%'><asp:TextBox ID='shenfenzheng' Width='395px' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">��Ʊԭ��:</td><td  width='39%'><asp:TextBox ID='tuipiaoyuanyin' Width='400px' Height='100px' TextMode='MultiLine' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td   class="addtitle">��Ʊ��:</td><td  width='39%'><asp:TextBox ID='username' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><asp:button id="Button1" runat="server" Text="���" onclick="Button1_Click" CssClass="sure"></asp:button></div>
					</td>
					<td width="59%" height="25">&nbsp;
						
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
