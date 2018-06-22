/*!
* jQuery 文本框字数限制 Plugin
* version: 1.0.0 
* @requires jQuery v1.3.2 or later
*
* Examples:http://www.soupu.com/Comment/PublicReply.aspx
* author:邓茂林(2012-03-28)    
*/
(function($) {
    $.fn.wordConfine = function(dmloptions) {
        var defaults = {
            //默认字数
            max: 300,
            //需要显示剩余字数的dom对象id
            showDivId: '',
            //提交按钮id
            submitId:''
        }

        var options = $.extend(defaults, dmloptions);

        var _this = this,
            _showDiv = $("#" + options.showDivId),
            _submitBtn = $("#"+options.submitId),
            values = _this.val();
        if (options.max < values.length) {
            _this.val(values.substring(0, options.max));
        }

        if ($.nodeName(_this.get(0), "INPUT") && _this.get(0).type == "text" || _this.get(0).type == "password") {
            _this.attr("maxLength", options.max);
        } else if ($.nodeName(_this.get(0), "TEXTAREA")) {
            _this.keypress(function(e) {
                var keyCode = e.keyCode,
                    size = _this.val().length,
                    hasSelection = document.selection ? document.selection.createRange().text.length > 0 : this.selectionStart != this.selectionEnd;
                if (!!options.showDivId) {
                    _showDiv.html(options.max - size);
                }
                return !(size >= options.max && (keyCode > 50 || keyCode == 32 || keyCode == 0 || keyCode == 13) && !e.ctrlKey && !e.altKey && !hasSelection);
            });

            _this.keyup(function() {
                var words = _this.val(),
                    size = words.length;
                if (size > 0) {
                    _submitBtn.removeAttr("disabled").removeClass().addClass("ty_Submit_comment");
                } else {
                    _submitBtn.attr("disabled", "disabled").removeClass().addClass("ty_Submit_comment_not");
                }
                if (options.max < size) {
                    _this.val(words.substring(0, options.max));
                } else {
                    if (!!options.showDivId) {
                        _showDiv.html(options.max - size);
                    }
                }
            });
        }
    }
})(jQuery)