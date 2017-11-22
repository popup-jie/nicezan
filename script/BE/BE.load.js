/*起始模块处理事件*/



//处理首页页面JS效果
BT.Ev.HomeEffect = function () {

    //首页单独块的效果
    $(".artBox").hover(function () {
        $(this).parent().find(".art-txt").css({ "color": "#46befd" });
        $(this).parent().find(".art-txt").stop().animate({ "height": "35px" }, 200);
    }, function () {
        $(this).parent().find(".art-txt").css({ "color": "#666" });
        $(this).parent().find(".art-txt").stop().animate({ "height": "19px" }, 200);
    });
    // 绑定前解绑
    $('#page_sub_box .artBox').unbind('mouseenter').unbind('mouseleave');

    /*优评 移入*/
    $(".comt-art").hover(function () {
        $(this).parent().find(".color1").stop().animate({ "marginTop": "-16px" });
        $(this).next().css({ "background": "#56acdf" });
        $(this).next().find(".comt-san").show();
    }, function () {
        $(this).parent().find(".color1").stop().animate({ "marginTop": "0px" });
        $(this).next().css({ "background": "#fff" });
        $(this).next().find(".comt-san").hide();
    })
    //优评 回复按钮
    $("#GoodRecept").find("ul li").click(function () {
        BT.Es.CreateGoodRecept($(this).text());
    })
    //优评 更多按钮
    $("#GoodRecept-Btn").click(function () {
        if ($(this).prev().prev().height() < 207) {
            $(this).prev().prev().animate({ "height": "410px" }, 300); $(this).text("收起");
        } else {
            $(this).prev().prev().animate({ "height": "206px" }, 300); $(this).text("查看更多 >");
        }
    });
    //我要投稿
    $(".publishAr").click(function () {
        window.open("../html/usercenter.html?user=go");
    })
}

