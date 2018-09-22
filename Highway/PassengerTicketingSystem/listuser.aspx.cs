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

public partial class listuser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cx"].ToString().Trim() != "超级管理员")
        {
            Response.Write("<script>javascript:alert('对不起,您没有这个权限');history.back();</script>");
            Response.End();
        }
        if (!IsPostBack)
        {
            
            string sql;
            sql = "select * from allusers order by id desc";
            getdata(sql);
            //new Class1().hsgcaozuojilu(Session["username"].ToString().Trim(), "查询管理员", "allusers");

        }

    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from allusers order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
     //   string sql;
        //sql语句意思为:向表allusers中插入新数据
     //   sql = "insert into allusers(username,pwd,cx) values('" + username.Text.ToString().Trim() + "','" + pwd1.Text.ToString().Trim() + "','" + cx.Text.ToString().Trim() + "')";
     //   new Class1().hsgexucute(sql); //将sql语句执行一次,调用class1.cs中的hsgexecute函数
        // new Class1().hsgcaozuojilu(Session["username"].ToString().Trim(), "添加管理员", "allusers");
     //   Response.Write("<script>javascript:alert('添加成功');</script>"); //执行成功,给出提示
    //; }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("edituser.aspx", true); 
    }


    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count + "条";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
            }
        }
    }

   
}
