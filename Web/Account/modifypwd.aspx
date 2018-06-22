<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="modifypwd.aspx.cs" Inherits="Maticsoft.Web.Account.modifypwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    漏洞平台-密码修改
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="/css/account/login.css" rel="stylesheet" />
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
            <h3 class="text-center">修改密码</h3>
            <div class="panel-body">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <asp:TextBox ID="txtPwd" CssClass="form-control" placeholder="原密码" TextMode="Password" name="password" runat="server"></asp:TextBox>
                        <div class="i_pass"></div>
                        <div class="error" id="errorPassWord" runat="server" visible="false">原输入密码不正确，请重新输入</div>
                        <div class="error" id="errorNull" runat="server" visible="false">密码不能为空</div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <asp:TextBox ID="txtNewPwd" CssClass="form-control" placeholder="请输入新密码" TextMode="Password" name="password" runat="server"></asp:TextBox>
                        <div class="i_pass"></div>
                         <div class="error" id="errorNewPwdNull" runat="server" visible="false">密码不能为空</div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <asp:TextBox ID="txtResetPwd" CssClass="form-control" placeholder="请再次输入新密码" TextMode="Password" name="password" runat="server"></asp:TextBox>
                        <div class="i_pass"></div>
                        <div class="error" id="errorResetPwd" runat="server" visible="false">您两次密码输入不一致，请重新输入</div>
                        <div class="error" id="errorResetPwdNull" runat="server" visible="false">密码不能为空</div>
                    </div>
                </div>
                <%--                <div class="form-group clearfix">
                    <a class="text-muted pull-right" href="/user/user/resetpassword.html">忘记密码？</a>
                </div>--%>
                <div class="form-group">
                    <asp:Button ID="btnLogin" OnClick="btnLogin_Click" CssClass="btn btn-primary" Width="400px" runat="server" Text="提交" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>
