<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="playMusic.aspx.cs" Inherits="Admin_S_User" %>

<!DOCTYPE html>

<html>
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <style type="text/css">
*{
	margin:0px;
	padding:0px;
}
#Main {
	margin: auto;
	width: 800px;
}
#Logo {
	height: 80px;
	width: 800px;
	margin-top: 0px;
	margin-bottom: 0px;
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
	width: 114px;
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
		@keyframes rotate{
            form{
                transform: rotate(0deg);
            }
            to{
                transform: rotate(360deg);
            }
        }
        .box{
			position:absolute;
			right:50px;
			top:30px;
            width: 200px;
            height: 200px;
            margin: 20px auto;
            border-radius: 50%;
            overflow: hidden;
            animation: rotate 10s linear infinite;
        }
        .box>img{
            width: 300px;
            height: 300px;
        }
        .box:hover{
            animation-play-state: paused;
        }
        audio{
            /* 音乐播放器直接使用位移变化位置 */
            transform: translate(1170px,150px);
        }
		#bottomText{
			width:799px;
            position:absolute;
            bottom:10px;
            left: 347px;
            text-align:center;
            background-color: #666;
        }
		.bgPic {
			margin:0px;
			padding:0px;
			position:absolute;
			width: 100%;
			height: 810px;
			z-index:-1;
		}
    </style>

</head>

<body>
    <form id="form1" runat="server">
		<img src="../images/五邑大学.jpg" alt="图片加载失败" class="bgPic"/>
		<div id="Main">
			  <div id="Logo"><img src="../images/logo.png" width="218" height="71" /></div>
			  <div id="Nav">
					<ul>
							  <li><a href="../showNews.aspx">新闻展示</a></li>
							  <li><a href="../testOnline.aspx">在线答题</a></li>
							  <li><a href="../adminManage.aspx">后台管理</a></li>
							  <li><a href="../issueNews.aspx">发布新闻</a></li>
							  <li><a href="../animation.aspx">观看动画</a></li>
							  <li><a href="../index.aspx">返回首页</a></li>
							  <li><a href="#">强军战歌</a></li>
					</ul>
				</div>
	   </div>

		<div class="box">
			<img src="../images/五星红旗1.jpg" alt="图片加载失败">

		</div>
		<div>
			<audio src="../medio/强军战歌.m4a" controls></audio>
		</div>
        <div id="bottomText">
			<p>
			版权所有©五邑大学   地址：广东省江门市蓬江区迎宾大道中99号   邮编：529020  
			</p> 
			<p>
			五邑大学党政办：(0750)3296113  传真：(0750)3358395    招生咨询  全日制本科招生咨询：(0750)3296263 
			</p> 
              
		</div>
      
    </form>
</body>
</html>

    
