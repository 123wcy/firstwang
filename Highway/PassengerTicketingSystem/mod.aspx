<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mod.aspx.cs" Inherits="mod" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
     <link rel="stylesheet" href="qj.css" />
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<table border="0" style="width: 100%">
             <tr><td class="title">修改密码</td></tr>
            <tr>
                <td align="left" style="height: 20px">&nbsp;
                   <table align="center"cellpadding="4" cellspacing="0" id="table">                                         
                        <tr>
                            <td nowrap="nowrap" class="addtitle">
                                <font face="宋体">原密码:</font>
                            </td>
                            <td width="50%">
                                <asp:TextBox id="TextBox1" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>*</td>
                        </tr>
                        <tr style="color: #000000; font-family: 宋体">
                            <td height="25" nowrap="nowrap"  class="addtitle">
                                <font face="宋体"><span style="font-family: Times New Roman">新密码:</span></font></td>
                            <td height="25" style="font-family: Times New Roman" width="50%">
                               <asp:TextBox id="TextBox2" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>*</td>
                        </tr>                      
                        <tr style="font-family: Times New Roman">
                            <td height="25" nowrap="nowrap"  class="addtitle">
                                确认密码<span style="font-family: 宋体">:</span></td>
                            <td height="25" width="50%">
                                <asp:TextBox id="TextBox3" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>*</td>
                        </tr>
                        <tr style="font-family: Times New Roman">
                            <td height="25" nowrap="nowrap"  class="addtitle">
                                <div align="right">
                                   <asp:Button id="Button2" runat="server" Text="修改" onclick="Button1_Click" CssClass="sure"></asp:Button><font
                                    face="宋体"></font>
                            </td>
                            <td height="25" width="50%">
                                
                         
                                <input id="Reset2" type="reset" value="重填" class="sure" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div align="center">
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#4296e7">
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 18px">
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
			
		</form>
	</body>
</HTML>
