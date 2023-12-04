<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testOnline.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线考试</title>
    <link rel="stylesheet" href="css/directory.css"/>
    <style>
        .question {
            margin-bottom: 10px;
        }
        .option {
            margin-left: 20px;
        }
        #HyperLink1{
            font-size: 25px;
            color: black;
            text-decoration: none;
        }
        #btnSubmit{
                width: 200px;
                height: 30px;
                border-radius: 10px;
        }
        #Panel1{
            width:800px;
        }
        #form1{
            position: absolute;
            top: 50%;
            left: 50%;
            /* (从第4象限开始计算)x轴左偏移50%，y轴上偏移50%,由width和height决定具体的偏移大小*/
            transform: translate(-50%,-50%);
        }
        h1{
            text-align:center;
        }
        #Label3{
            margin-left: 100px;
        }
        #Label4{
            margin-left: 50px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
             <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="Label4" runat="server"></asp:Label>

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
	     </div>

                <div>
            <br />
            <br />
            <h1>在线考试:</h1>
        <asp:Panel ID="Panel1" runat="server" GroupingText="答题环节">
            <h2>一、单选题(一题20分)：</h2>
            <div class="question">
                <asp:Label ID="lblQuestion1" runat="server" Text="1.下面哪一个是2的倍数: D" AssociatedControlID="rblOptions1"></asp:Label>
                <br />
                <asp:RadioButtonList ID="rblOptions1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="A. 1" Value="A"></asp:ListItem>
                    <asp:ListItem Text="B. 3" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C. 5" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D. 100" Value="D"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="question">
                <asp:Label ID="Label1" runat="server" Text="2.XHTML中换行的元素是( ): B" AssociatedControlID="RadioButtonList1"></asp:Label>
                <br />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="A. p" Value="A"></asp:ListItem>
                    <asp:ListItem Text="B. br" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C. hr" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D. a" Value="D"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <h2>二、多选题(一题30分)：</h2>
            <div class="question">
                <asp:Label ID="lblQuestion2" runat="server" Text="3.下列有哪些是奇数? ACD" AssociatedControlID="cbOptions1"></asp:Label>
                <br />
                <asp:CheckBoxList ID="cbOptions1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="A. 1 " Value="A"></asp:ListItem>
                    <asp:ListItem Text="B. 8" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C. 3" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D. 5" Value="D"></asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <div class="question">
                <asp:Label ID="Label2" runat="server" Text="4.下列有哪些是偶数？ AD" AssociatedControlID="CheckBoxList1"></asp:Label>
                <br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="A. 2" Value="A"></asp:ListItem>
                    <asp:ListItem Text="B. 5" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C. 7" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D. 10" Value="D"></asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" CssClass="submit-button" />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
       </asp:Panel>
                </div>
    </form>
</body>
</html>