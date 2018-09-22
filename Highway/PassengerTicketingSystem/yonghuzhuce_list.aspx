<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation = "false" CodeFile="yonghuzhuce_list.aspx.cs" Inherits="yonghuzhuce_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>用户注册管理</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	
    <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div>
        <table>
 <tr><td class="title">用户注册管理</td></tr>
        </table><br />
        <table width="100%" align="center" border="0" id="table">
           
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">所有用户注册列表</td>
                </tr>
                <tr>
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 
                        用户名：<asp:TextBox ID=yonghuming runat="server" class="text"></asp:TextBox> 
                        姓名：<asp:TextBox ID=xingming runat="server"  class="text"></asp:TextBox> 
                        身份证：<asp:TextBox ID=shenfenzheng runat="server"  class="text"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查找" class="check" /> &nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="导出EXCEL" class="check"  />&nbsp;
                      </td>
                    </tr>
                <tr >
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" charset="UTF-8"
                            BorderColor="DodgerBlue" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="6" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField='yonghuming' HeaderText='用户名'></asp:BoundColumn>                                <%--<asp:BoundColumn DataField='mima' HeaderText='密码'></asp:BoundColumn>                                    <asp:BoundColumn DataField='shouji' HeaderText='手机'></asp:BoundColumn>                                    <asp:BoundColumn DataField='beizhu' HeaderText='备注'></asp:BoundColumn>--%>                                <asp:BoundColumn DataField='xingming' HeaderText='姓名'></asp:BoundColumn>                                <asp:BoundColumn DataField='xingbie' HeaderText='性别'></asp:BoundColumn>                                <asp:BoundColumn DataField='jiguan' HeaderText='籍贯'></asp:BoundColumn>                                                                <asp:BoundColumn DataField='shenfenzheng' HeaderText='身份证'></asp:BoundColumn>                               <%-- <asp:TemplateColumn HeaderText="照片"><ItemTemplate><a href='<%#DataBinder.Eval(Container.DataItem, "zhaopian") %>' target='_blank'><img src='<%#DataBinder.Eval(Container.DataItem, "zhaopian") %>' width='88' height='99' border='0' /></a></ItemTemplate></asp:TemplateColumn>--%>                                                                
                                <asp:TemplateColumn HeaderText="是否审核"><ItemTemplate><a href='sh.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&yuan=<%#DataBinder.Eval(Container.DataItem, "issh")%>&tablename=yonghuzhuce' onclick="return confirm('确定要审核？')"><%#DataBinder.Eval(Container.DataItem, "issh") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
								
								
                                <asp:TemplateColumn HeaderText="修改">
                               		<ItemTemplate>
                                    	<a href='yonghuzhuce_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'  class="buttondanger">修改</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="删除">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=yonghuzhuce&npage=yonghuzhuce_list.aspx' onclick="return confirm('确定要删除？')" class="buttonwarning">删除</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="详细"><ItemTemplate><a href='yonghuzhuce_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttonxx">详细</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
