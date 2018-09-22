<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goupiaojilu_detail.aspx.cs" Inherits="goupiaojilu_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>购票记录</title>
	<LINK href="qj.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
         <table>
 <tr><td class="title">购票记录信息</td></tr>
        </table><br />
    <div>
        <table align="center"  width="95%" id="tui">
            <tr>
                <td width='11%' class="detail">车次号：</td><td width='39%'><%=nchecihao%></td>                <td width='11%' class="detail">出发时间：</td><td width='39%'><%=nchufashijian%></td></tr><tr>                <td width='11%' class="detail">出发站：</td><td width='39%'><%=nchufazhan%></td>                <td width='11%' class="detail">到达时间：</td><td width='39%'><%=ndaodashijian%></td></tr><tr>                <td width='11%' class="detail">终点站：</td><td width='39%'><%=nzhongdianzhan%></td>                <td width='11%' class="detail">售票员：</td><td width='39%'><%=nusername%></td></tr><tr>                <td width='11%' class="detail">座位号：</td><td width='39%'><%=nzuoweihao%></td>                <td width='11%' class="detail">车辆类型：</td><td width='39%'><%=nliecheleixing%></td></tr><tr>                <td width='11%' class="detail">车票类型：</td><td width='39%'><%=nzuoweileixing%></td>                <td width='11%' class="detail">状态：</td><td width='39%'><%=nzhuangtai%></td></tr><tr>                <td width='11%' class="detail">票价：</td><td width='39%'><%=npiaojia%></td>                <td width='11%' class="detail">购票人：</td><td width='39%'><%=ngoupiaoren%></td></tr><tr>                <td width='11%' class="detail">姓名：</td><td width='39%'><%=nxingming%></td>                <td width='11%' class="detail">身份证：</td><td width='39%'><%=nshenfenzheng%></td></tr><tr>                <td width='11%' class="detail">备注：</td><td width='39%'><%=nbeizhu%></td>                <td width='11%' class="detail">购票时间</td><td width='39%'><%=naddtime%></td></tr>
            <tr><td colspan=4 align=center>
                <input type=button name=Submit5 value=返回 class="sure" onClick="javascript:history.back()" /></td></tr>

            <tr bgcolor="#4296e7">
                <td colspan="4">&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

