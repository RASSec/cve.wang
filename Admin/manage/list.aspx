<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="WebManage.manage.list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel2" Title="后台管理人员列表" runat="server" Layout="Fit" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Width="1030px" ShowBorder="True"
            ShowHeader="True">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnServerClick" Text="新增" Size="Medium" OnClick="btnServerClick_Click" runat="server"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Grid ID="Grid1" PageSize="10" ShowBorder="true" ShowHeader="false" EnableTextSelection="true"
                    AllowPaging="true" runat="server" EnableCheckBoxSelect="True" AllowSorting="true" SortDirection="DESC" SortField="Id"
                    DataKeyNames="Id" OnPageIndexChange="Grid1_PageIndexChange" IsDatabasePaging="true" OnSort="Grid1_Sort" OnRowCommand="Grid1_RowCommand">
                    <Columns>
                        <f:RowNumberField />
                        <f:BoundField DataField="username" HeaderText="姓名" DataFormatString="{0}" SortField="username" Width="80" />
                        <f:BoundField DataField="userid" HeaderText="后台用户名" SortField="userid" Width="100" />
                        <f:BoundField DataField="password" HeaderText="后台密码" Width="100"/>
                        <f:BoundField DataField="Department" HeaderText="所属部门" />
                        <f:BoundField DataField="rolename" HeaderText="权限" Width="105"/>
                        <f:BoundField DataField="ip" HeaderText="上次登陆IP" Width="120" />
                        <f:BoundField DataField="LastLoginTime" HeaderText="上次登陆时间" Width="150" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" SortField="LastLoginTime" />
                        <f:BoundField DataField="logincount" HeaderText="登陆次数" Width="80" SortField="LoginTimes" />
                        <f:GroupField HeaderText="操作" TextAlign="Center">
                            <Columns>
                                <f:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="编辑"
                                    Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                                    DataIFrameUrlFormatString="edit.aspx?id={0}" DataWindowTitleField="Name"
                                    DataWindowTitleFormatString="编辑 - {0}" />
                                <f:LinkButtonField HeaderText="删除" Width="60px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top" CommandName="action_delete" Icon="UserDelete" ToolTip="删除" />
                            </Columns>
                        </f:GroupField>
                    </Columns>
                </f:Grid>
            </Items>
        </f:Panel>
        <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
            CloseAction="HidePostBack" EnableConfirmOnClose="true" Target="Top"
            EnableMaximize="true" EnableResize="true" OnClose="Window1_Close"
            IsModal="True" Width="410px" Height="300px">
        </f:Window>
    </form>
</body>
</html>
