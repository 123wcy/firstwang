<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chepiaoxinxi_updt.aspx.cs" Inherits="chepiaoxinxi_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>车票信息</title>
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
 <tr><td class="title">修改车票信息</td></tr>
        </table><br />
			   <table width="100%" id="table"  align="center">
				
				<tr><td   class="addtitle"><FONT face='宋体'>车次号:</FONT></td><td width='79%'><asp:DropDownList ID='checihao' runat='server'  OnSelectedIndexChanged="checihao_SelectedIndexChanged" AutoPostBack="True" CssClass="text1"></asp:DropDownList>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchecihao" runat="server" ControlToValidate="checihao" ErrorMessage="必填"></asp:RequiredFieldValidator>				<tr><td  class="addtitle"><FONT face='宋体'>出发时间:</FONT></td><td width='79%'><asp:textbox id='chufashijian' runat='server'  CssClass="text1"></asp:textbox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchufashijian" runat="server" ControlToValidate="chufashijian" ErrorMessage="必填"></asp:RequiredFieldValidator>				<tr><td  class="addtitle"><FONT face='宋体'>出发站:</FONT></td><td width='79%'><asp:textbox id='chufazhan' runat='server'  CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>到达时间:</FONT></td><td width='79%'><asp:textbox id='daodashijian' runat='server'  CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>终点站:</FONT></td><td width='79%'><asp:textbox id='zhongdianzhan' runat='server'  CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>座位号:</FONT></td><td width='79%'><asp:textbox id='zuoweihao' runat='server'  CssClass="text1"></asp:textbox></td></tr>				                    <tr><td  class="addtitle"><FONT face='宋体'>车辆类型:</FONT></td><td width='79%'><asp:DropDownList ID='liecheleixing' runat='server'  CssClass="text1"></asp:DropDownList></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>车票类型:</FONT></td><td width='79%'><asp:DropDownList ID='zuoweileixing' runat='server'  CssClass="text1"></asp:DropDownList></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>票价:</FONT></td><td width='79%'><asp:textbox id='piaojia' runat='server'  CssClass="text1"></asp:textbox></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>状态:</FONT></td><td width='79%'><asp:DropDownList ID='zhuangtai' runat='server'  CssClass="text1"></asp:DropDownList></td></tr>				<tr><td  class="addtitle"><FONT face='宋体'>备注:</FONT></td><td width='79%'><asp:textbox id='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server'  CssClass="text1"></asp:textbox></td></tr>				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click"  CssClass="sure"></asp:button><FONT face="宋体">&nbsp;</FONT>
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

