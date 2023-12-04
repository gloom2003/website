<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Jgsz_News" %>


<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="css/directory.css"/>
	<style>
		#Label2{
			color:red;
			font-size:30px;
			margin-left:320px;
		}
		#Label1{
			margin-left:280px;
			font-size:30px;
		}
		.login{
			margin-left:240px;
			text-decoration: none;
			font-size:30px;
			color:yellow;
		}
		.register{
			margin-left:210px;
			text-decoration: none;
			font-size:30px;
			color:yellow;
		}
		h1{
			text-align:center;
		}
		#Button1{
			margin-left:320px;
			width:150px;
			height:40px;
			font-size:25px;
		}
		#bottomText{
			width:799px;
            position:absolute;
            bottom:10px;
            left: 347px;
            text-align:center;
            background-color: #666;
        }
		.bgPic{
			position:absolute;
			bottom:100px;
			left:347px;
			width:798px;
			height:600px;
			z-index: -1;
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
			  <li><a href="/Admin/playMusic.aspx">强军战歌</a></li>
			</ul>
		  </div>
			<div class="content">
				<h1>欢迎光临！</h1>
				<asp:Label ID="Label1" runat="server"></asp:Label>
				<br />
				<br />
				<a href="Login.aspx" class="login">点我登录以享受更多功能！</a>
				<br />
				<br />
				<a href="Reg.aspx" class="register">还没有账号？点击我进行注册！</a>
				<br />
				<br />
				<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注销"/>
				<br />
				<br />
				<asp:Label ID="Label2" runat="server"></asp:Label>
			</div>
			<img src="img/wuYI.jpg" class="bgPic"/>
			<div id="bottomText">
                  <p>
                    版权所有©五邑大学   地址：广东省江门市蓬江区迎宾大道中99号   邮编：529020  
                  </p> 
                  <p>
                    五邑大学党政办：(0750)3296113  传真：(0750)3358395    招生咨询  全日制本科招生咨询：(0750)3296263 
                  </p> 
              
              </div>
	</div>
        
      
    </form>
</body>
</html>


