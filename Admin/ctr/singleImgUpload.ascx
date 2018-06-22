<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="singleImgUpload.ascx.cs" Inherits="WebManage.ctr.singleImgUpload" %>

<f:Panel runat="server" ShowBorder="false" ShowHeader="false" CssClass="formitem">
    <Items>
        <f:Image ID="img1" CssClass="photo" ImageUrl="~/images/blank.png" ShowEmptyLabel="true" runat="server">
        </f:Image>
        <f:FileUpload ID="fuImg1" runat="server" ShowRedStar="true" ShowEmptyLabel="false" ButtonText="选择图片" OnFileSelected="fuImg1_FileSelected" AutoPostBack="true" ButtonOnly="true"></f:FileUpload>
        <f:Button ID="btnDelete" runat="server" Text="删除该图" OnClick="btnDelete_Click" ConfirmText="确认要删除此图吗？" Margin="0 0 0 105"></f:Button>
    <f:HiddenField runat="server" ID="hfImg"></f:HiddenField>
    </Items>
</f:Panel>
