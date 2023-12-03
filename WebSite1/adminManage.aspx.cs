using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class I_News1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!"true".Equals(Session["isAdmin"]))
        {
            Session["isLogin"] = "true";
            Session["isAdmin"] = "false";
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            // 数据库连接字符串
            string connectionString = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";

            // SQL 查询语句
            string query = "SELECT Users, Pwds FROM Admins";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // 打开数据库连接
                    connection.Open();

                    // 使用 SqlDataAdapter 填充 DataSet
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    adapter.Fill(dataSet);

                    // 将数据绑定到 GridView
                    GridViewUsers.DataSource = dataSet.Tables[0];
                    GridViewUsers.DataBind();
                }
            }
        }
    }
}