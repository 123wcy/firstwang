<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checixinxilisttp.aspx.cs" Inherits="checixinxilisttp" %>


<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>
<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>车次信息</title>
	<!--bixanjxiqxi-->
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
       <table width="978" height="1081" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td><table id="Table2" width="978" height="785" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top"><uc3:qtleft ID="Qtleft1" runat="server" /></td>
              
    
            <td valign="top"><table id="Table12" width="758" height="785" border="0" cellpadding="0" cellspacing="0">
              
              <tr>
                <td height="785" valign="top"><table id="Table13" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="758" height="42" background="qtimages/1_02_02_02_01.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="5%">&nbsp;</td>
                        <td width="95%" class="STYLE2"><strong>车次信息</strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="100%" valign="top"><table id="Table14" width="758" height="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td background="qtimages/1_02_02_02_02_01.jpg">&nbsp;</td>
                        <td width="733" height="183" valign="top" class=newsline>
                        
                              
                              
                              
                              
                              <p>&nbsp; 车次号：<asp:TextBox ID=checihao runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox> 出发站：<asp:TextBox ID=chufazhan runat="server" style='border:solid 1px #000000; color:#666666' Width="80px"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" style='border:solid 1px #000000; color:#666666' /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="切换视图" style='border:solid 1px #000000; color:#666666' /></p>
                            <asp:DataList ID="DataList1" runat="server" Height="22%" RepeatColumns="4" Width="100%">
                                <ItemTemplate>
                                    <table align="center" border="0" bordercolor="#00FFFF" cellpadding="3" cellspacing="1"
                                        style="border-collapse: collapse" width="120">
                                        <tr>
                                            <td align="center" height="140">
                                                <a href='checixinxidetail.aspx?id=<%# Eval("id") %>'>
                                                    <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl='<%# Eval("liechezhaopian") %>'
                                                        Width="116" /></a></td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("checihao") %>'></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                              
                              
                              
                              
                              </td>
                        <td width="13" background="qtimages/1_02_02_02_02_03.jpg">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="11"><img src="qtimages/1_02_02_02_03.jpg" width="758" height="11" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
    </div></form>
</body>
</html>


