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

public partial class yonghuzhuce_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			//addlixandxongxlz
		    xingbie.Items.Add("男"); xingbie.Items.Add("女");			//zdxlz
			//yxl2fz
			//yxlfz 
            string sql;
            sql = "select * from yonghuzhuce where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                yonghuming.Text = result.Tables[0].Rows[0]["yonghuming"].ToString().Trim();                mima.Text = result.Tables[0].Rows[0]["mima"].ToString().Trim();                xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim();                xingbie.Text = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();                jiguan.Text = result.Tables[0].Rows[0]["jiguan"].ToString().Trim();                shouji.Text = result.Tables[0].Rows[0]["shouji"].ToString().Trim();                shenfenzheng.Text = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();                //zhaopian.Text = result.Tables[0].Rows[0]["zhaopian"].ToString().Trim();                beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        //ldxlqz
        sql = "update yonghuzhuce set yonghuming='" + yonghuming.Text.ToString().Trim() + "',mima='" + mima.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',xingbie='" + xingbie.Text.ToString().Trim() + "',jiguan='" + jiguan.Text.ToString().Trim() + "',shouji='" + shouji.Text.ToString().Trim() + "',shenfenzheng='" + shenfenzheng.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');window.location='yonghuzhuce_list.aspx';</script>");
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

