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

public partial class youqinglianjie_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string sql;
            sql = "select * from youqinglianjie order by id desc";
            getdata(sql);
        }
    }

    protected void add(object sender, EventArgs e)
    {
        Response.Redirect("youqinglianjie_add.aspx", true);
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
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count;
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from youqinglianjie where 1=1";
        if (bh.Text.ToString().Trim() != "")
        {
            sql = sql + " and wangzhanmingcheng like '%" + bh.Text.ToString().Trim() + "%'";
        }
        if (mc.Text.ToString().Trim() != "")
        {
            sql = sql + " and wangzhi like '%" + mc.Text.ToString().Trim() + "%'";
        }

        sql = sql + " order by id desc";

        getdata(sql);
    }
}

