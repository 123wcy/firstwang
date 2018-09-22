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

public partial class dx_detail : System.Web.UI.Page
{
    public string lb, ncontent, lbtxt;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbtxt = Request.QueryString["lb"].ToString().Trim();
        
        if (!IsPostBack)
        {
            string sql;
            sql = "select content from dx where leibie='" + lbtxt + "'";
            getdata(sql);
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
                //ntitle = result.Tables[0].Rows[0]["addby"].ToString().Trim();
                ncontent = result.Tables[0].Rows[0][0].ToString().Trim().ToString();
            }
        }
    }
}
