<%@ Page Language="C#" AutoEventWireup="true" CodeFile="youqinglianjie_updt.aspx.cs" Inherits="youqinglianjie_updt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <LINK href="qj.css" type=text/css rel=stylesheet>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
            <table>
 <tr><td class="title">友情链接修改</td></tr>
        </table><br />
			<table width="100%" border="0" align="center" id="table">
					
				<tr><td noWrap class="addtitle"><FONT face='宋体'>网站名称:</FONT></td>
                    <td width='79%'><asp:textbox id='wangzhanmingcheng' runat='server' CssClass="textbox"></asp:textbox></td></tr>
                <tr><td noWrap class="addtitle"><FONT face='宋体'>网址:</FONT></td>
                    <td width='79%'><asp:textbox id='wangzhi' runat='server' class="addtitle"></asp:textbox></td></tr>
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">&nbsp;
						<asp:button id="Button1" runat="server" Text="修改" OnClick="Button1_Click" CssClass="sure"></asp:button><FONT face="宋体">&nbsp;</FONT>
                        <input id="Reset1" type="reset" value="重置" class="sure" /></td>
				</tr>
				<tr>
					<td colSpan="2">
						<div align="center"></div>
					</td>
				</tr>
				<tr bgColor="#4296e7">
					<td colSpan="2">&nbsp;</td>
				</tr>
			</table>
			<br>
		</form>
	</body>
</HTML>

