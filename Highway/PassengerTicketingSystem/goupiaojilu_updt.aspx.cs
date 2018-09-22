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

public partial class goupiaojilu_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			//addlixandxongxlz
		    //zdxlz
			//yxl2fz
			//yxlfz 
            string sql;
            sql = "select * from goupiaojilu where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                checihao.Text = result.Tables[0].Rows[0]["checihao"].ToString().Trim();                chufashijian.Text = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();                chufazhan.Text = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();                daodashijian.Text = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();                zhongdianzhan.Text = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();                               zuoweihao.Text = result.Tables[0].Rows[0]["zuoweihao"].ToString().Trim();                liecheleixing.Text = result.Tables[0].Rows[0]["liecheleixing"].ToString().Trim();                zuoweileixing.Text = result.Tables[0].Rows[0]["zuoweileixing"].ToString().Trim();                zhuangtai.Text = result.Tables[0].Rows[0]["zhuangtai"].ToString().Trim();                piaojia.Text = result.Tables[0].Rows[0]["piaojia"].ToString().Trim();                goupiaoren.Text = result.Tables[0].Rows[0]["goupiaoren"].ToString().Trim();                xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim();                shenfenzheng.Text = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();                beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        //ldxlqz
        sql = "update goupiaojilu set checihao='" + checihao.Text.ToString().Trim() + "',chufashijian='" + chufashijian.Text.ToString().Trim() + "',chufazhan='" + chufazhan.Text.ToString().Trim() + "',daodashijian='" + daodashijian.Text.ToString().Trim() + "',zhongdianzhan='" + zhongdianzhan.Text.ToString().Trim() + "',zuoweihao='" + zuoweihao.Text.ToString().Trim() + "',liecheleixing='" + liecheleixing.Text.ToString().Trim() + "',zuoweileixing='" + zuoweileixing.Text.ToString().Trim() + "',zhuangtai='" + zhuangtai.Text.ToString().Trim() + "',piaojia='" + piaojia.Text.ToString().Trim() + "',goupiaoren='" + goupiaoren.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',shenfenzheng='" + shenfenzheng.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
   
   //addxldt
   
   //xl2change
   
   //wxxlchange
}

