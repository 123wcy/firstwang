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

public partial class hsgpinglun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Session["userip"] != null)
        { }
        else
        {
            Response.Write("<script>javascript:alert('对不起，请您先登陆!');window.close();</script>");
            Response.End();

        }
        if (!IsPostBack)
        {
            pingfen.Items.Add("1");
            pingfen.Items.Add("2");
            pingfen.Items.Add("3");
            pingfen.Items.Add("4");
            pingfen.Items.Add("5");
            xiangpianID.Text = Request.QueryString["id"].ToString().Trim();
            pinglunren.Text = Session["username"].ToString().Trim();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "insert into pinglun(xinwenID,pinglunneirong,pinglunren,pingfen,biao) values('" + xiangpianID.Text.ToString().Trim() + "','" + pinglunneirong.Text.ToString().Trim() + "','" + pinglunren.Text.ToString().Trim() + "'," + pingfen.Text.ToString().Trim() + ",'"+Request.QueryString["biao"].ToString().Trim()+"') ";
        int result;
        result = new Class1().hsgexucute(sql);
        //sql = "update meishixinxi set pingfen=pingfen+" + pingfen.Text.ToString().Trim() + " where ID=" + xiangpianID.Text.ToString().Trim();
        //result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('操作成功！');window.opener.location.reload();window.close();</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
}
