using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

public partial class tuipiaojilu_list : System.Web.UI.Page
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
            sql = "select * from tuipiaojilu order by id desc";
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
                //fwgtonssgji
                //fwgtonssgji int i = 0;
                //fwgtonssgji fiewogdh
                //fwgtonssgji for (i = 0; i < result.Tables[0].Rows.Count; i++)
                //fwgtonssgji {
                //fwgtonssgji    gtrhtrhthtr
                //fwgtonssgji }
                //fwgtonssgji grththyjte2
				
                //txixxingjxisuxan int k = 0;
                //txixxingjxisuxan for (k = 0; k < result.Tables[0].Rows.Count; k++)
                //txixxingjxisuxan {
                //txixxingjxisuxan    //txixgihxngjs
                //txixxingjxisuxan }
				
				//youzuiping1;
				//zuxipxingjxisuxan int j = 0;
                //zuxipxingjxisuxan for (j = 0; j < result.Tables[0].Rows.Count; j++)
                //zuxipxingjxisuxan {
                //zuxipxingjxisuxan    yoxuzuxipxinxg2
                //zuxipxingjxisuxan }
				//zuxipxingjxisuxan Label1.Text = Label1.Text + "，youxzuxixpixng3;
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
        sql = "select * from tuipiaojilu where 1=1";
        if (checihao.Text.ToString().Trim()!="" ){ sql=sql+" and checihao like '%" + checihao.Text.ToString().Trim() + "%'";}        if (zuoweihao.Text.ToString().Trim()!="" ){ sql=sql+" and zuoweihao like '%" + zuoweihao.Text.ToString().Trim() + "%'";}              if (tuipiaoren.Text.ToString().Trim()!="" ){ sql=sql+" and tuipiaoren like '%" + tuipiaoren.Text.ToString().Trim() + "%'";}             if (shenfenzheng.Text.ToString().Trim()!="" ){ sql=sql+" and shenfenzheng like '%" + shenfenzheng.Text.ToString().Trim() + "%'";}
        //if (saletime.Text.ToString().Trim() != "") { sql = sql + " and buytime like '%" + saletime.Text.ToString().Trim() + "%'"; }
       // if (addtime.Text.ToString().Trim() != "") { sql = sql + " and addtime like '%" + addtime.Text.ToString().Trim() + "%'"; }
               
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from tuipiaojilu order by id desc";
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
        sql = "select * from tuipiaojilu order by id desc";

        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);

        new Class1().ToExcel(DataGrid1, "tuipiaojilu");
    }
	
	//addxldt
	
	//wxxlchange
}

