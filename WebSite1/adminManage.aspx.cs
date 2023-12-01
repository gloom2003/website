using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class I_News1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!"admin".Equals(Session["isAdmin"]))
        {
            Session["isLogin"] = "true";
            Session["isAdmin"] = "false";
            Response.Redirect("Login.aspx");
        }
    }
}