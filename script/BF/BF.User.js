//详细页面收藏功能   点赞和收藏第二版需要重构！！ 作为重要功能。面向对象!!
BT.Fn.Collection = function () {
    var coll = true;
    var time = null;
    var cyloop = 0;
    var fixtime = 0;
    var seltime = null;
    var nowtime = null;
    if (BT.Us.info == "" || BT.Us.info == undefined) { }
    else {
        BT.Sl.Requeset("S_Select_Conllect", ([ReContentInfo[0].GoneId, BT.Us.info.UserId, ""]), function (r) {
            if (r.value[0]) {
                coll = false;
                $(".icon-coll").css({ "background-position": "-268px -74px" });
                $("#collect_Icon").css({ "color": "#ffdf1a" });
            }
        });
    }
    $(".icon-coll, #collect_Icon").click(function () {
        if (BT.Us.info == "" || BT.Us.info == undefined) { alert("请先登录"); return false; }
        nowtime = (new Date().getMinutes()) * 60 + new Date().getSeconds();
        if (cyloop >= 2) {
            fixtime = 3;
        }
        if (seltime == null || seltime + fixtime <= nowtime) {
            if (coll) {
                $(".icon-coll").next().find(".t-right-bottom").text(parseInt(($(".icon-coll").next().find(".t-right-bottom").text())) + 1);
                $(".icon-coll").css({ "background-position": "-268px -74px" });
                $("#collect_Icon").css({ "color": "#ffdf1a" });
                $("#collect_Icon").next().text(parseInt($("#collect_Icon").next().text()) + 1);
                BT.Sl.Requeset("I_Inesrt_Conllect", (["confirm", ReContentInfo[0].GoneId, BT.Us.info.UserId, ReContentInfo[0].PID]), function (r) { });
                cyloop++;
                coll = false;
            } else {
                $(".icon-coll").next().find(".t-right-bottom").text(parseInt(($(".icon-coll").next().find(".t-right-bottom").text())) - 1);
                $(".icon-coll").css({ "background-position": "-268px 0px" });
                $("#collect_Icon").css({ "color": "#ccc" });
                $("#collect_Icon").next().text(parseInt($("#collect_Icon").next().text()) - 1);
                BT.Sl.Requeset("I_Inesrt_Conllect", (["cancel", ReContentInfo[0].GoneId, BT.Us.info.UserId, ReContentInfo[0].PID]), function (r) { });
                coll = true;
                seltime = nowtime;
            }
        } else {
            alert("你的操作太频繁,请3秒后再试");
        }
        return false;
    })
}
//详情页点赞功能
BT.Fn.ClickZan = function () {
    var coll = true;
    var time = null;
    var cyloop = 0;
    var fixtime = 0;
    var seltime = null;
    var nowtime = null;
    var _sharebtn = $(".share-btn").parent();
    if (BT.Us.info == "" || BT.Us.info == undefined) { }
    else {
        BT.Sl.Requeset("I_Inesrt_ClickZan", (["Szan", ReContentInfo[0].GoneId, BT.Us.info.UserId, ReContentInfo[0].PID]), function (r) {
            if (r.value[0]) {
                coll = false;
                $(".icon-like").css({ "background-position": "-178px -74px" });
                _sharebtn.find(".share-zan").text("已点赞");
                _sharebtn.unbind("click").css({ "margin-top": "26px", "box-shadow": "none" });
            }
        });
    }
    $(".icon-like, .share-btn, .zan").click(function () {
        if (BT.Us.info == "" || BT.Us.info == undefined) { alert("请先登录"); return false; }
        nowtime = (new Date().getMinutes()) * 60 + new Date().getSeconds();
        if (cyloop >= 2) {
            fixtime = 3;
        }
        if (seltime == null || seltime + fixtime <= nowtime) {
            if (coll) {

                $(".icon-like").css({ "background-position": "-178px -74px" });
                _sharebtn.unbind("click").css({ "margin-top": "26px", "box-shadow": "none" });
                _sharebtn.find(".share-zan").text("已点赞");
                $(".icon-like").parent().find(".t-right-bottom").text(parseInt(($(".icon-like").parent().find(".t-right-bottom").text())) + 1);
                _sharebtn.find(".share-zan").next().text(parseInt(_sharebtn.find(".share-zan").next().text()) + 1);
                BT.Sl.Requeset("I_Inesrt_ClickZan", (["clickzan", ReContentInfo[0].GoneId, BT.Us.info.UserId, ReContentInfo[0].PID]), function (r) { });
                cyloop++;
                coll = false;
            } else {
                alert("你已经点过赞了");
            }
        } else {
            alert("你的操作太频繁,请3秒后再试");
        }
        return false;
    })
}
/*初始化评论区域*/
BT.Fn.SetComment = function (r) {
    for (var i = 0; i < r.value.length; i++) {
        var li = $("<li class='main-floor'></li>").appendTo($(".comm_list")[0]);
        var facebox = $("<div class='facebox'></div>").appendTo(li[0]);
        var _a = $("<a href='#' mid=" + r.value[i].UserId + " target='_blank' card=" + r.value[i].NickName + "></a>").appendTo(facebox[0]);
        $("<img src=" + r.value[i].Head_img + " class='face'  />").appendTo(_a[0]);
        $("<a href='#' mid=" + r.value[i].UserId + " target='_blank' card=" + r.value[i].NickName + " class='face_bg'></a>").appendTo(facebox[0]);
        var t = $("<div class='t'></div>").appendTo(li[0]);
        $("<a href='#' mid=" + r.value[i].UserId + " target='_blank' card=" + r.value[i].NickName + ">" + r.value[0].NickName + "</a>").appendTo(t[0]);
        var _time = BT.Fn.Compute(r.value[i].time, r.value[i].timenow);
        if (_time == 1) {
            _time = r.value[i]._time;
        }
        $("<span class='user-time'> -" + _time + "</span>").appendTo(t[0]);
        $("<div class='contentnice'>" + r.value[i].receptContent + "</div>").appendTo(li[0]);
        var elinfo = $("<div class='elinfo'></div>").appendTo(li[0]);
        $("<span class='floor-num'>#" + r.value[i].receptnumber + "</span>").appendTo(elinfo[0]);

        BT.Sl.Requeset("I_Inesrt_ReceptZan", (["Szan", r.value[i].receptKey, BT.Us.info.UserId, r.value[i].UserId]), function (q) {
            var STAT = true;
            if (q.value.length) {
                $("<a class='floor-zan' mid=" + r.value[i].receptKey + " style='color:#00a1d6' >点赞(" + r.value[i].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
                    alert("你已经点过赞了");
                });
            } else {
                if (r.value[i].UserId == BT.Us.info.UserId) {
                    alert("你不能点赞自己的");
                } else {


                    $("<a class='floor-zan' mid=" + r.value[i].receptKey + " >点赞(" + r.value[i].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
                        var _that = this;
                        var MID = $(this).attr("mid");
                        var UM = BT.Us.info.UserId;
                        var MU = $(this).parent().parent().find(".t a").attr("mid");
                        if (STAT) {
                            BT.Sl.Requeset("I_Inesrt_ReceptZan", (["clickzan", MID, UM, MU]), function (e) {
                                $(_that)[0].innerHTML = "点赞(" + (parseInt($(_that)[0].innerHTML.replace("点赞(", "").replace(")", "")) + 1) + ")";
                                $(_that).css({ "color": "#00a1d6" });
                                STAT = false;
                            });
                        } else {
                            alert("你已经点过赞了");
                        }

                    });
                }
            }
        });

        var ss = $("<i class='report'  id='' pid='' number=" + r.value[i].receptnumber + "><a  class='huifu reply-b'>参与回复</a></i>").appendTo(elinfo[0]);
        ss.click(function () { BT.Fn.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })
        BT.Sl.Requeset("S_Select_recept", ([r.value[i].receptGoupID, r.value[i].receptnumber]), function (data) {
            if (data.value != false) {
                var reply = $("<div class='reply'></div>").appendTo(li[0]);
                var re_ul = $("<ul class='re_ul'></ul>").appendTo(reply[0]);
                for (var j = 0; j < data.value.length; j++) {
                    var _li = $("<li id='user_" + data.value[j].UserId + "'></li>").appendTo(re_ul[0]);
                    var a = $("<a class='re_face' href='#' target='_blank' mid=" + data.value[j].UserId + " card=" + data.value[j].NickName + "></a>").appendTo(_li[0]);
                    $("<img src='" + data.value[j].Head_img + "'  />").appendTo(a[0]);
                    var re_cnt = $("<div class='re_cnt'></div>").appendTo(_li[0]);
                    var w = $("<div class='w'></div>").appendTo(re_cnt[0]);
                    $("<a class='name' href='usercenter.html?Userid=1' mid=" + data.value[j].UserId + " target='_blank' card=" + data.value[j].NickName + ">" + data.value[j].NickName + "</a>").appendTo(w[0]);
                    $("<a href='#' target='_blank' class='user-info-level " + data.value[j].receptnumber + "'></a>").appendTo(w[0]);
                    if (data.value[j].receptContent.indexOf("@") > 0) {
                        var _ssa = data.value[j].receptContent.split(" ")[1];
                        var pattern = new RegExp(_ssa, "gi");
                        var title = data.value[j].receptContent.replace(pattern, "<font class='keyword2'><a href='javascript:;'>" + _ssa + "</a></font>");
                        $("<span class='contentnice contentchild'>" + title + "</span>").appendTo(w[0]);
                    }
                    else {
                        $("<span class='contentnice contentchild'>" + data.value[j].receptContent + "</span>").appendTo(w[0]);
                    }
                    var info = $("<div class='info'></div>").appendTo(re_cnt[0]);
                    $("<p></p>").appendTo(info[0]);
                    var elinfo = $("<div class='elinfo'></div>").appendTo(info[0]);
                    var _time = BT.Fn.Compute(data.value[j].time, data.value[j].timenow);
                    if (_time == 1) {
                        _time = r.value[i]._time;
                    }
                    $("<span class='floor-num'>" + _time + "</span>").appendTo(elinfo[0]);
                    BT.Sl.Requeset("I_Inesrt_ReceptZan", (["Szan", data.value[j].receptKey, BT.Us.info.UserId, data.value[j].UserId]), function (q) {
                        var STAT = true;
                        if (q.value.length) {
                            $("<a class='floor-zan' mid=" + data.value[j].receptKey + " style='color:#00a1d6' >点赞(" + data.value[j].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
                                alert("你已经点过赞了");
                            });
                        } else {
                            $("<a class='floor-zan' mid=" + data.value[j].receptKey + " >点赞(" + data.value[j].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
                                var _that = this;
                                var MID = $(this).attr("mid");
                                var UM = BT.Us.info.UserId;
                                var MU = $(this).parent().parent().parent().find(".w .name").attr("mid");
                                if (STAT) {
                                    BT.Sl.Requeset("I_Inesrt_ReceptZan", (["clickzan", MID, UM, MU]), function (e) {
                                        $(_that)[0].innerHTML = "点赞(" + (parseInt($(_that)[0].innerHTML.replace("点赞(", "").replace(")", "")) + 1) + ")";
                                        $(_that).css({ "color": "#00a1d6" });
                                        STAT = false;
                                    });
                                } else {
                                    alert("你已经点过赞了");
                                }

                            });
                        }
                    });
                    var ss = $("<i class='report' id=" + data.value[j].NickName + " pid=" + data.value[j].UserId + " number=" + r.value[i].receptnumber + "><a class='huifu reply-b'>回复</a></i>").appendTo(elinfo[0]);
                    ss.click(function () { BT.Fn.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })
                }
            }
        });
    }
    var _a = $('<div data-target="Paging" data-btn="true"  data-pagenumber="10" class="Paging"></div>').appendTo($("#send")[0]);
    var btn = _a.data("btn") || false;
    var ID = $("#send .comm_list");
    var pagenumber = _a.data("pagenumber");
    var count = _a.data("count") || 4;
    $.Page(btn, ID, pagenumber, count, _a, true);
}

