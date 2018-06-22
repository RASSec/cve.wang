<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SubmitNews.ascx.cs" Inherits="Maticsoft.Web.Controls.Index.SubmitNews" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<div style="color: #002E8C; margin-left: 5px;"><font><b><%=title %>（<%=count %>）</b></font></div>
<table class="exploit_list bootstrap-wrapper" style="font: 15px/26px 'Open Sans', sans-serif;" width="1024">
    <thead>
        <tr>
            <th class="text-center date">时间
            </th>
            <th class="description">漏洞标题
            </th>
            <th class="text-center">作者
            </th>
        </tr>
    </thead>
    <tbody>
        <asp:Repeater ID="rptNewSubmit" runat="server">
            <ItemTemplate>
                <tr>
                    <td class="date" style="width: 145px; overflow: hidden;"><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                    <td class="description" style="width: 680px;">
                        <a href="https://www.exploit-db.com/exploits/38239/"><%#Eval("title") %>></a>
                    </td>
                    <td class="author" style="width: 200px; overflow: hidden;">
                        <a href="https://www.exploit-db.com/author/?a=8244" title="<%#Eval("userid") %>"><%#Eval("userid") %></a>										</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr>
            <td colspan="3">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" UrlPaging="true" LayoutType="Div" PageIndexBoxType="DropDownList"
                    ShowNavigationToolTip="true" HorizontalAlign="Center" OnPageChanged="AspNetPager1_PageChanged"
                    FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CurrentPageButtonClass="cpb"
                    SubmitButtonText="确认" TextAfterPageIndexBox="页" TextBeforePageIndexBox="转到" CssClass="pages"
                    PageSize="1" NumericButtonCount="3">
                </webdiyer:AspNetPager>
            </td>
        </tr>
    </tbody>
</table>
