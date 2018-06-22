<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Maticsoft.Web.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-登录
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="css/account/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="script" ContentPlaceHolderID="Script" runat="server">
    <script type="text/javascript">
        $(function () {
            var login = $("#loginInfoUrl").attr("href", "javascript:void(0);");
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- <div class="gg">
        <div><span class="ym-gr">您现在的位置：登录 &gt;  &gt; <a href="#"></a></span></div>
    </div>--%>
    <form id="formadd" runat="server">
        <div class="panel panel-default" style="width: 445px; margin: 50px auto;">
            <h3 class="text-center">用户登录</h3>
            <div class="panel-body">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <asp:TextBox ID="txtUserId" CssClass="form-control" placeholder="请输入用户名" name="username" runat="server" Text=""></asp:TextBox>
                        <div class="i_name"></div>
                        <div class="error" id="errorUserName" runat="server" visible="false">您输入的用户名错误或不存在，请核对后重新输入</div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="请输入密码" TextMode="Password" name="password" runat="server"></asp:TextBox>
                        <div class="i_pass"></div>
                        <div class="error" id="errorPassWord" runat="server" visible="false">您输入密码有误，请重试</div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <asp:TextBox ID="validatecode" CssClass="form-control" placeholder="请输入验证码" Style="width: 150px;" runat="server"></asp:TextBox>
                        &nbsp;
                        <img src="ValidateCode.aspx?ValidateCodeType=1&0.011150883024061309" onclick="this.src='/ValidateCode.aspx?ValidateCodeType=1&'+Math.random();" id="imgValidateCode" alt="点击刷新验证码" title="点击刷新验证码" style="cursor: pointer;margin-top:5px;">
                        <div class="i_pass"></div>
                        <div class="error" id="errorCode" runat="server" visible="false">请输入您的验证码！</div>
                    </div>
                </div>
<%--                <div class="form-group clearfix">
                    <a class="text-muted pull-right" href="/user/user/resetpassword.html">忘记密码？</a>
                </div>--%>
                <div class="form-group">
                    <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn btn-primary" Width="400px" runat="server" Text="登录" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
