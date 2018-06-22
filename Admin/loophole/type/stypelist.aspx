<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stypelist.aspx.cs" Inherits="WebManage.loophole.type.stypelist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel1" runat="server" EnableFrame="true" Title="漏洞小类列表" Width="980px" BodyPadding="10px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnServerClick" Text="新增" Size="Medium" OnClick="btnServerClick_Click" runat="server"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Form ID="Form2" runat="server" ShowBorder="false" ShowHeader="false">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:DropDownList ID="ddlBigeType" runat="server" Width="300px" Label="漏洞大类">
                                </f:DropDownList>

                                <f:TextBox ID="txtSmallType" runat="server" Label="漏洞类型" Width="280px"></f:TextBox>
                                <f:Button ID="btnSearch" runat="server" Text="搜 索" OnClick="btnSearch_Click"></f:Button>

                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
                <f:Grid ID="Grid1" runat="server" ShowBorder="true" ShowHeader="false" SortDirection="desc" SortField="id" AllowPaging="true"
                    PageSize="15" AllowSorting="true" IsDatabasePaging="true" BodyPadding="10px" DataKeyNames="id" EnableTextSelection="true"
                    OnSort="Grid1_Sort" OnPageIndexChange="Grid1_PageIndexChange" OnRowCommand="Grid1_RowCommand">
                    <Columns>
                        <f:RowNumberField />
                        <f:BoundField ID="BoundField1" runat="server" SortField="stypename" DataField="stypename" DataToolTipField="stypename" HeaderText="漏洞类型" Width="200" />

                        <f:BoundField ID="BoundField2" runat="server" DataField="stypedesc" DataToolTipField="stypedesc" HeaderText="漏洞描述" Width="200" />
                        <f:TemplateField Width="380" HeaderText="问题类型">
                            <ItemTemplate>
                                <a href="javasrcipt:void(0)" title=" <%#GetBType(Eval("parentid").ToString()) %>"><%#GetBType(Eval("parentid").ToString()) %></a>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:GroupField ID="Group" HeaderText="操作" runat="server" TextAlign="Center">
                            <Columns>
                                <f:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="编辑"
                                    Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="id"
                                    DataIFrameUrlFormatString="addstype.aspx?id={0}" DataWindowTitleField="stypename"
                                    DataWindowTitleFormatString="编辑 - {0}" />
                                <f:LinkButtonField HeaderText="删除" Width="60px" ConfirmText="你确定要这么做么？" ConfirmTarget="Top" CommandName="action_delete" Icon="UserDelete" ToolTip="删除" />
                            </Columns>
                        </f:GroupField>
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
            IsModal="True" Width="500px" Height="300px">
        </f:Window>
    </form>
</body>
</html>
