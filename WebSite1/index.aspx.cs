using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jgsz_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Application["online"] != null) {
            int onlineUserCount = Int32.Parse(Application["online"].ToString());

            Label1.Text = "当前在线人数：" + onlineUserCount + "人";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
            if (Session["user"] != null)
            {
                // 清除session
                Session.Abandon();
                Label2.Text = "注销成功，现在是未登录状态！";
            }
            else
            {
                Label2.Text = "你还没有登录！";
            }
        
        
    }



}