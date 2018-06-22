<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.ascx.cs" Inherits="Maticsoft.Web.Controls.Login.UserInfo" %>

<%--<%@ Register Src="~/Controls/Login/Message.ascx" TagPrefix="Login" TagName="Message" %>--%>

<%if (HttpContext.Current.User.Identity.IsAuthenticated)
  {
      var user = (HttpContext.Current.User as Maticsoft.Common.JQFormsPrincipal<Maticsoft.Model.member>).UserData;%>


<div class="is-top">
    <div style="float: left;">
        <div class="c_fl">
            <a class="js_nav_collect" id="A1" href="javascript:;"><b></b>设为首页</a>
            <a class="js_nav_weibo" href="http://weibo.com/soupuwang" target="_blank"><b></b>收藏</a>
        </div>
    </div>
    <div class="top_c">
        <span style="margin: 0 10px;"><a href="/loophole/add.aspx">提交漏洞</a>&nbsp;|&nbsp;
                欢迎您&nbsp;<a href="#" style="color:#808080;font-weight:700;"><%=user.netname %></a><span style="color:#808080;font-weight:700;">（<%=Maticsoft.BLL.member_rank.GetRankType(user.rank) %>）</span>
            &nbsp;|&nbsp;
           <a href="#" id="APersonalCenter" runat="server"><span>进入个人中心</span></a>
            &nbsp;|&nbsp;
            <a href="/Api/AjaxSubmit.ashx?action=SignOut">安全退出</a>
        </span>
    </div>
</div>
<%}
  else
  {  %>

<div class="is-top">
    <div style="float: left;">
        <div class="c_fl">
            <a class="js_nav_collect" id="fav" href="javascript:;"><b></b>设为首页</a>
            <a class="js_nav_weibo" href="http://weibo.com/soupuwang" target="_blank"><b></b>收藏</a>
        </div>
    </div>
    <div class="top_c">
        <span style="margin: 0 10px;"><a href="/loophole/add.aspx">提交漏洞</a>&nbsp;|&nbsp;
                <a id="loginInfoUrl" href="/Login.aspx?ReturnUrl=<%=HttpUtility.UrlEncode(HttpContext.Current.Request.Url.AbsoluteUri) %>">登录</a>
            &nbsp;|&nbsp;<a href="javascript:void(0);">注册</a></span>
    </div>
</div>

<%--<li><a href="">登录</a></li>
    <li><a href="/User/Register.aspx" target="_blank">注册</a></li>
    <li id="Managerli" runat="server" style="display:none"><a href="http://www.soupu.com/ShopManagerLogin.aspx">投资顾问登录</a></li>--%>
<%} %>
