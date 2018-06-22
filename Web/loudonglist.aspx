<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="loudonglist.aspx.cs" Inherits="Maticsoft.Web.loudonglist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-漏洞列表
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
    <script src="js/jquery-1.6.4.min.js"></script>
    <script src="js/loudong.js"></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="gg">
        <div><span class="ym-gr">您现在的位置：首页 &gt;  &gt; <a href=""></a></span></div>
    </div>--%>
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <div style="color: #002E8C; margin-left: 5px;margin-bottom:10px;"><font><b style="font-size: 24px;">漏洞列表</b></font></div>
            <div class="panel panel-default">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th></th>
                            <th style="width: 260px; overflow: hidden;">时间</th>
                            <th style="width: 600px; overflow: hidden;">漏洞标题</th>
                            <th>提交者</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptNewSubmit" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td></td>
                                    <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                    <td>
                                        <a href="/loophole/detail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                    </td>
                                    <td>
                                        <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>" title="<%#GetUserNetName(Eval("netname").ToString()) %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>										</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <tr>
                            <td colspan="4">
                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" UrlPaging="true" LayoutType="Div" PageIndexBoxType="DropDownList"
                                    ShowNavigationToolTip="true" HorizontalAlign="Center" OnPageChanged="AspNetPager1_PageChanged"
                                    FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CurrentPageButtonClass="cpb"
                                    SubmitButtonText="确认" TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到" CssClass="pages"
                                    PageSize="20" NumericButtonCount="4">
                                </webdiyer:AspNetPager>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
</asp:Content>

