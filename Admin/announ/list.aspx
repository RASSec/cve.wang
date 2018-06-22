<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="WebManage.announ.list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel2" Title="公告管理列表" runat="server" Layout="Fit" EnableFrame="true" EnableCollapse="true"
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
                        <f:BoundField DataField="title" HeaderText="公告标题"  Width="200" />
                        <f:BoundField DataField="content" HeaderText="公告内容" Width="400" />
                        <f:BoundField DataField="auther" HeaderText="作者" Width="100"/>
                        <f:BoundField DataField="addtime" HeaderText="添加时间" Width="150" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" SortField="addtime" />
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
