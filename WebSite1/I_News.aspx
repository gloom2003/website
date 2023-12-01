<%@ Page Language="C#" AutoEventWireup="true" CodeFile="I_News.aspx.cs" Inherits="I_News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Admin/My97DatePicker/WdatePicker.js"></script>

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

    <link rel="stylesheet" href="Admin/kindeditor/themes/default/default.css"/>
    
	<link rel="stylesheet" href="Admin/kindeditor/plugins/code/prettify.css" />
    <script src="Admin/kindeditor/kindeditor-all.js"></script>
	<script charset="utf-8" src="Admin/kindeditor/lang/zh-CN.js"></script>
	<script charset="utf-8" src="Admin/kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#TextBox3', {
				cssPath : 'Admin/kindeditor/plugins/code/prettify.css',
				uploadJson : 'Admin/kindeditor/asp.net/upload_json.ashx',
				fileManagerJson : 'Admin/kindeditor/asp.net/file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="Main">
  <div id="Logo"><img src="../images/logo.png" width="218" height="71" /></div>
  <div id="Nav">
    <ul>
      <li><a href="#">学校概况</a></li>
      <li><a href="#">机构设置</a></li>
      <li><a href="#">招生就业</a></li>
      <li><a href="#">人事师资</a></li>
      <li><a href="#">教学科研</a></li>
      <li><a href="#">信息公开</a></li>
      <li><a href="#">对外交流</a></li>
      <li><a href="#">专题网站</a></li>
    </ul>
  </div>
  <div id="Pic">此处显示  id "Pic" 的内容</div>

  <div id="Txt"> 
      <table align="left" class="auto-style1">
          <tr>
              <td style="width: 140px; vertical-align: top;">
                  <asp:TreeView ID="TreeView1" runat="server" ShowLines="True">
                      <Nodes>
                          <asp:TreeNode Text="用户管理" Value="用户管理">
                              <asp:TreeNode NavigateUrl="~/Admin/S_User.aspx" Text="信息查询" Value="信息查询"></asp:TreeNode>
                              <asp:TreeNode NavigateUrl="~/Admin/E_User.aspx" Text="信息编辑" Value="信息编辑"></asp:TreeNode>
                          </asp:TreeNode>
                          <asp:TreeNode Text="学校概况" Value="学校概况">
                              <asp:TreeNode Text="发布信息" Value="发布信息"></asp:TreeNode>
                              <asp:TreeNode Text="查询信息" Value="查询信息"></asp:TreeNode>
                              <asp:TreeNode Text="编辑信息" Value="编辑信息"></asp:TreeNode>
                          </asp:TreeNode>
                          <asp:TreeNode Text="新建节点" Value="新建节点"></asp:TreeNode>
                          <asp:TreeNode Text="新建节点" Value="新建节点"></asp:TreeNode>
                          <asp:TreeNode Text="新建节点" Value="新建节点"></asp:TreeNode>
                          <asp:TreeNode Text="新建节点" Value="新建节点"></asp:TreeNode>
                          <asp:TreeNode Text="新建节点" Value="新建节点"></asp:TreeNode>
                          <asp:TreeNode Text="新建节点" Value="新建节点"></asp:TreeNode>
                      </Nodes>
                  </asp:TreeView>
                  </td>
              <td style="vertical-align: top">


                  标题：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  <br />
                  <br />
                  部门：<asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>宣传部</asp:ListItem>
                      <asp:ListItem>财务处</asp:ListItem>
                      <asp:ListItem>教务处</asp:ListItem>
                      <asp:ListItem>科技处</asp:ListItem>
                  </asp:DropDownList>
                  <br />
                  <br />
                  时间：<asp:TextBox ID="TextBox2" runat="server" onclick="WdatePicker()"></asp:TextBox>
                  <br />
                  <br />
                  正文：<asp:TextBox ID="TextBox3" runat="server" Height="175px" TextMode="MultiLine" Width="611px"></asp:TextBox>
                  <br />
                  <br />
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发布信息" />
                  <br />
                  <br />
                  <asp:Label ID="Label1" runat="server"></asp:Label>
                  <br />


              </td>
          </tr>
      </table>
&nbsp;</div>


  <div id="Foot">此处显示  id "Foot" 的内容00000000000000000000000000000</div>
</div>
        
    </form>
</body>
</html>
