<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebManage.member.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="/css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="formAdd" runat="server" Title="会员注册" EnableFrame="true" ShowBorder="true" BodyPadding="10" Width="400">
            <Items>
                <f:TextBox ID="txtUserid" runat="server" Label="用户名" Required="true" ShowRedStar="true" AutoPostBack="true" OnTextChanged="txtUserid_TextChanged"></f:TextBox>
                <f:Label ID="lblIsUnique" runat="server" ShowEmptyLabel="true" Text="<font color='Red'>用户名已经存在</font>" Hidden="true" EncodeText="false"></f:Label>
                <f:TextBox ID="txtPassword1" runat="server" Label="密码" Required="true" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtPassword2" runat="server" Label="确认密码" Required="true" ShowRedStar="true" CompareControl="txtPassword1" CompareOperator="Equal" CompareType="String" CompareMessage="两次密码输入不一致"></f:TextBox>
                <f:TextBox ID="txtName" runat="server" Label="真实姓名" Required="true" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtEmail" runat="server" Label="邮箱" Required="true" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtRank" runat="server" Label="会员积分" Required="true" RegexPattern="NUMBER" Regex="^([1-9]|10)$" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtTel" runat="server" Label="手机"></f:TextBox>
                <%--     <f:TextBox ID="txtTel" runat="server" Label="座机"></f:TextBox>--%>
                <%--<f:TextBox ID="txtEmail" runat="server" Label="邮箱" Required="true" ShowRedStar="true" RegexPattern="EMAIL"></f:TextBox>--%>
                <%-- <f:TextBox ID="txtCompany" runat="server" Label="公司名称" Required="true" ShowRedStar="true"></f:TextBox>
                <f:TextBox ID="txtAddress" runat="server" Label="地址" Required="true" ShowRedStar="true"></f:TextBox>
                <f:DropDownList ID="ddlSheng" runat="server" Label="所在省" ShowRedStar="true" AutoPostBack="true" OnSelectedIndexChanged="ddlSheng_SelectedIndexChanged" CompareValue="-1" CompareOperator="NotEqual" CompareType="String" CompareMessage="所在省不能为空！">
                </f:DropDownList>
                <f:DropDownList ID="ddlShi" runat="server" Label="所在市" ShowRedStar="true" CompareValue="-1" CompareOperator="NotEqual" CompareType="String" CompareMessage="所在市不能为空！">
                </f:DropDownList>--%>
            </Items>
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Bottom" ToolbarAlign="Center">
                    <Items>
                        <f:Button ID="btnSave" runat="server" Text="保存并提交" OnClick="btnSave_Click" Icon="SystemSave" ValidateForms="formAdd"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:SimpleForm>
    </form>
</body>
</html>
