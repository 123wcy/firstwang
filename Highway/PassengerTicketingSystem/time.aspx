<%@ Page Language="C#" AutoEventWireup="true" CodeFile="time.aspx.cs" Inherits="time" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="Form1" method="post" runat="server">
			<table border="0" style="width: 100%">
             <tr><td class="title">时间设置</td></tr>
            <tr>
                <td align="left" style="height: 20px">&nbsp;
                   <table align="center"cellpadding="4" cellspacing="0" id="table">                                         
                        <tr>
                            <td nowrap="nowrap" class="addtitle" style="margin-top:5px;">
                                <font face="宋体">买票退票时间:</font>
                            </td>
                            <td width="45%">
                                <asp:TextBox id="TextBox1" runat="server" CssClass="textbox" Width="15%"></asp:TextBox>至<asp:TextBox id="TextBox3" Width="15%" runat="server" CssClass="textbox"></asp:TextBox>点之前不能买票退票（24小时制）</td>
                            <td width="33%">
                                <asp:Button id="Button1" runat="server" Text="修改"  CssClass="sure" OnClick="buyTicket"></asp:Button></td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" class="addtitle" style="margin-top:5px;">
                                <font face="宋体">时间限制:</font>
                            </td>
                            <td width="45%">
                                开车前<asp:TextBox id="TextBox2" runat="server" CssClass="textbox" Width="15%"></asp:TextBox>分钟不能买票退票</td>
                            <td width="33%">
                                <asp:Button id="Button2" runat="server" Text="修改"  CssClass="sure" OnClick="tuipiaoTime"></asp:Button></td>
                        </tr>
                       
                     
                        <tr>
                            <td colspan="3">
                                <div align="center">
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#4296e7">
                            <td colspan="3">
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
</html>
