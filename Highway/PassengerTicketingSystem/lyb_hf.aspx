<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lyb_hf.aspx.cs" Inherits="lyb_hf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
	<style>TD { FONT-SIZE: 12px; FONT-FAMILY: 宋体 }
	TH { FONT-SIZE: 12px; FONT-FAMILY: 宋体 }
		</style>
	<link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server">
         <table>
 <tr><td class="title">留言板回复</td></tr>
        </table><br />
			<table width="100%" align="center"  id="table">
			<tr>
					<td width="40%" class="addtitle">
                        回复内容：</td>
					<td width="80%" style="HEIGHT: 26px">
						<asp:TextBox id="TextBox1" runat="server" Width="408px" TextMode="MultiLine" Height="83px" CssClass="text1"></asp:TextBox></td>
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