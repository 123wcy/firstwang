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

public partial class chepiaoxinxi_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
			//addlixandxongxlz
            liecheleixing.Items.Add("����"); liecheleixing.Items.Add("�������"); liecheleixing.Items.Add("��ͨ�ͳ�");
            zuoweileixing.Items.Add("����"); zuoweileixing.Items.Add("��׼Ʊ"); zuoweileixing.Items.Add("ѧ��Ʊ"); zuoweileixing.Items.Add("��ͯƱ");			zhuangtai.Items.Add("����"); zhuangtai.Items.Add("����"); 			//zdxlz
			checihao.Items.Add("��ѡ��");			//yxl2fz
			addxiala1("checixinxi","checihao");			//yxlfz 
            string sql;
            sql = "select * from chepiaoxinxi where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                checihao.Text = result.Tables[0].Rows[0]["checihao"].ToString().Trim();                chufashijian.Text = result.Tables[0].Rows[0]["chufashijian"].ToString().Trim();                chufazhan.Text = result.Tables[0].Rows[0]["chufazhan"].ToString().Trim();                daodashijian.Text = result.Tables[0].Rows[0]["daodashijian"].ToString().Trim();                zhongdianzhan.Text = result.Tables[0].Rows[0]["zhongdianzhan"].ToString().Trim();                zuoweihao.Text = result.Tables[0].Rows[0]["zuoweihao"].ToString().Trim();                liecheleixing.Text = result.Tables[0].Rows[0]["liecheleixing"].ToString().Trim();                zuoweileixing.Text = result.Tables[0].Rows[0]["zuoweileixing"].ToString().Trim();                piaojia.Text = result.Tables[0].Rows[0]["piaojia"].ToString().Trim();                zhuangtai.Text = result.Tables[0].Rows[0]["zhuangtai"].ToString().Trim();                beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();                
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        //ldxlqz
        sql = "update chepiaoxinxi set checihao='" + checihao.Text.ToString().Trim() + "',chufashijian='" + chufashijian.Text.ToString().Trim() + "',chufazhan='" + chufazhan.Text.ToString().Trim() + "',daodashijian='" + daodashijian.Text.ToString().Trim() + "',zhongdianzhan='" + zhongdianzhan.Text.ToString().Trim() +  "',zuoweihao='" + zuoweihao.Text.ToString().Trim() + "',liecheleixing='" + liecheleixing.Text.ToString().Trim() + "',zuoweileixing='" + zuoweileixing.Text.ToString().Trim() + "',piaojia='" + piaojia.Text.ToString().Trim() + "',zhuangtai='" + zhuangtai.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('�޸ĳɹ�');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('ϵͳ����');</script>");
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

