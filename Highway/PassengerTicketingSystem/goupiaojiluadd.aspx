<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goupiaojiluadd.aspx.cs" Inherits="goupiaojiluadd" %>


<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>
<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购票记录</title>
	<!--bixanjxiqxi-->
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
     #gp tr td {
    padding:15px;
    }
        #gp tr td:first-child {
        font-weight:800;
        float:right;
        font-size:16px;
        vertical-align:middle;
        }
    .asptext {
 
    width:160px;
     border-radius:4px;
     border: 1px solid #ccc;
     padding:5px;
     
     font-weight:500;
     vertical-align:middle;
    }
</style>
   
</head>
<script language="javascript">	
function OpenScript(url,width,height)
{
  var win = window.open(url,"SelectToSort",'width=' + width + ',height=' + height + ',resizable=1,scrollbars=yes,menubar=no,status=yes' );
}
	function OpenDialog(sURL, iWidth, iHeight)
{
   var oDialog = window.open(sURL, "_EditorDialog", "width=" + iWidth.toString() + ",height=" + iHeight.toString() + ",resizable=no,left=0,top=0,scrollbars=no,status=no,titlebar=no,toolbar=no,menubar=no,location=no");
   oDialog.focus();
}
</script>
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
		<td>
            <table id="Table2" style="width: 978px; margin-right: auto;margin-left: auto;" border="0" cellpadding="0" cellspacing="0">
              <tr>
                        <td width="95%" class="STYLE2"><strong>&nbsp;</strong></td>
                      </tr>
                    </table>
            </td>
        </tr>

                  <tr>
                    <td height="100%" valign="top">
                        
                        <table id="Table3" width="300" height="100%" border="0" cellpadding="0" cellspacing="0" style="float:right;">
                      <tr>
                        
                        <td width="300" height="183" valign="top" class=newsline>
                       
                            <div class="car-child-notice" style="height: 255px;">
			<span style="margin: 0px 0px 10px 0px;">温馨提示:</span>
			<p style="font-size: 12px;line-height: 30px;">1.【班次列表】中的【余票】是指网上可售剩余票数， 不代表车站实际可售余票数。</p>
			<p style="font-size: 12px;line-height: 30px;">2.网上售票只提供全价票、儿童票和儿童免票 。</p>
			<p style="font-size: 12px;line-height: 30px;">3.一张有效身份证件，在当日同一车次只允许购买一张车票。</p>
			<p style="font-size: 12px;line-height: 30px;">4.不能单独买免票，也不能买半票加免票。</p>
			<!-- <p style="font-size: 12px;line-height: 30px;">4.当前可购买15天内的车票。</p> -->
			<p style="font-size: 12px;line-height: 30px;">
				点击查看<a href="news.aspx?lb=购票规则" target="_blan">《购票须知》</a>
			</p>
		</div>



                        </td>
                      </tr>
                    </table>
                        
                          <table  width="800"  border="0" cellpadding="0" cellspacing="0" style="float:left;border:1px solid #d5d4d4;" id="gp" > 
                                <tr><td><FONT face='宋体'>车次号:</FONT></td><td width='79%'><asp:TextBox ID='checihao' runat='server' CSSClass="asptext"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchecihao" runat="server" ControlToValidate="checihao" ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='宋体'>出发时间:</FONT></td><td width='79%'><asp:TextBox ID='chufashijian' runat='server' CSSClass="asptext"></asp:TextBox>*<asp:RequiredFieldValidator ID="RequiredFieldValidatorchufashijian" runat="server" ControlToValidate="chufashijian" ErrorMessage="必填"></asp:RequiredFieldValidator></td></tr>			<tr><td><FONT face='宋体'>出发站:</FONT></td><td width='79%'><asp:TextBox ID='chufazhan' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>到达时间:</FONT></td><td width='79%'><asp:TextBox ID='daodashijian' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>终点站:</FONT></td><td width='79%'><asp:TextBox ID='zhongdianzhan' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>					<tr><td><FONT face='宋体'>座位号:</FONT></td><td width='79%'><asp:TextBox ID='zuoweihao' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>车辆类型:</FONT></td><td width='79%'><asp:TextBox ID='liecheleixing' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>车票类型:</FONT></td><td width='79%'><asp:TextBox ID='zuoweileixing' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>状态:</FONT></td><td width='79%'><asp:TextBox ID='zhuangtai' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>票价:</FONT></td><td width='79%'><asp:TextBox ID='piaojia' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>购票人:</FONT></td><td width='79%'><asp:TextBox ID='goupiaoren' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>            <tr><td><FONT face='宋体'>售票人:</FONT></td><td width='79%'><asp:TextBox ID='username' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>姓名:</FONT></td><td width='79%'><asp:TextBox ID='xingming' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>身份证:</FONT></td><td width='79%'><asp:TextBox ID='shenfenzheng' Width='395px' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			<tr><td><FONT face='宋体'>备注:</FONT></td><td width='79%'><asp:TextBox ID='beizhu' Width='400px' Height='100px' TextMode='MultiLine' runat='server' CSSClass="asptext"></asp:TextBox></td></tr>			
				            <tr>
					            <td noWrap height="25" style="WIDTH: 80px">
						            <div align="right"><FONT face="宋体"></FONT>&nbsp;</div>
					            </td>
					            <td width="59%" height="25">&nbsp;
						            <asp:button id="Button1" runat="server" Text="确定" onclick="Button1_Click" CssClass="sure"></asp:button><FONT face="宋体">&nbsp;</FONT>
                                    <input id="Reset1" type="reset" value="重置" class="sure" /></td>
				            </tr>
            				
				            <tr bgColor="#f1f8f5">
					            <td colSpan="2">&nbsp;</td>
				            </tr>
			            </table>
                              
                              
                              
                              
                              </td>
                        
                      </tr>
                    </table>
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
<!-- dfexnxxiaxng -->
    </div></form>
</body>
</html>