/*处理模糊搜索下拉选择框结果*/
BT.Fn.DealWidthresult = function (data) {
    $(".search .search_get").html("");
    var arr = data.value.length >= 8 ? 8 : data.value.length;
    for (var i = 0; i < arr; i++) {
        $("<div></div>").appendTo($(".search .search_get")[0]).text(data.value[i].label).css({ "font-size": "14px", "color": "#333", "padding": "5px 10px" });
    }
    $(".search .search_get").find("div").hover(function () {
        $(this).css({ "background": "#56acdf", "color": "#fff", "cursor": "pointer" }).addClass("getSearchtext").siblings().removeClass("getSearchtext");
        BT.Ev.Searchnow = $(this).index();
    }, function () {
        $(this).css({ "background": "#fff", "color": "#333" });
    });
    $(".search .search_get").find("div").click(function () {
        $("#search_text").val($(this).text());
        BT.Fn.DelResult($(this).text());
        $(".search .search_get").stop(true, true).animate({ "opacity": "0" }, 100);
    })
}
/*处理模糊搜索结果*/
BT.Fn.DelResult = function (key, s, a) {
    var _s = _a = "";
    if (s != "" && s != undefined) {
        _s = s;
    }
    if (a != undefined) {
        _a = a;
    }
    BT.Ev.Searchnow = -1;
    $(".search .hot-box-new").html("");
    $(".search .search_get").stop(true, true).animate({ "opacity": "0" }, 100);
    BT.Sl.Requeset("S_Select_ContentAll", ([key, _s, _a, ""]), function (r) {
        for (var i = 0; i < r.value.length; i++) {
            var content = $("<div class='content'></div>").appendTo($(".search .hot-box-new")[0]);
            var artBox = $("<div class='artBox'></div>").appendTo(content[0]);
            $("<div class='clear'></div>").appendTo(content[0]);

            var url;
            url = (r.value[i].type == 2 ? "videohandling" : "resources");
            var clickhref = "../../html/" + url + ".html?id=" + r.value[i].TID + "&type=" + r.value[i].type;

            var artimg = $("<a class='artimg' href=" + clickhref + "></a>").appendTo(artBox[0]);
            $('<img src=' + r.value[i].imgurl + ' />').appendTo(artimg[0]);
            artimg.attr("title", r.value[i].tit);
            //            var zan = $("<div class='zan'></div>").appendTo(artimg[0]);
            //            $("<p class='zan-num'>" + r.value[i].zan + "</p>").appendTo(zan[0]);
            //            $("<i class='font'></i>").appendTo(zan[0]);
            var article = $("<div class='article'></div>").appendTo(artBox[0]);
            var key = $(".search #search_text").val() || "";
            var pattern = new RegExp(key, "gi");
            title = r.value[i].tit.replace(pattern, "<font class='keyword'>" + key + "</font>");
            var sscontent;
            $.ajax({
                url: '../script/php/RemoveLabel.php',
                type: 'post',
                async: false,
                data: { arr: r.value[i].content },
                success: function (r) {
                    sscontent = r;
                }
            })


            var artimg = $("<div class='art-txt'><div class='art-type'>" + r.value[i].viewtype + "</div>" + title + "</div>").appendTo(article);
            artimg.attr("title", r.value[i].tit);
            artimg.click(function () {

            })
            if (r.value[i].content == "") {
                $("<div class='art-txt2'></div>").appendTo(article).text("Up主还没有对改视频进行简介");
            }
            else {
                //BT.Fn.SelectContent(r.value[i].content);
                var _ss = $("<div  class='art-txt2'></div>").html(sscontent).appendTo(article[0]);

                //_ss.find('img').replaceWith('<p class="fl">[图片]</p>');
            }
            $("<div class='clear'></div>").appendTo(article);
            var zan_user = $("<div class='zan-user'></div>").appendTo(article);
            $("<div class='user fl'><i class='font' title='np主'></i></div>").appendTo(zan_user[0]);
            $("<span class='fl'>" + r.value[i].NickName + "</div>").appendTo(zan_user[0]);
            var zan_user = $("<div class='zan-see'></div>").appendTo(article);
            $("<div class='see fl'><i class='font' title='浏览'></i></div>").appendTo(zan_user[0]);
            $("<span class='fl'>" + r.value[i].browse + "</div>").appendTo(zan_user[0]);
            //评论没做
            var zan_user = $("<div class='zan-message'></div>").appendTo(article);
            $("<div class='message fl'><i class='font' title='评论'>&#xe610;</i></div>").appendTo(zan_user[0]);
            $("<span class='fl'>" + r.value[i].comment + "</div>").appendTo(zan_user[0]);

            var zan_user = $("<div class='zan-message'></div>").appendTo(article);
            $("<div class='message fl'><i class='font' title='发布时间'>&#xe62b;</i></div>").appendTo(zan_user[0]);
            $("<span class='fl'>" + r.value[i].datatime + "</div>").appendTo(zan_user[0]);

            $("<div class='clear'></div>").appendTo(article);

            var area = $("<div class='area-tag'></div>").appendTo(article);

            $("<div class='font' title='标签'>&#xe62e;</div>").appendTo(area).css({ "float": "left", "margin-right": "10px", "color": "#ccc", "cursor": "auto" });
            var j = r.value[i].label.split(",");
            if (j.length == 1) {
                j = r.value[i].label.split("，")
            }
            for (var k = 0; k < j.length; k++) {
                var key = $(".search #search_text").val();
                if (key != "" || key != undefined) {
                    var pattern = new RegExp(key, "gi");
                    j[k] = j[k].replace(pattern, "<font class='keyword'>" + key + "</font>");
                }
                $("<a href='#'>" + j[k] + "</a>").appendTo(area[0]);

            }

            area.find("a").click(function () {
                var _text = $(this).text();
                $("#search_text").val(_text);
                BT.Fn.DelResult(_text);
            });

        }
        BT.Fn.Paging($(".search"), $(".search .middle .wid")[0], 10, { "position": "absolute", "left": "0px", "right": "0px" }, $(".search .page_sub_box .hot-box-new"));
    });
}
/*搜索出来的结果进行分页处理*/
BT.Fn.Paging = function (PID, UID, pagenumber, style, UL, flg) {
    if (PID.find(".Paging")[0]) { PID.find(".Paging").remove() }
    var _a = $('<div data-target="Paging" data-btn="true"  data-pagenumber=' + pagenumber + ' class="Paging"></div>').appendTo(UID).css(style);
    var btn = _a.data("btn") || false;
    var ID = UL;
    var pagenumber = _a.data("pagenumber");
    var count = _a.data("count") || 4;
    if (flg == "" || flg == undefined) {
        flg = true;
    }
    $.Page(btn, ID, pagenumber, count, _a, flg);
}
