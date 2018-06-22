<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebManage.company.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="pagemanager1" runat="server" />

        <f:Form ID="FormAdd" runat="server" AutoScroll="false" ShowHeader="false" BodyPadding="10px" Title="厂商添加" EnableFrame="false">
            <Rows>
                <f:FormRow>
                    <Items>
                        <f:TextBox ID="tbCompanyname" Text="" Required="true" Width="400px" ShowRedStar="true" Label="厂商名称" runat="server"></f:TextBox>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:TextBox ID="tbCompanyurl" Text="" Required="true" Width="400px" ShowRedStar="true" Label="厂商链接" runat="server"></f:TextBox>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:TextArea ID="tbDescription" Text="" Required="true"  Width="400px" ShowRedStar="true" Label="厂商描述" runat="server"></f:TextArea>
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
