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

public partial class tuipiaojilu_detail : System.Web.UI.Page
{
    public string nchecihao, nchufashijian, nchufazhan, ndaodashijian, nzhongdianzhan,nchexianghao, nzuoweihao, npiaojia, ntuipiaoren, nxingming, nshenfenzheng, ntuipiaoyuanyin, nid, nbuytime, naddtime, nusername;
    protected void Page_Load(object sender, EventArgs e)
    {
   		nid = Request.QueryString["id"].ToString().Trim();
        if (!IsPostBack)
        {
            string sql;
            sql = "select * from tuipiaojilu where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nchecihao = result.Tables[0].Rows[0]["checihao"].ToString().Trim();
                nchufashijian = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();
                nchufazhan = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();
                ndaodashijian = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();
                nzhongdianzhan = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();
          
                nzuoweihao = result.Tables[0].Rows[0]["zuoweihao"].ToString().Trim();
                npiaojia = result.Tables[0].Rows[0]["piaojia"].ToString().Trim();
                ntuipiaoren = result.Tables[0].Rows[0]["tuipiaoren"].ToString().Trim();
                nxingming = result.Tables[0].Rows[0]["xingming"].ToString().Trim();
                nshenfenzheng = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();
                ntuipiaoyuanyin = result.Tables[0].Rows[0]["tuipiaoyuanyin"].ToString().Trim();
                nbuytime = result.Tables[0].Rows[0]["buytime"].ToString().Trim();
                naddtime = result.Tables[0].Rows[0]["addtime"].ToString().Trim();
                nusername = result.Tables[0].Rows[0]["username"].ToString().Trim();
            }
        }
    }
    
}

