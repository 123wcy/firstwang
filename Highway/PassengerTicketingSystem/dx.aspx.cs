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

public partial class dx : System.Web.UI.Page
{
    public string lb, lbtxt, sql;
    protected void Page_Load(object sender, EventArgs e)
    {
       


        if (!IsPostBack)
        {
            lyr.Text = Session["username"].ToString().Trim();
           


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sql = "insert into lyb(username,content) values('" + lyr.Text.ToString().Trim() + "','" + Request.Form["content"] + "')";

        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('编辑成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
