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

public partial class goupiaojilu_list : System.Web.UI.Page
{
	//tixxixngdixngyxi
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {	
			//zdxlz
			//yxl2fz
			//yxlfz 
			//addlixandxongxlz
            string sql;
            sql = "select * from goupiaojilu order by id desc";
           // sql = "select sum(piaojia) as zhe from goupiaojilu order by id desc";
            getdata(sql);
           // string sql1;
           // sql1 = "select sum(piaojia) as zhe from goupiaojilu order by id desc";
            //getdata1(sql1);
           // string sql2 = "select sum(piaojia) from goupiaojilu";
           // DataSet result2 = new DataSet();
           // result2 = new Class1().hsggetdata(sql2);
           // if (result2 != null)
            //{
            //    if (result2.Tables[0].Rows.Count > 0)
              //  {
               //     Label2.Text = result2.Tables[0].Rows[0]["sum"].ToString().Trim();            

               // }
           // }

           
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
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count+"条";
                //string sql1 = "select sum(piaojia) as zhe  from goupiaojilu";
               // DataSet result1 = new DataSet();
                //result1 = new Class1().hsggetdata(sql1);
               //DataGrid1.DataSource = result1.Tables[0];
               //DataGrid1.DataBind();
                
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
               
            }
        }
    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from goupiaojilu where 1=1";
        if (checihao.Text.ToString().Trim()!="" ){ sql=sql+" and checihao like '%" + checihao.Text.ToString().Trim() + "%'";}        if (chufashijian.Text.ToString().Trim()!="" ){ sql=sql+" and chufashijian like '%" + chufashijian.Text.ToString().Trim() + "%'";}        if (chufazhan.Text.ToString().Trim()!="" ){ sql=sql+" and chufazhan like '%" + chufazhan.Text.ToString().Trim() + "%'";}        if (daodashijian.Text.ToString().Trim()!="" ){ sql=sql+" and daodashijian like '%" + daodashijian.Text.ToString().Trim() + "%'";}        if (zhongdianzhan.Text.ToString().Trim()!="" ){ sql=sql+" and zhongdianzhan like '%" + zhongdianzhan.Text.ToString().Trim() + "%'";}
                if (zuoweihao.Text.ToString().Trim()!="" ){ sql=sql+" and zuoweihao like '%" + zuoweihao.Text.ToString().Trim() + "%'";}        if (liecheleixing.Text.ToString().Trim()!="" ){ sql=sql+" and liecheleixing like '%" + liecheleixing.Text.ToString().Trim() + "%'";}        if (zuoweileixing.Text.ToString().Trim()!="" ){ sql=sql+" and zuoweileixing like '%" + zuoweileixing.Text.ToString().Trim() + "%'";}        if (zhuangtai.Text.ToString().Trim()!="" ){ sql=sql+" and zhuangtai like '%" + zhuangtai.Text.ToString().Trim() + "%'";}                if (goupiaoren.Text.ToString().Trim()!="" ){ sql=sql+" and goupiaoren like '%" + goupiaoren.Text.ToString().Trim() + "%'";}        if (xingming.Text.ToString().Trim()!="" ){ sql=sql+" and xingming like '%" + xingming.Text.ToString().Trim() + "%'";}        if (shenfenzheng.Text.ToString().Trim()!="" ){ sql=sql+" and shenfenzheng like '%" + shenfenzheng.Text.ToString().Trim() + "%'";}                
        sql = sql + " order by id desc";

        getdata(sql);
    }

   



    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from goupiaojilu order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }



   

	public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;
        
    } 
     protected void Button2_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from goupiaojilu order by id desc";

        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);

        new Class1().ToExcel(DataGrid1, "goupiaojilu");
    }
	
	//addxldt
	
	//wxxlchange
}

