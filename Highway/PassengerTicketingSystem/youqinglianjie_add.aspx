<%@ Page Language="C#" AutoEventWireup="true" CodeFile="youqinglianjie_add.aspx.cs" Inherits="youqinglianjie_add" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
	<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
    <link rel="stylesheet" href="qj.css" />
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
             <table>
 <tr><td class="title">添加友情链接</td></tr>
        </table><br />
			<table width="100%" align="center"  id="table">
				
			<tr><td noWrap class="addtitle">网站名称:</td>
                <td width='50%'><asp:TextBox ID='wangzhanmingcheng' runat='server' CssClass="text1"></asp:TextBox></td></tr>
             <tr><td noWrap class="addtitle">网址:</td>
                 <td width='50%'><asp:TextBox ID='wangzhi' runat='server' CssClass="text1"></asp:TextBox></td></tr>
				
				
				
				<tr>
					<td noWrap width="164" height="25" style="WIDTH: 164px">
						<div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					</td>
					<td width="59%" height="25">
						<asp:button id="Button1" runat="server" Text="添加" onclick="Button1_Click" CssClass="sure"></asp:button><FONT face="宋体">&nbsp;</FONT>
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
