<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chepiaoxinxilist.aspx.cs" Inherits="chepiaoxinxilist" %>


<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>
<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc2" %>
<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>
 <html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>��Ʊ��Ϣ</title>
	<!--bixanjxiqxi-->
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="lib/css/fontello.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <style>
        .blue {      
           background-color:#3897d8;
       }
    </style>
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
       <table width="100%" height="1081" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />

            <div class="main-top">
 
  <div class="wrapper rel" >
      <img src="img/lunbo2.jpg" alt="�ֻ���ʾ��ͼƬ���" id="Img1" style=" width:100%;height: 400px;float:right;  display: list-item;z-index:0;">  
    <div class="ssk-box">
      <div class="ssk-content">
        <div class="ssk-content-l">
          <ul>
              <li class="active" ><i class="icon-bus"></i><span>����Ʊ</span></li>
            <li ></li>
            <li ></li>
            <li ></li>
              <li ></li>
          </ul>
        </div>
        <div class="ssk-content-r">
          <div class="ssk-content-r-box active" id="book_train">
            <div class="ssk-hd">
              <ul>
                <li class="active" id="zzss" onClick="ss(0)">վվ����</li>
                <li class="" id="czss" onClick="ss(1)">��վ����</li>
                <li class="" id="ccss" onClick="ss(2)">��������</li>
              </ul>
            </div>
            <div class="ssk-bd">
              <div class="item-box active" id="zzss_1">
                <form method="get" action="/search_hc_zhanzhan/" target="_blank">
                  <div class="ssk-fix">
                    <div class="ssk-search-left">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='TextBox1'  runat="server" CssClass="text111"></asp:TextBox> 
                            <span>��</span> <i class="icon-calendar"></i> </div>
                        <span class="lb">����</span> </div>
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='TextBox2'  runat="server" CssClass="text111"></asp:TextBox> 
                            <span>��</span> <i class="icon-calendar"></i> </div>
                      </div>
                      <div class="ssk-change jp-changge">��</div>
                    </div>
                    <div class="ssk-search-right">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                           <asp:TextBox ID='TextBox3'  runat="server" CssClass="text111"></asp:TextBox> 
                            <!--  <span>��</span> --> 
                          <i class="icon-calendar"></i> </div>
                        <span class="lb">����</span> </div>
                      <div class="ssk-submit-box">
                         <asp:Button ID="Button2" runat="server" OnClick="Click1" Text="����" CssClass="ssk-submit btn" />
                                	
                      </div>
                    </div>
                  </div>
                </form>
                <div class="ssk-label-box f13 pl30 mt10"> <span class="pl5"></span>��ܰ��ʾ�����տɹ���2017��<font class="orange">12</font>��<font class="orange">31</font>�ջ�Ʊ! </div>
              </div>
              <div class="item-box" id="czss_1">
                  <div class="ssk-fix">
                    <div class="ssk-search-left">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='chufazhan1'  runat="server" CssClass="text111"></asp:TextBox> 
                           <i class="icon-calendar"></i> </div>
                        <span class="lb">��վ</span> </div>
                    </div>
                    <div class="ssk-search-right">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='chufashijian1'  runat="server" CssClass="text111"></asp:TextBox> 
                           <i class="icon-calendar"></i> </div>
                        <span class="lb">����</span> </div>
                      <div class="ssk-submit-box">
                        <asp:Button ID="Button3" runat="server" OnClick="Click2" Text="����" CssClass="ssk-submit btn" />
                          
                      </div>
                    </div>
                  </div>
                
                <div class="ssk-label-box mt15"> ���� <span class="orange">2569</span> ��վ�㣬<span class="orange">8460</span> ���г����� </div>
              </div>
              <div class="item-box" id="ccss_1">
                  <div class="ssk-fix">
                    <div class="ssk-search-left">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='TextBox4'  runat="server" CssClass="text111"></asp:TextBox> 
                           <i class="icon-calendar"></i> </div>
                        <span class="lb">����</span> </div>
                    </div>
                    <div class="ssk-search-right">
                      <div class="ssk-input-bd">
                        <div class="ssk-input-box">
                          <asp:TextBox ID='chufashijian2'  runat="server" CssClass="text111"></asp:TextBox> 
                           <i class="icon-calendar"></i> </div>
                        <span class="lb">����</span> </div>
                      <div class="ssk-submit-box">
                       <asp:Button ID="Button4" runat="server" OnClick="Click3" Text="����" CssClass="ssk-submit btn" />
                          
                      </div>
                    </div>
                  </div>
                
                <div class="ssk-label-box mt15"> ���� <span class="orange">2569</span> ��վ�㣬<span class="orange">8460</span> ���г����� </div>
              </div>
            </div>
          </div>
          
          
          
          <div class="f">
            <ul>
              <li> ����վ��Ʊ100%������ϵ </li>
              <li> �̼���֤ </li>
              <li> ���װ�ȫ </li>
              <li> �������� </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
             
                   <script type="text/javascript">
                       var arr = new Array();
                       arr[0] = "zzss_1";
                       arr[1] = "czss_1";
                       arr[2] = "ccss_1";
                       var arrClass = new Array();
                       arrClass[0] = "zzss";
                       arrClass[1] = "czss";
                       arrClass[2] = "ccss";
                       function ss(elementId) {
                           for (var i = 0; i < arr.length; i++) {
                               if (elementId == i) {
                                   document.getElementById(arr[i]).style.display = "block";
                                   document.getElementById(arrClass[i]).className = "active";
                               }
                               else {
                                   document.getElementById(arr[i]).style.display = "none";
                                   document.getElementById(arrClass[i]).className = "";
                               }
                           }
                       }

