using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class I_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Session["isLogin"] = "false";
            Response.Redirect("Login.aspx");
        }
    }
    //发布信息
    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;
        string downList = DropDownList1.SelectedValue.ToString();
        string time = TextBox2.Text;
        string content = TextBox3.Text;
        if ("".Equals(title) || title == null)
        {
            Label1.Text = "标题不能为空!";
            return;
        }
        else if ("".Equals(time) || time == null)
        {
            Label1.Text = "发布时间不能为空!";
            return;
        }
        else if ("".Equals(content) || content == null)
        {
            Label1.Text = "正文不能为空!";
            return;
        }

        string txt = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";
        SqlConnection con = new SqlConnection(txt);
        con.Open();//打开连接

        string sql = "insert into News(T1,B1,M1,C1) values('" + title + "','" + downList + "','" + time + "','" + content + "')";
        SqlCommand cmd = new SqlCommand(sql, con);
        int num = cmd.ExecuteNonQuery();

        if (num == 1)
        {
            Label1.Text = "发布成功！";
            TextBox1.Text = "";

            TextBox3.Text = "";
            TextBox2.Text = "";
        }
        else
        {
            Label1.Text = "发布失败！";
            TextBox1.Text = "";

            TextBox3.Text = "";
            TextBox2.Text = "";
        }
    }
}