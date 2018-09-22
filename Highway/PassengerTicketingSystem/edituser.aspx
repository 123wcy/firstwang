<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edituser.aspx.cs" Inherits="edituser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="qj.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" style="width: 100%">
            <tr><td class="title">新增管理员</td></tr>
            <tr>
                <td align="left" style="height: 20px">&nbsp;
                   <table align="center"cellpadding="4" cellspacing="0" id="table">
                                           
                        <tr>
                            <td nowrap="nowrap" class="addtitle">
                                <font face="宋体">用户名:</font>
                            </td>
                            <td width="50%">
                                <asp:TextBox ID="username" runat="server" Width="139px"  CssClass="text1"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorusername" runat="server" ControlToValidate="username"
                        ErrorMessage="字母、数字、下划线组成，字母开头，6-10位" ValidationExpression="^[a-zA-Z]\w{5,9}$" ValidationGroup="q"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                    ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr style="color: #000000; font-family: 宋体">
                            <td height="25" nowrap="nowrap"  class="addtitle">
                                <font face="宋体"><span style="font-family: Times New Roman">密码：</span></font></td>
                            <td height="25" style="font-family: Times New Roman" width="50%">
                                <asp:TextBox ID="pwd1" runat="server" TextMode="Password" CssClass="text1"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorpwd1" runat="server" ControlToValidate="pwd1" ErrorMessage="最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符" ValidationExpression="^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$" ValidationGroup="q"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd1"
                                    ErrorMessage="请输入密码" ValidationGroup="q"></asp:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr style="color: #000000; font-family: Times New Roman">
                            <td nowrap="nowrap"  class="addtitle">
                                <font face="宋体">确认密码:</font></td>
                            <td style="height: 25px" width="50%">
                                <asp:TextBox ID="pwd2" runat="server" TextMode="Password"  CssClass="text1">0</asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pwd2"
                                    ErrorMessage="请输入确认密码" ValidationGroup="q"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd1"
                                    ControlToValidate="pwd2" ErrorMessage="两个密码不一至" ValidationGroup="q"></asp:CompareValidator><font face="宋体"></font>
                                
                            </td>
                        </tr>
                        <tr style="font-family: Times New Roman">
                            <td height="25" nowrap="nowrap" class="addtitle">
                                权限<span style="font-family: 宋体">:</span></td>
                            <td height="25" width="50%">
                                <asp:DropDownList ID="cx" runat="server"  CssClass="text1">
                                </asp:DropDownList></td>
                        </tr>

                        <tr style="font-family: Times New Roman">
                            <td height="25" nowrap="nowrap" class="addtitle">
                                <div align="right">
                                    <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="确定" CssClass="sure" ValidationGroup="q"/><font
                                    face="宋体">&nbsp;</font>
                            </td>
                            <td height="25" width="50%">
                                &nbsp;
                               
                                <asp:Button ID="Button2" runat="server" Text="重填" CssClass="sure" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div align="center">
                                </div>
                            </td>
                        </tr>
                        <tr bgcolor="#4296e7">
                            <td colspan="2">
                                &nbsp;</td>
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
