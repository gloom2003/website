<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Jgsz_News" %>


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
			<a href="Login.aspx">点我进行登录！</a>
			<a href="Reg.aspx">还没有账号？点击我进行注册！</a>


		

	</div>
        
        
      
    </form>
</body>
</html>


