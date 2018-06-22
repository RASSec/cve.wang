
var editor;
KindEditor.ready(function (K) {
    editor = K.create('textarea[name="ldxf"]', {
        resizeType: 1,
        allowPreviewEmoticons: false,
        allowImageUpload: true,
        cssPath: '/plugins/code/prettify.css',
        uploadJson: '/api/upload_json.ashx',
        fileManagerJson: '/api/file_manager_json.ashx',
        items: ['image', 'link'],
        afterBlur: function () { this.sync(); }
    });
});

KindEditor.ready(function (K) {
    editor = K.create('textarea[name="problemdesc"]', {
        resizeType: 1,
        allowPreviewEmoticons: false,
        allowImageUpload: true,
        cssPath: '/plugins/code/prettify.css',
        uploadJson: '/api/upload_json.ashx',
        fileManagerJson: '/api/file_manager_json.ashx',
        items: ['image', 'link'],
        afterBlur: function () { this.sync(); }
    });
});

KindEditor.ready(function (K) {
    editor = K.create('textarea[name="detaildesc"]', {
        resizeType: 1,
        allowPreviewEmoticons: false,
        allowImageUpload: true,
        cssPath: '/plugins/code/prettify.css',
        uploadJson: '/api/upload_json.ashx',
        fileManagerJson: '/api/file_manager_json.ashx',
        items: ['image', 'link'],
        afterBlur: function () { this.sync(); }
    });
});

KindEditor.ready(function (K) {
    editor = K.create('textarea[name="ldzm"]', {
        resizeType: 1,
        allowPreviewEmoticons: false,
        allowImageUpload: true,
        cssPath: '/plugins/code/prettify.css',
        uploadJson: '/api/upload_json.ashx',
        fileManagerJson: '/api/file_manager_json.ashx',
        items: ['image', 'link'],
        afterBlur: function () { this.sync(); }
    });
});

KindEditor.ready(function (K) {
    editor = K.create('textarea[name="ldzm"]', {
        resizeType: 1,
        allowPreviewEmoticons: false,
        allowImageUpload: true,
        cssPath: '/plugins/code/prettify.css',
        uploadJson: '/api/upload_json.ashx',
        fileManagerJson: '/api/file_manager_json.ashx',
        items: ['image', 'link'],
        afterBlur: function () { this.sync(); }
    });
});

//表单验证
function ValidityState() {
    if ($("select[name='company']").val() == "") {
        if ($("input[name='customCom']").val() == "") {
            $("#Span2").html("<span class='Validform_wrong'>请选择厂商或自定义厂商！</span>");
            return false;
        } else {
            $("#Span2").html("");
            return true;
        }

    } else {
        return true;
    }
}

//厂商加载
function CompanySelectLoad() {
    $.ajax({
        url: '/Api/Other.ashx?action=CompanySelectLoad',
        type: 'Post',
        dataType: 'json',
        success: function (data) {
            var shtml = [];
            shtml.push("<option value=''>请选择</option>");
            if (data.status == "y") {
                var info = JSON.parse(data.info);
                for (var i = 0; i < info.length; i++) {
                    shtml.push("<option value='" + info[i].id + "'>" + info[i].companyname + "</option>");
                }
            } else {
                alert(data.info);
            }
            $("select[name='company']").html(shtml.join(''));
        },
        error: function (data) {
            alert("fail");
        }
    });
}

$(function () {
    CompanySelectLoad();

    $("input[name='problemtype']").change(function () {
        var typeid = $(this).val();
        $.ajax({
            url: '/Api/Other.ashx?action=SelectLoopholeType',
            type: 'Post',
            dataType: 'json',
            data: { problemtypeid: typeid },
            success: function (data) {
                var shtml = [];
                shtml.push("<option value=''>请选择</option>");
                if (data.status == "y") {
                    var info = JSON.parse(data.info);
                    for (var i = 0; i < info.length; i++) {
                        shtml.push("<option value='" + info[i].id + "'>" + info[i].btypename + "</option>");
                    }
                }
                else {
                    alert(data.info);
                }
                $("select[name='ddlbtype']").html(shtml.join(''));
                $("select[name='ddlstype']").html(shtml.join(''));
            },
            error: function (data) {
                alert("fail");
            }
        });
    });

    $("select[name='ddlbtype']").change(function () {
        var typeid = $(this).val();
        $.ajax({
            url: '/Api/Other.ashx?action=SelectBtype',
            type: 'Post',
            dataType: 'json',
            data: { btype: typeid },
            success: function (data) {
                var shtml = [];
                shtml.push("<option value=''>请选择</option>");
                if (data.status == "y") {
                    var info = JSON.parse(data.info);
                    for (var i = 0; i < info.length; i++) {
                        shtml.push("<option value='" + info[i].id + "'>" + info[i].stypename + "</option>");
                    }
                }
                else {
                    alert(data.info);
                }

                $("select[name='ddlstype']").html(shtml.join(''));
            },
            error: function (data) {
                alert("fail");
            }
        });
    });

    $(".form1").Validform({
        btnSubmit: "#btnsave",
        tiptype: 3,
        showAllError: true,
        tipSweep: true,
        beforeCheck: function (curform) {
            ValidityState();
        },
        beforeSubmit: function () {
            if (ValidityState()) {
                $.post('/api/ajaxsubmit.ashx?action=loopholeadd', $(".form1").serialize(), function (data) {
                    alert(data.info);
                    if (data.status == 'y') {
                        location.reload();
                    }
                }, 'json');
            }
            return false;
        }
    });


    $("#customButton").click(function () {
        if ($("select[name='company']").val() == "") {
            $("#customCom").removeClass("errorVisable");
        }
    });

    $("select[name='company']").change(function () {
        if ($(this).val() != "") {
            $("#customCom").val("");
            $("#Span2").html("");
            $("#customCom").addClass("errorVisable");
        } else {
            $("#Span2").html("<span class='Validform_wrong'>请选择厂商或自定义厂商！</span>");
        }
    });

    $("input[name='customCom']").blur(function () {
        if ($(this).val() == "") {
            $("#Span2").html("<span class='Validform_wrong'>请选择厂商或自定义厂商！</span>");
        } else {
            $("#Span2").html("");
        }
    });
});