//处理搜索模块 初始化页面
BT.Ev.SearchMode = function () {
    $(".search #search-button").click(function () {
        var key = $("#search_text").val();
        if (key == "") {
            alert("请输入关键内容"); return
        }
        BT.Fn.DelResult(key);
    })
    $(".search .search_get").animate({ "opacity": "0" }, 0).show();
    $(".search .hot-box-new").html("");
    //$("#search_text").blur(function () { $(".search .search_get").stop(true, true).animate({ "opacity": "0" }, 200); })
    $("#search_text").focus(function () {
        if ($("#search_text").val().length > 0 && $("#search_text").val() != " ") {
            $(".search .search_get").stop(true, true).animate({ "opacity": "1" }, 200);
            BT.Sl.Requeset("S_Select_labelAll", ([$("#search_text").val()]), function (data) {
                BT.Fn.DealWidthresult(data);
            })
        }
    })
    var key = $("#search_text").val() || "";
    BT.Fn.DelResult(key);

    $(".search .middle .search-header ul").find("li").click(function () {
        $(this).parent().find(".active").animate({ "left": $(this)[0].offsetLeft }, 200);
        $(this).addClass("list").siblings().removeClass("list");
        $(this).removeClass("list2");
        var key = $("#search_text").val() || "";
        _s = _a = "";
        //console.log($(".search .middle .search-header ul").eq(0).find(".list").text() + "," + $(".search .middle .search-header ul").eq(1).find(".list").text())
        if ($(".search .middle .search-header ul").eq(0).find(".list").text() != "投稿排序") { _s = $(".search .middle .search-header ul").eq(0).find(".list").data("title") }
        if ($(".search .middle .search-header ul").eq(1).find(".list").text() != "投稿分区") { _a = $(".search .middle .search-header ul").eq(1).find(".list").data("title") }
        BT.Fn.DelResult(key, _s, _a);
    });
    $(".search > .middle .search-header ul li").hover(function () {
        if (!$(this).hasClass("list")) $(this).addClass("list2");
    }, function () {
        $(this).removeClass("list2");
    })

    // 搜索页面
    $("#page_change_icon").click(function () {

        $(".page_sub_box").attr("id", "page_sub_box");
        $(".page_change_icon i").css({ "color": "#ccc" });
        $(this).find("i").css({ "color": "#56acdf" });
        $('#page_sub_box .artBox').unbind('mouseenter').unbind('mouseleave');

        BT.Fn.Paging($(".search"), $(".search .middle .wid")[0], 10, { "position": "absolute", "left": "0px", "right": "0px" }, $(".search .page_sub_box .hot-box-new"));

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
        BT.Fn.Paging($(".search"), $(".search .middle .wid")[0], 20, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "50px" }, $(".search .page_sub_box .hot-box-new"));
    });
}
//处理评论回复块
BT.Ev.Comment = function () {
    var time3 = time4 = null;
    /*usercenter 分享 移入*/
    $(".toolbar .block").hover(function () {

        if ($(this).attr("id") == "block-share") {

            $(this).find(".tb").show();
            clearTimeout(time3);

        }
        else if ($(this).attr("id") == "block-tri") {
            if ($(".zclip")[0]) { $(".zclip").remove(); }
            $(".triK").css({ "left": "162px", "top": "72px" }).show();
            $(".triK #copy").zclip({
                path: 'ZeroClipboard.swf',
                copy: function () { return $('#copy').prev().val(); }
            })
            $(".triK .zclip").hover(function () { clearInterval(time4); return false; }, function () { clearInterval(time4); return false; })
        }
    }, function () {
        if ($(this).attr("id") == "block-share") {
            time3 = setTimeout(function () {
                $(".toolbar .block").find(".tb").hide();
            }, 200)
        }
        else if ($(this).attr("id") == "block-tri") {
            time4 = setTimeout(function () {
                $(".triK").hide();
            }, 200)
        }
    });
    /*粘贴*/
    $(".triK").hover(function () {
        clearTimeout(time4);
    }, function () {
        time4 = setTimeout(function () {
            $(".triK").hide();
        }, 200)
    })
    /*点击颜文字按钮*/
    $(".ywz-wrapper").click(function (event) {
        var _self = $(this);
        $(this).find(".biaoqing_box").show();
        //        $(this).find(".biaoqing_box a").click(function (event) {
        //            $("#dcmp_textarea_container textarea").insertContent($(this).text());
        //            return false;
        //        })
        $("#dcmp_textarea_container").find("textarea").focus();
        return false;
    })
    $(".ywz-wrapper").find(".biaoqing_box a").click(function (event) {
        $("#dcmp_textarea_container textarea").insertContent($(this).text());
        return false;
    })
    $(".ywz-wrapper").hover(function () {
        clearTimeout(time4);
    }, function () {
        time4 = setTimeout(function () {
            $(".ywz-wrapper").find(".biaoqing_box").hide();
        }, 200)
    })

    $("#submit-comment").click(function () {
        if (BT.Us.info == "" || BT.Us.info == undefined) {
            return alert("请先登录");
        }
        var val = $(this).parent().prev().val();
        BT.Sl.Requeset("I_Insert_recept", ([BT.Us.info.UserId, "", val, BT.Fn.GetQueryString("id"), 1, 0]), function (data) {
            if (data.value != true) {
                var li = $("<li class='main-floor'></li>").fadeOut(0);
                var facebox = $("<div class='facebox'></div>").appendTo(li[0]);
                var _a = $("<a href='#' mid=" + BT.Us.info.UserId + " target='_blank' card=" + BT.Us.info.NickName + "></a>").appendTo(facebox[0]);
                $("<img src=" + BT.Us.info.Head_img + " class='face'  />").appendTo(_a[0]);
                $("<a href='#' mid=" + BT.Us.info.UserId + " target='_blank' card=" + BT.Us.info.NickName + " class='face_bg'></a>").appendTo(facebox[0]);
                var t = $("<div class='t'></div>").appendTo(li[0]);
                $("<a href='#' mid=" + BT.Us.info.UserId + " target='_blank' card=" + BT.Us.info.NickName + ">" + BT.Us.info.NickName + "</a>").appendTo(t[0]);
                $("<span class='user-time'> -1秒前</span>").appendTo(t[0]);
                $("<div class='contentnice'>" + val + "</div>").appendTo(li[0]);
                var elinfo = $("<div class='elinfo'></div>").appendTo(li[0]);
                var _sa = $(".comm_list .main-floor").length + 1;
                $("<span class='floor-num'>#" + _sa + "</span>").appendTo(elinfo[0]);
                $("<a class='floor-zan'>点赞(0)</a>").appendTo(elinfo[0]);

                var ss = $("<i class='report'  id='' pid='' number=" + data.value[0].receptnumber + "><a  class='huifu reply-b'>参与回复</a></i>").appendTo(elinfo[0]);
                ss.click(function () { BT.Fn.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })

                $("#submit-comment").parent().prev().val("");
                if ($(".comm_list .main-floor").eq(0)[0] != undefined) {
                    $(".comm_list .main-floor").eq(0).before($(li).fadeIn(400)); return;
                }
                $(li).appendTo($(".comm_list")[0]).fadeIn(400);
            }
        })
    });
    //初始化评论区域
    BT.Sl.Requeset("S_Select_recept", ([BT.Fn.GetQueryString("id"), ""]), function (data) {
        BT.Fn.SetComment(data);
    })
}
