<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Maticsoft.Web.index" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-首页
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <style>
        .morethan {
            float: right;
            padding-right: 20px;
            font-size: 14px;
            font-weight: 700;
        }

        #gotop {
            display: block;
            background-position: -276px -312px;
            bottom: 100px;
            _margin-bottom: 100px;
            float: right;
            height: 28px;
            width: 90px;
            margin-top: 4px;
            background: url('/images/index/FHDB1.JPG') no-repeat 0px;
        }

            #gotop:hover {
                display: block;
                background-position: -331px -312px;
                bottom: 100px;
                _margin-bottom: 100px;
                height: 28px;
                width: 90px;
                margin-top: 4px;
                background: url('/images/index/FHDB2.JPG') no-repeat;
            }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content" style="margin-top: 20px; overflow: auto;">
        <div style="width: 1024px; margin: 0 auto;">
            <div class="panel panel-default">
                <div class="panel-heading">最新提交<a href="/index/More.aspx?action=SubmitNews" class="" style="float: right;">More</a></div>
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
                                      <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>" title="<%#GetUserNetName(Eval("netname").ToString()) %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>				
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>

            <div style="width: 1024px; margin: 0 auto;">
                <div class="panel panel-default">
                    <div class="panel-heading">最新确认<a href="/index/More.aspx?action=ConfirmNews" class="" style="float: right;">More</a></div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th></th>
                                <th style="width: 260px; overflow: hidden;">时间
                                </th>
                                <th style="width: 600px; overflow: hidden;">漏洞标题
                                </th>
                                <th>提交者
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="rptRight" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td></td>
                                        <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                        <td>
                                            <a href="/loophole/detail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                        </td>
                                        <td>
                                            <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>" title="<%#GetUserNetName(Eval("netname").ToString()) %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>				
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>

                <div style="width: 1024px; margin: 0 auto;">
                    <div class="panel panel-default">
                        <div class="panel-heading">最新公开<a href="/index/More.aspx?action=PublicNews" class="" style="float: right;">More</a></div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th style="width: 260px; overflow: hidden;">时间
                                    </th>
                                    <th style="width: 600px; overflow: hidden;">漏洞标题
                                    </th>
                                    <th>提交者
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptPublicNews" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td></td>
                                            <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                            <td>
                                                <a href="/loophole/detail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                            </td>
                                            <td>
                                                <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>" title="<%#GetUserNetName(Eval("netname").ToString()) %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>				
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div style="width: 1024px; margin: 0 auto;">
                    <div class="panel panel-default">
                        <div class="panel-heading">漏洞预警<a href="/index/More.aspx?action=Warning" class="" style="float: right;">More</a></div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th style="width: 260px; overflow: hidden;">时间
                                    </th>
                                    <th style="width: 600px; overflow: hidden;">漏洞标题
                                    </th>
                                    <th>提交者
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptWarning" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td></td>
                                            <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                            <td>
                                                <a href="/loophole/detail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                            </td>
                                            <td>
                                                  <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>" title="<%#GetUserNetName(Eval("netname").ToString()) %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>				
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div style="width: 1024px; margin: 0 auto;">
                    <div class="panel panel-default">
                        <div class="panel-heading">等待认领<a href="/index/More.aspx?action=WaitConfirm" class="" style="float: right;">More</a></div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th style="width: 260px; overflow: hidden;">时间
                                    </th>
                                    <th style="width: 600px; overflow: hidden;">漏洞标题
                                    </th>
                                    <th>提交者
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rptWait" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td></td>
                                            <td><%#Convert.ToDateTime(Eval("addtime")).ToString("yyyy-MM-dd hh:mm:ss") %></td>
                                            <td>
                                                <a href="/loophole/detail.aspx?id=<%#Eval("id") %>"><%#Eval("title") %></a>
                                            </td>
                                            <td>
                                             <a href="/Account/userloophole.aspx?name=<%#Eval("netname") %>" title="<%#GetUserNetName(Eval("netname").ToString()) %>"><%#GetUserNetName(Eval("netname").ToString()) %></a>				
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div style="width: 1024px; margin: 0 auto;">
                <div class="col-xs-12 col-sm-12">
                    <h3>友情链接 <small></small></h3>
                    <div class="links_content">
                        <ul>
                            <asp:Repeater runat="server" ID="rptLinkTitle">
                                <ItemTemplate>
                                    <li><a href="<%#Eval("Url") %>" style="font-size: 16px; color: #15C;" title="<%#Eval("BrandName") %>" target="_blank"><%#Eval("BrandName") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%--      <li><a href="#" style="font-size:14px;color:#7E817E;" target="_blank">百度</a></li>
                             <li><a href="#" style="font-size:14px;color:#7E817E;" target="_blank">360</a></li>
                             <li><a href="#" style="font-size:14px;color:#7E817E;" target="_blank">腾讯</a></li>
                             <li><a href="#" style="font-size:14px;color:#7E817E;" target="_blank">易合网</a></li>
                             <li><a href="#" style="font-size:14px;color:#7E817E;" target="_blank">联商网</a></li>
                             <li><a href="#" style="font-size:14px;color:#7E817E;" target="_blank">搜铺网</a></li>--%>
                        </ul>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-12">
                    <h3>合作伙伴 <small>／Partner</small></h3>
                    <div class="links_content">
                        <ul>
                            <asp:Repeater runat="server" ID="rptLinks">
                                <ItemTemplate>
                                    <li><a href="<%#Eval("Url") %>" target="_blank">
                                        <img src="<%#Eval("ImgUrl") %>" style="border:1px solid #ccc;" alt="<%#Eval("BrandName") %>"></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>

            </div>

            <div id="duilian_rb" style="TOP: 450px; right: 3px; _position: absolute; position: fixed;">
                <a id="HF" href="#pl_href"></a>
                <a id="gotop" href="javascript:void(0)"></a>
            </div>
            <script>
                function gotop() {
                    gth = $(window).height();
                    gtt = $(document).scrollTop();
                    if (gtt >= gth) {
                        $('#gotop').show();
                    } else {
                        $('#gotop').hide();
                    }
                }

                $(document).ready(function (e) {
                    gotop();
                    $('#gotop').click(function () {
                        $(document).scrollTop(0);
                    });
                    $(window).scroll(function (e) {
                        gotop();
                    });
                });
            </script>
</asp:Content>
