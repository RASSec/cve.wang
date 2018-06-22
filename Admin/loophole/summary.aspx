<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="summary.aspx.cs" ValidateRequest="false" Inherits="WebManage.loophole.summary" %>

<%@ Register Src="~/ctr/imgUpload.ascx" TagPrefix="uc1" TagName="imgUpload" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .editor > div {
            display: inline-block;
        }

        .editor > span {
            vertical-align: top;
            display: inline-block;
            width: 110px;
        }
    </style>
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
                                <%--<f:Label Label="漏洞" ID="lblhole" runat="server" Text="" EncodeText="false"></f:Label>--%>
                                <f:DropDownList ID="ddlstate" runat="server" Width="300" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" Label="审核">
                                    <f:ListItem Value="0" Text="未认领" />
                                    <f:ListItem Value="3" Text="等待认领" />
                                    <f:ListItem Value="2" Text="已确认" />
                                    <f:ListItem Value="1" Text="已公开" />
                                </f:DropDownList>
                                <f:ContentPanel ID="ContentPanel4" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>披露状态：</span>
                                        <textarea name="txtPiLou" runat="server" id="txtPiLou"></textarea>
                                    </div>
                                </f:ContentPanel>
                                <f:RadioButtonList ID="rdbtJH" Label="是否精华" Required="true" Width="300" runat="server">
                                    <f:RadioItem Value="0" Text="否" Selected="true" />
                                    <f:RadioItem Value="1" Text="是" />
                                </f:RadioButtonList>
                                <f:DropDownList ID="ddlRankType" runat="server" Width="300" Label="漏洞等级">
                                    <f:ListItem Value="0" Text="低" />
                                    <f:ListItem Value="1" Text="中 " />
                                    <f:ListItem Value="2" Text="高" />
                                </f:DropDownList>
                                <f:DropDownList ID="ddlTestCode" runat="server" Width="300" Label="漏洞预警">
                                    <f:ListItem Value="false" Text="不预警" Selected="true" />
                                    <f:ListItem Value="true" Text="预警" />
                                </f:DropDownList>
                                <f:TextBox ID="txtRank" Label="漏洞自评" Width="500" runat="server" RegexPattern="NUMBER" Regex="^([1-9]|10)$"></f:TextBox>
                                <f:DropDownList ID="ddlCompanyName" AutoPostBack="true" OnSelectedIndexChanged="ddlCompanyName_SelectedIndexChanged" runat="server" Width="300" Label="厂商名称选择">
                                </f:DropDownList>
                                <f:TextBox ID="txtCustComName" Label="厂商名称" Width="500" runat="server"></f:TextBox>

                                <f:ContentPanel ID="ContentPanel9" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <uc1:imgUpload runat="server" ID="ImgUpload1" ImgCount="5" />
                                        <span>漏洞标题：</span>
                                        <textarea name="lblhole" runat="server" id="lblhole"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel1" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <uc1:imgUpload runat="server" ID="ucImgUpload" ImgCount="5" />
                                        <span>详细描述：</span>
                                        <textarea name="txtdetialdesc" runat="server" id="txtdetialdesc"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel2" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>漏洞证明：</span>
                                        <textarea name="txtprove" runat="server" id="txtprove"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel3" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>漏洞修复：</span>
                                        <textarea name="txtrepair" runat="server" id="txtrepair"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel5" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>简要描述：</span>
                                        <textarea name="txtDescription" runat="server" id="txtDescription"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel6" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>漏洞hash：</span>
                                        <textarea name="txtHash" runat="server" id="txtHash"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel7" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>版权注明：</span>
                                        <textarea name="txtCopyright" runat="server" id="txtCopyright"></textarea>
                                    </div>
                                </f:ContentPanel>

                                <f:ContentPanel ID="ContentPanel8" runat="server" Height="290" EnableFrame="false" EnableCollapse="true"
                                    ShowBorder="false" ShowHeader="false" Title="内容编辑">
                                    <div class="editor">
                                        <span>厂商回应：</span>
                                        <textarea name="txtReply" runat="server" id="txtReply"></textarea>
                                    </div>
                                </f:ContentPanel>
                                <%--<f:TextArea ID="txtprove" Label="漏洞证明" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txtrepair" Label="漏洞修复" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txttestcode" Label="漏洞评价" Width="500" Height="120" CssStyle="display:none;" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txtPiLou" Label="披露状态" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txtDescription" Label="简要描述" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txtHash" Label="漏洞hash" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txtCopyright" Label="版权注明" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <%--<f:TextArea ID="txtReply" Label="厂商回应" Width="500" Height="120" runat="server"></f:TextArea>--%>
                                <f:TextBox ID="txtTag" Label="标签" Width="500" runat="server"></f:TextBox>
                            </Items>
                        </f:SimpleForm>
                    </Items>
                </f:Panel>
            </Items>
        </f:Panel>
    </form>
    <script type="text/javascript">
        var editor1 = UE.getEditor('<%=this.txtdetialdesc.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor2 = UE.getEditor('<%=txtprove.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=txtrepair.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=txtPiLou.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=txtDescription.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=txtHash.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=txtCopyright.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=txtReply.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
        var editor3 = UE.getEditor('<%=lblhole.ClientID%>', {
            toolbars: [['source']],
            initialFrameWidth: 760,
            initialFrameHeight: 200,
            indentValue: "2em",
            maximumWords: 3500,
            pasteplain: true,
            iframeCssUrl: '../ueditor/themes/iframe1.css?v=1.1'
        });
    </script>
</body>
</html>

