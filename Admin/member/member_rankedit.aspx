﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="member_rankedit.aspx.cs" Inherits="WebManage.member.member_rankedit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:SimpleForm ID="SimpleForm1" runat="server" ShowBorder="false" ShowHeader="false" BodyPadding="10px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" ToolbarAlign="Right">
                    <Items>
                        <f:Button ID="btnOK" runat="server" Text="保存" Icon="SystemSaveNew" OnClick="btnOK_Click"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:DropDownList ID="ddlMemberType" runat="server" Label="会员类型"></f:DropDownList>
            </Items>
        </f:SimpleForm>
    </form>
</body>
</html>
