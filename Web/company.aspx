<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="company.aspx.cs" Inherits="Maticsoft.Web.company" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-厂商列表
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .content p.caption {
            width: 1010px;
            line-height: 20px;
            text-indent: 2em;
            margin: 20px auto 20px;
            padding: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <div style="color: #002E8C; margin-left: 5px;"><font><b style="font-size: 24px;">厂商列表</b></font></div>
            <p class="caption">关注所有有力量影响互联网，改变人们生活的企业各种层面上的安全问题，你可以注册为厂商来关注和修复自己企业的安全问题</p>

            <div class="panel panel-default">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th></th>
                            <th style="width: 260px; overflow: hidden;">时间</th>
                            <th style="width: 600px; overflow: hidden;">厂商链接</th>
                            <th>厂商名称</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptCompanyList" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td></td>
                                    <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                    <td>
                                        <%#Eval("companyurl") %>
                                    </td>
                                    <td>
                                        <a href="/Account/mycomloophole.aspx?name=<%#Eval("companyname") %>" title="<%#Eval("companyname") %>"><%#Eval("companyname") %></a>										</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr>
                            <td colspan="4">
                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CurrentPageIndex="0" UrlPaging="true" LayoutType="Div" PageIndexBoxType="DropDownList"
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
</asp:Content>
