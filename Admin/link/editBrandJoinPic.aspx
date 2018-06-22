<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editBrandJoinPic.aspx.cs" Inherits="WebManage.link.editBrandJoinPic" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="/css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <f:PageManager ID="PageManager1" runat="server" />

        <f:Form ID="Form5" ShowBorder="False"
            ShowHeader="False" runat="server" BodyPadding="10" Width="530">
            <Rows>
                <f:FormRow>
                    <Items>
                        <f:TextBox ID="txtBrandName" runat="server" Label="企业名称" EmptyText="请输入企业名称" Width="500" Required="true" ShowRedStar="true"></f:TextBox>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:DropDownList ID="ddlStatus" AutoPostBack="true" OnSelectedIndexChanged="ddlStatus_SelectedIndexChanged" runat="server" Label="类型" Required="true" ShowRedStar="true" Width="240">
                            <f:ListItem Text="请选择..." Value="-1" />
                            <f:ListItem Text="合作伙伴" Value="0" />
                            <f:ListItem Text="友情链接" Value="1" />
                        </f:DropDownList>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:TextBox ID="txtUrl" runat="server" Label="链接地址：" EmptyText="请填写url" ShowRedStar="true" Required="true" Width="500" RegexPattern="URL" MaxLength="250"></f:TextBox>
                    </Items>
                </f:FormRow>
            </Rows>
            <Rows>
                <f:FormRow>
                    <Items>
                        <f:Image ID="imgPhoto" CssClass="photo" ImageUrl="~/images/blank.png" ShowEmptyLabel="true" runat="server">
                        </f:Image>
                        <f:HiddenField ID="hfImg" runat="server"></f:HiddenField>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:Panel ID="Panel2" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssStyle="margin-bottom:10px">
                            <Items>
                                <f:FileUpload runat="server" ID="fileUpload1" ShowRedStar="false" ShowEmptyLabel="true"
                                    ButtonOnly="true" EmptyText="请选择一张图片，图片限制2M。"
                                    AutoPostBack="true" OnFileSelected="fileUpload1_FileSelected" Label="上传图片" Width="240">
                                </f:FileUpload>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

            </Rows>

            <Toolbars>
                <f:Toolbar ID="Toolbar1" runat="server" Position="Bottom" ToolbarAlign="Center">
                    <Items>
                        <f:Button ID="btnAdd" Type="Button" Text="保存并上传" Icon="SystemSave" runat="server" OnClick="btnAdd_Click" ValidateForms="Form5"></f:Button>

                    </Items>
                </f:Toolbar>
            </Toolbars>
        </f:Form>

    </form>
</body>
</html>
