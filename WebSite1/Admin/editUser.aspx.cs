using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_E_User : System.Web.UI.Page
{
    // 数据库连接字符串
    string connectionString = "server=LAPTOP-NBI9B710;database=abc2023;uid=sa;pwd=123456";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!"true".Equals(Session["isAdmin"]))
        {
            Session["isLogin"] = "true";
            Session["isAdmin"] = "false";
            Response.Redirect("../Login.aspx");
        }
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

    protected void GridViewUsers_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewUsers.EditIndex = e.NewEditIndex;
        BindGrid();
    }

    protected void GridViewUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = GridViewUsers.Rows[e.RowIndex];
        string username = ((TextBox)row.FindControl("TextBoxUsername")).Text;
        string password = ((TextBox)row.FindControl("TextBoxPassword")).Text;

        // 更新数据
        UpdateUser(username, password);

        GridViewUsers.EditIndex = -1;
        BindGrid();
    }

    protected void GridViewUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewUsers.EditIndex = -1;
        BindGrid();
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

        if (confirmDeleteOperation())
        {
            // 确认删除，执行删除逻辑
            DeleteUser(usernameToDelete);

            // 重新绑定 GridView
            BindGrid();
        }
    }

    private bool confirmDeleteOperation()
    {
        // 返回 true 表示确认删除，返回 false 表示取消删除
        return true; 
    }

    private void DeleteUser(string username)
    {
        string query = "DELETE FROM Admins WHERE Users = '" + username + "'";
        SqlConnection connection = new SqlConnection(connectionString);
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
        }
    }


    private void UpdateUser(string username, string password)
    {
        // 在这里实现更新用户的逻辑，可以执行相应的数据库操作
        string query = "UPDATE Admins SET Pwds = '"+ password + "'WHERE Users = '" + username + "'";
        SqlConnection connection = new SqlConnection(connectionString);
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
        }
    }


}