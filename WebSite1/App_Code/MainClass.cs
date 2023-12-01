using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// MainClass 的摘要说明
/// </summary>
public class MainClass
{
    public MainClass()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static SqlConnection con;

    public SqlConnection conn()
    {
        string link = System.Configuration.ConfigurationManager.ConnectionStrings["Conn2023"].ConnectionString.ToString();
        con = new SqlConnection(link);
        con.Open();
        return con;
    }


    //用户注册函数
    public bool RegUser(string users, string pwds)
    {
        //string link = System.Configuration.ConfigurationManager.ConnectionStrings["Conn2023"].ConnectionString.ToString();
        //SqlConnection con = new SqlConnection(link);
        //con.Open();
        conn();

        string sql = "insert into Admins(Users,Pwds) values('"+users+"','"+pwds+"')";
        SqlCommand cmd = new SqlCommand(sql,con);
        int num = cmd.ExecuteNonQuery();

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    //判断账号是否存在

    public bool IsExit(string user)
    {
        //string link = System.Configuration.ConfigurationManager.ConnectionStrings["Conn2023"].ConnectionString.ToString();
        //SqlConnection con = new SqlConnection(link);
        //con.Open();

        conn();
        string sql = "select * from Admins where Users='"+user+"'";
        SqlCommand cmd = new SqlCommand(sql,con);
        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }

    }

    //编写发布信息的函数

    public bool AddNews(string t1, string b1,string m1,string c1)
    {

        conn();
        string sql = "insert into News(T1,B1,M1,C1) values(N'" + t1 + "',N'" + b1 + "',N'" + m1 + "',N'" + c1 + "')";
        SqlCommand cmd = new SqlCommand(sql, con);
        int num = cmd.ExecuteNonQuery();

        if (num == 1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}