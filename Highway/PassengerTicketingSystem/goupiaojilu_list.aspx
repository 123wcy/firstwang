<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goupiaojilu_list.aspx.cs" Inherits="goupiaojilu_list" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��¼</title>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
    <script>
        var how = new Array();
        how[0] = "show";
        
        function show()
        {
            var a = document.getElementById(how[0]).style.display;
            
            if (a == 'none') {
                document.getElementById(how[0]).style.display = "block";
            }
            else {
                document.getElementById(how[0]).style.display = "none";
            }
           
        }
    </script>
	<link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
 <tr><td class="title">��Ʊ��¼</td></tr>
        </table><br />
        <table width="100%" align="center" id="table">
            <tbody>
                <tr class="tr2">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">���й�Ʊ��¼�б�</td>
                </tr>
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                        
                  &nbsp; ���κţ�<asp:TextBox ID=checihao runat="server" class="text"></asp:TextBox> 
                         
                       &nbsp; ����վ��<asp:TextBox ID=chufazhan runat="server" class="text"></asp:TextBox> 
                            
                        <br />
 <br />
                        &nbsp; ��Ʊ�ˣ�<asp:TextBox ID=goupiaoren runat="server" class="text"></asp:TextBox> 
                        &nbsp;�յ�վ��<asp:TextBox ID=zhongdianzhan runat="server" class="text"></asp:TextBox>
                       
                      
                        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" CssClass="check" /> 
                        &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="����EXCEL" CssClass="check" />
                        &nbsp;<div onclick="show(0)" style="float:right;width:40px;cursor:pointer;">����</div>
                        <br />
 <br />
                        <div id="show">
                       
                      
                         
                        &nbsp;��λ�ţ�<asp:TextBox ID=zuoweihao runat="server" class="text"></asp:TextBox>
                        &nbsp;����ʱ�䣺<asp:TextBox ID=chufashijian runat="server" class="text"></asp:TextBox>
                        &nbsp;����ʱ�䣺<asp:TextBox ID=daodashijian runat="server" class="text"></asp:TextBox> 
                        
                             <br />
                             <br />
                        &nbsp;�������ͣ�<asp:TextBox ID=liecheleixing runat="server" class="text"></asp:TextBox> 
                        &nbsp;��Ʊ���ͣ�<asp:TextBox ID=zuoweileixing runat="server" class="text"></asp:TextBox>
                         
                             <br />
                             <br />
                        &nbsp;���֤��<asp:TextBox ID=shenfenzheng runat="server" class="text"></asp:TextBox>
                        &nbsp;״̬��<asp:TextBox ID=zhuangtai runat="server" class="text"></asp:TextBox>
                        &nbsp;������<asp:TextBox ID=xingming runat="server" class="text"></asp:TextBox> </div>
                        
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
                                <asp:BoundColumn DataField='checihao' HeaderText='���κ�'></asp:BoundColumn>                                <asp:BoundColumn DataField='chufashijian' HeaderText='����ʱ��'></asp:BoundColumn>                                <asp:BoundColumn DataField="addtime" HeaderText="����ʱ��"></asp:BoundColumn>                                                                <asp:BoundColumn DataField='piaojia' HeaderText='Ʊ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='goupiaoren' HeaderText='��Ʊ��'></asp:BoundColumn>                                <asp:BoundColumn DataField='xingming' HeaderText='����'></asp:BoundColumn>                                                               
                                <asp:TemplateColumn HeaderText="�Ƿ����"><ItemTemplate><a href='sh.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>&yuan=<%#DataBinder.Eval(Container.DataItem, "issh")%>&tablename=goupiaojilu' onclick="return confirm('ȷ��Ҫ��ˣ�')"><%#DataBinder.Eval(Container.DataItem, "issh") %></a></ItemTemplate><HeaderStyle Width="80px" /></asp:TemplateColumn>
								<asp:BoundColumn DataField='iszf' HeaderText='�Ƿ�֧��'><HeaderStyle Width="80px" /></asp:BoundColumn>
								
                                <asp:TemplateColumn HeaderText="�޸�">
                               		<ItemTemplate>
                                    	<a href='goupiaojilu_updt.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'  class="buttondanger">�޸�</a>
                                	</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="ɾ��">
                                	<ItemTemplate>
                                    	<a href='delid.aspx?delid=<%#DataBinder.Eval(Container.DataItem, "id") %>&tablename=goupiaojilu&npage=goupiaojilu_list.aspx' onclick="return confirm('ȷ��Ҫɾ����')" class="buttonwarning">ɾ��</a>
                               		</ItemTemplate>
								<HeaderStyle Width="50px" />
					
                                </asp:TemplateColumn>
								<asp:TemplateColumn HeaderText="��ϸ"><ItemTemplate><a href='goupiaojilu_detail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>' class="buttonxx">��ϸ</a></ItemTemplate><HeaderStyle Width="50px" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center" />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a>&nbsp;&nbsp;&nbsp;
                        
                       
                    </td>
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
