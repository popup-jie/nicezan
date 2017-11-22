//处理账户中心模块
BT.Ev.UserCenterAccount = function () {
    BT.Sl.Upload("photoimg", "imaegss", "", "upload", "head_img"); /*加载图片上传功能*/
    BT.Us.SetAccountMyinfo(); /*加载初始化数据*/
    if ($.getUrlParam('user') === "go") {
        $(".mid-right .myuser").eq(1).show().siblings("div").hide();
        $(".user-left ul li").eq(1).addClass("on").siblings().removeClass("on");
        BT.Us.SetAcccountInfo(1);
        $("#submission #subudjlid li").eq(1).click();

    }
    $(".user-left ul li").click(function () {
        $(".mid-right .myuser").eq($(this).index()).show().siblings("div").hide();
        $(this).addClass("on").siblings().removeClass("on");
        BT.Us.SetAcccountInfo($(this).index());
    })

    //账户中心保存按钮
    $("#Usercenter_Save").bind("click", function () {
        $(this).parent().css({ "marginTop": "26px", "box-shadow": "none" });
        setTimeout(function () {
            $("#Usercenter_Save").parent().css({ "marginTop": "20px", "box-shadow": "0px 6px 0px #ebcb06" });
        }, 200);
        BT.Us.UpdateMyinfo();
    });
    //我的柠檬 查看更多记录
    $("#records .coin-more").bind("click", function () {
        $(".table-wrapper").animate({ "height": $("#records table").height() });
    });
    //账户中心切换
    BT.Fn.UsercenterCut($("#usercenter .userdjclass li"), $("#usercenter .userqhclass .userqhclasslist"));
    //是否允许添加标签
    $("#contents_get2, #contents_get3").click(function () {
        if ($(this).hasClass('get2') == true) {
            $(this).removeClass('get2').addClass('get');
        } else {
            $(this).removeClass('get').addClass('get2');
        }
    })
    var time = null;
    $(".changePASS").css({ "opacity": "0" });
    $(".mid-right .mr-body dl dd#passwords a").click(function () {
        clearInterval(time);
        $(".changePASS").css({ 'top': $(this).offset().top + 20, "left": $(this).offset().left - 88, "display": "block" }).animate({ "opacity": "1" }, 300);
    })
    $(".changePASS").hover(function () {
        clearInterval(time);
    }, function () {
        clearInterval(time);
        time = setInterval(function () { $(".changePASS").animate({ "opacity": "0" }, 500).css({ "display": "none" }); clearInterval(time); }, 200)
    });
    $(".changePASS #close").click(function () { $(this).parents(".changePASS").css({ "display": "none", "opacity": "0" }) });
    $(".changePASS #sumbit").click(function () {
        BT.Us.ChangePass();
    });
    if (window.location.href.indexOf("messages") != -1) {
        $(".mid-right .myuser").eq(2).show().siblings("div").hide();
        $(".user-left ul li").eq(2).addClass("on").siblings().removeClass("on");
        BT.Us.SetAcccountInfo(2);

        for (var i = 0; i < BT.Us.CollZanRecept.length; i++) {
            if (BT.Us.CollZanRecept[i].IsOk != 2) {
                if (BT.Us.CollZanRecept[i]._ty != undefined) {
                    BT.Sl.Requeset("U_Update_Read", ([BT.Us.CollZanRecept[i]._GoneId, BT.Us.CollZanRecept[i]._ty]), function (data) { });
                } else {
                    BT.Sl.Requeset("U_Update_Read", ([BT.Us.CollZanRecept[i].receptKey, ""]), function (data) { });
                }
            }
        }
    }
}
//处理历史记录
BT.Ev.His = function () {
    //历史记录切换
    BT.Fn.UsercenterCut($("#histroy .m-mid-button li"));
    var timer = time4 = null;
    $("#histroy .m-mid-content ul li .look").click(function () {
        var url = $(this).data("tilte");
        var getCode = $(this).data("zipcode");
        if ($(".zclip")[0]) { $(".zclip").remove(); }
        $(".triK").css({ "left": $(this)[0].offsetLeft - $(".triK").width() + 10, "top": $(this)[0].offsetTop + 50 }).show();
        //复制车票链接
        $(".triK #copy").zclip({
            path: 'ZeroClipboard.swf',
            copy: function () { return $('#copy').prev().val(); }
        })
        $(".triK .trik_title_content input").val(url);
        $(".triK .trik_tile_code input").val(getCode);
        $(".triK .zclip").hover(function () { clearInterval(timer); return false; }, function () { clearInterval(timer); return false; })
        return false;
    });
    $(".triK").hover(function () {
        clearInterval(timer);
        clearInterval(time4);
    }, function () {
        clearInterval(timer);
        clearInterval(time4);
        timer = setInterval(function () {
            $(".triK").hide();
            clearInterval(timer);
            clearInterval(time4);
        }, 200)
    })

    $(".triK input").focus(function () {
        clearInterval(timer);
        clearInterval(time4);
        $(".triK").unbind('mouseenter').unbind('mouseleave');
    });
    $(".triK input").blur(function () {
        $(".triK").hover(function () {
            clearInterval(timer);
            clearInterval(time4);
        }, function () {
            clearInterval(timer); clearInterval(time4);
            timer = setInterval(function () {
                $(".triK").hide();
                clearInterval(timer); clearInterval(time4);
            }, 200)
        })
    })
    $(".triK, #histroy .m-mid-content ul li .look").hover(function () {

        clearInterval(timer);
    }, function () {
        clearInterval(timer);
        timer = setInterval(function () {
            $(".triK").hide();
            clearInterval(timer);
        }, 200)
    })
}
//处理通知模块
BT.Ev.Message = function () {
    for (var i = 0; i < $("#messages .m-mid-content-text").find('a.who').length; i++) {
        var str = $(".m-mid-content-text").find('a.who').eq(i).text();
        if (str.length > 20) {
            str = str.substr(0, 20) + '...';
        }

        $("#messages .m-mid-content-text").find('a.who').eq(i).text(str)
    }
    for (var i = 0; i < $("#messages #mynews .m-mid-content-text .bottom a").length; i++) {
        if ($("#messages #mynews .m-mid-content-text .bottom a").eq(i).width() > 490) {
            var str = $("#messages #mynews .m-mid-content-text .bottom a").eq(i).text();
            str = str.substr(0, 41) + '...';
            $("#messages #mynews .m-mid-content-text .bottom a").eq(i).text(str)
        }
    }
    $("#messages .userdjclass li").bind("click", function () {
        $(this).addClass("on").siblings().removeClass("on");
        if ($(this).text() == "我的消息") {
            $("#messages .m-mid-content").find("#m-mid-content_div1").show();
            $("#messages .m-mid-content").find("#m-mid-content_div2").hide();
            BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div1")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div1").find("li"), "2");

        } else {
            $("#messages .m-mid-content").find("#m-mid-content_div1").hide();
            $("#messages .m-mid-content").find("#m-mid-content_div2").show();
            BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div2")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div2").find("li"), "2");

        }
        $("#messages .userdjclass li").eq(0).before($(this));
        var title = $(this).attr("data-title");
        $("#messages .m-mid-button ul").eq(title).show().siblings().hide();

    });
    $("#messages .m-mid-button ul li").bind("click", function () {
        var arr = [];
        for (var i = 0; i < $(this).siblings("li").length; i++) {
            arr[i] = i;
        }
        $(this).addClass("on").siblings("li").removeClass("on");
        $(this).siblings("li").eq(0).before($(this));
        var title = $(this).attr('data-title');
        for (var i = 0; i < arr.length; i++) {
            for (var j = 0; j < $(this).siblings("li").length; j++) {
                if (arr[i] == $(this).siblings("li").eq(j).attr('data-title') && arr[i] != title) {
                    $(this).siblings("li").eq(i).after($(this).siblings("li").eq(j));
                    break;
                }
            }
        }
        if ($(this).text() == "回复我的") {
            $("li.deletesend").hide();
            $("li.receptPeo").show();
            BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div1")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div1").find("li.receptPeo"), "2");
            //BT.Fn.Paging($("#messages"), $("#messages .search .middle .wid")[0], 6, { "position": "absolute", "left": "0px", "right": "0px" }, $("ul.receptPeo"));
        }
        else if ($(this).text() == "系统通知") {
            $("li.receptPeo").hide();
            $("li.deletesend").show();
            BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div1")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div1").find("li.deletesend"), "2");
        }
        else if ($(this).text() == "收藏的赞") {
            $("li.messagesZan").show();
            $("li.messagesColl").hide();
            BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div2")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div2").find("li.messagesZan"), "2");
        }
        else if ($(this).text() == "收藏我的") {
            $("li.messagesColl").show();
            $("li.messagesZan").hide();
            BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div2")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div2").find("li.messagesColl"), "2");
        }
        else {
            $("li.deletesend, li.receptPeo, li.messagesColl, li.messagesZan").show();
            if ($(this).next().text() == "系统通知") {
                BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div1")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div1").find("li"), "2");
            } else {
                BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div2")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div2").find("li"), "2");
            }
        }
    });
    BT.Fn.Paging($("#messages"), $("#messages .m-mid-content #m-mid-content_div1")[0], 6, { "position": "absolute", "left": "0px", "right": "0px", "bottom": "46px" }, $("#m-mid-content_div1").find("li"), "2");
}
//处理用户模块，收藏块
BT.Ev.UserCollect = function () {
    BT.Fn.UsercenterCut($("#coll .m-mid-button li"), $("#coll #page_sub_box .hot-box"));
    for (var i = 0; i < $("#coll .art-txt2").length; i++) {
        var str = $("#coll .art-txt2").eq(i).text();
        if (str == "") {
            str = "作者尚未编辑文章资料"
        } else {
            str = str.substr(0, 155) + '...';
        }
        $("#coll .art-txt2").eq(i).text(str)
    }

    $("#coll #getFalse").click(function () {
        $("#coll .page_sub_box .content .get2").removeClass('get2').addClass('get');
        $("#coll .page_sub_box .content .get").css({ "opacity": "0" });
        $("#coll .page_sub_box .content .get").parent().parent().css({ 'background': '#fff' });
        $("#coll #getsearch").show()
        $("#coll #getShow").hide().find("div a").text(0);
    });
    $("#coll #getdel").click(function () {
        if ($("#coll .page_sub_box .content .get2").length > 0) {
            for (var i = 0; i < $("#coll .page_sub_box .content .get2").length; i++) {
                var bary = ($("#coll .page_sub_box .content .get2").parent().parent().eq(i).attr("id"));
                BT.Sl.Requeset("S_Select_Conllect", ([bary, BT.Us.info.UserId, "del"]), function (r) {
                });
            }
            $("#coll .page_sub_box .content .get2").parent().parent().slideUp(300).fadeOut(300, function () {
                $("#coll .page_sub_box .content .get2").parent().parent().find('.get2').removeClass('get2');
                $(this).remove();
            })
            BT.Ev.showGet();
            //alert("删除成功");
        }
        console.log(bary);
    })
}
// 收藏夹 处理已经选中 ！
BT.Ev.showGet = function () {
    //收藏夹切换

    var a = 0;
    for (var i = 0; i < $("#coll .page_sub_box .content .get2").length; i++) {
        a += 1;
    }
    if (a > 0) {
        $("#coll #getsearch").hide()
        $("#coll #getShow").show().find("div a").text(a);
    }
    else {
        $("#coll #getsearch").show()
        $("#coll #getShow").hide().find("div a").text(0);
    }
}
// 处理投稿模块
BT.Ev.SetSubManage = function () {

    BT.Sl.Requeset("S_Select_Content", (["", BT.Us.info.UserId, "", ""]), function (r) {
        BT.Us.SubManageinfo = r.value; //投稿全局变量
    });
    BT.Sl.Requeset("S_Select_ContentGoneId", ([]), function (r) {
        BT.Us.corverpasID = parseInt(r.value[0]["max(nice_content.GoneId)"]) + 1; // 获取番号
        BT.Sl.Upload("ptheader_img", "ptheader_img", function (e) { //资源分享投稿
            $("#ptheader_img").css({ "width": "100%", "margin-top": "0px", "height": "100%" });
            $("#ptheader_div").show();
            BT.Sl.Upload("ptheader_div", "ptheader_img", function (e) { }, "sub", BT.Us.corverpasID);
        }, "sub", BT.Us.corverpasID);
        BT.Sl.Upload("view-img", "view-img", function (e) { //视频搬运投稿
            $("#view-img").css({ "width": "100%", "margin-top": "0px", "height": "100%" });
            $("#ptheader_div2").show();
            BT.Sl.Upload("ptheader_div2", "view-img", function (e) { }, "sub", BT.Us.corverpasID);
        }, "sub", BT.Us.corverpasID);

        BT.Sl.Upload("li-img_img", "li-img_img", function (e) { //视频搬运投稿
            $("#li-img_img").css({ "width": "100%", "margin-top": "0px", "height": "100%" });
            $("#li-img_div").show();
            BT.Sl.Upload("li-img_div", "li-img_img", function (e) { }, "sub", BT.Us.corverpasID);
        }, "sub", BT.Us.corverpasID);
    });

    $(window).scroll(function () {
        if ($(window).scrollTop() >= 634) {
            $(".wysiwyg-toolbar-top").css({ "position": "fixed", "top": "60px", "z-index": "9999", "width": "598px", "background": "#fff", "border-top": "1px solid #ccc", "border-right": "1px solid #ccc", "border-radius": "5px" });
        } else {
            $(".wysiwyg-toolbar-top").css({ "position": "relative", "top": "0px", 'background': "#fff", "border": "0px", "border-bottom": "1px solid #ccc", "border-radius": "0px" });
        }
    });
    $("#adm li").find("ul li").click(function () {
        var isOk = type = "";
        if ($("#adm .DropmenuS").find("button:even").eq(0).text().replace(/[\r\n]/g, "").replace(/[ ]/g, "") == "状态筛选") { } else {
            if ($("#adm .DropmenuS").find("button:even").eq(0).text().replace(/[\r\n]/g, "").replace(/[ ]/g, "") != "查看全部") {
                isOk = $("#adm .DropmenuS").find("button:even").eq(0).text();
            }
        }
        if ($("#adm .DropmenuS").find("button:even").eq(1).text().replace(/[\r\n]/g, "").replace(/[ ]/g, "") == "分区筛选") { } else {
            if ($("#adm .DropmenuS").find("button:even").eq(1).text().replace(/[\r\n]/g, "").replace(/[ ]/g, "") != "查看全部") {
                type = $("#adm .DropmenuS").find("button:even").eq(1).text();
            }
        }
        var uplow = $("#adm .DropmenuS").find("button:even").eq(2).text().replace(/[\r\n]/g, "").replace(/[ ]/g, "");
        if (uplow != "投稿排序") {
            uplow = uplow == "点击次数" ? 1 : 2;
            BT.Sl.Requeset("S_Select_Content", (["", BT.Us.info.UserId, "", uplow]), function (r) {
                BT.Us.SetSubManage(isOk, type, r.value);
            });
        }
        else {
            BT.Us.SetSubManage(isOk, type, "");
        }
    });
    $("#submission #subudjlid li").bind("click", function () {
        $(this).addClass("on").siblings().removeClass("on");
        $(this).parent().children().eq(0).before($(this));
        $("#submission .m-mid-button .m-mid-button_ul").eq($(this).attr("data-title")).show().siblings().hide();
        $("#submission .subulbox ul.subul").eq($(this).attr("data-title")).show().siblings().hide();
    });

    $("#submission .carry .one button").bind("click", function () {
        if ($(this).prev().val() != "") {
            BT.Us.ziyuanurl = $(this).prev().val();
            $("#submission .carry .one").hide();
            $("#submission .carry .two").show();
        }
        else {
            alert("视频地址不能为空");
        }
    })
    //投稿信息切换
    BT.Fn.UsercenterCut($("#submission .m-mid-button #zp li"), "id");
    //投稿信息按钮 
    $("#InsertSubinfoOne").click(function (event) {
        BT.Us.InsertSubinfoZY();
    });
    $("#InsertSubinfotwo").click(function (event) {
        BT.Us.InsertSubinfoViedo();
    });
    $("#li-button").bind("click", function () {
        BT.Us.InsertSubinfoLife();
    })
}
