<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="adminManage2.aspx.cs" Inherits="Admin_S_User" %>

<!DOCTYPE html>

<html>
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/directory.css"/>
        <style type="text/css">
#Main {
	margin: auto;
	width: 800px;
}
#Logo {
	height: 80px;
	width: 800px;
	margin-top: 10px;
	margin-bottom: 10px;
}
#Nav {
	height: 40px;
	width: 800px;
	margin-bottom: 10px;
}
#Pic {
	height: 200px;
	width: 800px;
	margin-bottom: 10px;
	background-color: #CCC;
}
#Txt {
	width: 800px;
	margin-bottom: 10px;
}
#Foot {
	height: 90px;
	width: 800px;
	background-color: #666;
}
#Main #Nav ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
}
#Main #Nav ul li {
	height: 40px;
	width: 100px;
	float: left;
	font-family: "微软雅黑";
	font-size: 16px;
	line-height: 40px;
	text-align: center;
	background-color: #8C0000;
	color: #FFF;
}
#Main #Nav ul li:hover {
	color: #8C0000;
	background-color: #FFF;
}
#Main #Nav ul li a {
	color: #FFF;
	text-decoration: none;
	display: block;
}
#Main #Nav ul li a:hover {
	color: #8C0000;
}
        .auto-style1 {
            width: 100%;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">
		<asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="Users"
    OnRowDeleting="GridViewUsers_RowDeleting">
    <Columns>

        <asp:TemplateField HeaderText="Username">
            <ItemTemplate>
                <asp:Label ID="LabelUsername" runat="server" Text='<%# Eval("Users") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButtonDelete" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="删除"></asp:LinkButton>
                <asp:LinkButton ID="LinkButtonAdd" runat="server" CausesValidation="False"
                    CommandName="Add" Text="新增" OnClientClick="showAddUserModal();"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
		<div id="addUserModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">新增用户</h4>
            </div>
            <div class="modal-body">
                <label for="txtNewUsername">用户名:</label>
                <input type="text" id="txtNewUsername" class="form-control" />
                <br />
                <label for="txtNewPassword">密码:</label>
                <input type="password" id="txtNewPassword" class="form-control" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="addUser()">确定</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function confirmDelete() {
        return confirm("确认要删除吗？");
    }

    function showAddUserModal() {
        // 显示新增用户的模态框
        $('#addUserModal').modal('show');
    }

    function addUser() {
        // 获取用户名和密码
        var newUsername = $('#txtNewUsername').val();
        var newPassword = $('#txtNewPassword').val();

        // 调用后端方法添加用户
        PageMethods.AddUser(newUsername, newPassword, onSuccess, onError);
    }

    function onSuccess(result) {
        // 关闭模态框
        $('#addUserModal').modal('hide');
        // 重新绑定 GridView
        BindGrid();
    }

    function onError(error) {
        alert('发生错误: ' + error.get_message());
    }
</script>
        
      
    </form>
</body>
</html>

    
