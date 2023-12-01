<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testOnline.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线考试</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div>
            <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <h1>在线考试:</h1>
        <asp:Panel ID="Panel1" runat="server" GroupingText="答题环节">
            <h2>一、单选题(一题20分)：</h2>
            <div class="question">
                <asp:Label ID="lblQuestion1" runat="server" Text="1.XHTML是什么的缩写()" AssociatedControlID="rblOptions1"></asp:Label>
                <br />
                <asp:RadioButtonList ID="rblOptions1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="A. Extensible Hypertext Markup Language" Value="A"></asp:ListItem>
                    <asp:ListItem Text="B. Extended Hyper Markup Language" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C. Excessive Hypermedia Markup Language" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D. Extensible Hyper Markup Language" Value="D"></asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <div class="question">
                <asp:Label ID="Label1" runat="server" Text="2.XHTML中换行的元素是( )" AssociatedControlID="RadioButtonList1"></asp:Label>
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
                <asp:Label ID="lblQuestion2" runat="server" Text="3.下列有哪些是奇数?" AssociatedControlID="cbOptions1"></asp:Label>
                <br />
                <asp:CheckBoxList ID="cbOptions1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="A. 1 " Value="A"></asp:ListItem>
                    <asp:ListItem Text="B. 8" Value="B"></asp:ListItem>
                    <asp:ListItem Text="C. 3" Value="C"></asp:ListItem>
                    <asp:ListItem Text="D. 5" Value="D"></asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <div class="question">
                <asp:Label ID="Label2" runat="server" Text="4.下列有哪些是偶数？" AssociatedControlID="CheckBoxList1"></asp:Label>
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
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddNews.aspx">点我回到发布新闻界面</asp:HyperLink>
                </div>
    </form>
</body>
</html>