<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loophole_typelist.aspx.cs" Inherits="WebManage.loophole.loophole_typelist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />
        <f:Panel ID="Panel2" Title="漏洞列表" runat="server" Layout="Fit" EnableFrame="true" EnableCollapse="true"
            BodyPadding="5px" Width="1400px" ShowBorder="True"
            ShowHeader="True">
            <Items>
                <f:Form ID="Form2" runat="server" ShowBorder="false" ShowHeader="false">
                    <Rows>
                        <f:FormRow>
                            <Items>
                                <f:DropDownList ID="ddlProblemType" runat="server" Width="300px" Label="问题类型">
                                    <f:ListItem Text="请选择" Value="" />
                                    <f:ListItem Text="互联网应用" Value="1" />
                                    <f:ListItem Text="通用性软件" Value="2" />
                                </f:DropDownList>
                                <f:DropDownList ID="ddlIsessence" runat="server" Width="300px" Label="是否精华榜">
                                    <f:ListItem Text="请选择" Value="" />
                                    <f:ListItem Text="否" Value="0" />
                                    <f:ListItem Text="是" Value="1" />
                                </f:DropDownList>
                                <f:TextBox ID="txtTitle" runat="server" Width="300px" Label="漏洞标题"></f:TextBox>

                                <f:Button ID="btnSearch" runat="server" Text="搜 索" OnClick="btnSearch_Click"></f:Button>

                            </Items>
                        </f:FormRow>
                        <f:FormRow>
                            <Items>
                                <f:Grid ID="Grid1" PageSize="10" ShowBorder="true" ShowHeader="false" EnableTextSelection="true"
                                    AllowPaging="true" runat="server" EnableCheckBoxSelect="True" AllowSorting="true" SortDirection="DESC" SortField="Id"
                                    DataKeyNames="Id" OnPageIndexChange="Grid1_PageIndexChange" IsDatabasePaging="true" OnSort="Grid1_Sort" OnRowCommand="Grid1_RowCommand">
                                    <Columns>
                                        <f:RowNumberField />
                                        <f:TemplateField HeaderText="问题类型" Width="80px">
                                            <ItemTemplate>
                                                <%#GetProblemType(Eval("problemtype").ToString()) %>
                                            </ItemTemplate>
                                        </f:TemplateField>
                                        <f:BoundField DataField="title" HeaderText="标题" SortField="title" Width="100" />
                                        <f:TemplateField HeaderText="漏洞等级">
                                            <ItemTemplate>
                                                <%#GetRankType(Eval("ranktype").ToString()) %>
                                            </ItemTemplate>
                                        </f:TemplateField>
                                        <f:BoundField DataField="tag" HeaderText="标签" Width="105" />
                                        <f:BoundField DataField="userid" HeaderText="所属用户" Width="120" />
                                        <f:BoundField DataField="addtime" HeaderText="添加时间" Width="150" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" SortField="addtime" />
                                        <f:BoundField DataField="modeltime" HeaderText="修改时间" Width="150" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" SortField="modeltime" />
                                        <f:TemplateField HeaderText="审核状态">
                                            <ItemTemplate>
                                                <%#GetState(Eval("state").ToString()) %>
                                            </ItemTemplate>
                                        </f:TemplateField>
                                        <f:TemplateField HeaderText="是否精华">
                                            <ItemTemplate>
                                                <%#(Eval("isessence").ToString()=="0"?"否":"精华") %>
                                            </ItemTemplate>
                                        </f:TemplateField>
                                        <f:BoundField DataField="companyname" HeaderText="厂商名称" Width="105" />
                                        <f:GroupField HeaderText="操作" TextAlign="Center">
                                            <Columns>
                                                <f:TemplateField HeaderText="详情" Width="50" ToolTip="点击编辑" TextAlign="Center">
                                                    <ItemTemplate>
                                                        <a href="javascript:window.parent.addExampleTab('brandJoin_tabDepartment<%# Eval("id") %>', '/loophole/detail.aspx?id=<%#Eval("id") %>', '漏洞详情', '/Admin/res/icon/tag_blue_edit.png', false);">
                                                            <img src="/res/icon/building.png" /></a>
                                                    </ItemTemplate>
                                                </f:TemplateField>
                                                <f:TemplateField HeaderText="审核" Width="50" ToolTip="点击审核" TextAlign="Center">
                                                    <ItemTemplate>
                                                        <a href="javascript:window.parent.addExampleTab('brandJoin1_tabDepartment<%# Eval("id") %>', '/loophole/summary.aspx?id=<%#Eval("id") %>', '审核', '/Amin/res/icon/Pencil.png', false);">
                                                            <img src="/res/icon/Pencil.png" /></a>
                                                    </ItemTemplate>
                                                </f:TemplateField>
                                                <%--  <f:TemplateField HeaderText="编辑" Width="50" ToolTip="点击编辑" TextAlign="Center">
                                    <ItemTemplate>
                                        <a href="javascript:window.parent.addExampleTab('brandJoin_tabDepartment<%# Eval("id") %>', '/loophole/edit.aspx?id=<%#Eval("id") %>', '漏洞更新', '/res/icon/tag_blue_edit.png', false);">
                                            <img src="/res/icon/building.png" /></a>
                                    </ItemTemplate>
                                </f:TemplateField>--%>
                                                <f:WindowField ColumnID="myWindowField" Width="60px" WindowID="Window1" HeaderText="精华"
                                                    Icon="Pencil" ToolTip="是否精华" DataTextFormatString="{0}" DataIFrameUrlFields="Id"
                                                    DataIFrameUrlFormatString="vtype.aspx?id={0}" DataWindowTitleField=""
                                                    DataWindowTitleFormatString="是否精华" />
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
                                            <f:ListItem Text="10" Value="10" Selected="true" />
                                            <f:ListItem Text="15" Value="15" />
                                            <f:ListItem Text="20" Value="20" />
                                        </f:DropDownList>
                                    </PageItems>
                                </f:Grid>
                            </Items>
                        </f:FormRow>
                    </Rows>
                </f:Form>
            </Items>
        </f:Panel>
        <f:Window ID="Window1" Title="编辑" Hidden="true" EnableIFrame="true" runat="server"
            CloseAction="HidePostBack" EnableConfirmOnClose="true" Target="Top"
            EnableMaximize="true" EnableResize="true" OnClose="Window1_Close"
            IsModal="True" Width="400px" Height="300px">
        </f:Window>
    </form>
</body>
</html>
