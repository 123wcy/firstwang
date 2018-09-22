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

public partial class zhifu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql;
            string id = Request.QueryString["id"].ToString().Trim();
            string biao = Request.QueryString["biao"].ToString().Trim();
            sql = "update "+biao+" set iszf='是' where id="+id;
            int result;
            result = new Class1().hsgexucute(sql);
            if (result == 1)
            {
                Response.Write("<script>javascript:alert('操作成功');location.href='sy.aspx';</script>");
            }
            else
            {
                Response.Write("<script>javascript:alert('系统错误，请检查数据库设置问题');</script>");
            }
        }
    }
}
