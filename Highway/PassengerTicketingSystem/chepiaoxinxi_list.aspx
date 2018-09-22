<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chepiaoxinxi_list.aspx.cs" Inherits="chepiaoxinxi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>车票信息</title>
    <link rel="stylesheet" href="qj.css" />
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
        <table>
 <tr><td class="title">修改车次信息</td></tr>
        </table><br />
    <div>
        <table width="100%" align="center" id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">所有车票信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 车次号：<asp:DropDownList ID='checihao' runat='server' CssClass="text"></asp:DropDownList> 
                        出发时间：<asp:TextBox ID='chufashijian'  runat="server" CssClass="text"></asp:TextBox> 
                        出发站：<asp:TextBox ID='chufazhan'  runat="server" CssClass="text"></asp:TextBox> 
                        到达时间：<asp:TextBox ID='daodashijian'  runat="server" CssClass="text"></asp:TextBox> 
                        终点站：<asp:TextBox ID='zhongdianzhan'  runat="server" CssClass="text"></asp:TextBox> 
                        <br />                        <br />
                        &nbsp;车辆类型：<asp:DropDownList ID='liecheleixing' runat='server' CssClass="text"></asp:DropDownList> 
                        车票类型：<asp:DropDownList ID='zuoweileixing' runat='server' CssClass="text"></asp:DropDownList> 
                        状态：<asp:DropDownList ID='zhuangtai' runat='server' CssClass="text"></asp:DropDownList>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" CssClass="check" /> 
                        <br />
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="宋体" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="下一页" PrevPageText="上一页" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="序号">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField='checihao' HeaderText='车次号'></asp:BoundColumn>                                <asp:BoundColumn DataField='chufashijian' HeaderText='出发时间'></asp:BoundColumn>                                <asp:BoundColumn DataField='chufazhan' HeaderText='出发站'></asp:BoundColumn>                                <asp:BoundColumn DataField='daodashijian' HeaderText='到达时间'></asp:BoundColumn>                                <asp:BoundColumn DataField='zhongdianzhan' HeaderText='终点站'></asp:BoundColumn>                                                              <asp:BoundColumn DataField='zuoweihao' HeaderText='座位号'></asp:BoundColumn>                                <asp:BoundColumn DataField='liecheleixing' HeaderText='车辆类型'></asp:BoundColumn>                                <asp:BoundColumn DataField='zuoweileixing' HeaderText='车票类型'></asp:BoundColumn>                                <asp:BoundColumn DataField='piaojia' HeaderText='票价'></asp:BoundColumn>                                <asp:BoundColumn DataField='zhuangtai' HeaderText='状态'></asp:BoundColumn>                                <asp:BoundColumn DataField='beizhu' HeaderText='备注'></asp:BoundColumn>                                
                                
								
								
                                <asp:TemplateColumn HeaderText="修改">
                               		<ItemTemplate>
                                    	<a href='chepiaoxinxi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttondanger">修改</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a class="buttonwarning"  href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=chepiaoxinxi&npage=chepiaoxinxi_list.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a class="buttonxx"  href='chepiaoxinxidetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' target='_blank'>详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">打印本页</a></td>
                </tr>
            </tbody>
        </table>
		<%
    //yoxutixinxg if(kucddduntx>0)
    //yoxutixinxg{
    //yoxutixinxg tsgehxdhdm
    //yoxutixinxg}
	%>
    </div>
    </form>
</body>
</html>
