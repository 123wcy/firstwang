<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation = "false" CodeFile="yonghuzhuce_list.aspx.cs" Inherits="yonghuzhuce_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�û�ע�����</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	
    <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div>
        <table>
 <tr><td class="title">�û�ע�����</td></tr>
        </table><br />
        <table width="100%" align="center" border="0" id="table">
           
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">�����û�ע���б�</td>
                </tr>
                <tr>
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 
                        �û�����<asp:TextBox ID=yonghuming runat="server" class="text"></asp:TextBox> 
                        ������<asp:TextBox ID=xingming runat="server"  class="text"></asp:TextBox> 
                        ���֤��<asp:TextBox ID=shenfenzheng runat="server"  class="text"></asp:TextBox>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" class="check" /> &nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="����EXCEL" class="check"  />&nbsp;
                      </td>
                    </tr>
                <tr >
                    <td>
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" charset="UTF-8"
                            BorderColor="DodgerBlue" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="6" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="����" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="��һҳ" PrevPageText="��һҳ" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            
                            <Columns>
                                <asp:TemplateColumn HeaderText="���">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField='yonghuming' HeaderText='�û���'></asp:BoundColumn>                                <%--<asp:BoundColumn DataField='mima' HeaderText='����'></asp:BoundColumn>                                    <asp:BoundColumn DataField='shouji' HeaderText='�ֻ�'></asp:BoundColumn>                                    <asp:BoundColumn DataField='beizhu' HeaderText='��ע'></asp:BoundColumn>--%>                                <asp:BoundColumn DataField='xingming' HeaderText='����'></asp:BoundColumn>                                <asp:BoundColumn DataField='xingbie' HeaderText='�Ա�'></asp:BoundColumn>                                <asp:BoundColumn DataField='jiguan' HeaderText='����'></asp:BoundColumn>                                                                <asp:BoundColumn DataField='shenfenzheng' HeaderText='���֤'></asp:BoundColumn>                               <%-- <asp:TemplateColumn HeaderText="��Ƭ"><ItemTemplate><a href='<%#DataBinder.Eval(Container.DataItem, "zhaopian") %>' target='_blank'><img src='<%#DataBinder.Eval(Container.DataItem, "zhaopian") %>' width='88' height='99' border='0' /></a></ItemTemplate></asp:TemplateColumn>--%>                                                                
                                <asp:TemplateColumn HeaderText="�Ƿ����"><ItemTemplate><a href='sh.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&yuan=<%#DataBinder.Eval(Container.DataItem, "issh")%>&tablename=yonghuzhuce' onclick="return confirm('ȷ��Ҫ��ˣ�')"><%#DataBinder.Eval(Container.DataItem, "issh") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
								
								
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='yonghuzhuce_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'  class="buttondanger">�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=yonghuzhuce&npage=yonghuzhuce_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')" class="buttonwarning">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='yonghuzhuce_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttonxx">��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
            </tbody>
        </table>
	
    </div>
    </form>
</body>
</html>
