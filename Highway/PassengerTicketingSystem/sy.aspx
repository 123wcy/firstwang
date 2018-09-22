<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy.aspx.cs" Inherits="sy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title><link href="images/skin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" valign="top"><span class="left_bt">感谢您使用 公路客运售票 系统 </span><br>
    </td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" valign="top"><!--JavaScript部分-->

        <TABLE width=72% border=0 cellPadding=0 cellSpacing=0 id=secTable>
          <TBODY>
            <TR align=middle height=20>
              <TD align="center" class=sec1 >系统说明</TD>
            </TR>
          </TBODY>
        </TABLE>
      <TABLE class=main_tab id=mainTable cellSpacing=0
cellPadding=0 width=100% border=0>
          <!--关于TBODY标记-->
          <TBODY style="DISPLAY: block">
            <TR>
              <TD vAlign=top align=middle><TABLE width=98% border=0 align="center" cellPadding=0 cellSpacing=0>
                <TBODY>
                  <TR>
                    <TD colspan="3"></TD>
                  </TR>
                  <TR>
                    <TD height="5" colspan="3"></TD>
                  </TR>
                  <TR>
                    <TD width="4%" background="images/news-title-bg.gif"></TD>
                    <TD width="91%" background="images/news-title-bg.gif" class="left_ts" align="left">程序说明：不平庸的售票系统</TD>
                    <TD width="5%" background="images/news-title-bg.gif" class="left_txt">&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD bgcolor="#FAFBFC">&nbsp;</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt" align="left"><span class="left_ts">1、</span>开发人员：王晨阳</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt">&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD bgcolor="#FAFBFC">&nbsp;</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt" align="left"><span class="left_ts">2、</span>指导老师：毛平</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt">&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD bgcolor="#FAFBFC">&nbsp;</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt" align="left"><span class="left_ts">3、</span> 开发日期：<%=DateTime.Now.Date.ToShortDateString().ToString().Trim() %></TD>
                    <TD bgcolor="#FAFBFC" class="left_txt">&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD bgcolor="#FAFBFC">&nbsp;</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt" align="left"><span class="left_ts">4、</span>所在学院：南京理工大学泰州科技学院</TD>
                    <TD bgcolor="#FAFBFC" class="left_txt">&nbsp;</TD>
                  </TR>
                  <TR>
                    <TD height="5" colspan="3"></TD>
                  </TR>
                </TBODY>
              </TABLE></TD>
            </TR>
          </TBODY>
         
      </TABLE></td>
  </tr>
  <tr>
    <td height="40" colspan="2"><table width="100%" height="1" border="0" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
      <tr>
        <td></td>
      </tr>
    </table></td>
  </tr>
 
</table></div>
    </form>
</body>
</html>
