<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tuipiaojilu_list.aspx.cs" Inherits="tuipiaojilu_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��¼</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<link rel="stylesheet" href="qj.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table>
 <tr><td class="title">��Ʊ���</td></tr>
        </table><br />
        <table width="100%" align="center"  id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">������Ʊ��¼�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        &nbsp; 
                        ���κţ�<asp:TextBox ID='checihao' runat="server" CssClass="text"></asp:TextBox> 
                       
                        ��λ�ţ�<asp:TextBox ID='zuoweihao' runat="server" CssClass="text"></asp:TextBox> 
                        ��Ʊ�ˣ�<asp:TextBox ID='tuipiaoren' runat="server" CssClass="text"></asp:TextBox> 
                        ���֤��<asp:TextBox ID='shenfenzheng' runat="server" CssClass="text"></asp:TextBox>
						&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" CssClass="check" /> &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
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
                                <asp:BoundColumn DataField='checihao' HeaderText='���κ�'></asp:BoundColumn>                                 <%--<asp:BoundColumn DataField='chufashijian' HeaderText='����ʱ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='chufazhan' HeaderText='����վ'></asp:BoundColumn>                                <asp:BoundColumn DataField='daodashijian' HeaderText='����ʱ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='zhongdianzhan' HeaderText='�յ�վ'></asp:BoundColumn>                                   <asp:BoundColumn DataField='xingming' HeaderText='����'></asp:BoundColumn>                                   <asp:BoundColumn DataField='tuipiaoyuanyin' HeaderText='��Ʊԭ��'></asp:BoundColumn>--%>                                                               <asp:BoundColumn DataField='zuoweihao' HeaderText='��λ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='piaojia' HeaderText='Ʊ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='tuipiaoren' HeaderText='��Ʊ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='username' HeaderText='��Ʊ��'></asp:BoundColumn>                                                               <asp:BoundColumn DataField='shenfenzheng' HeaderText='���֤'></asp:BoundColumn>                                                     <asp:BoundColumn DataField='buytime' HeaderText='��Ʊʱ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='addtime' HeaderText='��Ʊʱ��'></asp:BoundColumn>
                                
                                <asp:TemplateColumn HeaderText="�Ƿ����"><ItemTemplate><a href='sh.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&yuan=<%#DataBinder.Eval(Container.DataItem, "issh")%>&tablename=tuipiaojilu' onclick="return confirm('ȷ��Ҫ��ˣ�')"><%#DataBinder.Eval(Container.DataItem, "issh") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
								
								
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='tuipiaojilu_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttondanger">�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=tuipiaojilu&npage=tuipiaojilu_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')" class="buttonwarning">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='tuipiaojilu_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'  class="buttonxx">��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
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
