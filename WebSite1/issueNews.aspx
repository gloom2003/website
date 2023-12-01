<%@ Page Language="C#" AutoEventWireup="true" CodeFile="issueNews.aspx.cs" Inherits="I_News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Admin/My97DatePicker/WdatePicker.js"></script>
    <link rel="stylesheet" href="css/directory.css"/>

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
    <style>
        #bottomText{
            position:absolute;
            bottom:10px;
            left: 300px;
            text-align:center;
            background-color: #666;
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


  <div id="Txt"> 
      <table align="left" class="auto-style1">
          <tr>
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


              <div id="bottomText">
                  <p>
                    版权所有©五邑大学   地址：广东省江门市蓬江区迎宾大道中99号   邮编：529020  
                  </p> 
                  <p>
                    五邑大学党政办：(0750)3296113  传真：(0750)3358395    招生咨询  全日制本科招生咨询：(0750)3296263 
                  </p>
                  当前在线人数：?人  
              
              </div>
</div>
        
    </form>
</body>
</html>
