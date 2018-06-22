<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebManage.manage.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
        <f:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
            BodyPadding="5px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnSaveRefresh" Text="保存" ValidateForms="SimpleForm1" runat="server" Icon="SystemSaveNew" OnClick="btnSaveRefresh_Click"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Panel ID="Panel2" Layout="Fit" runat="server" ShowBorder="false" ShowHeader="false">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false"
                            AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                            <Items>
                                <f:TextBox ID="tbUserId" Label="用户名" Required="true" Width="280" runat="server"></f:TextBox>
                                <f:TextBox ID="tbPassWord" Label="密码" Required="true" Width="280" runat="server"></f:TextBox>
                                <f:TextBox ID="tbUserName" Label="姓名" Required="true" Width="280" runat="server"></f:TextBox>
                                <f:TextBox ID="tbDepartment" Label="部门" Required="true" Width="280" runat="server"></f:TextBox>
                                <f:DropDownList ID="ddlKind" Label="权限" Required="true" Width="300" runat="server">
                                    <f:ListItem Text="系统管理员" Value="系统管理员" />
                                    <f:ListItem Text="普通员工" Value="普通员工" />
                                </f:DropDownList>
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
