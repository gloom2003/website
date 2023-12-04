<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>请登录</title>
    <link rel="stylesheet" href="css/login.css"/>
    <link rel="stylesheet" href="css/directory.css"/>
    <style>
        #Main{
            position:absolute;
            left:350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div id="Main">
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
	    </div>
        <img src="img/pexels-photo-709552.jpeg" alt="图片加载失败"/>
        <div class="box">
            <h1>欢迎光临，请先登录：</h1>
            <br />
            <br />
            <label> 用户名:</label>
           
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <label>密码：</label>&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Reg.aspx">&nbsp;&nbsp;
                &nbsp;还没有账号？点击我去注册</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
