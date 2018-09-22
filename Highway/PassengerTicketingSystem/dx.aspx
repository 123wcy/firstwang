<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dx.aspx.cs" Inherits="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown1.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="qj.css" />	
</head>
<body>
    <form id="form1" runat="server">
         <table>
 <tr><td class="title">留言板</td></tr>
        </table><br />
    <div>
    <table border="0" style="width: 98%">
        <tr>
            <td align="left" style="height: 539px" valign="top">
                <table bgcolor="#fbd79f" border="0" cellpadding="0" cellspacing="1" height="280"
                    width="100%" id="table">
                    <!--DWLayoutTable-->
                  <tr>
                      <td>
                          <asp:TextBox ID='lyr' runat='server' CSSClass="asptext"></asp:TextBox>
                      </td>
                  </tr>
                    <tr>
                        <td align="right" bgcolor="#fff5e1"  valign="middle" style="font-size:16px;font-weight:600;">
                            内容</td>
                        <td align="left" bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 293px"
                            valign="top">
                        </td>
                        <td align="left" bgcolor="#fff5e1" colspan="3" style="height: 293px" valign="top">
                            &nbsp;&nbsp;
                            <textarea id="content" cols="100" rows="8" style="width:700px;height:290px;visibility:hidden;" runat="server"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" bgcolor="#fff5e1" style="width: 68px; height: 20px;" valign="middle">
                            &nbsp;</td>
                        <td bgcolor="#fff5e1" colspan="1" style="width: 2px; height: 20px;">
                        </td>
                        <td bgcolor="#fff5e1" colspan="3" style="height: 20px">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="sure"
                                Text="确定修改" Width="83px" />
                            </td>
                    </tr>
                </table>
                
                </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>

