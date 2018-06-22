<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vtype.aspx.cs" ValidateRequest="false" Inherits="WebManage.loophole.vtype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" AutoSizePanelID="Panel1" runat="server" />
        <f:Panel ID="Panel1" runat="server" Layout="Fit" ShowBorder="False" ShowHeader="false"
            BodyPadding="5px">
            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server">
                    <Items>
                        <f:Button ID="btnSaveRefresh" Text="保存" ValidateForms="SimpleForm1" runat="server" Icon="SystemSaveNew" OnClick="btnSaveRefresh_Click"></f:Button>
                    </Items>
                </f:Toolbar>
            </Toolbars>
            <Items>
                <f:Panel ID="Panel2" Layout="Fit" runat="server" ShowBorder="false" ShowHeader="false">
                    <Items>
                        <f:SimpleForm ID="SimpleForm1" ShowBorder="false" ShowHeader="false"
                            AutoScroll="true" BodyPadding="5px" runat="server" EnableCollapse="True">
                            <Items>
                                <f:Label Label="漏洞" ID="lblhole" runat="server" Text="" EncodeText="false"></f:Label>
                                <f:DropDownList ID="ddlstate" runat="server" Label="是否精华">
                                    <f:ListItem Value="0" Text="否" />
                                    <f:ListItem Value="1" Text="是" />
                                </f:DropDownList>
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
</body>
</html>
