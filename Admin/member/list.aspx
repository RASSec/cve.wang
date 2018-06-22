<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="WebManage.member.list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />

        <f:Panel ID="Panel1" runat="server" EnableFrame="true" Title="会员列表" Width="2000px" BodyPadding="10px">
            <Items>
                <f:Form ID="Form2" runat="server" ShowBorder="false" ShowHeader="false">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:TextBox ID="txtuserid" runat="server" Label="会员名称" Width="200"></f:TextBox>
                                <f:Button ID="btnSearch" runat="server" Text="搜 索" OnClick="btnSearch_Click"></f:Button>
                                <f:Label Text="" runat="server" ID="lbl" Width="500px"></f:Label>
                                <f:Label Text="" runat="server" ID="Label1" Width="500px"></f:Label>
                                <f:Label Text="" runat="server" ID="Label2" Width="500px"></f:Label>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
                <f:Grid ID="Grid1" runat="server" ShowBorder="true" ShowHeader="false" SortDirection="desc" SortField="AddTime" AllowPaging="true"
                    PageSize="15" AllowSorting="true" IsDatabasePaging="true" BodyPadding="10px" DataKeyNames="id" EnableTextSelection="true"
                    OnSort="Grid1_Sort" OnPageIndexChange="Grid1_PageIndexChange" OnRowCommand="Grid1_RowCommand">
                    <Columns>
                        <f:RowNumberField />
                        <f:BoundField ID="BoundField1" runat="server" SortField="userid" DataField="userid" DataToolTipField="userid" HeaderText="用户名" Width="100" />
                        <f:BoundField ID="BoundField2" runat="server" DataField="password" DataToolTipField="password" HeaderText="会员密码" Width="150" />
                        <f:BoundField ID="BoundField5" runat="server" SortField="netname" DataField="netname" DataToolTipField="netname" HeaderText="昵称" Width="150" />
                        <f:BoundField ID="BoundField6" runat="server" SortField="tel" DataField="tel" DataToolTipField="tel" HeaderText="手机号码" Width="150" />
                        <f:BoundField ID="BoundField11" runat="server" DataField="email" DataToolTipField="email" HeaderText="邮箱" Width="150" />
                        <f:BoundField ID="BoundField9" runat="server" DataField="rankname" DataToolTipField="rankname" HeaderText="会员等级" Width="100" />
                        <f:BoundField ID="BoundField10" runat="server" DataField="money" DataToolTipField="money" HeaderText="会员币" Width="150" />
                        <f:BoundField ID="BoundField4" runat="server" DataField="ranknumber" DataToolTipField="ranknumber" HeaderText="会员积分" Width="150" />
                        <f:BoundField ID="BoundField3" runat="server" SortField="Addtime" DataField="AddTime" DataToolTipField="AddTime" DataFormatString="{0:yyyy-MM-dd hh:mm:ss}" HeaderText="注册时间" Width="150" />
                        <f:BoundField ID="BoundField7" runat="server" SortField="lastlogintime" DataField="lastlogintime" DataToolTipField="lastlogintime" DataFormatString="{0:yyyy-MM-dd hh:mm:ss}" HeaderText="最近登录" Width="150" />
                        <f:BoundField ID="BoundField8" runat="server" DataField="ip" DataToolTipField="ip" HeaderText="ip" Width="150" />

                        <f:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="编辑"
                            Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                            DataIFrameUrlFormatString="edit.aspx?id={0}" DataWindowTitleField="title"
                            DataWindowTitleFormatString="编辑 - {0}" />
                        <f:WindowField ColumnID="myWindowField2" Width="80px" WindowID="Window1" HeaderText="账号开通"
                            Icon="Add" ToolTip="开通" DataIFrameUrlFields="id"
                            DataIFrameUrlFormatString="member_operation.aspx?id={0}" />
                        <f:WindowField ColumnID="myWindowField1" Width="80px" WindowID="Window1" HeaderText="等级修改"
                            Icon="ApplicationEdit" ToolTip="等级修改" DataIFrameUrlFields="Id"
                            DataIFrameUrlFormatString="member_rankedit.aspx?id={0}" />
                        <f:LinkButtonField HeaderText="重置密码" Width="80px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top" CommandName="action_resetpwd" Icon="ApplicationAdd" ToolTip="重置密码" />
                        <f:LinkButtonField HeaderText="删除" Width="60px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top" CommandName="action_delete" Icon="UserDelete" ToolTip="删除" />
                    </Columns>
                    <PageItems>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                        </f:ToolbarSeparator>
                        <f:ToolbarText ID="ToolbarText1" runat="server" Text="每页记录数：">
                        </f:ToolbarText>
                        <f:DropDownList runat="server" ID="ddlPageSize" Width="80px" AutoPostBack="true"
                            OnSelectedIndexChanged="ddlPageSize_SelectedIndexChanged">
                            <f:ListItem Text="5" Value="5" />
                            <f:ListItem Text="10" Value="10" />
                            <f:ListItem Text="15" Value="15" />
                            <f:ListItem Text="20" Value="20" />
                        </f:DropDownList>
                    </PageItems>
                </f:Grid>
            </Items>
        </f:Panel>
        <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
            CloseAction="HidePostBack" EnableConfirmOnClose="true" Target="Self"
            EnableMaximize="true" EnableResize="true" OnClose="Window1_Close"
            IsModal="True" Width="500px" Height="350px">
        </f:Window>
    </form>
</body>
</html>
