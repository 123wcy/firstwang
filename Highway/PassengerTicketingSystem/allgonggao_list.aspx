<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allgonggao_list.aspx.cs" Inherits="allgonggao_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title><LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
    <link rel="stylesheet" href="qj.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
 <tr><td class="title"><%=lbtxt %>����</td></tr>
        </table><br />
        <table width="100%" align="center" border="0" id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px;font-size:16px">
                       ����<%=lbtxt %>��Ϣ�б� </td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 
                        ���⣺<asp:TextBox ID=title runat="server" class="text2"></asp:TextBox>
						&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" CssClass="sure" />
                        <div align="right">
                                        <div id="Button2"  ><a href="allgonggao_add.aspx?lb=<%= lbtxt%>" class="buttonprimary">����</a></div>
                        <br />
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" 
                           
                            PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField=title HeaderText='����'>
                                    <ItemStyle  HorizontalAlign="Left" />
                                    <HeaderStyle  HorizontalAlign="Left" />
                                </asp:BoundColumn><asp:BoundColumn DataField=leibie HeaderText='���'><HeaderStyle Width="80px" /></asp:BoundColumn>                   
                                <asp:BoundColumn DataField=dianjilv HeaderText='�����'><HeaderStyle Width="50px" /></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='allgonggao_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'   class="buttondanger">�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delgg.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=allgonggao&npage=allgonggao_list.aspx&lb=<%=lbtxt %>' onclick="return confirm('ȷ��Ҫɾ����')" class="buttonwarning">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
                                </asp:TemplateColumn>
								
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