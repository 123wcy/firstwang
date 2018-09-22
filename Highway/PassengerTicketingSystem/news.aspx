<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" EnableEventValidation="false"  %>

<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown1.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>车站售票管理系统</title>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style>
    .help-list-bg {
    border:1px solid #d5d4d4;
    }
   .help-list .title {
        display: block;
        width: 100%;
        height: 40px;
        line-height: 40px;
        background: #1ebff5;
        text-align: center;
        color: #FFFFFF;
        font-size: 20px;
        text-align: left;
        padding-left: 14px;
        box-sizing: border-box;
    }
    .titlezx {
        display: block;
        width: 100%;
        height: 40px;
        line-height: 40px;
        background: #1ebff5;
        text-align: center;
        color: #FFFFFF;
        font-size: 20px;
        text-align: left;
        padding-left: 14px;
        box-sizing: border-box;
    }
    .help-list-bg li {
    border-bottom-width: 1px;
    border-bottom-style: dashed;
    border-bottom-color: #d5d4d4;
    padding-left: 30px;
    height: 31px;
    background: url(images/index_55.jpg) no-repeat;
    line-height: 31px;
    background-position: 10px 16px;
   
}
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
       <table width="978" height="1081" border="0" align="center" cellpadding="0" cellspacing="0" id="__01" style="width: 978px; margin-right: auto;margin-left: auto;">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td><table id="Table12" style="width: 978px; margin-right: auto;margin-left: auto;" border="0" cellpadding="0" cellspacing="0">
              <tr>
                        <td width="95%" class="STYLE2"><strong>&nbsp;</strong></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="100%" valign="top">
                        <table id="Table1" width="300" height="100%" border="0" cellpadding="0" cellspacing="0" style="float:left;">
                      <tr>
                        
                        <td width="300" height="183" valign="top" class=newsline>
                        <div class="help-list">
		<span class="title" style="background-color: #1ebff5;">资讯 <span class="gengdd" style="color: white;float: right;font-size: 13px;margin-right: 9px;">更多&gt;&gt;</span></span>
		<div class="help-list-bg">
			<ul>
					<li style="border-bottom:1px dotted gainsboro;height: 40px;line-height: 40px;"><a href="news.aspx?lb=乘客须知">乘客须知</a></li>
					<li style="border-bottom:1px dotted gainsboro;height: 40px;line-height: 40px;"><a href="news.aspx?lb=旅游资讯">旅游资讯</a></li>
					<li style="border-bottom:1px dotted gainsboro;height: 40px;line-height: 40px;"><a href="news.aspx?lb=购票规则">购票规则</a></li>
			</ul>
		</div>
	</div>
                        </td>
                      </tr>
                    </table>
                        
                        <table id="Table14" width="900" height="100%" border="0" cellpadding="0" cellspacing="0" style="float:left;">
                      <tr>
                       <td width="20">&nbsp;</td>
                        <td width="880"  valign="top" class=newsline style="float:left;border:1px solid #d5d4d4;">
                          <p align="center">
                              <span class="titlezx" style="background-color: #1ebff5;"><%=lbtxt %> </span>
                              <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                  BorderWidth="0" ItemStyle-Height="25" OnPageIndexChanged="DataGrid1_PageIndexChanged"
                                  PageSize="25" ShowHeader="False" Width="100%">
                                  <Columns>
                                      <asp:TemplateColumn>
                                          <ItemTemplate>
                                              <img src="qtimages/1.jpg">
                                          </ItemTemplate>
                                          <HeaderStyle Width="30px" />
                                      </asp:TemplateColumn>
                                      <asp:TemplateColumn HeaderText="标题">
                                          <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                              Font-Underline="False" HorizontalAlign="Left" />
                                          <ItemTemplate>
                                              [<%#DataBinder.Eval(Container.DataItem, "leibie")%>] <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>
                                                  <%#DataBinder.Eval(Container.DataItem, "title") %>
                                              </a>
                                          </ItemTemplate>
                                      </asp:TemplateColumn>
                                      <asp:TemplateColumn>
                                          <ItemTemplate>
                                              被点击
                                              <%# DataBinder.Eval(Container.DataItem, "dianjilv")%>
                                              次
                                          </ItemTemplate>
                                      </asp:TemplateColumn>
                                      <asp:BoundColumn DataField="addtime" HeaderText="发布时间">
                                          <HeaderStyle Width="100px" />
                                      </asp:BoundColumn>
                                  </Columns>
                                  <PagerStyle NextPageText="下一页" PrevPageText="上一页" />
                                  <ItemStyle Height="25px" />
                              </asp:DataGrid>&nbsp;</p></td>
                       
                      </tr>
                    </table></td>
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
    </div></form>
</body>
</html>

