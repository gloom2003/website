<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="adminManage.aspx.cs" Inherits="I_News1" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/directory.css"/>
    <style type="text/css">
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
        #Txt{

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
                      </Nodes>
                  </asp:TreeView>
                  </td>
          </tr>
      </table>
	   <h2 id="title">用户数据</h2>
	   <div class="users">
            <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Users" HeaderText="用户名" SortExpression="Users" />
                    <asp:BoundField DataField="Pwds" HeaderText="密码" SortExpression="Pwds" />
                </Columns>
            </asp:GridView>
        </div>
&nbsp;</div>


  <div id="Foot">此处显示  id "Foot" 的内容00000000000000000000000000000</div>
</div>
        
        
      
    </form>
</body>
</html>


