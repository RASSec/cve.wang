<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addstype.aspx.cs" Inherits="WebManage.loophole.type.addstype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="pagemanager1" runat="server" />

        <f:Form ID="FormAdd" runat="server" AutoScroll="false" ShowHeader="false" BodyPadding="10px" Title="漏洞小类添加" EnableFrame="false">
            <Rows>
                <f:FormRow>
                    <Items>
                        <f:TextBox ID="tbsmalltypename" Text="" Required="true" Width="400px" ShowRedStar="true" Label="漏洞类型" runat="server"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow>
                    <Items>
                        <f:TextArea ID="tbDescription" Text="" Width="400px" Label="漏洞描述" runat="server"></f:TextArea>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:DropDownList ID="ddlProblemType" AutoPostBack="true" OnSelectedIndexChanged="ddlProblemType_SelectedIndexChanged" runat="server" Width="400px" Label="问题类型">
                            <f:ListItem Text="互联网应用（如微博，网站，web邮箱等）" Value="1" />
                            <f:ListItem Text="通用性软件（如客户端浏览器，手机应用，开源cms等）" Value="2" />
                        </f:DropDownList>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:DropDownList ID="ddlBigeType" runat="server" Width="400px" Label="漏洞大类">
                        </f:DropDownList>
                    </Items>
                </f:FormRow>
            </Rows>
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Bottom" ToolbarAlign="Center">
                    <Items>
                        <f:Button ID="btnSave" runat="server" ValidateForms="FormAdd" Text="保存并提交" OnClick="btnSave_Click"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:Form>
    </form>
</body>
</html>
