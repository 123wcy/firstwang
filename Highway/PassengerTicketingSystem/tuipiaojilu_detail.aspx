<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tuipiaojilu_detail.aspx.cs" Inherits="tuipiaojilu_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>��Ʊ��¼</title>
	<LINK href="qj.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
        <table>
 <tr><td class="title">��Ʊ��¼��Ϣ</td></tr>
        </table><br />
    <div>
        <table align="center"  width="95%" id="tui">
            <tr>
                <td width='11%' class="detail">���κţ�</td><td width='39%'><%=nchecihao%></td>                <td width='11%' class="detail">����ʱ�䣺</td><td width='39%'><%=nchufashijian%></td></tr><tr>                <td width='11%' class="detail">����վ��</td><td width='39%'><%=nchufazhan%></td>                <td width='11%' class="detail">����ʱ�䣺</td><td width='39%'><%=ndaodashijian%></td></tr><tr>                <td width='11%' class="detail">�յ�վ��</td><td width='39%'><%=nzhongdianzhan%></td>                <td width='11%' class="detail">��Ʊ�ˣ�</td><td width='39%'><%=nusername%></td></tr><tr>                <td width='11%' class="detail">��λ�ţ�</td><td width='39%'><%=nzuoweihao%></td>                <td width='11%' class="detail">Ʊ�ۣ�</td><td width='39%'><%=npiaojia%></td></tr><tr>                <td width='11%' class="detail">��Ʊ�ˣ�</td><td width='39%'><%=ntuipiaoren%></td>                <td width='11%' class="detail">������</td><td width='39%'><%=nxingming%></td></tr><tr>                <td width='11%' class="detail">���֤��</td><td width='39%'><%=nshenfenzheng%></td>                <td width='11%' class="detail">��Ʊԭ��</td><td width='39%'><%=ntuipiaoyuanyin%></td>                <tr><td width='11%' class="detail">��Ʊʱ�䣺</td><td width='39%'><%=nbuytime%></td>                <td width='11%' class="detail">��Ʊ��Ʊ��</td><td width='39%'><%=naddtime%></td></tr>                </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� class="sure" onClick="javascript:history.back()" /></td></tr>

            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

