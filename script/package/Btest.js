Namespace.register("BT.Fn"); //功能命名空间
Namespace.register("BT.Us"); //用户命名空间
Namespace.register("BT.Ev"); //事件处理模块
!(function (_$) {
    _$.Get = function () {
        var a = {
            Int: function () {
                return parseInt.apply(this, arguments);
            },
            Style: function (obj, attr) {    //获取非行间样式，obj是对象，attr是值
                if (obj.currentStyle) {   //针对ie获取非行间样式
                    return this.Int(obj.currentStyle[attr]);
                } else {
                    return this.Int(getComputedStyle(obj, false)[attr]);   //针对非ie
                }
            },
            GetStyle: function (obj, attr) {
                //return this.Int(this.Style(obj, attr));
            }
        };
        return a;
    };
    _$.roll = (function (UED, list, button, rollTime, type) { //banner轮播
        var b = function () {
            this.UD = {}, this._UED = UED, this._button = button, this.list = list, this._rollTime = rollTime, this._now = 0, this.Time = null;
            this.tP = type != "fade" ? (type == "L" ? "margin-left" : "margin-top") : "fade";
            this._ChildW = this._UED.children().eq(0).children()[0].width; //单元素宽度
            this._ChildH = this._UED.children().eq(0).children()[0].height; //单元素高度
            this._UED.css({ 'width': this._ChildW, 'height': this._ChildH });   //初始化宽高
            this._ParentCL = this._UED.children().eq(0).children().length;
            this._GetParent = this._UED.children().eq(0);
            this._Parent = this.tP != "margin-top" ? this._GetParent.css({ 'width': this._ChildW * this._ParentCL }) : this._GetParent.css({ 'width': this._ChildW }); //实际滚播对象
        }
        b.prototype = {
            view: function () {
                var _that = this; this._button != false ? this.btn(this) : ""; this.list != false ? this.cir(this) : ""; this.Ti(this);
                this._UED.hover(function () { _that.cle(_that); }, function () { _that.Ti(_that); });
            },
            btn: function (_that) {
                var lBtn = _$("<div class='leftbutton font icon-zuo'></div>").insertBefore(this._UED.find('div'));
                var rBtn = _$("<div class='rightbutton font icon-zuo'></div>").appendTo(this._UED);
                var obj = {}; obj['top'] = (this._ChildH - _$.Get().Int(lBtn.height())) / 2 + 'px'; lBtn.css(obj); rBtn.css(obj);
                lBtn.click(function () { _that._now--; _that.tP == 'fade' ? _that.fade() : _that.aniplay(); });
                rBtn.click(function () { _that._now++; _that.tP == 'fade' ? _that.fade() : _that.aniplay(); });
            },
            cir: function (_that) {
                this._list = _$("<div class='founder'></div>").appendTo(this._UED);
                for (var i = 0; i < this._ParentCL; i++) { _$("<div></div>").appendTo(this._list[0]); }
                this._list.children().eq(0).addClass('active');
                this._list.children().hover(function () { _that._now = $(this).index(); _that.tP == 'fade' ? _that.fade() : _that.aniplay(); });
                this._list.css({ 'left': (this._ChildW - this._list.width()) / 2 })
            },
            aniplay: function () {
                this.cle(); this.UD[this.tP] = -this._now * (this.tP == "margin-left" ? this._ChildW : this._ChildH); //动画所执行的过程
                this._Parent.stop(true, false).animate(this.UD, 300); this.Ti(this);
            },
            Ti: function (_that) {
                this.cle(); this.Time = setInterval(function () { _that._now++; _that.tP == 'fade' ? _that.fade() : _that.aniplay(); }, this._rollTime);
            },
            cle: function () {
                clearInterval(this.Time); this._now == this._ParentCL ? this._now = 0 : (this._now < 0 ? this._now = this._ParentCL - 1 : "");
                this._list != undefined ? this._list.children().eq(this._now).addClass('active').siblings().removeClass('active') : "";
            },
            fade: function () {
                this.cle(); this._Parent.children().stop(true, false).eq(this._now).fadeIn(400).siblings().stop(true, false).fadeOut(400); this.Ti(this);
            }
        };
        var a = function () { var a = new b(); a.view(); return a; }
        return a();
    });
    _$.dropmenu = (function (UED) { //下拉框
        var a = function () {
            this._UED = UED;
            this._ul = UED.find('ul').slideUp(0).css({ 'width': UED.width() * 0.98 });
            this.target = UED.attr("data-target");
        }
        a.prototype = {
            view: function () {
                var _that = this;
                var btn = "";
                this.target == "Dropmenu" ? btn = _$("<button><div class='font icon-xiala'></div></button>").insertBefore(this._ul) : btn = _$("<button><i class='font icon-xia'></i></button>").insertBefore(this._ul);
                _$("<div class='clear'></div>").insertBefore(this._ul)
                btn.click(function () {
                    _that._ul.slideToggle(150);
                });
                this._UED.hover(function () { }, function () { _that._ul.slideUp(150); })
                this._ul.children().click(function () {
                    _that._UED.find('button').eq(0).text($(this).text()).css({ "color": "#333" })
                    _that._ul.slideUp(150);

                    //return _that.callback.apply(_that.callback, [$(this).text()]);
                    //return _that.callback.call(_that.callback, $(this).text());
                });
            }
        };
        var b = function () { var b = new a(); b.view(); return b; }
        return b();
    });
    _$.scroll = (function (UED, Type, delay) { //无缝滚动 间断滚动(未处理)
        var a = function () {
            this.UED = UED;
            this.Type = Type;
            this._Ul = UED.find("ul");
            this.delay = delay;
            this.iT = null;
        }
        a.prototype = {
            view: function () {
                this.Width = this.Height = 0;
                this.length = this._Ul.find("li").length
                this._LR = this.GetType();
                this.Type == "L" ? this.Left(this) : this.Top(this);
            },
            GetType: function () {
                if (this.Type == "L") {
                    this._div = _$("<div></div>").append(this._Ul).appendTo(this.UED).append(this.UED.find("div").eq(0).html()).css({ "marginLeft": "0px" })
                    for (var i = 0; i < this._Ul.find("li").length; i++) {
                        this.Width += _$.Get().Int(this._Ul.find("li").eq(i).width());
                    }
                    return _$.Get().Int(_$.Get().Style(this._Ul.find("li")[0], "margin-right") + _$.Get().Style(this._Ul.find("li")[0], "margin-right")) * this.length + _$.Get().Int(this.Width)
                }
                this._div = _$("<div></div>").append(this._Ul).appendTo(this.UED).append(this.UED.find("div").eq(0).html()).css({ "marginTop": "0px" })
                for (var i = 0; i < this._Ul.find("li").length; i++) {
                    this.Height += _$.Get().Int(this._Ul.find("li").eq(i).height());
                }
                return _$.Get().Int(_$.Get().Style(this._Ul.find("li")[0], "margin-top") + _$.Get().Style(this._Ul.find("li")[0], "margin-bottom")) * this.length + _$.Get().Int(this.Height);
            },
            Left: function (_that) {
                var _style = this._div[0].style;
                this._div.css({ "width": Math.abs(this._LR) * 2 });
                this.iT = setInterval(function () {
                    _style.marginLeft = _$.Get().Int(_style.marginLeft) - 1 + 'px';
                    if (_$.Get().Int(_that._div.width()) / 2 <= Math.abs(_$.Get().Int(_style.marginLeft))) {
                        _style.marginLeft = "0px";
                    }
                }, 30);
            },
            Top: function (_that) {
                var _style = this._div[0].style;
                this._div.css({ "height": Math.abs(this._LR) * 2 });
                this.iT = setInterval(function () {
                    _style.marginTop = _$.Get().Int(_style.marginTop) - 1 + 'px';
                    if (_$.Get().Int(_that._div.height()) / 2 <= Math.abs(_$.Get().Int(_style.marginTop))) {
                        _style.marginTop = "0px";
                    }
                }, 30);
            }
        };
        var b = function () { var b = new a(); b.view(); return b; }
        return b();
    })
    /*分页*/
    _$.Page = (function (btn, ID, pagenumber, count, UE, flg) {
        var a = function () {
            this.btn = btn, this.UED = ID, this.count = pagenumber, this.page = count, this.UE = UE, this.top = flg;
            this._now = 1;
            this.flg = true;
        }
        a.prototype = {
            view: function () {
                if (this.top == "2") {
                    this._pagenumer = Math.ceil(_$.Get().Int(this.UED.length) / _$.Get().Int(this.count));
                } else {
                    this._pagenumer = Math.ceil(_$.Get().Int(this.UED.children().length) / _$.Get().Int(this.count)); //分成多少页
                }
                if (this._pagenumer >= 2) {
                    this.btns();
                    if (this.UED.hasClass("hot-box-new")) {
                        this.UED.parents(".wid").css({ "padding-bottom": "70px" })
                    }
                }
            },
            btns: function () {
                if (this.top == true || this.top == "2" || this.top == "1") {
                    $("body,html").animate({ 'scrollTop': 0 }, 0);
                }
                if (this.top == "2") { this.UED.hide(); } else {
                    this.UED.children().hide();
                }
                for (var j = (this._now - 1) * this.count; j < this._now * this.count; j++) { //显示
                    if (this.top == "2") {
                        this.UED.eq(j).show();
                    } else {
                        this.UED.children().eq(j).show();

                    }
                }
                this.UE.html("");
                this._UE = $("<div class='pageLeft'></div>").appendTo(UE);
                this.flg = true;
                this.prev = $("<div class='prev'></div>").text("上一页").appendTo(this._UE[0]);
                this.page < 4 ? this.page = 4 : (this.page > 5 ? this.page = 5 : "");
                //当需求的分页页数大于总页数的情况下
                if (this.page >= this._pagenumer) {
                    this.page = this._pagenumer;
                    this.flgs = false;
                }
                var ss = this._now >= this._pagenumer - this.page + 1 ? this._pagenumer - this.page + 1 : this._now;
                for (var i = ss; i < this._pagenumer + 1; i++) {
                    if (this._now != 1 && i > this.page + (this._now - 2) || i > this.page + (this._now - 1)) {
                        break
                    }
                    if (this._now > this._pagenumer - this.page + 1) { }
                    else if (this._now != 1 && this.flg == true) {
                        $("<div class='btn'></div>").text(this._now - 1).appendTo(this._UE[0]);
                        this.flg = false;
                    }
                    var a = $("<div class='btn'></div>").text(i).appendTo(this._UE[0]);
                    if (i == this._now) {
                        a.addClass("active");
                    }
                }
                if (this.flgs == true) {
                    if (this._pagenumer - this.page + 1 >= this._now) {
                        $("<div class='btn2'></div>").text("...").appendTo(this.UE);
                    }
                }
                this.next = $("<div class='next'></div>").text("下一页").appendTo(this._UE[0]);
                this.btn == true ? this.lfbtn(this) : "";
                this.click(this);
                $("<div></div>").css({ "clear": "both" }).appendTo(this._UE[0])
                this.allPage(this);
            },
            lfbtn: function (that) {
                this.first = $("<div class='first'></div>").text("首页").prependTo(this._UE[0]);
                this.last = $("<div class='last'></div>").text("尾页").appendTo(this._UE[0]);

                this.first.bind("click", function () {
                    that._now = 1;
                    that.btns();
                });
                this.last.bind("click", function () {
                    that._now = that._pagenumer;
                    that.btns();
                });
            },
            click: function (that) {
                that.UE.find(".btn").bind("click", function () {
                    that._now = _$.Get().Int($(this).text());
                    that.btns();
                })
                that.prev.bind("click", function () {
                    if (that._now == 1) { return; }
                    that._now--;
                    that.btns();
                });
                that.next.bind("click", function () {
                    if (that._now == that._pagenumer) { return; }
                    that._now++;
                    that.btns();
                });
            },
            allPage: function (that) {
                var as = $("<div class='getAll'></div>").appendTo(this.UE);
                $("<div></div>").text("共" + this._pagenumer + "页，跳到").appendTo(as[0]);
                $('<input type="text" onkeyup=if(isNaN(value))execCommand("undo") onafterpaste=if(isNaN(value))execCommand("undo") id="getAllinput"/>').appendTo(as[0]);
                var button = $("<button>确定</button>").appendTo(as[0]);
                button.click(function () {
                    var val = parseInt($("#getAllinput").val());
                    if (val >= 1 && val <= that._pagenumer) {
                        that._now = val;
                        that.btns();
                    } else {
                        alert("输入的不是有效数字");
                    }
                });
                $("<div></div>").css({ "clear": "both" }).appendTo(this.UE)
            }
        };
        var b = function () { var b = new a(); b.view(); return b; }
        return b();
    });
})(jQuery)
//不同页面 导航变色
!(function ($) {
    $.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }
})(jQuery);

