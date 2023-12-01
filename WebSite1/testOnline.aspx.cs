using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["us"] != null)
        {
            Label3.Text = "欢迎" + Session["us"].ToString() + "用户进行在线考试！";
            Label4.Text = "现在时间为：" + DateTime.Now.ToString();
        }
        else {

                Session["isLogin"] = "false";
                Response.Redirect("Login.aspx");
            
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string userAnswer1 = "";
        string userAnswer2 = "";
        // 获取用户单选题选择的答案
        if (rblOptions1.SelectedItem != null)
        {
            userAnswer1 = rblOptions1.SelectedItem.Value;
        }
        if (RadioButtonList1.SelectedItem != null)
        {
            userAnswer2 = RadioButtonList1.SelectedItem.Value;
        }

        int score = 0;

        if (userAnswer1 == "D")
        {
            // 用户选择的答案正确
            // 在此处添加相关的处理逻辑，例如显示答对的消息或跳转到下一题
            score += 20;
        }
        if (userAnswer2 == "B")
        {
            score += 20;
        }
        // 获取用户多选题选择的答案
        List<string> userAnswers3 = new List<string>();
        foreach (ListItem item in cbOptions1.Items)
        {
            if (item.Selected)
            {
                userAnswers3.Add(item.Value);
            }
        }

        // 定义正确答案列表
        List<string> correctAnswers = new List<string> { "A", "C", "D" };

        // 比较用户答案和正确答案
        bool isCorrect = userAnswers3.SequenceEqual(correctAnswers);

        // 根据判断结果做出相应操作
        if (isCorrect)
        {
            score += 30;
        }

        // 获取用户多选题选择的答案
        List<string> userAnswers4 = new List<string>();
        foreach (ListItem item in CheckBoxList1.Items)
        {
            if (item.Selected)
            {
                userAnswers4.Add(item.Value);
            }
        }

        // 定义正确答案列表
        List<string> correctAnswers4 = new List<string> { "A", "D" };

        // 比较用户答案和正确答案
        bool isCorrect4 = userAnswers4.SequenceEqual(correctAnswers4);

        // 根据判断结果做出相应操作
        if (isCorrect4)
        {
            score += 30;
        }
        lblResult.Text = "提交成功，你的分数为：" + score;

    }
}