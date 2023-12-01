using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ("false".Equals(Session["isLogin"])) {
            Label1.Text = "没有登录，不能访问其他页面！";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = TextBox1.Text;
        string pwd = TextBox2.Text;
        if ("".Equals(user) || user == null) {
            Label1.Text = "用户名不能为空";
            return;
        }
        if ("".Equals(pwd) || pwd == null)
        {
            Label1.Text = "密码不能为空";
            return;
        }
        string txt = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";
        SqlConnection con = new SqlConnection(txt);
        con.Open();//打开连接
        string sql = "select * from Admins where Users='" + user + "' and Pwds='" + pwd + "'";
        SqlCommand cmd = new SqlCommand(sql, con);//执行查询语句
        SqlDataReader sdr = cmd.ExecuteReader();//返回查询结果，并存储到Reader对象
        if (sdr.HasRows)
        {
            Session["us"] = user;// 向session中存储用户信息
            Session["pd"] = pwd;
            Session["isLogin"] = "true";
            Response.Redirect("AddNews.aspx");
        }
        else
        {
            Label1.Text = "用户名或密码错误！";
        }
    }
}