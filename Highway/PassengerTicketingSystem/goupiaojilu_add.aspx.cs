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

public partial class goupiaojilu_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			//addlixandxongxlz
			//zdxlz
			//zxidoxngbixanhxao
            goupiaoren.Text = Session["username"].ToString().Trim();
			//yxl2fz
			//yxlfz 
			
			  string sql = "select * from chepiaoxinxi where id=" + Request.QueryString["id"].ToString().Trim();
			//ghdhdnuuk2s  string sql = "select * from chepiaoxinxi where goupiaoren='" + Session["username"].ToString().Trim()+"'";
              DataSet result = new DataSet();
              result = new Class1().hsggetdata(sql);
              if (result != null)
              {
                if (result.Tables[0].Rows.Count > 0)
                 {
                    checihao.Text = result.Tables[0].Rows[0]["checihao"].ToString().Trim();                    checihao.ReadOnly = true;                    chufashijian.Text = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();                    chufashijian.ReadOnly = true;                    chufazhan.Text = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();                    chufazhan.ReadOnly = true;                    daodashijian.Text = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();                    daodashijian.ReadOnly = true;                    zhongdianzhan.Text = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();                    zhongdianzhan.ReadOnly = true;                    
                    username.Text = result.Tables[0].Rows[0]["username"].ToString().Trim();
                    username.ReadOnly = true;                    zuoweihao.Text = result.Tables[0].Rows[0]["zuoweihao"].ToString().Trim();                    zuoweihao.ReadOnly = true;                    liecheleixing.Text = result.Tables[0].Rows[0]["liecheleixing"].ToString().Trim();                    liecheleixing.ReadOnly = true;                    zuoweileixing.Text = result.Tables[0].Rows[0]["zuoweileixing"].ToString().Trim();                    zuoweileixing.ReadOnly = true;                    zhuangtai.Text = result.Tables[0].Rows[0]["zhuangtai"].ToString().Trim();                    zhuangtai.ReadOnly = true;                    piaojia.Text = result.Tables[0].Rows[0]["piaojia"].ToString().Trim();                    piaojia.ReadOnly = true;                    

                 }
              }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
		//shuziyanzheng
        string sql;
		//qiuji
		//bixjiaxodaxxiaotxisxhi
		//sfdigdh ischongfu("zhujianquchong");
		//ldxlqz

        sql = "insert into goupiaojilu(checihao,chufashijian,chufazhan,daodashijian,zhongdianzhan,zuoweihao,liecheleixing,zuoweileixing,zhuangtai,piaojia,goupiaoren,xingming,shenfenzheng,beizhu,username) values('" + checihao.Text.ToString().Trim() + "','" + chufashijian.Text.ToString().Trim() + "','" + chufazhan.Text.ToString().Trim() + "','" + daodashijian.Text.ToString().Trim() + "','" + zhongdianzhan.Text.ToString().Trim() + "','" + zuoweihao.Text.ToString().Trim() + "','" + liecheleixing.Text.ToString().Trim() + "','" + zuoweileixing.Text.ToString().Trim() + "','" + zhuangtai.Text.ToString().Trim() + "','" + piaojia.Text.ToString().Trim() + "','" + goupiaoren.Text.ToString().Trim() + "','" + xingming.Text.ToString().Trim() + "','" + shenfenzheng.Text.ToString().Trim() + "','" + beizhu.Text.ToString().Trim() + "','" + username.Text.ToString().Trim() + "') ";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }
	
	//addxldt

	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('提示,qxuchoxngtxishxi已存在,不要重复添加');location.href='goupiaojilu_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

