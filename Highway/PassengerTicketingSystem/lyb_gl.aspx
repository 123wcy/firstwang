<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lyb_gl.aspx.cs" Inherits="lyb_gl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
    <link rel="stylesheet" href="qj.css" />
    <style>
        #zpa:hover {
        border:1px solid #38a9fe;
        box-shadow:0 0 10px #38a9fe;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <table>
 <tr><td class="title">留言板管理</td></tr>
        </table><br />
    <table width="100%" align="center"  id="table">
			
        <asp:Repeater ID="rpt1" runat="server">
            <ItemTemplate>
                <table   width="95%" style="border:1px solid #ccc;margin-bottom:15px;">
                    <!--DWLayoutTable-->
                    <tr>
                        <td bgcolor="#FFFFFF" rowspan="3" valign="top" width="16"><!--DWLayoutEmptyCell-->&nbsp;                            </td>
                        <td align="center" bgcolor="#FFFFFF" rowspan="2" valign="middle" width="120">
                          <div id="zpa" style="width:70px; height:70px; border-radius:50%; overflow:hidden">
                              <a  href="<%#Eval("homepage")%>"> <%#"<img width=70; height=70  src=img/" + Eval("Face") + ".jpg border=0>"%></a></div>                       </td>
                        <td align="left" bgcolor="#FFFFFF" height="20" valign="middle" width="782" style="font-weight:800;">
                            &nbsp; &nbsp;   <%#Eval("username")%>                      </td>
                        <td align="center" bgcolor="#FFFFFF" valign="middle" width="200">
                            &nbsp;
                                   </td>
                        <td bgcolor="#FFFFFF" rowspan="3" style="width: 10px" valign="top" width="17"><!--DWLayoutEmptyCell-->&nbsp;                      </td>
                    </tr>
                    <tr>
                        <td align="left" bgcolor="#FFFFFF" height="78" style="text-align:center;">
                            &nbsp;&nbsp;<%# showbody(Convert.ToBoolean(Eval("IsHidden")),Eval("body").ToString())%>
                            <%# showrely((bool)Eval("isrely"),Eval("rebody").ToString()) %>                        </td>
                        <td align="left" bgcolor="#FFFFFF" height="78" valign="top">
                            <div style="font-weight:600;">回复内容：</div><br /><%#Eval("rebody")%></td>
                    </tr>
                    <tr>
                        <td align="center" bgcolor="#FFFFFF" style="height: 25px" valign="middle">
                            </td>
                        <td align="left" bgcolor="#FFFFFF" colspan="2" style="height: 25px" valign="middle">
                            &nbsp; &nbsp;<%#Eval("adddate")%> &nbsp; &nbsp; <%# show_admin(Convert.ToInt32(Eval("id"))) %>               
                             <a href="lybb_hf.aspx?id=<%#Eval("id")%>">回复</a>
                            </td>
                    </tr>
                </table>

                <br>
            </ItemTemplate>
        </asp:Repeater>
        <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="100%">
            <tr>
                <td align="center" style="width: 775px; height: 18px">
                    第 <font face="宋体"><b>
                        <asp:Label ID="lbCurrentPage" runat="server">1</asp:Label></b></font><span style="font-family: 宋体">
                            页  |  </span>
                    <asp:HyperLink ID="hlkFirstPage" runat="server">首页</asp:HyperLink>
                     | 
                    <asp:HyperLink ID="hlkPrevPage" runat="server">上一页</asp:HyperLink>
                     | 
                    <asp:HyperLink ID="hlkNextPage" runat="server">下一页</asp:HyperLink>
                     | 
                    <asp:HyperLink ID="hlkLastPage" runat="server">末页</asp:HyperLink>
                     | 共 <font face="宋体"><b>
                        <asp:Label ID="lbTotalPage" runat="server">1</asp:Label></b></font> 页
                </td>
            </tr>
        </table>
    
    </table>
    </form>
</body>
</html>
