using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //用户注册
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = TextBox1.Text;
        string pwd = TextBox2.Text;
        //12>pwd.Length>=6
        try
        {

            MainClass ms = new MainClass();

            if (!ms.IsExit(user))
            {

                if (ms.RegUser(user, pwd))
                {
                    Label1.Text = "用户注册成功";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
                else
                {
                    Label1.Text = "用户注册失败";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
            }
            else
            {
                Label1.Text = "账号已存在，不能注册！";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string user = TextBox1.Text;

        MainClass ms = new MainClass();

        if (ms.IsExit(user))
        {
            Label2.Text = "账号已存在，请选择其他账号！";
        }
        else
        {
            Label2.Text = "账号可以使用！";
        }
    }
}