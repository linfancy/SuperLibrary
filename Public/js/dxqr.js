var funPlaceholder = function (element) {
    var placeholder = '';
    if (element && !("placeholder" in document.createElement("input")) && (placeholder = element.getAttribute("placeholder"))) {
        element.onfocus = function () {
            if (this.value === placeholder) {
                this.value = "";
            }
            this.style.color = '';
        };
        element.onblur = function () {
            if (this.value === "") {
                this.value = placeholder;
                this.style.color = 'graytext';
            }
        };

        //样式初始化
        if (element.value === "") {
            element.value = placeholder;
            element.style.color = 'graytext';
        }
    }
};


function fillEmail() {
    var mailList = new Array('@gmail.com', '@qq.com', '@163.com', '@126.com', '@hotmail.com');
    $("#email").bind("keyup", function () {
        var val = $(this).val();
        if (val == '' || val.indexOf("@") > -1) {
            $(".emaillist").hide();
            return false;
        }
        $('.emaillist').empty();
        for (var i = 0; i < mailList.length; i++) {
            var emailText = $(this).val();
            $('.emaillist').append('<li class=addr>' + $(this).val().substr(0, 1) + '...' + mailList[i] + '</li>');
        }
        $('.emaillist').show();
        $('.emaillist li').click(function () {
            $('#email').val(emailText + $(this).text().substr(4));
            $('.emaillist').hide();
        })
    })
}
    

