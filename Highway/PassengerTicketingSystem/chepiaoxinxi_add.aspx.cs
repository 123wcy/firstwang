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

public partial class chepiaoxinxi_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
            username.Text = Session["username"].ToString().Trim();
			//addlixandxongxlz
			liecheleixing.Items.Add("�������"); liecheleixing.Items.Add("��ͨ�ͳ�"); 			zuoweileixing.Items.Add("��׼Ʊ"); zuoweileixing.Items.Add("ѧ��Ʊ"); zuoweileixing.Items.Add("��ͯƱ"); 			zhuangtai.Items.Add("����"); zhuangtai.Items.Add("����"); 			//zdxlz
			//zxidoxngbixanhxao
            
			checihao.Items.Add("��ѡ��");			//yxl2fz
			addxiala1("checixinxi","checihao");			//yxlfz 
			
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
        ischongfu("select id from chepiaoxinxi where checihao='" + checihao.Text.ToString().Trim() + "' and zuoweihao='" + zuoweihao.Text.ToString().Trim() + "' ");
		//ldxlqz

        sql = "insert into chepiaoxinxi(checihao,chufashijian,chufazhan,daodashijian,zhongdianzhan,zuoweihao,liecheleixing,zuoweileixing,piaojia,zhuangtai,beizhu,username) values('" + checihao.Text.ToString().Trim() + "','" + chufashijian.Text.ToString().Trim() + "','" + chufazhan.Text.ToString().Trim() + "','" + daodashijian.Text.ToString().Trim() + "','" + zhongdianzhan.Text.ToString().Trim() + "','" + zuoweihao.Text.ToString().Trim() + "','" + liecheleixing.Text.ToString().Trim() + "','" + zuoweileixing.Text.ToString().Trim() + "','" + piaojia.Text.ToString().Trim() + "','" + zhuangtai.Text.ToString().Trim() + "','" + beizhu.Text.ToString().Trim() + "','" + username.Text.ToString().Trim() + "') ";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('��ӳɹ�');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('ϵͳ�����������ݿ���������');</script>");
        }
    }
	
	private void addxiala1(string ntable, string nzd)
    {
        string sql;
        sql = "select "+nzd+" from "+ntable+" order by id desc";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
           {
                int i = 0;
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    checihao.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                }
            }
        }
    }	//addxldt

	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('��ʾ,�Բ��𣬴˳��Σ��˳��ᣬ����λ�ĳ�Ʊ�Ѵ���,��Ҫ�ظ����');location.href='chepiaoxinxi_add.aspx';</script>");
                    Response.End();
                }
            }
    }
	
	//hsgadxdliaxndoxng
	
	protected void checihao_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql;
        sql = "select chufashijian,chufazhan,daodashijian,zhongdianzhan from checixinxi where checihao='"+checihao.Text.ToString().Trim()+"'";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                chufashijian.Text = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();                chufazhan.Text = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();                daodashijian.Text = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();                zhongdianzhan.Text = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();                
            }
        }
    }	//xl2change
	
	//wxxlchange
}

