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

public partial class yonghuzhuce_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			//addlixandxongxlz
			xingbie.Items.Add("男"); xingbie.Items.Add("女");			//zdxlz
			//zxidoxngbixanhxao
            
			//yxl2fz
			//yxlfz 
			
			//ghdhdnuuk1s  string sql = "select * from laxizxilxiebxiao where id=" + Request.QueryString["id"].ToString().Trim();
			//ghdhdnuuk2s  string sql = "select * from laxizxilxiebxiao where hsgzhujian='" + Session["username"].ToString().Trim()+"'";
            //ghdhdnuuks  DataSet result = new DataSet();
            //ghdhdnuuks  result = new Class1().hsggetdata(sql);
            //ghdhdnuuks  if (result != null)
            //ghdhdnuuks  {
            //ghdhdnuuks    if (result.Tables[0].Rows.Count > 0)
            //ghdhdnuuks     {
                    //lsiebigsaodguqdufz

            //ghdhdnuuks     }
            //ghdhdnuuks  }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
		//shuziyanzheng
        string sql;
		//qiuji
		//bixjiaxodaxxiaotxisxhi
		 ischongfu("select id from yonghuzhuce where  yonghuming='"+yonghuming.Text.ToString().Trim()+"' or shouji='"+shouji.Text.ToString().Trim()+"' or shenfenzheng='"+shenfenzheng.Text.ToString().Trim()+"'");
		//ldxlqz
		
        sql="insert into yonghuzhuce(yonghuming,mima,xingming,xingbie,jiguan,shouji,shenfenzheng,beizhu) values('"+yonghuming.Text.ToString().Trim()+"','"+mima.Text.ToString().Trim()+"','"+xingming.Text.ToString().Trim()+"','"+xingbie.Text.ToString().Trim()+"','"+jiguan.Text.ToString().Trim()+"','"+shouji.Text.ToString().Trim()+"','"+shenfenzheng.Text.ToString().Trim()+"','"+beizhu.Text.ToString().Trim()+"') ";
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
                    Response.Write("<script>javascript:alert('提示,用户名或手机或身份证已存在,不要重复添加');location.href='yonghuzhuce_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

