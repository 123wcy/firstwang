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

            username.Items.Add("请选择");
            //yxl2fz
            addxiala("allusers", "username");
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
                    username.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
					
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
                //string sql1 = "select sum(piaojia) as zhe  from goupiaojilu";
               // DataSet result1 = new DataSet();
                //result1 = new Class1().hsggetdata(sql1);
               //DataGrid1.DataSource = result1.Tables[0];
               //DataGrid1.DataBind();
                int i = 0;
                decimal sum = 0;
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    decimal a = Convert.ToDecimal(result.Tables[0].Rows[i]["piaojia"]);
                    //string b = result.Tables[0].Rows[i]["piaojia"].ToString().Trim();
                    //int a = int.Parse(result.Tables[0].Rows[i]["piaojia"].ToString().Trim());
                    sum += a;                   
                }
                Label2.Text = "收入一共" + sum + "元";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
                Label2.Text = "无收入";
            }
        }
    }

   


    protected void Button1_Click1(object sender, EventArgs e)
    {

        string sql;
        sql = "select * from goupiaojilu  where datediff(day,addtime,getdate())<1";
        sql = sql + " order by id desc";
        getdata(sql);
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Checkidmonth1();
        Checkidmonth2();
        
    }

    private void Checkidmonth1()
    {
        int month1 = this.DropDownList1.SelectedIndex + 1;
        string sql;
        sql = "select * from goupiaojilu where month(addtime)='" + month1 + "'";
        //sql = "select * from goupiaojilu where datediff(month,addtime,month1)=0";
        sql = sql + " order by id desc";
        getdata(sql);
    }

    private void Checkidmonth2()
    {
        string sql;
        if (DropDownList2.SelectedItem.Text == "第一季度")
        {
            sql = "select  *  from goupiaojilu   where  addtime  between '2018-01-01' and '2018-03-31'";
            sql = sql + " order by id desc";
            getdata(sql);


        }
        else if (DropDownList2.SelectedItem.Text == "第二季度")
        {
            sql = "select *  from  goupiaojilu     where addtime    between '2018-04-01 'and '2018-06-30'";
            sql = sql + " order by id desc";
            getdata(sql);
        }
        else if (DropDownList2.SelectedItem.Text == "第三季度")
        {
            sql = "select Stime from goupiaojilu    where  addtime   between '2018-07-01' and '2018-09-30'";
            sql = sql + " order by id desc";
            getdata(sql);
        }
        else if (DropDownList2.SelectedItem.Text == "第四季度")
        {
            sql = "select * from goupiaojilu     where  addtime   between '2018-10-01' and '2018-12-31'";
            sql = sql + " order by id desc";
            getdata(sql);
        }
        
        


    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from goupiaojilu order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }



    protected void checihao_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql;
        sql = "select username from allusers where username='" + username.Text.ToString().Trim() + "'";
        
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                username.Text = result.Tables[0].Rows[0]["username"].ToString().Trim();
                

            }
        }
        string sql2 = "select * from goupiaojilu  where username='" + username.Text.ToString().Trim() + "'";
        getdata(sql2);
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

