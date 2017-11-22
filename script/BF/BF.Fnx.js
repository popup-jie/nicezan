/*子页幻灯片滚动功能*/
BT.Fn.Slide = function (poster) {

    var poster = poster;                   //整个对象
    var nextBtn = poster.parent().parent().find(".next-btn");
    var prevBtn = poster.parent().parent().find(".prev-btn");
    var hotBtn = $(".hot-icon");
    var posterItems = poster.find("li.slider-panel");   // 获取单个对象
    var posterWidth = posterItems.outerWidth(true) * posterItems.length;           //整体宽度

    var posterFirstItem, posterLastItem, posterLastMain, go = true;

    if ($.isIE()) {
        $(".slider-panel img").css({ "position": "relative" });
    }


    // 设置布局
    poster.css({ "marginLeft": -(posterWidth - $(window).width()) / 2 + "px", "width": posterWidth + "px" });

    console.log(nextBtn);
    nextBtn.click(function () {

        if (go) {
            go = false;
            posterFirstItem = posterItems.first();
            posterLastItem = posterItems.last();

            poster.stop().animate({ "marginLeft": parseInt(poster.css("marginLeft")) - posterItems.outerWidth(true) + "px" }, 600, function () {
                posterFirstItem.insertAfter(posterLastItem);
                posterItems = poster.children();
                poster.css({ "marginLeft": -(posterWidth - $(window).width()) / 2 + "px", "width": posterWidth + "px" });
                go = true;
            });

            posterItems.find(".ban-left-art").addClass("hide");
            posterItems.find(".slider-pane-blur").removeClass("move1").addClass("blur ");
            posterItems.find(".slider-pane-blur img").removeClass("active");
            posterItems.find(".cover-layer").removeClass("hide").addClass("show");

            posterItems.eq(3).find(".ban-left-art").removeClass("hide");
            posterItems.eq(3).find(".slider-pane-blur img").addClass("active");
            posterItems.eq(3).find(".slider-pane-blur").addClass("move1").removeClass("blur");
            posterItems.eq(3).find(".cover-layer").removeClass("show").addClass("hide");
        }
    })
    prevBtn.click(function () {
        if (go) {
            go = false;
            posterFirstItem = posterItems.first();
            posterLastItem = posterItems.last();
            poster.stop().animate({ "marginLeft": parseInt(poster.css("marginLeft")) + posterItems.outerWidth(true) + "px" }, 600, function () {
                posterLastItem.insertBefore(posterFirstItem);
                posterItems = poster.children();
                poster.css({ "marginLeft": -(posterWidth - $(window).width()) / 2 + "px", "width": posterWidth + "px" });
                go = true;
            });

            posterItems.find(".ban-left-art").addClass("hide");
            posterItems.find(".slider-pane-blur").removeClass("move1").addClass("blur ");
            posterItems.find(".slider-pane-blur img").removeClass("active");
            posterItems.find(".cover-layer").removeClass("hide").addClass("show");

            posterItems.eq(1).find(".ban-left-art").removeClass("hide");
            posterItems.eq(1).find(".slider-pane-blur img").addClass("active");
            posterItems.eq(1).find(".slider-pane-blur").addClass("move1").removeClass("blur");
            posterItems.eq(1).find(".cover-layer").removeClass("show").addClass("hide");
        }

    })
}

//用户中心页面切换
BT.Fn.UsercenterCut = function (UID, ChangeUID) {
    UID.bind("click", function () {
        if ($(this).attr("class") != "fr") {
            var arr = [];
            for (var i = 0; i < $(this).siblings("li").length; i++) {
                arr[i] = i;
            }
            if (ChangeUID == "id") {
                var title = $(this).attr('data-title');
                var id = $(this).parent().attr("id");
                $("#" + id + "2").find("dl").eq(title).show().siblings().hide();
            }
            else if (ChangeUID != "" && ChangeUID != undefined) {
                ChangeUID.eq($(this).attr("data-title")).show().siblings().hide();
            }
            $(this).addClass("on").siblings().removeClass("on");

            if ($(this).parents("div#histroy")[0]) {
                if ($(this).text() == "车票记录") {
                    $(".m-mid-content").addClass("m-mid-contentN");
                }
                else {
                    $(".m-mid-content").removeClass("m-mid-contentN");
                }
            }
            $(this).after(UID);
            var title = $(this).attr('data-title');
            for (var i = 0; i < arr.length; i++) {
                for (var j = 0; j < $(this).parent().children("li").length; j++) {
                    if (arr[i] == UID.eq(j).attr('data-title') && arr[i] != title) {
                        UID.eq(i).after(UID.eq(j));
                        break;
                    }
                }
            }
        }
    });
}

BT.Fn.Chunk = function () {
    // 搜索页面
    $("#page_change_icon").click(function () {
       
        $(".page_sub_box").attr("id", "page_sub_box");
        $(".page_change_icon i").css({ "color": "#ccc" });
        $(this).find("i").css({ "color": "#56acdf" });
        $('#page_sub_box .artBox').unbind('mouseenter').unbind('mouseleave');

       // BT.Fn.Paging($(".search"), $(".search .middle .wid")[0], 10, { "position": "absolute", "left": "0px", "right": "0px" }, $(".search .page_sub_box .hot-box-new"));

    });
    $("#page_change_icon2").click(function () {
        $(".page_sub_box").attr("id", "");
        $(".page_change_icon i").css({ "color": "#ccc" });
        $(this).find("i").css({ "color": "#56acdf" });
        $(".artBox").hover(function () {
            $(this).parent().find(".art-txt").css({ "color": "#46befd" });
            $(this).parent().find(".art-txt").stop().animate({ "height": "35px" }, 200);
        }, function () {
            $(this).parent().find(".art-txt").css({ "color": "#666" });
            $(this).parent().find(".art-txt").stop().animate({ "height": "19px" }, 200);
        });
      //  BT.Fn.Paging($(".search"), $(".search .middle .wid")[0], 20, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "50px" }, $(".search .page_sub_box .hot-box-new"));
    });
}