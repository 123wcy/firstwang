using System;
using System.Collections.Generic;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cx.Items.Add("普通管理员"); cx.Items.Add("超级管理员");
            string sql;
            sql = "select * from allusers where id=" + Request.QueryString["id"].ToString().Trim();
            getdata(sql);
        }
    }

    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                username.Text = result.Tables[0].Rows[0]["username"].ToString().Trim();
                pwd.Text = result.Tables[0].Rows[0]["pwd"].ToString().Trim();                
                cx.Text = result.Tables[0].Rows[0]["cx"].ToString().Trim();


            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql;
        //ldxlqz

        sql = "update allusers set username='" + username.Text.ToString().Trim() + "',pwd='" + pwd.Text.ToString().Trim() + "',cx='" + cx.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');window.location='listuser.aspx';</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }

}