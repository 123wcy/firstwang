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
            liecheleixing.Items.Add("����"); liecheleixing.Items.Add("�������"); liecheleixing.Items.Add("��ͨ�ͳ�");
            zuoweileixing.Items.Add("����"); zuoweileixing.Items.Add("��׼Ʊ"); zuoweileixing.Items.Add("ѧ��Ʊ"); zuoweileixing.Items.Add("��ͯƱ"); 			zhuangtai.Items.Add("����");zhuangtai.Items.Add("����"); zhuangtai.Items.Add("����"); 			//zdxlz
			checihao.Items.Add("����");			//yxl2fz
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
            if (checihao.Text.ToString().Trim() != "����") { sql = sql + " and checihao like '%" + checihao.Text.ToString().Trim() + "%'"; }
            if (chufashijian.Text.ToString().Trim() != "") { sql = sql + " and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'"; }
            if (chufazhan.Text.ToString().Trim() != "") { sql = sql + " and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'"; }
            if (daodashijian.Text.ToString().Trim() != "") { sql = sql + " and daodashijian like '%" + daodashijian.Text.ToString().Trim() + "%'"; }
            if (zhongdianzhan.Text.ToString().Trim() != "") { sql = sql + " and zhongdianzhan like '%" + zhongdianzhan.Text.ToString().Trim() + "%'"; }

            if (liecheleixing.Text.ToString().Trim() != "����") { sql = sql + " and liecheleixing like '%" + liecheleixing.Text.ToString().Trim() + "%'"; }
            if (zuoweileixing.Text.ToString().Trim() != "����") { sql = sql + " and zuoweileixing like '%" + zuoweileixing.Text.ToString().Trim() + "%'"; }

            if (zhuangtai.Text.ToString().Trim() != "����") { sql = sql + " and zhuangtai like '%" + zhuangtai.Text.ToString().Trim() + "%'"; }


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
                Label1.Text = "���������й�" + result.Tables[0].Rows.Count+"��";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "�����κ�����";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from chepiaoxinxi where 1=1";
        if (checihao.Text.ToString().Trim()!="����" ){ sql=sql+" and checihao like '%" + checihao.Text.ToString().Trim() + "%'";}        if (chufashijian.Text.ToString().Trim()!="" ){ sql=sql+" and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'";}        if (chufazhan.Text.ToString().Trim()!="" ){ sql=sql+" and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'";}        if (daodashijian.Text.ToString().Trim()!="" ){ sql=sql+" and daodashijian like '%" + daodashijian.Text.ToString().Trim() + "%'";}        if (zhongdianzhan.Text.ToString().Trim()!="" ){ sql=sql+" and zhongdianzhan like '%" + zhongdianzhan.Text.ToString().Trim() + "%'";}                if (liecheleixing.Text.ToString().Trim()!="����" ){ sql=sql+" and liecheleixing like '%" + liecheleixing.Text.ToString().Trim() + "%'";}        if (zuoweileixing.Text.ToString().Trim()!="����" ){ sql=sql+" and zuoweileixing like '%" + zuoweileixing.Text.ToString().Trim() + "%'";}                if (zhuangtai.Text.ToString().Trim()!="����" ){ sql=sql+" and zhuangtai like '%" + zhuangtai.Text.ToString().Trim() + "%'";}                
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

