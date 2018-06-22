<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="announcement.aspx.cs" Inherits="Maticsoft.Web.announcement" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-公告
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .content p.caption {
            font-family: 'Microsoft YaHei';
            width: 1010px;
            line-height: 20px;
            text-indent: 2em;
            font-size: 14px;
            color: red;
            margin: 20px auto 20px;
            padding: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="gg">
        <div><span class="ym-gr">您现在的位置：白帽子 &gt;  &gt; <a href="javascript:void(0)"></a></span></div>
    </div>--%>
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <div style="color: #002E8C; margin-left: 5px;margin-bottom:20px;"><font><b style="font-size: 24px;">公告</b></font></div>
            <div class="panel panel-default">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th></th>
                            <th style="width: 260px; overflow: hidden;">时间</th>
                            <th style="width: 600px; overflow: hidden;">公告标题</th>
                            <th>来源</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptAnnouncement" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td></td>
                                    <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd") %></td>
                                    <td>
                                        <a href="accountdetail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                    </td>
                                    <td>
                                        <%#Eval("auther") %>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr>
                            <td colspan="4">
                                      <webdiyer:AspNetPager ID="AspNetPager1" CurrentPageIndex="0" runat="server" UrlPaging="true" LayoutType="Div" PageIndexBoxType="DropDownList"
                                    ShowNavigationToolTip="true" HorizontalAlign="Center" OnPageChanged="AspNetPager1_PageChanged"
                                    FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CurrentPageButtonClass="cpb"
                                    SubmitButtonText="确认" TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到" CssClass="pages"
                                    PageSize="20" NumericButtonCount="4" AlwaysShow="true">
                                </webdiyer:AspNetPager>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>

