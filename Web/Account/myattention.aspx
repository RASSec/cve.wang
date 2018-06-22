<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="myattention.aspx.cs" Inherits="Maticsoft.Web.Account.myattention" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-我关注的漏洞
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
    <style>
        .btn {
            padding:1px 8px;
            font-size:12px;
        }
    </style>
    <script src="/js/jquery-1.6.4.min.js"></script>
    <script src="/js/loudong.js"></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <div style="color: #002E8C; margin-left: 5px; margin-bottom: 10px;"><font><b style="font-size: 24px;">我关注的漏洞</b></font></div>
            <div class="panel panel-default">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th style="width: 260px; overflow: hidden;">关注时间</th>
                            <th style="width: 500px; overflow: hidden;">漏洞标题</th>
                            <th style="width: 100px;">提交者</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptNewSubmit" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#Convert.ToDateTime(Eval("attentime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                    <td>
                                        <a href="/loophole/detail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                    </td>
                                    <td>
                                       <a href="javascript:void(0);" title="<%#Maticsoft.Common.StringPlus.GetUserNetStr(Eval("netname").ToString()) %>"><%#Maticsoft.Common.StringPlus.GetUserNetStr(Eval("netname").ToString()) %></a>		
                                    </td>
                                    <td>
                                        <button class="btn btn-primary" type="button" onclick="cancleAtten(this);" data-val="<%#Eval("clid") %>" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                            取消关注
                                        </button>
                                        
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
    </div>
</asp:Content>
