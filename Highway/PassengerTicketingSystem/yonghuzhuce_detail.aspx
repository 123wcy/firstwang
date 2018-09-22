<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuzhuce_detail.aspx.cs" Inherits="yonghuzhuce_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>用户注册</title>
	<LINK href="qj.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
        <table>
 <tr><td class="title">注册用户信息</td></tr>
        </table><br />
    <div>
        <table align="center" border="1" style="border:1px solid #f1f8f5" id="table" width="95%">
            <tr >
                <td class="detail">用户名：</td><td width='89%'><%=nyonghuming%></td></tr><tr>                <td class="detail">密码：</td><td width='89%'><%=nmima%></td></tr><tr>                <td class="detail">姓名：</td><td width='89%'><%=nxingming%></td></tr><tr>                <td class="detail">性别：</td><td width='89%'><%=nxingbie%></td></tr><tr>                <td class="detail">籍贯：</td><td width='89%'><%=njiguan%></td></tr><tr>                <td class="detail">手机：</td><td width='89%'><%=nshouji%></td></tr><tr>                <td class="detail">身份证：</td><td width='89%'><%=nshenfenzheng%></td></tr><tr>                                                <td class="detail" height=100  >备注：</td><td width='89%' colspan=2 height=100 ><%=nbeizhu%></td></tr>
            <tr>
                <td colspan=3 align=center>
                    <input type=button name=Submit5 value=返回 class="sure" onClick="javascript:history.back()" />&nbsp;
                    <input type=button name=Submit5 value=打印 class="sure" onClick="javascript:window.print()" /></td></tr>

            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

