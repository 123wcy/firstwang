<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tuipiaojilu_list2.aspx.cs" Inherits="tuipiaojilu_list2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>退票记录</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
    <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server">
         <table>
 <tr><td class="title">退票记录</td></tr>
        </table><br />
    <div>
        <table width="100%" align="center"  id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        所有退票记录信息列表</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 车次号：<asp:TextBox ID=checihao runat="server"  CssClass="text"></asp:TextBox> 
                        
                        &nbsp;座位号：<asp:TextBox ID=zuoweihao runat="server"   CssClass="text" ></asp:TextBox> 
                        &nbsp;退票人：<asp:TextBox ID=tuipiaoren runat="server"   CssClass="text" ></asp:TextBox> 
                        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找"  CssClass="check" />
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
                                <asp:BoundColumn DataField='piaojia' HeaderText='票价'></asp:BoundColumn>
                                <asp:BoundColumn DataField='tuipiaoren' HeaderText='退票人'></asp:BoundColumn>
                                <asp:BoundColumn DataField='xingming' HeaderText='姓名'></asp:BoundColumn>
                                <asp:BoundColumn DataField='shenfenzheng' HeaderText='身份证'></asp:BoundColumn>
                                <asp:BoundColumn DataField='tuipiaoyuanyin' HeaderText='退票原因'></asp:BoundColumn>
                                <asp:BoundColumn DataField='issh' HeaderText='是否审核'><HeaderStyle Width="80px" /></asp:BoundColumn>
								
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a class="buttonwarning"  href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=tuipiaojilu&npage=tuipiaojilu_list2.aspx' onclick="return confirm('确定要删除？')">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a class="buttonxx"  href='tuipiaojilu_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
