<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chepiaoxinxi_list.aspx.cs" Inherits="chepiaoxinxi_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��Ϣ</title>
    <link rel="stylesheet" href="qj.css" />
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<LINK href="images/StyleSheet.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
        <table>
 <tr><td class="title">�޸ĳ�����Ϣ</td></tr>
        </table><br />
    <div>
        <table width="100%" align="center" id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">���г�Ʊ��Ϣ�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; ���κţ�<asp:DropDownList ID='checihao' runat='server' CssClass="text"></asp:DropDownList> 
                        ����ʱ�䣺<asp:TextBox ID='chufashijian'  runat="server" CssClass="text"></asp:TextBox> 
                        ����վ��<asp:TextBox ID='chufazhan'  runat="server" CssClass="text"></asp:TextBox> 
                        ����ʱ�䣺<asp:TextBox ID='daodashijian'  runat="server" CssClass="text"></asp:TextBox> 
                        �յ�վ��<asp:TextBox ID='zhongdianzhan'  runat="server" CssClass="text"></asp:TextBox> 
                        <br />                        <br />
                        &nbsp;�������ͣ�<asp:DropDownList ID='liecheleixing' runat='server' CssClass="text"></asp:DropDownList> 
                        ��Ʊ���ͣ�<asp:DropDownList ID='zuoweileixing' runat='server' CssClass="text"></asp:DropDownList> 
                        ״̬��<asp:DropDownList ID='zhuangtai' runat='server' CssClass="text"></asp:DropDownList>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" CssClass="check" /> 
                        <br />
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" HeaderStyle-BackColor="#F8FAFC" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True">
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
                                <asp:BoundColumn DataField='checihao' HeaderText='���κ�'></asp:BoundColumn>                                <asp:BoundColumn DataField='chufashijian' HeaderText='����ʱ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='chufazhan' HeaderText='����վ'></asp:BoundColumn>                                <asp:BoundColumn DataField='daodashijian' HeaderText='����ʱ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='zhongdianzhan' HeaderText='�յ�վ'></asp:BoundColumn>                                                              <asp:BoundColumn DataField='zuoweihao' HeaderText='��λ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='liecheleixing' HeaderText='��������'></asp:BoundColumn>                                <asp:BoundColumn DataField='zuoweileixing' HeaderText='��Ʊ����'></asp:BoundColumn>                                <asp:BoundColumn DataField='piaojia' HeaderText='Ʊ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='zhuangtai' HeaderText='״̬'></asp:BoundColumn>                                <asp:BoundColumn DataField='beizhu' HeaderText='��ע'></asp:BoundColumn>                                
                                
								
								
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='chepiaoxinxi_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttondanger">�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a class="buttonwarning"  href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=chepiaoxinxi&npage=chepiaoxinxi_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a class="buttonxx"  href='chepiaoxinxidetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' target='_blank'>��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
