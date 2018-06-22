<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Default.Master" AutoEventWireup="true" CodeBehind="accountdetail.aspx.cs" Inherits="Maticsoft.Web.accountdetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    公告-<%=title %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
          .table > thead > tr > th, .table > tbody > tr > th,
        .table > tfoot > tr > th, .table > thead > tr > td,
        .table > tbody > tr > td, .table > tfoot > tr > td {
            padding: 8px;
            line-height: 1.42857143;
            vertical-align: top;
            border-top: 0px solid #ddd;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:0 auto;width:1024px;">
        <table style="text-align:center; margin:40px auto;width:600px;" class="table">
            <tr>
                <td><span style="font-size:18px;font-weight:700;"><%=title %></span></td>
            </tr>
            <tr>
                <td><span>发布时间：<%=time %></span>&nbsp;<span>&nbsp;&nbsp;来源：本站</span>&nbsp;&nbsp;&nbsp;编辑：<%=auther %></td>
            </tr>
              <tr>
                <td style="text-align:left;font-family:'Microsoft YaHei'"><span style="font-size:18px;word-break:break-all;word-spacing:normal;"><%=content %></span></td>
            </tr>
            <tr>
                <td></td>
            </tr>
        </table>
    </div>
</asp:Content>
