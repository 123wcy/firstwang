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
public partial class goupiaojiluadd : System.Web.UI.Page
{
    public int time;
    public int time1;
    public int time2;
    protected void Page_Load(object sender, EventArgs e)
    {


        string sql11 = "select chufashijian  from chepiaoxinxi where id=" + Request.QueryString["id"].ToString().Trim();
        DataSet result11 = new DataSet();
        result11 = new Class1().hsggetdata(sql11);
        Session["chufashijian"] = Convert.ToDateTime(result11.Tables[0].Rows[0]["chufashijian"].ToString().Trim());

        string sql1 = "select SysBuyTime,SysBuyTimelate,SystuipiaoTime  from System ";
        DataSet result1 = new DataSet();
        result1 = new Class1().hsggetdata(sql1);
        Session["SysBuyTime"] = Convert.ToInt32(result1.Tables[0].Rows[0]["SysBuyTime"].ToString().Trim());
        Session["SysBuyTimelate"] = Convert.ToInt32(result1.Tables[0].Rows[0]["SysBuyTimelate"].ToString().Trim());
        Session["SystuipiaoTime"] = Convert.ToInt32(result1.Tables[0].Rows[0]["SystuipiaoTime"].ToString().Trim());
        time = Convert.ToInt32(Session["SysBuyTime"]);
        time1 = Convert.ToInt32(Session["SysBuyTimelate"]);
        time2 = Convert.ToInt32(Session["SystuipiaoTime"]);
		if (Session["username"] == null)
         {
             Response.Write("<script>javascript:alert('对不起，请您先登陆！');location.href='Alogin.aspx'</script>");
           Response.End();
         }
         if (Request["zhuangtai"].ToString().Trim() == "已售")
         {
             Response.Write("<script>javascript:alert('对不起，此车票已售出，请购票其他座位的待购的车票！');location.href='chepiaoxinxilist.aspx'</script>");
             Response.End();
         }
         if ((DateTime.Now.Hour < time) | (DateTime.Now.Hour>time1))
         {
             Response.Write("<script>javascript:alert('对不起，当前时间不能买票！');history.back();</script>");
             Response.End();
         }

         DateTime dt1 = Convert.ToDateTime(Session["chufashijian"]);
         DateTime dt2 = DateTime.Now;
         DateTime newdt = dt2.AddMinutes(time2);
       
         if (newdt > dt1)
         {


             Response.Write("<script>javascript:alert('车次即将到达，当前时间不能买票！');history.back();</script>");
             Response.End();

         }

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
		//sfdigdh ischongfu("zhujianquchong");
		//ldxlqz
		//shuziyanzheng
		//bixjiaxodaxxiaotxisxhi
		//qiuji
        int result;
        
        string sql1 = "select * from checixinxi where checihao='" + checihao.Text.ToString().Trim() + "' ";
        DataSet result1 = new DataSet();
        result1 = new Class1().hsggetdata(sql1);

        //sql = "select * from checixinxi where checihao='" + checihao.Text.ToString().Trim() + "' ";
       
        //result2 = new Class1().hsgexucute(sql);
        Session["yupiao"] = result1.Tables[0].Rows[0]["yupiao"].ToString().Trim();//获取各公司分配机票数量num

        int i = Convert.ToInt32(Session["yupiao"]);
        if (i>0)
        {
            sql = "insert into goupiaojilu(checihao,chufashijian,chufazhan,daodashijian,zhongdianzhan,zuoweihao,liecheleixing,zuoweileixing,zhuangtai,piaojia,goupiaoren,xingming,shenfenzheng,beizhu,username) values('" + checihao.Text.ToString().Trim() + "','" + chufashijian.Text.ToString().Trim() + "','" + chufazhan.Text.ToString().Trim() + "','" + daodashijian.Text.ToString().Trim() + "','" + zhongdianzhan.Text.ToString().Trim() + "','" + zuoweihao.Text.ToString().Trim() + "','" + liecheleixing.Text.ToString().Trim() + "','" + zuoweileixing.Text.ToString().Trim() + "','" + zhuangtai.Text.ToString().Trim() + "','" + piaojia.Text.ToString().Trim() + "','" + goupiaoren.Text.ToString().Trim() + "','" + xingming.Text.ToString().Trim() + "','" + shenfenzheng.Text.ToString().Trim() + "','" + beizhu.Text.ToString().Trim() + "','" + username.Text.ToString().Trim() + "') ";
            
            result = new Class1().hsgexucute(sql);
            sql = "update checixinxi set yupiao=yupiao-1 where checihao='" + checihao.Text.ToString().Trim() + "' ";
            result = new Class1().hsgexucute(sql);
            sql = "update chepiaoxinxi set zhuangtai='已售' where checihao='" + checihao.Text.ToString().Trim() + "' and zuoweihao='" + zuoweihao.Text.ToString().Trim() + "'";
            result = new Class1().hsgexucute(sql);
            sql = "update goupiaojilu set zhuangtai='已售' where checihao='" + checihao.Text.ToString().Trim() + "' and zuoweihao='" + zuoweihao.Text.ToString().Trim() + "'";
            result = new Class1().hsgexucute(sql);
            if (result == 1)
            {

                Response.Write("<script>javascript:alert('添加成功');location.href='chepiaoxinxilist.aspx';</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
            }

        }
        else
{
           Response.Write("<script>javascript:alert('余票不足');</script>");
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
                    Response.Write("<script>javascript:alert('提示,qxuchoxngtxishxi已存在,不要重复添加');location.href='goupiaojiluadd.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	//xl2change
	
	//wxxlchange
}

