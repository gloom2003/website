﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Jgsz_News" %>


<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/directory.css"/>
	<style>
		#Label2{
			color:red;
			font-size:20px;
		}
	</style>

</head>

<body>
    <form id="form1" runat="server">
    <div id="Main">
		  <div id="Logo"><img src="images/logo.png" width="218" height="71" /></div>
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

			<h1>欢迎光临！</h1>
			<asp:Label ID="Label1" runat="server"></asp:Label>
			<br />
			<br />
			<asp:Label ID="Label2" runat="server"></asp:Label>
			<br />
			<br />
			<a href="Login.aspx">点我进行登录！</a>
			<br />
			<br />
			<a href="Reg.aspx">还没有账号？点击我进行注册！</a>
			<br />
			<br />
			<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注销"/>
	</div>
        
      
    </form>
</body>
</html>


