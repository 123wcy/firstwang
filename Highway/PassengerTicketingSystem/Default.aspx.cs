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

public partial class _Default : System.Web.UI.Page
{
   public string sql, ncontent;
    public string npics, nlinks, ntexts;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            sql = "select top 5 id,title,shouyetupian from allgonggao where shouyetupian<>'' and shouyetupian like '%.jpg' order by id desc";
            getsyt(sql);
            sql = "select top 6 id,title,addtime,leibie from allgonggao where leibie='乘客须知' order by id desc";
            getdata(sql);
            sql = "select top 8 * from youqinglianjie order by id desc";
            getdatayqlj(sql);
            sql = "select top 8 id,title,addtime,leibie from allgonggao  where leibie='购票规则' order by id desc";
            getdata3(sql);
            sql = "select top 8 id,title,addtime,leibie from allgonggao  where leibie='旅游资讯' order by id desc";
            getdata4(sql);
            //sql = "select content from dx where leibie='系统简介'";
            //getdataxtjj(sql);
        }
        string sqllb = "select distinct(leibie) from allgonggao";
        DataSet resultlb = new DataSet();
        resultlb = new Class1().hsggetdata(sqllb);
        if (resultlb != null)
        {
            if (resultlb.Tables[0].Rows.Count > 0)
            {
                int ilb = 0;
                for (ilb = 0; ilb < resultlb.Tables[0].Rows.Count; ilb++)
                {
                    lb.Items.Add(resultlb.Tables[0].Rows[ilb][0].ToString().Trim());
                }
            }
        }
    }
    //private void getdataxtjj(string sql)
    //{
    //    DataSet result = new DataSet();
    //    result = new Class1().hsggetdata(sql);
    //    if (result != null)
    //    {
    //        if (result.Tables[0].Rows.Count > 0)
    //        {
    //            ncontent = result.Tables[0].Rows[0][0].ToString().Trim();
    //        }
    //    }
    //}
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
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
            }
        }
    }
    private void getdata3(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid2.DataSource = result.Tables[0];
                DataGrid2.DataBind();
            }
            else
            {
                DataGrid2.DataSource = null;
                DataGrid2.DataBind();
            }
        }
    }
    private void getdata4(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGrid3.DataSource = result.Tables[0];
                DataGrid3.DataBind();
            }
            else
            {
                DataGrid3.DataSource = null;
                DataGrid3.DataBind();
            }
        }
    }

    private void getdatayqlj(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                DataGridyqlj.DataSource = result.Tables[0];
                DataGridyqlj.DataBind();
            }
            else
            {
                DataGridyqlj.DataSource = null;
                DataGridyqlj.DataBind();
            }
        }
    }

    protected void hh(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=" + lb.Text.ToString().Trim() + "&keyword=" + keyword.Text.ToString().Trim());
    }

   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx?checihao=" + checihao.Text.ToString().Trim() + "");
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
         Response.Redirect("checixinxilist.aspx?chufazhan=" + chufazhan.Text.ToString().Trim() + "&chufashijian=" + chufashijian.Text.ToString().Trim() + "&zhongdianzhan=" + zhongdianzhan.Text.ToString().Trim());
    }
   

    private void getsyt(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                string tt = "";
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    tt = result.Tables[0].Rows[i]["title"].ToString().Trim();
                    tt = tt.Replace("'", "");
                    tt = tt.Replace("%", "");
                    tt = tt.Replace("!", "");
                    tt = tt.Replace(" ", "");
                    tt = tt.Replace("\"", "");
                    tt = tt.Replace("(", "");
                    tt = tt.Replace(")", "");
                    tt = tt.Replace("?", "");
                    npics = npics + result.Tables[0].Rows[i]["shouyetupian"].ToString().Trim() + "|";
                    nlinks = nlinks + "ggdetail.aspx?id=" + result.Tables[0].Rows[i]["id"].ToString().Trim() + "|";
                    ntexts = ntexts + tt + "|";

                }
                npics = npics.Substring(0, npics.Length - 1);
                nlinks = nlinks.Substring(0, nlinks.Length - 1);
                ntexts = ntexts.Substring(0, ntexts.Length - 1);
            }
        }
    }
    public string CutStr(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 22)
        {
            return strTmp.Substring(0, 20) + "... ";
        }
        else
        {
            return strTmp;
        }
    }
    public string CutStr2(object str)
    {
        string strTmp = str.ToString();
        //     截取长度20 
        if (strTmp.Length > 28)
        {
            return strTmp.Substring(0, 26) + "... ";
        }
        else
        {
            return strTmp;
        }
    }

    protected void tc(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
    protected void grzx(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }


    protected void dl(object sender, EventArgs e)
    {
        Response.Redirect("Alogin.aspx");
    }
    protected void zc(object sender, EventArgs e)
    {
        Response.Redirect("Alogin.aspx");
    }
    protected void lyb(object sender, EventArgs e)
    {
        Response.Redirect("Alogin.aspx");
    }

    protected void jz(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void qcp(object sender, EventArgs e)
    {
        Response.Redirect("chepiaoxinxilist.aspx");
    }
    protected void qcskb(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx");
    }
   
    protected void ckxz(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=乘客须知.aspx");
    }
    protected void gpgz(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=购票规则");
    }
    protected void lyzx(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=旅游资讯");
    }
    protected void htgl(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
