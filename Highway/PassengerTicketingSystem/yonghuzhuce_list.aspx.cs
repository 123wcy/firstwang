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

public partial class yonghuzhuce_list : System.Web.UI.Page
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
            sql = "select * from yonghuzhuce order by id desc";
            getdata(sql);
        }
    }
	
	//hsgadxdliaxndoxng
	
	private void addxiala(string ntable, string nzd)
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
                    //xsbwghtresxds.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
					
                }
            }
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
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count+"条";
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
        sql = "select * from yonghuzhuce where 1=1";
        if (yonghuming.Text.ToString().Trim()!="" ){ sql=sql+" and yonghuming like '%" + yonghuming.Text.ToString().Trim() + "%'";}                if (xingming.Text.ToString().Trim()!="" ){ sql=sql+" and xingming like '%" + xingming.Text.ToString().Trim() + "%'";}                                if (shenfenzheng.Text.ToString().Trim()!="" ){ sql=sql+" and shenfenzheng like '%" + shenfenzheng.Text.ToString().Trim() + "%'";}                        
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from yonghuzhuce order by id desc";
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
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
     protected void Button2_Click(object sender, EventArgs e)
    { 
         
        string sql;
        sql = "select * from yonghuzhuce order by id desc";
      
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);

        new Class1().ToExcel(DataGrid1, "yonghuzhuce");
       
       
    }
	
	//addxldt
	
	//wxxlchange
}

