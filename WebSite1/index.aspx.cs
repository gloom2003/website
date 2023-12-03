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
        if (Session["OnlineUsers"] != null) {
            int onlineUserCount = ((List<string>)Session["OnlineUsers"]).Count;

            Label1.Text = "当前登录人数：" + onlineUserCount + "人";
        }
        else
        {
            Label1.Text = "当前登录人数：0人";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
            if (Session["user"] != null)
            {
                UserLogout((string)Session["user"]);
                Response.Redirect("index.aspx");
            }
            else
            {
                Label2.Text = "还没有登录！";
            }
        
        
    }


    // 在用户注销时将其从在线用户列表中移除
    protected void UserLogout(string username)
    {
        List<string> onlineUsers;

        if (Session["OnlineUsers"] != null)
        {
            onlineUsers = (List<string>)Session["OnlineUsers"];

            // 移除用户
            onlineUsers.Remove(username);

            // 更新Session中的在线用户列表
            Session["OnlineUsers"] = onlineUsers;
        }
        else
        {
            Label2.Text = "还没有登录！";
        }
    }
}