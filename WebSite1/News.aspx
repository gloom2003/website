<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<link rel="stylesheet" href="css/directory.css"/>
	<style>
		.auto-style1 {
			width: 800px;
		}
		.auto-style2 {
			text-align: center; 
		}
		/*
    	.content{
			width:850px;
			height:100%;
			background:rgb(129, 129, 123);
    	}
		*/
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

		  
        <div>
            <table align="center" class="auto-style1">
				<tbody>

				
					<tr>
						<td class="auto-style2" style="height: 80px; font-family: 微软雅黑; font-size: 20px; font-weight: bolder;">
							<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
						</td>
					</tr>

					<tr>
						<td class="auto-style2" style="height: 40px">
							<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
	&nbsp;					<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
						</td>
					</tr>

					<tr class="content">
						<td>
							<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
						</td>
					</tr>
				</tbody>

            </table>
        </div>
		



	</div>
        
        
      
    </form>
</body>
</html>
