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

public partial class tuipiaojilu_add : System.Web.UI.Page
{
    public int time;
    public int time1;
    public int time2;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "select SysBuyTime,SysBuyTimelate,SystuipiaoTime  from System  ";
        DataSet result1 = new DataSet();
        result1 = new Class1().hsggetdata(sql1);
        Session["SysBuyTime"] = Convert.ToInt32(result1.Tables[0].Rows[0]["SysBuyTime"].ToString().Trim());
        Session["SysBuyTimelate"] = Convert.ToInt32(result1.Tables[0].Rows[0]["SysBuyTimelate"].ToString().Trim());
        Session["SystuipiaoTime"] = Convert.ToInt32(result1.Tables[0].Rows[0]["SystuipiaoTime"].ToString().Trim());
        time = Convert.ToInt32(Session["SystuipiaoTime"]);
        time1 = Convert.ToInt32(Session["SysBuyTime"]);
        time2 = Convert.ToInt32(Session["SysBuyTimelate"]);


        string sql11 = "select chufashijian  from goupiaojilu where id=" + Request.QueryString["id"].ToString().Trim();
        DataSet result11 = new DataSet();
        result11 = new Class1().hsggetdata(sql11);
        Session["chufashijian"] = Convert.ToDateTime(result11.Tables[0].Rows[0]["chufashijian"].ToString().Trim());
        
        DateTime dt1 = Convert.ToDateTime(Session["chufashijian"]);
        DateTime dt2 = DateTime.Now;
        DateTime newdt = dt2.AddMinutes(time);
        TimeSpan ts = dt2.Subtract(dt1);


        if ((DateTime.Now.Hour < time1) | (DateTime.Now.Hour > time2))
        {
            Response.Write("<script>javascript:alert('对不起，当前时间不能退票！');history.back();</script>");
            Response.End();
        }
        
        if(newdt>dt1)
        {
           
           
                Response.Write("<script>javascript:alert('车次即将到达，当前时间不能退票！');history.back();</script>");
                Response.End();
           
        }
		if (!IsPostBack)
        {
			//addlixandxongxlz
			//zdxlz
			//zxidoxngbixanhxao
            tuipiaoren.Text = Session["username"].ToString().Trim();
			//yxl2fz
			//yxlfz 
			
			  string sql = "select * from goupiaojilu where id=" + Request.QueryString["id"].ToString().Trim();
			//ghdhdnuuk2s  string sql = "select * from goupiaojilu where tuipiaoren='" + Session["username"].ToString().Trim()+"'";
              DataSet result = new DataSet();
              result = new Class1().hsggetdata(sql);
              if (result != null)
              {
                if (result.Tables[0].Rows.Count > 0)
                 {
                    checihao.Text = result.Tables[0].Rows[0]["checihao"].ToString().Trim();                    checihao.ReadOnly = true;                    chufashijian.Text = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();                    chufashijian.ReadOnly = true;                    chufazhan.Text = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();                    chufazhan.ReadOnly = true;                    daodashijian.Text = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();                    daodashijian.ReadOnly = true;                    zhongdianzhan.Text = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();                    zhongdianzhan.ReadOnly = true;
                    username.Text = result.Tables[0].Rows[0]["username"].ToString().Trim();
                    username.ReadOnly = true;                    zuoweihao.Text = result.Tables[0].Rows[0]["zuoweihao"].ToString().Trim();                    zuoweihao.ReadOnly = true;                    piaojia.Text = result.Tables[0].Rows[0]["piaojia"].ToString().Trim();                    piaojia.ReadOnly = true;
                    saletime.Text = result.Tables[0].Rows[0]["addtime"].ToString().Trim();
                    saletime.ReadOnly = true;                    

                 }
              }
              string sql2 = "select * from yonghuzhuce where yonghuming='" + Session["username"].ToString().Trim() + "'";
              DataSet result2 = new DataSet();
              result2 = new Class1().hsggetdata(sql2);
              if (result2 != null)
              {
                  if (result2.Tables[0].Rows.Count > 0)
                  {
                      xingming.Text = result2.Tables[0].Rows[0]["xingming"].ToString().Trim();
                      xingming.ReadOnly = true;
                      shenfenzheng.Text = result2.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();
                      shenfenzheng.ReadOnly = true;


                  }
              }
              

             
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
		
        string sql;
        sql = "insert into tuipiaojilu(checihao,chufashijian,chufazhan,daodashijian,zhongdianzhan,zuoweihao,piaojia,tuipiaoren,xingming,shenfenzheng,tuipiaoyuanyin,buytime,username) values('" + checihao.Text.ToString().Trim() + "','" + chufashijian.Text.ToString().Trim() + "','" + chufazhan.Text.ToString().Trim() + "','" + daodashijian.Text.ToString().Trim() + "','" + zhongdianzhan.Text.ToString().Trim() + "','" + zuoweihao.Text.ToString().Trim() + "','" + piaojia.Text.ToString().Trim() + "','" + tuipiaoren.Text.ToString().Trim() + "','" + xingming.Text.ToString().Trim() + "','" + shenfenzheng.Text.ToString().Trim() + "','" + tuipiaoyuanyin.Text.ToString().Trim() + "','" + saletime.Text.ToString().Trim() + "','" + username.Text.ToString().Trim() + "') ";
        int result;
        result = new Class1().hsgexucute(sql);
        sql = "update checixinxi set yupiao=yupiao+1 where checihao='" + checihao.Text.ToString().Trim() + "' ";
        result = new Class1().hsgexucute(sql);
        sql = "update chepiaoxinxi set zhuangtai='待购' where checihao='" + checihao.Text.ToString().Trim() + "' and zuoweihao='" + zuoweihao.Text.ToString().Trim() + "'";
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('添加成功');</script>");
            string sql3;
            sql3 = "delete from goupiaojilu where id=" + Request.QueryString["id"].ToString().Trim();
            new Class1().hsgexucute(sql3);

        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
        }
    }	
	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('提示,qxuchoxngtxishxi已存在,不要重复添加');location.href='tuipiaojilu_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

