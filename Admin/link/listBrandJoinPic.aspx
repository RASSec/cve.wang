<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listBrandJoinPic.aspx.cs" Inherits="WebManage.link.listBrandJoinPic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>加盟广告列表</title>
    <link href="/css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" AjaxAspnetControls="imgShowDiv" />
        <f:Panel ID="Panel2" Title="友情链接列表" runat="server" Layout="Anchor" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Width="900px" ShowBorder="True"
            ShowHeader="True">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Size="Medium" Text="新增"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Form ID="Form5" ShowBorder="False" BodyPadding="5px" AnchorValue="100%"
                    ShowHeader="False" runat="server">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:TextBox ID="txtKeyword" runat="server" Label="合作伙伴：" EmptyText="请输入品牌名称"></f:TextBox>
                                <f:DropDownList ID="ddlStatus" runat="server" Label="类型">
                                    <f:ListItem Text="请选择..." Value="-1" />
                                    <f:ListItem Text="合作伙伴" Value="0" />
                                     <f:ListItem Text="友情链接" Value="1" />
                                </f:DropDownList>
                                <f:Button ID="btnServerClick" Text="搜索" runat="server" OnClick="btnServerClick_OnClick"></f:Button>
                            </Items>
                        </f:FormRow>
                    </Rows>

                </f:Form>

                <f:Grid ID="Grid1" PageSize="15" ShowBorder="true" ShowHeader="false"
                    AllowPaging="true" runat="server" AllowSorting="true" SortDirection="DESC" SortField="Id"
                    DataKeyNames="Id" IsDatabasePaging="true" OnPageIndexChange="Grid1_PageIndexChange" OnSort="Grid1_Sort"
                    OnRowCommand="Grid1_RowCommand" AllowCellEditing="true">
                    <Columns>
                        <f:RowNumberField />

                        <f:HyperLinkField DataTextField="BrandName" HeaderText="品牌名称" SortField="BrandName" Width="280" DataToolTipField="BrandName" DataNavigateUrlFieldsEncode="false" DataNavigateUrlFields="url" DataNavigateUrlFormatString="{0}" />

                        <f:BoundField DataField="modtime" HeaderText="更新时间" TextAlign="Center" Width="145" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" SortField="modtime" DataToolTipField="modtime" />
                        <f:BoundField DataField="adduser" HeaderText="添加人" TextAlign="Center" Width="110" DataFormatString="{0}" SortField="adduser" DataToolTipField="adduser" />
                        <f:TemplateField ID="TemplateField1" HeaderText="修改项" Width="110" runat="server" SortField="Type">
                            <ItemTemplate>
                                <%# GetPicType(Eval("type").ToString())%>
                            </ItemTemplate>
                        </f:TemplateField>
                        <f:GroupField HeaderText="操作" TextAlign="Center">
                            <Columns>
                                <f:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="编辑"
                                    Icon="Pencil" ToolTip="编辑" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                                    DataIFrameUrlFormatString="editBrandJoinPic.aspx?id={0}" />
                                <f:LinkButtonField HeaderText="删除" Width="80px" ConfirmText="您确定要进行删除吗？" ConfirmTarget="Top" CommandName="action_delete" Icon="UserDelete" ToolTip="删除" />
                            </Columns>
                        </f:GroupField>
                    </Columns>
                    <PageItems>
                        <f:ToolbarSeparator ID="ToolbarSeparator1" runat="server">
                        </f:ToolbarSeparator>
                        <f:ToolbarText ID="ToolbarText2" runat="server" Text="每页记录数：">
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
            EnableMaximize="true" EnableResize="true" EnableMinimize="true" OnClose="Window1_Close"
            IsModal="True" Width="560" Height="380" WindowPosition="GoldenSection">
        </f:Window>
    </form>
</body>
</html>
