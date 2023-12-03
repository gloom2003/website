<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="editUser.aspx.cs" Inherits="Admin_E_User" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
	display: flex;
    width: 800px;
    height: 400px;
	margin-bottom: 10px;
	justify-content: center;
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
		.users{
			transform:translate(-200px,0px);
		}
		#GridViewUsers th,#GridViewUsers td{
			width:300px;
			height:25px;
			text-align:center;
		}
		#title{
			transform:translate(-250px,0px);
		}
    </style>


</head>
<body>
    <form id="form1" runat="server">
		<div id="Main">
		  <div id="Logo"><img src="../images/logo.png" width="218" height="71" /></div>
		  <div id="Nav">
			<ul>
					  <li><a href="showNews.aspx">新闻展示</a></li>
					  <li><a href="testOnline.aspx">在线答题</a></li>
					  <li><a href="adminManage.aspx">后台管理</a></li>
					  <li><a href="issueNews.aspx">发布新闻</a></li>
					  <li><a href="animation.aspx">观看动画</a></li>
					  <li><a href="index.aspx">返回首页</a></li>
					  <li><a href="#">留下足迹</a></li>
			</ul>
		</div>
  <div id="Pic">
	  <img src="images/logo.png" style="width:800px;height:200px"/>
  </div>

  <div id="Txt"> 
      <table align="left" class="auto-style1">
          <tr>
              <td style="width: 100px; vertical-align: top;">
                  <asp:TreeView ID="TreeView1" runat="server" ShowLines="True">
                      <Nodes>
                          <asp:TreeNode Text="用户管理" Value="用户管理">
                              <asp:TreeNode NavigateUrl="~/adminManage.aspx" Text="查询用户" Value="查询用户"></asp:TreeNode>
                              <asp:TreeNode NavigateUrl="~/Admin/editUser.aspx" Text="编辑用户" Value="编辑用户"></asp:TreeNode>
                          </asp:TreeNode>
                          <asp:TreeNode Text="新闻管理" Value="新闻管理">
                              <asp:TreeNode Text="编辑新闻" Value="编辑新闻"></asp:TreeNode>
                          </asp:TreeNode>
                      </Nodes>
                  </asp:TreeView>
                  </td>
          </tr>
      </table>
	   <div class="users">
            <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False"
				OnRowEditing="GridViewUsers_RowEditing" OnRowUpdating="GridViewUsers_RowUpdating" 
				OnRowCancelingEdit="GridViewUsers_RowCancelingEdit" OnRowDeleting="GridViewUsers_RowDeleting" >
    <Columns>

        <asp:TemplateField HeaderText="用户名">
            <ItemTemplate>
                <asp:Label ID="LabelUsername" runat="server" Text='<%# Eval("Users") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBoxUsername" runat="server" Text='<%# Bind("Users") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="密码">
            <ItemTemplate>
                <asp:Label ID="LabelPassword" runat="server" Text='<%# Eval("Pwds") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBoxPassword" runat="server" Text='<%# Bind("Pwds") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="选项">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButtonEdit" runat="server" CausesValidation="False" 
					CommandName="Edit" Text="编辑"></asp:LinkButton>
                <asp:LinkButton ID="LinkButtonDelete" runat="server" CausesValidation="False" 
					CommandName="Delete" Text="删除" OnClientClick="return confirmDelete();"></asp:LinkButton>
				<asp:LinkButton ID="LinkButtonAdd" runat="server" CausesValidation="False"
                    CommandName="Add" Text="新增"></asp:LinkButton>
			</ItemTemplate>
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButtonUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                <asp:LinkButton ID="LinkButtonCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
            </EditItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
		   <script type="text/javascript">
				function confirmDelete() {
					return confirm("确认要删除吗？");
				}
           </script>

        </div>
&nbsp;</div>


  <div id="Foot">此处显示  id "Foot" 的内容00000000000000000000000000000</div>
</div>
        
        
      
    </form>
</body>
</html>



