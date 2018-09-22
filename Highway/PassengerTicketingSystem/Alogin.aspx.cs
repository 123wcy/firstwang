using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
        cx.Items.Add("注册用户");
    }

    protected void zc(object sender, EventArgs e)
    {
        Response.Redirect("rigst.aspx");
    }
         protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text.ToString().Trim() == "" || TextBox1.Text.ToString().Trim() == "" || yzm.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('请输入完整');location.href='Alogin.aspx';</script>");
            Response.End();
        }
        if (Session["code"].ToString().Trim().Equals(yzm.Text.Trim()))
        {

        }
        else
        {
            Response.Write("<script>javascript:alert('验证码有误');location.href='Alogin.aspx';</script>");
            Response.End();
        }
        string sql;
        
        sql = "select * from yonghuzhuce where yonghuming='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "' and issh='是' ";
        
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Session["username"] = TextBox1.Text.ToString().Trim();
                Session["cx"] = cx.Text.ToString().Trim();
                
                Session["userip"] = Page.Request.UserHostAddress;
                Response.Write("<script>javascript:alert('登陆成功!');location.href='default.aspx';</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('登陆失败，用户名或密码错误，或您的帐号未经审核！');location.href='';</script>");
            }
        }
    }
    }



  
