
$(function () {
    //关注漏洞
    $("#attentionTo").click(function () {
        var attentionid = $("#loophid").val();
        $.ajax({
            url: '/Api/AjaxSubmit.ashx?action=Attention',
            type: 'post',
            dataType: 'json',
            data: { "id": attentionid },
            success: function (data)
            {
                if (data.status == "y") {
                    $("#atten").html("");
                    $("#atten").html('<span style="font-size: 16px; border: 1px solid #ccc; background: #ccc; padding: 2px;"><span style="font-weight: 900; font-size: 14px;">√</span> 已关注</span>');
                } else if (data.status == "n") {
                    alert(data.info);
                }
            }
        });
    });
  
});

//取消漏洞关注 cancleAtten
function cancleAtten(obj) {
    var attentionid = $(obj).attr("data-val");
    $.ajax({
        url: '/Api/AjaxSubmit.ashx?action=CancleAttention',
        type: 'post',
        dataType: 'json',
        data: { "id": attentionid },
        success: function (data) {
            if (data.status == "y") {
                alert(data.info);
                window.location.reload();
            } else if (data.status == "n") {
                alert(data.info);
            }
        }
    });
}


