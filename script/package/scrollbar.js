(function () {
    d = function () { }
    d.prototype = {
        play: function (argsb, l_btn, r_btn, args) {
            var _that = this;
            this.l_btn = l_btn;
            this.r_btn = r_btn;

            this.number = 0;
            this.Inti(argsb);

            if (args) {
                args = args;

            } else {
                args = 0;
            }
            //$("#" + l_btn).click(function () {

            //    if (_that.number <= 0) {
            //        _that.number = _that.count - args - 1;
            //    } else {
            //        _that.number--;
            //    }
            //    _that.Lbtn(_that.number);
            //});
            //$("#" + r_btn).click(function () {

            //    if (_that.number >= _that.count - args - 1) {
            //        _that.number = 0;
            //    } else {

            //        _that.number++;
            //    }
            //    _that.Rbtn(_that.number);
            //});
        },
        Inti: function (argsb) {
            this.slidewrap = $("." + argsb);

            this.slide = this.slidewrap.find("li");

            this.count = this.slide.length;

            this.slidewrap.css({
                'width': this.count * this.slide.width()
            });
        },
        //Lbtn: function (show) {

        //    var x = show * this.slide.width();
        //    this.slidewrap.stop().animate({ 'margin-left': -x });
        //},
        Rbtn: function (num) {

            if (this.number >= this.count - 1) {
                this.number = 0;
            } else {
                this.number++;
            }
            if (num != null) {
                this.number = num;
            } else {
                this.number = this.number;
            }
            if (num == 0 || this.number == 0) {
                $(".ban-artbox").hide();
                $("#ban-artbox-1").css({ "opacity": "0" }).animate({ "opacity": "1", "marginTop": "0px" }, 700).show();
            } else if (num == 1 || this.number == 1) {
                $(".ban-artbox").hide();
                $("#ban-artbox-2").css({ "opacity": "0" }).animate({ "opacity": "1", "marginTop": "0px" }, 700).show();
            } else if (num == 2 || this.number == 2) {
                $(".ban-artbox").hide();
                $("#ban-artbox-3").css({ "opacity": "0" }).animate({ "opacity": "1", "marginTop": "0px" }, 700).show();
            }
            var x = this.number * this.slide.width();
            this.slidewrap.stop().animate({ 'margin-left': -x });

            $(".slider-item").removeClass("slider-item-selected");
            if (this.number == 0) {
                $("#slider-item-1").addClass("slider-item-selected");
            }
            else if (this.number == 1) {
                $("#slider-item-2").addClass("slider-item-selected");
            }
            else {
                $("#slider-item-3").addClass("slider-item-selected");
            }
            // $(".slider-item")[this.number].classList.add("slider-item-selected");

        },
        Sbtn: function (num) {
            this.Rbtn(num);
            this.number = num;
        }
    }

    var a7 = new d();


    artfun = function (that, num) {
        var _that = that;
        $(".slider-item,.slider-extra").removeClass("slider-item-selected");
        $(_that).addClass("slider-item-selected");
        a7.Sbtn(num);
    }
    var time = null;

    time = setInterval(function () {
        a7.Rbtn();
    }, 7000);
    window["d"] = d;
})(jQuery);
   


