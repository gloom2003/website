<%@ Page Language="C#" AutoEventWireup="true" CodeFile="animation.aspx.cs" Inherits="AddNews" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>海盗船动画</title>
    <link rel="stylesheet" href="css/directory.css"/>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        @keyframes wave{
            /* 使用50%的原因：0%-50%,50%-0%全程都是动画效果,
               使用100%时：100%-0%不是动画效果 */
            50%{
                transform: translate(50px,0);
            }
        }
        .waves{
            position: fixed;
            bottom: 0;
            z-index: 8;
        }
        .wave3{
            position: absolute;
            bottom: 50px;
            left: -50px;
            animation: wave 2s infinite;
            z-index: 8;
        }
        .wave2{
            position: absolute;
            bottom: 25px;
            left: -50px;
            animation: wave 4s infinite;
            z-index: 9;
        }
        .wave1{
            position: absolute;
            bottom: 0;
            left: -50px;
            animation: wave 5s infinite;
            z-index: 10;
        }
        @keyframes ship{
            50%{
                transform: rotate(2deg);
            }
        }
        .ship{  
            /* margin此时已经失效
            margin: 0 auto; */
            position: absolute;
            top:75px;
            left: 30%;
            animation: ship 2s infinite;
            z-index: 7;
        }
        @keyframes fish{
            25%{
                transform: translate(300px,-200px);
            }
            50%{
                transform: translate(600px,0);
            }
            75%{
                transform: translate(900px,-200px);
            }
            100%{
                transform: translate(1200px,0);
            }
        }
        .fish{
            position: absolute;
            bottom: 40px;
            animation: fish 3s infinite;
        }
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

        <div class="container">
            <div class="bg">
                <img src="images/bg.png" alt="图片加载失败">
            </div>
            <div class="ship">
                <img class="ship" src="images/ship.png" alt="图片加载失败">
            </div>
            <div class="fish">
                <img src="images/fish.png" alt="图片加载失败">
            </div>
            <div class="waves">
                <img class="wave3" src="images/wave3.png" alt="图片加载失败">
                <img class="wave2" src="images/wave2.png" alt="图片加载失败">
                <img class="wave1" src="images/wave1.png" alt="图片加载失败">
            </div>
    </div>
    </form>
    
</body>
</html>
