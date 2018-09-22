<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listuser.aspx.cs" Inherits="listuser" %>

<!DOCTYPE html >

<html >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <table>
            <tr><td class="title">系统管理员管理</td></tr>
        </table>
        
        <table  style="width: 100%;border:none;" id="table"> 
            <tr>
                
                <td align="left" style="height: 25px">&nbsp;
                   <table align="center"cellpadding="4" cellspacing="0" style="width: 95%;border: 1px solid #ccc;">                      
                        <tr>
                                <td colspan="1">
                                    <div align="right">
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="新增" CssClass="buttonprimary" /><font
                                    face="宋体">&nbsp;</font></div>
                                </td>
                            </tr>
                        <tr>
                            <td>
                                
                                
                                <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="false" 
                                    BorderColor="DodgerBlue" PageSize="6" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" >
                                    <SelectedItemStyle BackColor="Blue" />
                                    
                                    <PagerStyle NextPageText="下一页" PrevPageText="上一页" HorizontalAlign="Right"/>
                                    <ItemStyle BackColor="White" />
                             
                                  
                                    <Columns>
                                       
                                        <asp:TemplateColumn HeaderText="序号" HeaderStyle-CssClass="th" ItemStyle-CssClass="item">
                                            <ItemTemplate>
                                                <%#Container.ItemIndex+1 %>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:BoundColumn DataField="username" HeaderText="用户名" HeaderStyle-CssClass="th" ItemStyle-CssClass="item"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="pwd" HeaderText="密码" HeaderStyle-CssClass="th" ItemStyle-CssClass="item"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="cx" HeaderText="角色" HeaderStyle-CssClass="th" ItemStyle-CssClass="item"></asp:BoundColumn>
                                        <asp:BoundColumn DataField="addtime" HeaderText="添加时间" HeaderStyle-CssClass="th" ItemStyle-CssClass="item"></asp:BoundColumn>
                                        
                                        <asp:TemplateColumn HeaderText="修改" HeaderStyle-CssClass="th" ItemStyle-CssClass="item">
                               		        <ItemTemplate>
                                    	        <a href='user_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttondanger">修改</a>
                                	        </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="删除" HeaderStyle-CssClass="th" ItemStyle-CssClass="item">
                                            <ItemTemplate>
                                               
                                                <a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=allusers&npage=listuser.aspx'
                                                    onclick="return confirm('确定要删除？')" class="buttonwarning">删除</a>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>

                                  </Columns>
                                </asp:DataGrid></td>
                        </tr>
                        <tr>
                            <td colspan="1">
                                <div align="center">
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#4296e7">
                            <td colspan="1">
                               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">打印本页</a></td></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 18px">
                </td>
            </tr>
            <tr>
                <td align="left">
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
        


    </div>
    </form>
</body>
</html>
