<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="add.aspx.cs" Inherits="Maticsoft.Web.loophole.add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-提交漏洞
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
    <style type="text/css">
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

        .table tr th {
            font-family: 'Microsoft YaHei';
            width: 150px;
            font-size: 18px;
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
            height: 38px;
        }

        .error {
            color: red;
            font-size: 14px;
            display: block;
        }

        .errorVisable {
            display: none;
        }

        .table > thead > tr > th, .table > tbody > tr > th,
        .table > tfoot > tr > th, .table > thead > tr > td,
        .table > tbody > tr > td, .table > tfoot > tr > td {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            border-top: 0px solid #ddd;
        }

        .Validform_wrong {
            border: 1px solid #ffbdbe;
            width: 220px;
            height: 32px;
            background: #ffebeb;
            padding: 0 5px;
            margin-left: 5px;
            color: #333;
            font-size: 14px;
        }

        .Validform_right {
            color: #09d007;
            font-size: 14px;
        }

        .errorVisable {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
    <script src="../kindeditor/kindeditor.js"></script>
    <script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
    <script src="../js/jquery-1.6.4.min.js"></script>
    <script src="../js/Validform_v5.3.2.js"></script>
    <script src="../js/addloophole/addmodel.js"></script>
    
<%--    <link href="/js/test/lib/codemirror.css" rel="stylesheet" />
    <link href="/js/test/doc/docs.css" rel="stylesheet" />
    <script src="/js/test/lib/codemirror.js"></script>
    <script src="/js/test/xml/xml.js"></script>--%>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="gg">
        <div><span class="ym-gr">您现在的位置：登录 &gt;  &gt; <a href=""></a></span></div>
    </div>--%>
    <div class="content" style="margin-top: 20px;">
        <div style="width: 1024px; margin: 0 auto;">
            <p class="caption">▪  你可以提交关于厂商各种漏洞，如网络配置，服务器管理，钓鱼欺诈等有效的信息提交</p>
            <form class="form1" name="form1" method="post">
                <table class="table" style="width: 960px;">
                    <tr>
                        <th>问题类型：</th>
                        <td>
                            <span>
                                <input type="radio" value="1" datatype="*" errormsg="请选择问题类型!" name="problemtype" id="problemtype" />
                                互联网应用
                          &nbsp;
                              <input type="radio" value="2" name="problemtype" id="problemtype1" />
                                通用性软件
                            </span>
                            <span>&nbsp; <span id="spanproblem" class="Validform_checktip"></span>
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th>问题厂商：</th>
                        <td>
                            <select name="company" style="width: 300px;">
                                <option value="">请选择</option>
                            </select>
                            <span id="Span2" class="Validform_checktip"></span>
                            <div style="margin-top: 5px;" id="customCompany">
                                <button type="button" style="float: left;" id="customButton" class="btn btn-primary btn-xs">+ 自定义厂商</button>
                                <span style="padding-left: 10px;">
                                    <input type="text" value="" placeholder="请填写厂商" style="width: 206px;" name="customCom" class="errorVisable" id="customCom" />
                                </span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>漏洞类型：</th>
                        <td>
                            <select name="ddlbtype" style="width: 200px;" datatype="*" errormsg="请选择漏洞类型!">
                                <option value="">请选择</option>
                            </select>
                            <select name="ddlstype" style="width: 200px;" datatype="*" errormsg="请选择漏洞类型!">
                                <option value="">请选择</option>
                            </select>
                            <span id="Span1" class="Validform_checktip"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>漏洞标题：</th>
                        <td>
                            <input type="text" name="loopholetitle" id="loopholetitle" style="width: 400px;" datatype="s2-100" errormsg="标题至少2个字符,最多100个字符！" nullmsg="请填写标题！" />
                            <span id="accountValidate" class="Validform_checktip"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>漏洞等级：</th>
                        <td>
                            <select name="ddlrank" style="width: 200px;" datatype="*" errormsg="请选择漏洞等级!">
                                <option value="">请选择</option>
                                <option value="0">低</option>
                                <option value="1">中</option>
                                <option value="2">高</option>
                            </select>
                            <span id="loopholerank" class="Validform_checktip"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>自评Rank：</th>
                        <td>
                            <input type="text" name="rank" id="rank" style="width: 200px;" datatype="/^([1-9]|10)$/" errormsg="评分为1-10的整数！" nullmsg="请填写评分！" />
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th>问题描述：</th>
                        <td>
                            <textarea name="problemdesc" id="problemdesc" style="width: 600px;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>详细说明：</th>
                        <td>
                            <textarea name="detaildesc" id="detaildesc" style="width: 600px;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>漏洞证明：</th>
                        <td>
                            <textarea name="ldzm" id="ldzm" style="width: 600px;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>漏洞修复：</th>
                        <td>
                            <textarea name="ldxf" id="ldxf" style="width: 600px;"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>标签：</th>
                        <td>
                            <input type="text" name="tag" id="tag" style="width: 400px;" />
                            <span style="font-size: 16px;">以 (半角空格)分隔多个标签</span>
                        </td>
                    </tr>
                    <tr>
                        <th>验证码：</th>
                        <td>
                            <input type="text" name="code" id="code" style="width: 100px;" datatype="n" errormsg="验证码为数字格式！" nullmsg="请填写验证码！" />
                            <img src="/ValidateCode.aspx?ValidateCodeType=1&0.011150883024061309" style="vertical-align: middle;" onclick="this.src='/ValidateCode.aspx?ValidateCodeType=1&'+Math.random();" id="imgValidateCode" alt="点击刷新验证码" title="点击刷新验证码" style="cursor: pointer;" />
                            <span style="font-size: 16px;" class="Validform_checktip"></span>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="checkbox" value="huluwa" name="luren" id="luren" />
                            匿名提交 (漏洞提交者将显示为“路人甲”，不影响Rank与WB发放)
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="button" value="提交" class="btn btn-primary" id="btnsave" name="btnsave" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</asp:Content>

