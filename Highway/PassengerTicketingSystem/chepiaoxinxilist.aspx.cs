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

public partial class chepiaoxinxilist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		//xxuyxaodxenglxu
        if (!IsPostBack)
        {
            liecheleixing.Items.Add("所有"); liecheleixing.Items.Add("豪华大巴"); liecheleixing.Items.Add("普通客车");
            zuoweileixing.Items.Add("所有"); zuoweileixing.Items.Add("标准票"); zuoweileixing.Items.Add("学生票"); zuoweileixing.Items.Add("儿童票"); 			zhuangtai.Items.Add("所有");zhuangtai.Items.Add("待购"); zhuangtai.Items.Add("已售"); 			//zdxlz
			checihao.Items.Add("所有");			//yxl2fz
			addxiala1("checixinxi","checihao");			//yxlfz
			//addlixandxongxlz
            string sql;
            sql = "select * from chepiaoxinxi  where chufashijian>getdate() order by id desc";
            getdata(sql);
            string time = string.Empty;
            string num1 = string.Empty;
            string num2 = string.Empty;
            string num = string.Empty;
            if (Request.QueryString["chufazhan"] != null)
            {

                num = Request.QueryString["checihao"];
                time = Request.QueryString["chufashijian"];
                num1 = Request.QueryString["chufazhan"];
                num2 = Request.QueryString["zhongdianzhan"];
            }
            checihao.Text = num;
            chufashijian.Text = time;
            chufazhan.Text = num1;
            zhongdianzhan.Text = num2;
            sql = "select * from chepiaoxinxi where 1=1";
            if (checihao.Text.ToString().Trim() != "所有") { sql = sql + " and checihao like '%" + checihao.Text.ToString().Trim() + "%'"; }
            if (chufashijian.Text.ToString().Trim() != "") { sql = sql + " and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'"; }
            if (chufazhan.Text.ToString().Trim() != "") { sql = sql + " and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'"; }
            if (daodashijian.Text.ToString().Trim() != "") { sql = sql + " and daodashijian like '%" + daodashijian.Text.ToString().Trim() + "%'"; }
            if (zhongdianzhan.Text.ToString().Trim() != "") { sql = sql + " and zhongdianzhan like '%" + zhongdianzhan.Text.ToString().Trim() + "%'"; }

            if (liecheleixing.Text.ToString().Trim() != "所有") { sql = sql + " and liecheleixing like '%" + liecheleixing.Text.ToString().Trim() + "%'"; }
            if (zuoweileixing.Text.ToString().Trim() != "所有") { sql = sql + " and zuoweileixing like '%" + zuoweileixing.Text.ToString().Trim() + "%'"; }

            if (zhuangtai.Text.ToString().Trim() != "所有") { sql = sql + " and zhuangtai like '%" + zhuangtai.Text.ToString().Trim() + "%'"; }


            sql = sql + " order by id desc";

            getdata(sql);

        }
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
        sql = "select * from chepiaoxinxi where 1=1";
        if (checihao.Text.ToString().Trim()!="所有" ){ sql=sql+" and checihao like '%" + checihao.Text.ToString().Trim() + "%'";}        if (chufashijian.Text.ToString().Trim()!="" ){ sql=sql+" and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'";}        if (chufazhan.Text.ToString().Trim()!="" ){ sql=sql+" and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'";}        if (daodashijian.Text.ToString().Trim()!="" ){ sql=sql+" and daodashijian like '%" + daodashijian.Text.ToString().Trim() + "%'";}        if (zhongdianzhan.Text.ToString().Trim()!="" ){ sql=sql+" and zhongdianzhan like '%" + zhongdianzhan.Text.ToString().Trim() + "%'";}                if (liecheleixing.Text.ToString().Trim()!="所有" ){ sql=sql+" and liecheleixing like '%" + liecheleixing.Text.ToString().Trim() + "%'";}        if (zuoweileixing.Text.ToString().Trim()!="所有" ){ sql=sql+" and zuoweileixing like '%" + zuoweileixing.Text.ToString().Trim() + "%'";}                if (zhuangtai.Text.ToString().Trim()!="所有" ){ sql=sql+" and zhuangtai like '%" + zhuangtai.Text.ToString().Trim() + "%'";}                
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void Click3(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx?checihao=" + checihao.Text.ToString().Trim() + "");
    }

    protected void Click2(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx?chufazhan1=" + chufazhan1.Text.ToString().Trim() + "&chufashijian1=" + chufashijian1.Text.ToString().Trim());
    }

    protected void Click1(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx?chufazhan=" + chufazhan.Text.ToString().Trim() + "&chufashijian=" + chufashijian.Text.ToString().Trim() + "&zhongdianzhan=" + zhongdianzhan.Text.ToString().Trim());
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from chepiaoxinxi   where chufashijian>getdate()  order by id desc";
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
    
	private void addxiala1(string ntable, string nzd)
    {
        string sql;
        sql = "select "+nzd+" from "+ntable+" order by id desc";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
           {
                int i = 0;
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    checihao.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                }
            }
        }
    }	//addxldt
	
	//wxxlchange
}

