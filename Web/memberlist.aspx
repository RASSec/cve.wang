<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="memberlist.aspx.cs" Inherits="Maticsoft.Web.memberlist" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-会员
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
    <script type="text/javascript">
        <%if (!User.Identity.IsAuthenticated)
          {%>
        window.onload = function () {
            alert("您还不是本站的会员，请您注册登录;");
            window.location.href = '/index.aspx';
        }
        <%}%>
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="gg">
        <div><span class="ym-gr">您现在的位置：白帽子 &gt;  &gt; <a href="javascript:void(0)"></a></span></div>
    </div>--%>
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <div style="color: #002E8C; margin-left: 5px;"><font><b style="font-size: 24px;">会员</b></font></div>
            <p class="caption">
                将一切对安全极为感兴趣，对事物运行的原理有着天生的好奇心，愿意将技术回归技术，愿意为其他朋友做出贡献的人定义为白帽子，你可以通过注册提交漏洞来成为白帽子中的一员
            </p>
            <div class="panel panel-default">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th></th>
                            <th style="width: 260px; overflow: hidden;">注册时间</th>
                            <th style="width: 600px; overflow: hidden;">会员名称</th>
                            <th>会员积分&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptCompanyList" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td></td>
                                    <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd") %></td>
                                    <td>
                                        <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>
                                         &nbsp;
                                        <%#Maticsoft.Common.StringPlus.GetXinNumber(Convert.ToInt32(Eval("xinnumber"))) %>	
                                    </td>
                                    <td>
                                        <a href="javascript:void(0)" title="<%#Eval("ranknumber") %>"><%#Eval("ranknumber") %></a>			
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
                                    PageSize="20" NumericButtonCount="4" AlwaysShow="true">
                                </webdiyer:AspNetPager>
                            </td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
</asp:Content>
