using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class time : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void buyTicket(object sender, EventArgs e)
    {
        string sql;
        //ldxlqz
        sql = "update System set SysBuyTime='" + TextBox1.Text.ToString().Trim() + "' , SysBuyTimelate='" + TextBox3.Text.ToString().Trim() + "'";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');window.location='time.aspx';</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }

    protected void tuipiaoTime(object sender, EventArgs e)
    {
        string sql;
        //ldxlqz
        sql = "update System set SystuipiaoTime='" + TextBox2.Text.ToString().Trim() + "'";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');window.location='time.aspx';</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
}