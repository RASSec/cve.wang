<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Maticsoft.Web.loophole.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    <%=loopholetitle %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .content p.caption {
            font-family: 'Microsoft YaHei';
            width: 1010px;
            line-height: 20px;
            text-indent: 2em;
            border: 1px solid #BBB;
            background: #f4f4f4;
            margin: 20px auto 20px;
            padding: 6px;
        }

        .table tr th {
            font-family: 'Microsoft YaHei';
            width: 150px;
            font-size: 16px;
            font-weight: 500;
            text-align: right;
        }

        .table tr td, option {
            font-family: 'Microsoft YaHei';
            font-size: 16px;
            font-weight: 500;
            padding-left: 10px;
        }

            .table tr td input, select, textarea {
                font-size: 16px;
            }

        .table tr {
            height: 32px;
        }

        .table > thead > tr > th, .table > tbody > tr > th,
        .table > tfoot > tr > th, .table > thead > tr > td,
        .table > tbody > tr > td, .table > tfoot > tr > td {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            border-top: 0px solid #ddd;
            word-break:break-all;
            word-wrap:break-word;
        }


        #HF {
            display: block;
            bottom: 100px;
            _margin-bottom: 100px;
            height: 28px;
            width: 90px;
            background: url('../images/index/KH1.JPG') no-repeat;
        }

            #HF:hover {
                display: block;
                bottom: 100px;
                _margin-bottom: 100px;
                height: 28px;
                width: 90px;
                background: url('../images/index/KH2.JPG') no-repeat;
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
            background: url('../images/index/FHDB1.JPG') no-repeat 0px;
        }

            #gotop:hover {
                display: block;
                background-position: -331px -312px;
                bottom: 100px;
                _margin-bottom: 100px;
                height: 28px;
                width: 90px;
                margin-top: 4px;
                background: url('../images/index/FHDB2.JPG') no-repeat;
            }

        .pl_quantity {
            margin-top: 10px;
            border-bottom: 1px dashed #c2c3ba;
        }

        .pl_list {
            border-bottom: 1px dashed #c2c3ba;
            padding: 10px 0;
            width: 100%;
            WORD-BREAK: break-all;
            WORD-WRAP: break-word;
        }

        .pl_quantity em {
            color: #F00;
            font-weight: bold;
        }

        .pl_quantity {
            width: 100%;
        }

        em {
            font-style: normal;
        }

        p {
            display: block;
            -webkit-margin-before: 1em;
            -webkit-margin-after: 1em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
        }

        .pl_list .pl_time {
            color: #0072c6;
        }
    </style>
    <script src="../js/loudong.js"></script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    <div class="gg">
        <div><span class="ym-gr">您现在的位置：登录 &gt;  &gt; <a href=""></a></span></div>
    </div>--%>
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <table class="table" style="width: 1000px;">
                <tr style="height: 50px;">
                    <th style="font-size: 25px; font-weight: 900; font-family: 'Microsoft YaHei';">漏洞概要</th>
                    <td>
                        <div style="text-align: right;" id="atten">
                            <%if (User.Identity.IsAuthenticated)
                              { %>
                            <%if (isAttention)
                              { %>
                            <span style="font-size: 16px; border: 1px solid #ccc; background: #ccc; padding: 2px;"><span style="font-weight: 900; font-size: 14px;">√</span> 已关注</span>
                            <%}
                              else
                              { %>
                            <span style="font-size: 16px;">关注数(<%=attentionCount %>)</span>&nbsp;&nbsp;<span><a href="javascript:void(0)" id="attentionTo" style="font-size: 16px;">关注此漏洞</a></span>
                            <%} %>
                            <%}
                              else
                              {%>
                            <span style="font-size: 16px;">关注数(<%=attentionCount %>)</span>&nbsp;&nbsp;<span><a href="javascript:void(0)" id="attentionTo" style="font-size: 16px;">关注此漏洞</a></span>
                            <%} %>
                        </div>
                        <input type="hidden" name="loophid" id="loophid" value="<%=id %>" />
                    </td>
                </tr>
                <tr>
                    <th>缺陷编号：</th>
                    <td><%=code %></td>
                </tr>
                <tr>
                    <th>漏洞标题：</th>
                    <td><%=loopholetitle %></td>
                </tr>
                <tr>
                    <th>相关厂商：</th>
                    <td><%=company %></td>
                </tr>
                <tr>
                    <th>漏洞作者：</th>
                    <td><%=auther %></td>
                </tr>
                <tr>
                    <th>提交时间：</th>
                    <td><%=addtime %></td>
                </tr>
                <%if (isconfirm || isshow)
                  { %>
                <tr>
                    <th>确认时间：</th>
                    <td><%=confirmdate %></td>
                </tr>
                <%} %>
                <%if (isshow)
                  { %>
                <tr>
                    <th>公开时间：</th>
                    <td><%=publicdate%></td>
                </tr>
                <tr>
                    <th>漏洞类型：</th>
                    <td><%=loopholetype %></td>
                </tr>
                <tr>
                    <th>危害等级：</th>
                    <td><%=ranktype %></td>
                </tr>
                <%} %>
                <tr>
                    <th>漏洞状态：</th>
                    <td><%=state %></td>
                </tr>
                <%if (isshow)
                  { %>
                <tr>
                    <th>自评Rank：</th>
                    <td><%=rank %></td>
                </tr>
                <%} %>
                <%if (isshow)
                  { %>
                <tr>
                    <th>Tags标签：</th>
                    <td><%=tags %></td>
                </tr>
                <%} %>
                <tr>
                    <th>分享漏洞：</th>
                    <td>

                        <div class="bdsharebuttonbox">
                            <a href="#" class="bds_more" data-cmd="more">分享到：</a>
                            <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间">QQ空间</a>
                            <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博">新浪微博</a>
                            <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博">腾讯微博</a>
                            <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信">微信</a>
                        </div>
                        <script>window._bd_share_config =
                        {
                            "common":
                                {
                                    "bdSnsKey": {},
                                    "bdText": "<%=Maticsoft.Common.Utils.DropHTML(loopholetitle)%>",
                                    "bdDesc": '<%=Maticsoft.Common.Utils.DropHTML(description)%>',
                                    "bdMini": "2",
                                    "bdMiniList": false,
                                    "bdPic": "",
                                    "bdStyle": "0",
                                    "bdSize": "16"
                                },
                            "share":
                                { "bdSize": 16 },
                            "image":
                                {
                                    "viewList": ["qzone", "tsina", "tqq", "weixin"],
                                    "viewText": "分享到：",
                                    "viewSize": "16"
                                }
                        }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
                        <%--<div style="text-align: right;">
                            <span style="font-size: 14px;">0人收藏</span>&nbsp;&nbsp;<span><a href="javascript:void(0)" style="font-size: 14px;">收藏</a></span>
                        </div>--%>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="border: 1px solid #ccc; margin-left: 40px;"></div>
                    </td>
                </tr>
                <%if (isshow)
                  { %>
                <tr style="height: 50px;">
                    <th style="font-size: 25px; font-weight: 900; font-family: 'Microsoft YaHei';">漏洞详情</th>
                    <td></td>
                </tr>
                <tr>
                    <th>披露状态：</th>
                    <td></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <%=pilou %>
                    </td>
                </tr>
                <%}%>
                <tr>
                    <th>简要描述：</th>
                    <td></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <%=description %>
                    </td>
                </tr>

                <%if (isshow)
                  { %>
                <tr>
                    <th>详细描述：</th>
                    <td></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <%=detaildesc %>
                    </td>
                </tr>
                <tr>
                    <th>漏洞证明：</th>
                    <td></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <%=prov %>
                    </td>
                </tr>

                <tr>
                    <th>修复方案：</th>
                    <td></td>
                </tr>
                <tr>
                    <th></th>
                    <td>
                        <%=repair %>
                    </td>
                </tr>

                <tr>
                    <th>漏洞hash：</th>
                    <td><%=hash %></td>
                </tr>
                <tr>
                    <th>版权注明：</th>
                    <td><%=copyright %></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="border: 1px solid #ccc; margin-left: 40px;"></div>
                    </td>
                </tr>
                <tr style="height: 50px;">
                    <th style="font-size: 25px; font-weight: 900; font-family: 'Microsoft YaHei';">漏洞回应</th>
                    <td></td>
                </tr>
                <tr>
                    <th>厂商回应：</th>
                    <td></td>
                </tr>
                <tr>
                    <th></th>
                    <td><%=companyrepy %></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div style="border: 1px solid #ccc; margin-left: 40px;"></div>
                    </td>
                </tr>
                <%}%>
                <tr style="height: 50px;">
                    <th style="font-size: 25px; font-weight: 900; font-family: 'Microsoft YaHei';">评论</th>
                    <td></td>
                </tr>
                <tr id="pl_href">
                    <th></th>
                    <td>
                        <p>你可以输入<em id="sizeNum">300</em>字</p>
                        <textarea name="content" rows="6" id="tbComment" placeholder="请在此输入评论内容。" style="width: 500px;"></textarea>
                    </td>

                </tr>
                <tr>
                    <th></th>
                    <td>

                        <input type="text" id="validatecode" name="validatecode" style="width: 100px;" />
                        &nbsp;
                        <img src="/ValidateCode.aspx?ValidateCodeType=1&0.011150883024061309" onclick="imgValiClick(this);" id="imgValidateCode" class="imgValidateCode" alt="点击刷新验证码" title="点击刷新验证码" style="cursor: pointer; vertical-align: middle;">
                        &nbsp;
                        <input type="button" id="btnComment" value="发表评论" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td style="padding: 10px 0px; line-height: 26px; display: table-cell; vertical-align: inherit; font: 12px/1.5 tahoma,arial,宋体;">
                        <div class="pl_quantity">共<em><%=pinluncount %></em>条评论</div>
                        <div id="commentDiv">
                            <asp:Repeater ID="repeaterComment" runat="server">
                                <ItemTemplate>
                                    <div class="pl_list">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <p class="pl_time">由<%#Eval("title")%>评论 <%#Convert.ToDateTime(Eval("addtime").ToString()).ToString("yyyy-MM-dd hh:mm:ss") %></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-indent: 10px;"><%#Eval("content").ToString().Length > 200 ? Eval("content").ToString().Substring(0, 200) : Eval("content").ToString()%></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <%-- <div class="pl_list">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p class="pl_time">由jqshu评论 2015-12-05 00:11:12</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-indent: 20px;">dsfadsasdfsfadsasdsfadsasdasdasdfasdasdfasdasdfasdasdfasdasdfasdasdfasdfasdasdfasdfa</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pl_list">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p class="pl_time">由jqshu评论 2015-12-05 00:11:12</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-indent: 20px;">dsfadsasdfsfadsasdsfadsasdasdasdfasdasdfasdasdfasdasdfasdasdfasdasdfasdfasdasdfasdfa</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pl_list">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <p class="pl_time">由jqshu评论 2015-12-05 00:11:12</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="text-indent: 20px;">dsfadsasdfsfadsasdsfadsasdasdasdfasdasdfasdasdfasdasdfasdasdfasdasdfasdfasdasdfasdfa</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>--%>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div id="duilian_rb" style="TOP: 450px; right: 3px; _position: absolute; position: fixed;">
        <a id="HF" href="#pl_href"></a>
        <a id="gotop" href="javascript:void(0)"></a>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
    <script type="text/javascript">
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

        $(function () {
            $("#btnComment").click(function () {
                var content = $("#tbComment").val();
                var validatecode = $("#validatecode").val();
                if (!content || content == '') {
                    alert("您的评论还未填写！");
                    return;
                }
                if (!validatecode || validatecode == '') {
                    alert("您的验证码还未填写！");
                    return;
                }
                var id = '<%=id %>';
                $.post("/Api/AjaxSubmit.ashx?action=AddComment", { "newsid": id, "lanmu": 1, "content": content, "validatecode": validatecode }, function (data) {
                    if (data.status == 'y') {
                        var html = "<div class=\"pl_list\"><table><tbody><tr><td><p class=\"pl_time\">由" + data.netName + "评论 " + data.time + "</p></td></tr><tr><td style='text-indent: 10px;'>" + data.content + "</td></tr></tbody></table></div>";
                        $("#commentDiv").prepend(html);
                        $("#tbComment").val("");
                        $("#validatecode").val("");
                        $(".imgValidateCode").each(function () {
                            imgValiClick(this);
                        });
                    }
                    else {
                        alert(data.info);
                    }
                }, 'JSON');
            });
        });

        function imgValiClick(obj) {
            obj.src = '/ValidateCode.aspx?ValidateCodeType=1&' + Math.random();
        }
    </script>
</asp:Content>
