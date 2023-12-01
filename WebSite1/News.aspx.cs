using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class News : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Request.QueryString["QQ"].ToString();
        string sql = "select * from News where ID='"+id+"'";
        string txt = "server=localhost;database=abc2023;uid=sa;pwd=123456";
        SqlConnection con = new SqlConnection(txt);
        con.Open();//打开连接

        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Label1.Text = sdr[1].ToString();
            Label2.Text ="发布部门："+ sdr[2].ToString();
            Label3.Text ="发布时间："+ sdr[3].ToString();
            Label4.Text = sdr[4].ToString();
        }



    }
}