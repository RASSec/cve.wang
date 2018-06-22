<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="WebManage.loophole.detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <f:PageManager ID="PageManager1" runat="server" />

        <f:Form runat="server" ID="FormDeatil" ShowBorder="true" ShowHeader="true" Title="漏洞详情" BodyPadding="10" Width="900" LabelWidth="110">
            <Rows>
                <f:FormRow ID="FormRow2" runat="server">
                    <Items>
                        <f:Label Label="问题类型" ID="problemtype" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow1" runat="server">
                    <Items>
                        <f:Label ID="lblcompany" Label="厂  商" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow3" runat="server">
                    <Items>
                        <f:Label ID="lbltitle" Label="漏洞标题" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow4" runat="server">
                    <Items>
                        <f:Label ID="lblBtype" Label="漏洞大类" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow5" runat="server">
                    <Items>
                        <f:Label ID="lblStype" Label="漏洞小类" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow6" runat="server">
                    <Items>
                        <f:Label ID="lblranktype" Label="漏洞等级" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow7" runat="server">
                    <Items>
                        <f:Label ID="lblrank" Label="自评Rank" Text="" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow8" runat="server">
                    <Items>
                        <f:Label ID="lbldescription" Label="漏洞描述" Text="" EncodeText="false" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow10" runat="server">
                    <Items>
                        <f:Label ID="lbldetaildesc" Label="详细说明" Text="" EncodeText="false" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow9" runat="server">
                    <Items>
                        <f:Label ID="lblprove" Label="漏洞证明" Text="" EncodeText="false" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow11" runat="server">
                    <Items>
                        <f:Label ID="lblrepair" Label="漏洞修复" Text="" EncodeText="false" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow12" runat="server">
                    <Items>
                        <f:Label ID="lbltestcode" Label="漏洞预警" Text="" EncodeText="true" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow13" runat="server">
                    <Items>
                        <f:Label ID="lbltag" Label="标签" Text="" EncodeText="true" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow14" runat="server">
                    <Items>
                        <f:Label ID="lbluserid" Label="发布者" Text="" EncodeText="true" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow15" runat="server">
                    <Items>
                        <f:Label ID="lbladdtime" Label="添加时间" Text="" EncodeText="true" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow16" runat="server">
                    <Items>
                        <f:Label ID="lblmodeltime" Label="修改时间" Text="" EncodeText="true" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow17" runat="server">
                    <Items>
                        <f:Label ID="lblstate" Label="审核状态" Text="" EncodeText="true" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow18" runat="server">
                    <Items>
                        <f:Label ID="lblstaterank" Label="审核备注" Text="" EncodeText="false" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow19" runat="server">
                    <Items>
                        <f:Label ID="lblcompanyrepy" Label="厂商回复" Text="" EncodeText="false" runat="server"></f:Label>
                    </Items>
                </f:FormRow>
            </Rows>
        </f:Form>

    </form>
</body>
</html>
