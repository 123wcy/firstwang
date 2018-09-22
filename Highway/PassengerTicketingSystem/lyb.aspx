<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lyb.aspx.cs" Inherits="lyb" %>

<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc3" %>

<%@ Register Src="qtdown1.ascx" TagName="qtdown" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>留言板</title>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <LINK href="qtimages/style.css" type=text/css rel=stylesheet>
    <style>
        .z3 {
	border-radius: 4px;
	font-size: 10px;
	border: 1px solid #D2D2D2;
	width: 200px;
	padding:  5px;
	
}
        #ly tr td {
        padding:8px 0px;
        }
    </style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
    <div>
       <table width="978"  border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td>
            <table id="Table2" style="width: 978px; margin-right: auto;margin-left: auto;" border="0" cellpadding="0" cellspacing="0">
              <tr>
                        <td width="95%" class="STYLE2"><strong>&nbsp;</strong></td>
                      </tr>
                    </table>
            </td>
        </tr>

            <tr>
                    <td height="100%" valign="top">
          
                                    <table id="ly" width="380" style="float:right;border:1px solid #d5d4d4;">              

           <tr>
               <td>姓名：</td>
               <td> <asp:TextBox ID="username" runat="server" CssClass="z3"></asp:TextBox>&nbsp;</td>
                                    
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                            ErrorMessage="*必填"></asp:RequiredFieldValidator></td>
           </tr>
             <tr>
               <td>性别：</td>
               <td> <asp:RadioButton ID="Radboy" runat="server" Checked="True" GroupName="sex" 
                                            Text="男" />&nbsp;
                   <asp:RadioButton ID="Radgril" runat="server" GroupName="sex"  
                                            Text="女" />
               </td>
               <td> &nbsp;</td>
           </tr>
            
          
             <tr>
               <td>个人网站：</td>
               <td> <asp:TextBox ID="homepage" runat="server" CssClass="z3"></asp:TextBox>&nbsp;</td>
                                    
               <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="homepage"
                                            ErrorMessage="格式不对" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator>&nbsp;</td>
                                
           </tr>
            
             <tr>
               <td>留言：<asp:Label ID="Label1" runat="server"></asp:Label></td>
               <td><asp:TextBox ID="lybody" runat="server" CssClass="z3"  Height="100" TextMode='MultiLine'
                                            ></asp:TextBox></td>
               <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lybody"
                                                        ErrorMessage="内容不能为空"></asp:RequiredFieldValidator></td>
           </tr>
           
             <tr>
                                    <td></td>
                                    <td><asp:Button ID="addly" runat="server" OnClick="addly_Click" CssClass="sure" Text="添加留言" Width="77px" /></td>
                                    <td><asp:CheckBox ID="ishde" runat="server" Text="悄悄话" Visible="false" /></td>
                                </tr>
           </table>
                   
                    
                            <table  width="800"  border="0" cellpadding="0" cellspacing="0" style="float:left;border:1px solid #d5d4d4;">                                              
                 
                
            
                <table border="0" cellpadding="0" cellspacing="0" style="float:left;border:1px solid #d5d4d4;font-family: Times New Roman; width:800px;">
                    <!--DWLayoutTable-->
                    <tr>
                        <td align="center" height="18" style="width: 705px" valign="middle">
                            留 言 列 表 &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                <div align="center">
                            <asp:Repeater ID="rpt1" runat="server">
                                <ItemTemplate>
                                    <table bgcolor="#009900" border="0" cellpadding="0" cellspacing="1" class="tb" width="100%">
                                        <!--DWLayoutTable-->
                                        <tr>
                                            <td bgcolor="#FFFFFF" rowspan="3" valign="top" width="11">
                                                <!--DWLayoutEmptyCell-->
                                                &nbsp;
                                            </td>
                                            <td align="center" bgcolor="#FFFFFF" rowspan="2" valign="middle" width="85">
                                                <%#"<img width='70'height='70' src=img/" + Eval("Face") + ".jpg border=0>"%>
                                            </td>
                                            <td align="left" bgcolor="#FFFFFF" height="20" valign="middle" width="528">
                                                &nbsp; &nbsp; 留言于:<%#Eval("adddate")%>
                                            </td>
                                            <td align="center" bgcolor="#FFFFFF" valign="middle" width="136">
                                                &nbsp; 回复
                                            </td>
                                            <td bgcolor="#FFFFFF" rowspan="3" style="width: 10px" valign="top" width="12">
                                                <!--DWLayoutEmptyCell-->
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" bgcolor="#FFFFFF" height="78" valign="top">
                                                &nbsp;&nbsp;<%# showbody(Convert.ToBoolean(Eval("IsHidden")),Eval("body").ToString())%>
                                                <%# showrely((bool)Eval("isrely"),Eval("rebody").ToString()) %>
                                            </td>
                                            <td align="left" bgcolor="#FFFFFF" height="78" valign="top">
                                                <%#Eval("rebody")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" bgcolor="#FFFFFF" style="height: 25px" valign="middle">
                                                姓名:<%#Eval("username")%></td>
                                            <td align="left" bgcolor="#FFFFFF" colspan="2" style="height: 25px" valign="middle">
                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                主页:<%#Eval("homepage")%></td>
                                        </tr>
                                    </table>
                                    <br>
                                </ItemTemplate>
                            </asp:Repeater>
                            <table id="Table1" border="0" cellpadding="1" cellspacing="1" style="font-family: Times New Roman"
                                width="100%">
                                <tr>
                                    <td align="center" style="width: 775px; height: 18px">
                                        共 <font face="宋体"><b>
                                            <asp:Label ID="lbTotalPage" runat="server">1</asp:Label></b></font> 页 &nbsp;
                                        | &nbsp;
                                        <asp:HyperLink ID="hlkFirstPage" runat="server">首页</asp:HyperLink>
                                        &nbsp; | &nbsp;
                                        <asp:HyperLink ID="hlkPrevPage" runat="server">上一页</asp:HyperLink>
                                        &nbsp; | &nbsp;
                                        <asp:HyperLink ID="hlkNextPage" runat="server">下一页</asp:HyperLink>
                                        &nbsp; | &nbsp;
                                        <asp:HyperLink ID="hlkLastPage" runat="server">末页</asp:HyperLink>
                                        &nbsp; | &nbsp; 第 <font face="宋体"><b>
                                            <asp:Label ID="lbCurrentPage" runat="server">1</asp:Label></b></font> 页
                                    </td>
                                </tr>
                            </table>
                        </div>
                        </td>
                    </tr>
                    </table>
                    
                </table>
            
        </td>
    </tr>
</table>
                
    
<tr>
		<td>
            <uc2:qtdown ID="Qtdown1" runat="server" />
        </td>
	</tr>
    </div></form>
</body>
</html>

