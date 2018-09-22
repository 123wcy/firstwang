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

public partial class qttop : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }


    protected void tc(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
    protected void grzx(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }


    protected void qcpx(object sender, EventArgs e)
    {
        Response.Redirect("chepiaoxinxilist.aspx");
    }
    protected void ccxxlb(object sender, EventArgs e)
    {
        Response.Redirect("checixinxilist.aspx");
    }
   
    protected void zxx(object sender, EventArgs e)
    {
        Response.Redirect("news.aspx?lb=旅游资讯");
    }

    protected void dl(object sender, EventArgs e)
    {
        Response.Redirect("Alogin.aspx");
    }
    protected void zc(object sender, EventArgs e)
    {
        Response.Redirect("rigst.aspx");
    }
    protected void lyb(object sender, EventArgs e)
    {
        Response.Redirect("lybb.aspx");
    }
}
