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

public partial class yonghuzhuce_detail : System.Web.UI.Page
{
	public string nyonghuming,nmima,nxingming,nxingbie,njiguan,nshouji,nshenfenzheng,nbeizhu,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            string sql;
            sql = "select * from yonghuzhuce where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nyonghuming = result.Tables[0].Rows[0]["yonghuming"].ToString().Trim();nmima = result.Tables[0].Rows[0]["mima"].ToString().Trim();nxingming = result.Tables[0].Rows[0]["xingming"].ToString().Trim();nxingbie = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();njiguan = result.Tables[0].Rows[0]["jiguan"].ToString().Trim();nshouji = result.Tables[0].Rows[0]["shouji"].ToString().Trim();nshenfenzheng = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();nbeizhu = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    
}