</script>
<script>
    var ar = new Array();
    ar[0] = "gjhc_1";
    ar[1] = "gjlx_1";
    ar[2] = "gjzd_1";
    var arClass = new Array();
    arClass[0] = "gjhc";
    arClass[1] = "gjlx";
    arClass[2] = "gjzd";
    function sss(elementId) {
        for (var i = 0; i < ar.length; i++) {
            if (elementId == i) {
                document.getElementById(ar[i]).style.display = "block";
                document.getElementById(arClass[i]).className = "active";
            }
            else {
                document.getElementById(ar[i]).style.display = "none";
                document.getElementById(arClass[i]).className = "";
            }
        }
    }
</script>
        </td>
	</tr>
           
	<tr>		 
            <td><table id="Table12" width="1200"  height="785" border="0" cellpadding="0" cellspacing="0" style="width: 1200px; margin-right: auto;margin-left: auto;">
              
              <tr>
                <td height="785" valign="top">
                    <table id="Table13" width="1200" height="100%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="1200" height="42" ><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                       
                        <td width="100%"><div class="common-title">
        <h3> <span>��Ʊ��Ϣ</span> </h3></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="100%" valign="top"><table id="Table14" width="1200" height="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        
                        <td width="1200" height="183" valign="top" class=newsline>
                        
                              
                              
                              
                              
                              <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
            <tbody>
               
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px;font-size:16px;font-weight:700;">
                        &nbsp; ���κţ�<asp:DropDownList ID='checihao' runat='server' CssClass="cx"></asp:DropDownList> 
                        &nbsp;����ʱ�䣺<asp:TextBox ID=chufashijian runat="server" CssClass="cx"></asp:TextBox> 
                        &nbsp;����վ��<asp:TextBox ID=chufazhan runat="server" CssClass="cx"></asp:TextBox> 
                        &nbsp;����ʱ�䣺<asp:TextBox ID=daodashijian runat="server" CssClass="cx"></asp:TextBox> 
                        <br />
                        <br />
                        &nbsp;�յ�վ��<asp:TextBox ID=zhongdianzhan runat="server" CssClass="cx"></asp:TextBox> 
                        &nbsp;�г����ͣ�<asp:DropDownList ID='liecheleixing' runat='server' CssClass="cx"></asp:DropDownList> 
                        &nbsp;��λ���ͣ�<asp:DropDownList ID='zuoweileixing' runat='server' CssClass="cx"></asp:DropDownList> 
                        &nbsp;״̬��<asp:DropDownList ID='zhuangtai' runat='server' CssClass="cx"></asp:DropDownList>
						&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="����" CssClass="sure" />
                        <br />
                        <br /><asp:DataGrid ID="DataGrid1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderWidth=0
                            BorderColor="Black" CellPadding="2" font-name="verdana" Font-Names="verdana"
                            Font-Size="8pt" PageSize="8" Width="100%" OnPageIndexChanged="DataGrid1_PageIndexChanged" AllowPaging="True" class="newsline">
                            <HeaderStyle BackColor="#F8FAFC" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle Font-Bold="True" Font-Names="����" ForeColor="Blue" HorizontalAlign="Right"
                NextPageText="��һҳ" PrevPageText="��һҳ" />
                            <EditItemStyle BackColor="#E9F0F8" CssClass="input_text" Font-Bold="False" Font-Italic="False"
                                Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False"
                                HorizontalAlign="Left" VerticalAlign="Middle" Wrap="False" />
                            <Columns>
                                <asp:TemplateColumn HeaderText="���" HeaderStyle-CssClass="blue">
                                    <HeaderStyle Width="50px" />
                                    <ItemTemplate>
                                    <%#Container.ItemIndex+1 %>
                                </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:BoundColumn DataField='checihao' HeaderText='���κ�'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='chufashijian' HeaderText='����ʱ��'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='chufazhan' HeaderText='����վ'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='daodashijian' HeaderText='����ʱ��'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='zhongdianzhan' HeaderText='�յ�վ'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                                  <asp:BoundColumn DataField='zuoweihao' HeaderText='��λ��'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='liecheleixing' HeaderText='��������'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='zuoweileixing' HeaderText='��Ʊ����'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='piaojia' HeaderText='Ʊ��'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                <asp:BoundColumn DataField='zhuangtai' HeaderText='״̬'  HeaderStyle-CssClass="blue"></asp:BoundColumn>                                                                
                                
                                
								<asp:TemplateColumn HeaderText="��ϸ"  HeaderStyle-CssClass="blue"><ItemTemplate><a href='chepiaoxinxidetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "id") %>'>��ϸ</a></ItemTemplate><HeaderStyle Width="50px" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" /><ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" /> <FooterStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" /></asp:TemplateColumn>
                            </Columns>
                            <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                                Font-Underline="False" HorizontalAlign="Center"  Height="50"  />
                        </asp:DataGrid></td>
                </tr>
                <tr class="tr1">
                    <td bgcolor="#f1f8f5" style="padding-left: 5px; height: 25px;color:#fff;" class="blue">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       <a href="#" onclick="javascript:window.print();">��ӡ��ҳ</a></td>
                </tr>
            </tbody>
        </table>
                              
                              
                              
                              
                              </td>
                        
                      </tr>
                    </table></td>
                  </tr>
                  
                </table></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
	</tr>
</table>
<!-- dfexnxxiaxng -->
    </div></form>
</body>
</html>


