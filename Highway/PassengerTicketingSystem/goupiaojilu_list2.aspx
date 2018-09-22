<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goupiaojilu_list2.aspx.cs" Inherits="goupiaojilu_list2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>购票记录</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	
    <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <table>
 <tr><td class="title">购票记录</td></tr>
        </table><br />
        <table width="100%" align="center"  id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        所有购票记录信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        <br />
                        &nbsp; 车次号：<asp:TextBox ID=checihao runat="server"  CssClass="text" ></asp:TextBox> 
                        出发时间：<asp:TextBox ID=chufashijian runat="server"   CssClass="text" ></asp:TextBox> 
                        出发站：<asp:TextBox ID=chufazhan runat="server"   CssClass="text" ></asp:TextBox> 
                        
                        
                        <br />
                        <br />
                        &nbsp;到达时间：<asp:TextBox ID=daodashijian runat="server"   CssClass="text" ></asp:TextBox> 
                        &nbsp;终点站：<asp:TextBox ID=zhongdianzhan runat="server"   CssClass="text" ></asp:TextBox> 
                       
                         &nbsp;座位号：<asp:TextBox ID=zuoweihao runat="server"  CssClass="text" ></asp:TextBox>
                        <br />
                        <br /> 
                        &nbsp;车辆类型：<asp:TextBox ID=liecheleixing runat="server"   CssClass="text" ></asp:TextBox> 
                       &nbsp; 车票类型：<asp:TextBox ID=zuoweileixing runat="server"  CssClass="text" ></asp:TextBox> 
                        &nbsp;状态：<asp:TextBox ID=zhuangtai runat="server"   CssClass="text" ></asp:TextBox> 
                                               <br />
                        <br /> 
                         &nbsp;购票人：<asp:TextBox ID=goupiaoren runat="server"  CssClass="text" ></asp:TextBox> 
                       &nbsp; 姓名：<asp:TextBox ID=xingming runat="server"  CssClass="text" ></asp:TextBox> 
                        &nbsp;身份证：<asp:TextBox ID=shenfenzheng runat="server"  CssClass="text" ></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找"  CssClass="check"/>
                        <br />
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField='checihao' HeaderText='车次号'></asp:BoundColumn>
                                <asp:BoundColumn DataField='chufashijian' HeaderText='出发时间'></asp:BoundColumn>
                                <asp:BoundColumn DataField='chufazhan' HeaderText='出发站'></asp:BoundColumn>
                                <asp:BoundColumn DataField='daodashijian' HeaderText='到达时间'></asp:BoundColumn>
                                <asp:BoundColumn DataField='zhongdianzhan' HeaderText='终点站'></asp:BoundColumn>
                                <asp:BoundColumn DataField='zuoweihao' HeaderText='座位号'></asp:BoundColumn>
                                <asp:BoundColumn DataField='liecheleixing' HeaderText='车辆类型'></asp:BoundColumn>
                                <asp:BoundColumn DataField='zuoweileixing' HeaderText='车票类型'></asp:BoundColumn>
                                
                                <asp:BoundColumn DataField='piaojia' HeaderText='票价'></asp:BoundColumn>
                               
                                <asp:BoundColumn DataField=issh HeaderText='是否审核'><HeaderStyle Width="80px" /></asp:BoundColumn>
								<asp:TemplateColumn HeaderText="是否支付"><ItemTemplate><a href='zhifu/default.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&biao=goupiaojilu'><%#DataBinder.Eval(Container.DataItem, "iszf") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
                               
                               <asp:TemplateColumn HeaderText="退票">
                               		<ItemTemplate>
                                    	<a href='tuipiaojilu_add.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'  class="buttondanger">退票</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="修改">
                               		<ItemTemplate>
                                    	<a href='goupiaojilu_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttonwarning">修改</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=goupiaojilu&npage=goupiaojilu_list2.aspx' onclick="return confirm('确定要删除？')" class="buttonxx">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='goupiaojilu_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
    
    </div>
    </form>
</body>
</html>
