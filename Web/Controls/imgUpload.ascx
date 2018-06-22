<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="imgUpload.ascx.cs" Inherits="Maticsoft.Web.Controls.imgUpload" %>

<link href="/css/mysoupu.css" rel="stylesheet" />
<div class="myshop_table">
    <script id="myeditor"></script>
    <!-- fineui 控件的伪装-->
    <a id='image' role="button" class="x-btn x-unselectable x-btn-default-small x-noicon x-btn-noicon x-btn-default-small-noicon">
        <span class="x-btn-wrap" unselectable="on">
            <span class="x-btn-button">
                <span class="x-btn-inner x-btn-inner-center" unselectable="on">上传图片</span>
                <span role="img" class="x-btn-icon-el" unselectable="on" style=""></span>
            </span>
        </span>
    </a>
    <div class="clear"></div>
    <div id="imgContainer" class="pic_show" style="width: 740px; margin-top: 10px;"></div>
    <div class="clear"></div>
    <input type="hidden" id="imgUrls" name="imgUrls" value="" />
</div>

<script src="http://www.soupu.com/JS/jquery-1.6.4.min.js" type="text/javascript"></script>
<!-- 配置文件 -->
<script type="text/javascript" src="/ueditor/ueditor.config.js?v=1.2"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/ueditor/ueditor.all.js?v=1.2"></script>
<!-- 语言包文件(建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败) -->
<script type="text/javascript" src="/ueditor/lang/zh-cn/zh-cn.js?v=1.2"></script>

<script type="text/javascript">
    window.onload = function () {
        setTimeout(function () {
            var imgList = [],
                imgCount = 0;

            //清空容器，并加入图片
            function setImage(imgContainerId, imgList) {
                $("#" + imgContainerId).empty();
                var l = imgList.length;
                if (l == 0) {
                    return;
                }
                for (var i = 0; i < l; i++) {
                    appendImg(imgContainerId, imgList[i]);
                }
            }
            //插入图片位置
            function appendImg(imgContainerId, url) {
                $("#" + imgContainerId).append('<div class="show_box"><img src="' + url + '"><span class="show_close"></span></div>');
            }
            //删除数组中的数据
            function deleteArrayByParams(imgList, url) {
                for (var i = 0, l = imgList.length; i < l; i++) {
                    if (imgList[i] == url) {
                        imgList.splice(i, 1);
                        break;
                    }
                }
            }

            if (imgList.length > 0) {
                setImage("imgContainer", imgList);
            }

            //删除图片
            $(".show_close").live('click', function () {
                if (confirm("确定删除该项目图片吗？")) {
                    var me = $(this),
                        url = me.siblings('img').attr('src'),
                        id = me.parent().parent().attr('id');
                    me.parent().hide();

                    deleteArrayByParams(imgList, url);
                    if (imgList.length > 0) {
                        $("#imgUrls").val(imgList.join(","));
                    } else {
                        $("#imgUrls").val('');
                    }
                }
            });

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
