<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuzhuce_detail.aspx.cs" Inherits="yonghuzhuce_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�û�ע��</title>
	<LINK href="qj.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
        <table>
 <tr><td class="title">ע���û���Ϣ</td></tr>
        </table><br />
    <div>
        <table align="center" border="1" style="border:1px solid #f1f8f5" id="table" width="95%">
            <tr >
                <td class="detail">�û�����</td><td width='89%'><%=nyonghuming%></td></tr><tr>                <td class="detail">���룺</td><td width='89%'><%=nmima%></td></tr><tr>                <td class="detail">������</td><td width='89%'><%=nxingming%></td></tr><tr>                <td class="detail">�Ա�</td><td width='89%'><%=nxingbie%></td></tr><tr>                <td class="detail">���᣺</td><td width='89%'><%=njiguan%></td></tr><tr>                <td class="detail">�ֻ���</td><td width='89%'><%=nshouji%></td></tr><tr>                <td class="detail">���֤��</td><td width='89%'><%=nshenfenzheng%></td></tr><tr>                                                <td class="detail" height=100  >��ע��</td><td width='89%' colspan=2 height=100 ><%=nbeizhu%></td></tr>
            <tr>
                <td colspan=3 align=center>
                    <input type=button name=Submit5 value=���� class="sure" onClick="javascript:history.back()" />&nbsp;
                    <input type=button name=Submit5 value=��ӡ class="sure" onClick="javascript:window.print()" /></td></tr>

            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

