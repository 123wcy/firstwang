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

public partial class checixinxidetail : System.Web.UI.Page
{
	public string nchecihao,nchufashijian,nchufazhan,ndaodashijian,nzhongdianzhan,nzongpiaoshu,nyupiao,nliechezhaopian,nbeizhu,nid;
    protected void Page_Load(object sender, EventArgs e)
    {
   		//xxuyxaodxenglxu
		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
			
            string sql;
            sql = "select * from checixinxi where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nchecihao = result.Tables[0].Rows[0]["checihao"].ToString().Trim();                nchufashijian = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();                nchufazhan = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();                ndaodashijian = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();                nzhongdianzhan = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();                nzongpiaoshu = result.Tables[0].Rows[0]["zongpiaoshu"].ToString().Trim();                nyupiao = result.Tables[0].Rows[0]["yupiao"].ToString().Trim();                nliechezhaopian = result.Tables[0].Rows[0]["liechezhaopian"].ToString().Trim();                nbeizhu = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();                
                
            }
        }
    }
    
}

