using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class I_News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //发布信息
    protected void Button1_Click(object sender, EventArgs e)
    {
        string t1 = TextBox1.Text;
        string b1 = DropDownList1.SelectedValue.ToString();
        string m1 = TextBox2.Text;
        string c1 = TextBox3.Text;

        MainClass ms = new MainClass();

        if (ms.AddNews(t1, b1, m1, c1))
        {
            Label1.Text = "信息发布成功！";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        else
        {
            Label1.Text = "信息发布失败！";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}