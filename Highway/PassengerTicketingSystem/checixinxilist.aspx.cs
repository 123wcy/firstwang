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

public partial class checixinxilist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		//xxuyxaodxenglxu
        if (!IsPostBack)
        {
			//zdxlz
			//yxl2fz
			//yxlfz
			//addlixandxongxlz
            string sql;
            sql = "select * from checixinxi  where chufashijian>getdate() order by id desc";
            getdata(sql);

            string time = string.Empty;
            string num1 = string.Empty;
            string num2 = string.Empty;
            string num = string.Empty;
            string num3 = string.Empty;
            if (Request.QueryString["chufazhan"] != null || Request.QueryString["checihao"] != null)
            {

                num = Request.QueryString["checihao"] ;
                time = Request.QueryString["chufashijian" ];
                num1 = Request.QueryString["chufazhan"];
                num2 = Request.QueryString["zhongdianzhan"];
                
            }
            checihao.Text = num;
            chufashijian.Text = time;
            chufazhan.Text = num1;
            zhongdianzhan.Text = num2;
            sql = "select * from checixinxi where 1=1";
            if (checihao.Text.ToString().Trim() != "所有") { sql = sql + " and checihao like '%" + checihao.Text.ToString().Trim() + "%'"; }
            if (chufashijian.Text.ToString().Trim() != "") { sql = sql + " and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'"; }
            if (chufazhan.Text.ToString().Trim() != "") { sql = sql + " and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'"; }
            if (zhongdianzhan.Text.ToString().Trim() != "") { sql = sql + " and zhongdianzhan like '%" + zhongdianzhan.Text.ToString().Trim() + "%'"; }

            

            sql = sql + " order by id desc";

            getdata(sql);
        }
    }


    protected void Click3(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx?checihao=" + TextBox4.Text.ToString().Trim() + "&chufashijian=" + chufashijian2.Text.ToString().Trim() +"");
    }

   

    protected void Click1(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx?chufazhan=" + TextBox1.Text.ToString().Trim() + "&chufashijian=" + TextBox3.Text.ToString().Trim() + "&zhongdianzhan=" + TextBox2.Text.ToString().Trim());
    }
	//hsgadxdliaxndoxng
	
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
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count+"条";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from checixinxi where 1=1";
        if (checihao.Text.ToString().Trim()!="" ){ sql=sql+" and checihao like '%" + checihao.Text.ToString().Trim() + "%'";}                if (chufazhan.Text.ToString().Trim()!="" ){ sql=sql+" and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'";}

        if (chufashijian.Text.ToString().Trim() != "") { sql = sql + " and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'"; }        
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from checixinxi where chufashijian>getdate() order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
	public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;
        
    } 
     protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilisttp.aspx");
    }
	
	//addxldt
	
	//wxxlchange
}

