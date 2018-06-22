<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ranklist.aspx.cs" Inherits="WebManage.member.ranklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager runat="server"></f:PageManager>
             <f:Panel ID="Panel1" runat="server" EnableFrame="true" Title="会员等级" Width="850" BodyPadding="10px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnAdd" runat="server" Text="添 加" Size="Medium" OnClick="btnAdd_Click"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Grid ID="Grid1" runat="server" ShowBorder="true" ShowHeader="false" SortDirection="desc" SortField="ranknumber" AllowPaging="true"
                    PageSize="15" AllowSorting="true" IsDatabasePaging="true" BodyPadding="10px" DataKeyNames="id" EnableTextSelection="true"
                    OnSort="Grid1_Sort" OnPageIndexChange="Grid1_PageIndexChange" OnRowCommand="Grid1_RowCommand">
                    <Columns>
                        <f:RowNumberField />
                        <f:BoundField ID="BoundField1" runat="server" SortField="rankname" DataField="rankname" DataToolTipField="rankname" HeaderText="会员名称" Width="150" />
                        <f:BoundField ID="BoundField2" runat="server"  DataField="ranknumber" DataToolTipField="ranknumber" HeaderText="会员积分" Width="150" />
                        <f:BoundField ID="BoundField4" runat="server"  DataField="xinnumber" DataToolTipField="xinnumber" HeaderText="星指数" Width="150" />
                         <f:BoundField ID="BoundField3" runat="server" SortField="Addtime" DataField="AddTime" DataToolTipField="AddTime" DataFormatString="{0:yyyy-MM-dd hh:mm:ss}" HeaderText="添加时间" Width="150" />
                        <f:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="编辑"
                            Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="id"
                            DataIFrameUrlFormatString="rankadd.aspx?id={0}" DataWindowTitleField="rankname"
                            DataWindowTitleFormatString="编辑 - {0}" />
                        <f:LinkButtonField HeaderText="删除" ConfirmText="你确定要这么做么？" ConfirmTarget="Top" CommandName="action_delete" Icon="UserDelete" ToolTip="删除" />
                    </Columns>
                </f:Grid>
            </Items>
        </f:Panel>
        <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
            CloseAction="HidePostBack" EnableConfirmOnClose="true" Target="Self"
            EnableMaximize="true" EnableResize="true" OnClose="Window1_Close"
            IsModal="True" Width="450px" Height="240px">
        </f:Window>
       
    </form>
</body>
</html>
