<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebManage.loophole.edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <f:Form  runat="server" ID="FormAdd" ShowBorder="true" ShowHeader="true" Title="添加品牌加盟" BodyPadding="10" Width="900" LabelWidth="110">
            <Rows>
                <f:FormRow ID="FormRow2" runat="server">
                    <Items>
                        <f:TextBox ID="txtComapnyName" runat="server" Label="公司名称" EmptyText="请填写公司名称" ShowRedStar="true" MaxLength="50"></f:TextBox>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow11" runat="server">
                    <Items>
                        <f:TextBox ID="txtCompanyDirectly" runat="server" Label="直属公司名称" MaxLength="50" EmptyText="请填写直属公司名称"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow1" runat="server">
                    <Items>
                        <f:TextBox ID="txtBrandName" runat="server" Label="品牌名称(中文)" EmptyText="中文名称" ShowRedStar="true" AnchorValue="80%" MaxLength="50"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow10" runat="server">
                    <Items>
                        <f:TextBox ID="txtBrandEng" runat="server" Label="品牌名称(英文)" EmptyText="中文名称与英文名称二选一或都填" AnchorValue="80%" MaxLength="50"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow3" runat="server">
                    <Items>
                        <f:ContentPanel ID="ContentPanel1" runat="server" ShowBorder="false" ShowHeader="false" Height="170" CssClass="editor">
                            <div class="editor">
                                <span>公司介绍：</span>
                                <textarea name="UEditorCompanyIntro" id="UEditorCompanyIntro"><%= CompanyIntro %></textarea>
                            </div>
                        </f:ContentPanel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow4" runat="server">
                    <Items>
                        <f:ContentPanel ID="ContentPanel2" runat="server" ShowBorder="false" ShowHeader="false" Height="170" CssClass="editor">
                            <div class="editor">
                                <span>品牌介绍：</span>
                                <textarea name="UEditorBrandIntro" id="UEditorBrandIntro"><%= BrandIntro %></textarea>
                            </div>
                        </f:ContentPanel>
                    </Items>
                </f:FormRow>
                <f:FormRow>
                    <Items>
                        <f:DatePicker ID="dpFoundingTime" runat="server" Label="成立时间" AnchorValue="40%"></f:DatePicker>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow5" runat="server">
                    <Items>
                        <f:Panel ID="Panel1" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssClass="formitem">
                            <Items>
                                <f:Label ID="Label1" runat="server" Label="业态选择"></f:Label>
                                <f:UserControlConnector ID="UserControlConnector1" runat="server">
                                    <uc1:yetai runat="server" ID="ucYetai" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow6" runat="server">
                    <Items>
                        <f:ContentPanel ID="ContentPanel3" runat="server" ShowBorder="false"  ShowHeader="false" CssClass="formitem">
                            <uc1:singleImgUpload runat="server"  ID="ucSingleImgUpload" Label="LOGO" ThumbnailTypeEnum="WidthAndHeight" ThumbnailWidth="250" ThumbnailHeight="200" FilePathConfig="BrandJoinLogoPath" BtnDeleteMargin="0 0 0 115" />
                        </f:ContentPanel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow7" runat="server">
                    <Items>
                        <f:ContentPanel ID="ContentPanel4" runat="server" ShowBorder="false" ShowHeader="false" CssClass="formitem">
                            <uc1:imgUpload runat="server" ID="ucImgUpload" LabelText="门店形象" ImgCount="5" />
                        </f:ContentPanel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow8" runat="server">
                    <Items>
                        <f:Panel ID="Panel2" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column">
                            <Items>
                                <f:UserControlConnector ID="UserControlConnector5" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="ucBusinessLicense1" Label="营业执照/荣誉证书" ShowRedStar="false" FilePathConfig="BusinessLicensePath" ThumbnailTypeEnum="WidthAndHeight" ThumbnailWidth="305" ThumbnailHeight="170" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                                <f:UserControlConnector ID="UserControlConnector6" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="ucBusinessLicense2" FilePathConfig="BusinessLicensePath" ThumbnailTypeEnum="WidthAndHeight" ThumbnailWidth="305" ThumbnailHeight="170" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>


                <f:FormRow ID="FormRow12" runat="server">
                    <Items>
                        <f:Panel ID="Panel3" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column">
                            <Items>
                                <f:UserControlConnector ID="UserControlConnector2" runat="server">
                                    <uc1:area runat="server" ID="UcArea" LabelStr="公司地址" IsShowZXS="false" IsShowXian="false" IsProvRequired="false" IsCityRequired="false" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow13" runat="server">
                    <Items>
                        <f:TextBox ID="txtStreetAddress" runat="server"  MaxLength="100" Label="街道地址" EmptyText="您公司所在的具体地址"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow14" runat="server">
                    <Items>
                        <f:TextBox ID="txtWeb" runat="server" Label="公司网址" MaxLength="100" RegexPattern="URL" EmptyText="请务必带上http://"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow>
                    <Items>
                        <f:TextBox ID="txtTag" runat="server"  Label="标签" EmptyText="用英文逗号分隔，关联加盟有关的新闻" ShowRedStar="true" MaxLength="100"></f:TextBox>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow9" runat="server">
                    <Items>
                        <f:Panel ID="Panel4" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssClass="formitem">
                            <Items>
                                <f:UserControlConnector ID="UserControlConnector3" runat="server">
                                    <uc1:areaTree runat="server" ID="ucAreaTree" IsShowRedStar="true" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>
                <f:FormRow ID="FormRow15" runat="server">
                    <Items>
                        <f:TextArea ID="txtExpandRemark" runat="server" Label="加盟地区备注" MaxLength="500" EmptyText="对加盟地区的备注（选填）"></f:TextArea>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow16" runat="server">
                    <Items>
                        <f:CheckBoxList ID="ckbFirstProperty" runat="server" Label="首选物业" ColumnNumber="4" ShowRedStar="true" >
                        </f:CheckBoxList>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow17" runat="server">
                    <Items>
                        <f:Panel ID="Panel5" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssClass="formitem">
                            <Items>
                                <f:TextBox ID="txtPropertyRightAreaMin" runat="server" Label="合适物业面积" ShowRedStar="true" EmptyText="最小值(整数)" Width="205" RegexPattern="NUMBER"></f:TextBox>
                                <f:Label ID="Label2" runat="server" Text="--"></f:Label>
                                <f:TextBox ID="txtPropertyRightAreaMax" runat="server" EmptyText="最大值(整数)" Width="100" RegexPattern="NUMBER"></f:TextBox>
                                <f:Label ID="Label3" runat="server" Text="方"></f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow18" runat="server">
                    <Items>
                        <f:Panel ID="Panel6" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssClass="formitem">
                            <Items>
                                <f:TextBox ID="txtStoreCount" runat="server" Label="现有门店数量" Width="220" MaxLength="30" EmptyText="请填整数"></f:TextBox>
                                <f:TextBox ID="txtJoinCount" runat="server" Label="家，其中加盟" Width="200" MaxLength="30" EmptyText="请填整数"></f:TextBox>
                                <f:TextBox ID="txtZhiYingCount" runat="server" Label="家，直营" Width="200" MaxLength="30" EmptyText="请填整数"></f:TextBox>
                                <f:Label ID="Label4" runat="server" Text="家" ShowEmptyLabel="false"></f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow19" runat="server">
                    <Items>
                        <f:TextArea runat="server" ID="txtStoreExistingDetails" EmptyText="门店分布的详细说明" Label="详细说明" MaxLength="4000"></f:TextArea>
                    </Items>
                </f:FormRow>


                <f:FormRow ID="FormRow20" runat="server">
                    <Items>
                        <f:CheckBoxList runat="server" ID="ckbDevelopingMode" Label="发展模式" AnchorValue="60%">
                            <f:CheckItem Value="1" Text="单店加盟" />
                            <f:CheckItem Value="2" Text="区域加盟" />
                            <f:CheckItem Value="3" Text="直营连锁" />
                        </f:CheckBoxList>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow21" runat="server">
                    <Items>
                        <f:Panel ID="Panel7" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssClass="formitem">
                            <Items>
                                <f:TextBox ID="txtContractPeriodMin" runat="server" Label="合约期限" ShowRedStar="true" EmptyText="最小值(整数)" Width="205" RegexPattern="NUMBER"></f:TextBox>
                                <f:Label ID="Label5" runat="server" Text="--"></f:Label>
                                <f:TextBox ID="txtContractPeriodMax" runat="server" EmptyText="最大值(整数)" Width="100" RegexPattern="NUMBER"></f:TextBox>
                                <f:Label ID="Label6" runat="server" Text="年"></f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow22" runat="server">
                    <Items>
                        <f:Panel ID="Panel8" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column" CssClass="formitem">
                            <Items>
                                <f:TextBox ID="txtInvestmentAmountMin" runat="server" Label="投入资金" EmptyText="最小值(整数)" Width="205" ShowRedStar="true" RegexPattern="NUMBER"></f:TextBox>
                                <f:Label ID="Label7" runat="server" Text="--"></f:Label>
                                <f:TextBox ID="txtInvestmentAmountMax" runat="server" EmptyText="最大值(整数)" Width="100" RegexPattern="NUMBER"></f:TextBox>
                                <f:Label ID="Label8" runat="server" Text="万"></f:Label>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow23" runat="server">
                    <Items>
                        <f:Panel ID="Panel9" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column">
                            <Items>
                                <f:UserControlConnector ID="UserControlConnector9" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="UcJoinCondition1" Label="加盟条件(图片)" ShowRedStar="false" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                                <f:UserControlConnector ID="UserControlConnector10" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="UcJoinCondition2" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow24" runat="server">
                    <Items>
                        <f:TextArea ID="txtJoinConditions" runat="server" Label="加盟条件" MaxLength="4000" EmptyText="填写加盟条件"></f:TextArea>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow25" runat="server">
                    <Items>

                        <f:Panel ID="Panel10" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column">
                            <Items>
                                <f:UserControlConnector ID="UserControlConnector4" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="ucJoinFlowImg1" Label="加盟流程(图片)" ShowRedStar="false" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                                <f:UserControlConnector ID="UserControlConnector7" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="ucJoinFlowImg2" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                                <f:UserControlConnector ID="UserControlConnector8" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="ucJoinFlowImg3" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                                <f:UserControlConnector ID="UserControlConnector11" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="ucJoinFlowImg4" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>

                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow26" runat="server">
                    <Items>
                        <f:TextArea ID="txtJoinFlow" runat="server" Label="加盟流程详细介绍" EmptyText="加盟流程的详细介绍" MaxLength="3000"></f:TextArea>
                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow27" runat="server">
                    <Items>

                        <f:Panel ID="Panel11" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column">
                            <Items>
                                <f:UserControlConnector ID="UserControlConnector12" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="UcJoinAdvantage1" Label="加盟优势(图片)" ShowRedStar="false" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                                <f:UserControlConnector ID="UserControlConnector13" runat="server">
                                    <uc1:singleImgUpload runat="server" ID="UcJoinAdvantage2" FilePathConfig="JoinFlowPath" BtnDeleteMargin="0 0 0 115" />
                                </f:UserControlConnector>
                            </Items>
                        </f:Panel>

                    </Items>
                </f:FormRow>

                <f:FormRow ID="FormRow28" runat="server">
                    <Items>
                        <f:TextArea ID="txtJoinAdvantage" runat="server" Label="加盟优势" MaxLength="4000" EmptyText="填写加盟优势"></f:TextArea>
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