!(function ($) {
    $.isIE = function () {
        if (!!window.ActiveXObject || "ActiveXObject" in window)
            return true;
        else
            return false;
    }
})(jQuery);

//索引值超过N个，后面的隐藏
!(function ($) {
    $.fn.IndexHide = function (num) {
        var a = $(this).andSelf().length;
        for (var i = num; i < a; i++) {
            $(this).andSelf(i).hide();
        }
    }
})(jQuery);

//正则表达式
!(function ($) {
    $.fn.Regular = function (name, str) { //暴露一个jq方法
        var filter;
        switch (name) {
            case "email": //邮箱 
                filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                break;
            case "IDCard": //身份证
                filter = /^\d{15}(\d{2}[A-Za-z0-9])?$/;
                break;
            case "English": //是否英文字母
                filter = /^[a-zA-Z]+$/;
            case "IsInteger": //是否整数
                filter = /^[-+]?\d*$/;
                break;
            case "IsChinese":   //是否中文
                filter = /^[\u0391-\uFFE5]+$/;
                break;
            case "IsZipcode": //邮政编码
                filter = /^\d{6}$/;
                break;
            case "qq": //QQ
                filter = /^[1-9]\d{4,11}$/;
                break;
            case "moblie": //电话
                filter = /^((\(\d{2,3}\))|(\d{3}\-))?13\d{9}$/;
                break;
            case "fuhao":
                filter = /^(?!.*?[\~\`\·\！\!@\#\￥\$%\……\^&\*\(\)\（\）\_\-\——\+\=\【\】\[\]\{\}\|\、\\\：\:\;\；\"\”\“\’\'\'\<\>\《\》\。\.\?\？\/]).*$/;
                break;
            default: break;
        }
        return filter.test(str);
    }
    $.fn.scrollUnique = function () {
        return $(this).each(function () {
            var eventType = 'mousewheel';
            // 火狐是DOMMouseScroll事件
            if (document.mozHidden !== undefined) {
                eventType = 'DOMMouseScroll';
            }
            $(this).on(eventType, function (event) {
                // 一些数据
                var scrollTop = this.scrollTop,
                scrollHeight = this.scrollHeight,
                height = this.clientHeight;

                var delta = (event.originalEvent.wheelDelta) ? event.originalEvent.wheelDelta : -(event.originalEvent.detail || 0);

                if ((delta > 0 && scrollTop <= delta) || (delta < 0 && scrollHeight - height - scrollTop <= -1 * delta)) {
                    // IE浏览器下滚动会跨越边界直接影响父级滚动，因此，临界时候手动边界滚动定位
                    this.scrollTop = delta > 0 ? 0 : scrollHeight;
                    // 向上滚 || 向下滚
                    event.preventDefault();
                }
            });
        });
    };
})(jQuery);
/*方法检索太慢了*/
$(function () {
    $("[data-target]").each(function () {
        if ("Droll" == $(this).attr("data-target")) {
            $(this).addClass("Droll");
            var time = $(this).data('delay') || 3000;
            var type = $(this).data('type') || "L";
            var founder = $(this).data('circle') || false;
            var btn = $(this).data('btn') || false;
            $.roll($(this), founder, btn, time, type);
        }
        else if ("Dropmenu" == $(this).attr("data-target") || "DropmenuN" == $(this).attr("data-target") || "DropmenuS" == $(this).attr("data-target")) {
            $(this).addClass("Dropmenu");
            var target = $(this).attr("data-target");
            if (target == "DropmenuN") $(this).addClass("DropmenuN");
            else if (target == "DropmenuS") $(this).addClass("DropmenuS");
            var color = $(this).data('color');
            color == "blue" ? $(this).addClass("Dropmenu-primary") : (color == "cyan" ? $(this).addClass("Dropmenu-info") : (color == "green" ? $(this).addClass("Dropmenu-success") : ""));
            $(this).find('div').eq(0).addClass("Droptitle");
            $.dropmenu($(this));
        }
        else if ("Wscroll" == $(this).attr("data-target")) {
            $(this).addClass("Wscroll");
            var type = $(this).data("type") || "L";
            var delay = $(this).data("delay") || "";
            if (type != "L") $(this).addClass("Hscroll");
            $.scroll($(this), type);
        }
        else if ("Paging" == $(this).attr("data-target")) {
            $(this).addClass("Paging");
            var btn = $(this).data("btn") || false;
            var ID = $(this).data("pageid");
            ID = $("#" + ID);
            var pagenumber = $(this).data("pagenumber");
            var count = $(this).data("count") || 4;
            var top = $(this).data("top") || true;
            $.Page(btn, ID, pagenumber, count, $(this), top);
        }
    })
})
