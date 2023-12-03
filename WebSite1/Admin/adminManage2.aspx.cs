using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_S_User : System.Web.UI.Page
{
    // 数据库连接字符串
    string connectionString = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }

    private void BindGrid()
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            string query = "SELECT Users, Pwds FROM Admins";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                adapter.Fill(dataSet);

                GridViewUsers.DataSource = dataSet.Tables[0];
                GridViewUsers.DataBind();
            }
        }
    }

    protected void GridViewUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // 获取要删除的行的索引
        int rowIndex = e.RowIndex;

        // 通过行索引获取GridView中的行
        GridViewRow row = GridViewUsers.Rows[rowIndex];

        // 通过FindControl方法找到Label控件
        Label labelUsername = (Label)row.FindControl("LabelUsername");

        // 获取Label中的用户名
        string usernameToDelete = labelUsername.Text;

        // 在这里处理删除逻辑
        DeleteUser(usernameToDelete);

        // 重新绑定 GridView
        BindGrid();
    }

    private void DeleteUser(string username)
    {
        // 在这里实现删除用户的逻辑，可以执行相应的数据库操作
        string query = "DELETE FROM Users WHERE Username = '" + username + "'";
        // 执行数据库操作...
        Response.Write("delete...");
    }

    public static void AddUser(string newUsername, string newPassword)
    {
        // 在这里实现新增用户的逻辑，可以执行相应的数据库操作
        // 例如：向 "Users" 表中插入新用户的记录
        // 请根据实际情况修改以下示例代码

        string query = "INSERT INTO Admins (Username, Password) VALUES (@Username, @Password)";

        using (SqlConnection connection = new SqlConnection("server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456"))
        {
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@Username", newUsername);
                command.Parameters.AddWithValue("@Password", newPassword);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }

}