
$(function () {
    $("#Regist").click(function () {
        $.ajax({
            url: '/Api/AjaxSubmit.ashx?action=Register_Member',
            type: 'post',
            dataType: 'json',
            data: $("form").serialize(),
            success: function (data) {
                if (data.status == "y") {
                    alert(data.info);
                    window.location.href = '/registsuccess.aspx';
                } else if (data.status == "n") {
                    alert(data.info);
                }
            }
        });
    });
});