<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="imgUpload.ascx.cs" Inherits="WebManage.ctr.imgUpload" %>

<!--图片区 -->
<f:Panel ID="Panel1" runat="server" ShowBorder="false" ShowHeader="false" Layout="Column">
    <Items>
    </Items>
</f:Panel>
<script src="../js/jquery-1.6.4.min.js"></script>
<!-- 配置文件 -->
<script type="text/javascript" src="/ueditor/ueditor.config.js?v=1.2"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/ueditor/ueditor.all.js?v=1.2"></script>
<!-- 语言包文件(建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败) -->
<script type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js?v=1.2"></script>

<script type="text/javascript">
    window.onload = function () {
        setTimeout(function () {

            //这个是图片上传的，网上还有附件上传的
            (function ($) {
                var image = {
                    editor: null,
                    init: function (editorid, keyid) {
                        var _editor = this.getEditor(editorid);
                        _editor.ready(function () {
                            _editor.setDisabled();
                            _editor.hide();
                            _editor.addListener('cleardoc', function (type, list) {
                                for (var i = 0; i < list.length; i++) {
                                    if (imgList.length >= imgCount) {
                                        alert("最多只允许上传" + imgCount + "张图片，多余的已经被截掉");
                                        break;
                                    }
                                    imgList.push(list[i].src);
                                    appendImg("imgContainer", list[i].src);
                                }
                                $("#imgUrls").val(imgList.join(","));

                            });
                        });
                    },
                    getEditor: function (editorid) {
                        this.editor = UE.getEditor(editorid);
                        return this.editor;
                    },
                    show: function (id) {
                        var _editor = this.editor;
                        //注意这里只需要获取编辑器，无需渲染，如果强行渲染，在IE下可能会不兼容（切记）
                        //和网上一些朋友的代码不同之处就在这里
                        $("#" + id).click(function () {
                            var image = _editor.getDialog("insertimage");
                            image.render();
                            image.open();
                        });
                    },
                    render: function (editorid) {
                        var _editor = this.getEditor(editorid);
                        _editor.render();
                    }
                };
                $(function () {
                    image.init("myeditor", "upload");
                    image.show("image");
                });
            })(jQuery);
        }, 1000)
    };
</script>
