using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string user = TextBox1.Text;
            string pwd = TextBox2.Text;
            string qrPwd = TextBox3.Text;
            if ("".Equals(user) || user == null)
            {
                Label2.Text = "用户名不能为空！";
                return;
            }
            if ("".Equals(pwd) || pwd == null)
            {
                Label2.Text = "密码不能为空！";
                return;
            }
            if (!pwd.Equals(qrPwd))
            {
                Label2.Text = "输入的两次密码不一致！";
                return;
            }
            string txt = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";
            SqlConnection con = new SqlConnection(txt);
            con.Open();//打开连接

            string sql = "insert into Admins(Users,Pwds) values('" + user + "','" + pwd + "')";
            SqlCommand cmd = new SqlCommand(sql, con);
            int num = cmd.ExecuteNonQuery();

            if (num == 1)
            {
                Label1.Text = "注册成功！";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                Label2.Text = "";
            }
            else
            {
                Label1.Text = "注册失败！";
                Label2.Text = "";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
            Label2.Text = "";
        }

    }
    //判断输入的账号是否已经存在
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string user = TextBox1.Text;
        string txt = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";
        SqlConnection con = new SqlConnection(txt);
        con.Open();//打开连接
        string sql = "select * from Admins where Users='" + user + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.HasRows)
        {
            Label2.Text = "账号已存在，请选择其他的账号！";
        }
        else
        {
            Label2.Text = "账号可以使用，请继续输入密码！";
        }
    }
}