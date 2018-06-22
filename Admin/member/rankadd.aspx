<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rankadd.aspx.cs" Inherits="WebManage.member.rankadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="formAdd" runat="server"  ShowBorder="false" ShowHeader="false" BodyPadding="10" Width="400">
            <Items>
                <f:TextBox ID="txtrankname" runat="server" Label="等级名称" Required="true" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtranknumber" runat="server" RegexPattern="NUMBER" Label="等级分数" Required="true" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtxinnumber" runat="server" RegexPattern="NUMBER" Label="星指数" Required="true" ShowRedStar="true"></f:TextBox>
            </Items>
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Top" ToolbarAlign="Center">
                    <Items>
                        <f:Button ID="btnSave" runat="server" Text="保存并提交" OnClick="btnSave_Click" Icon="SystemSave" ValidateForms="formAdd"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:SimpleForm>
    </form>
</body>
</html>
