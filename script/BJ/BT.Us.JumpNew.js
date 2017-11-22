Namespace.register("BT.Ju"); //页面跳转命名空间

$(function(){
    $(window).scroll(function () {
        if ($(window).scrollTop() > 140) {
            $('.middle .mid-right').css({'position':'fixed','right':($("html,body").width() - 1000) / 2,'top': '70px'});
        }else{
            $('.middle .mid-right').css({'position':'relative','right':'0','top': '30px'});
        }
        if($(window).scrollTop() + $(".article").height() + 70 >=  $('.common').offset().top){ //动态加载评论
           //初始化评论区域
            if(BT.Ju.CommentArr == undefined){
                BT.Ju.CommentArr = true;
                BT.Sl.Requeset("S_Select_recept", ([BT.Ju.ContentStr.UID, ""]), function (data) {
                    BT.Ju.SetComment(data);
                })
            }else{

            }
        }
    });
    BT.Ju.ContentStr = {
        UID : $("#dateIdStr").attr("content").split("/")[2], //文章ID
        TYPE : $("#dateIdStr").attr("content").split("/")[1] == "resources" ? 0 : 1, //文章类型
    }
    BT.Sl.Requeset("GetCookie", ([]), function (data) { if(data.value.length){ BT.Us.info = data.value[0]; } });

    if(BT.Us.info != undefined || BT.Us.info!= ""){
        $(".loginbox").addClass("hide");
        $(".personal").removeClass("hide");
        $(".login-link-wrp").hide();

        $(".personal").find(".per-name").text(BT.Us.info.NickName || "编辑新名字");
        $(".personal").find(".per-level-name").text(BT.Us.info.lemonCount || "0");
        //BT.Ev.TopInfo();
        //BT.Us.Topinfo();
    }
    BT.Ju.RelodingD();
    BT.Ju.Comment();
    BT.Ev.UserControl();
    
    
})
//
BT.Ju.Comment = function () {
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
                path: '../html/ZeroClipboard.swf',
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
        if(BT.Us.info == undefined ){
            $(".pagebox").show();
            return;
        }
        var val = $(this).parents(".dcmp-textarea-container").find("textarea").val();
        if(val == ""){
            return;
        }
        BT.Ju.SubmitRecept(val);
    });
    
}
/*发布评论*/
BT.Ju.SubmitRecept = function(val){
    BT.Sl.Requeset("I_Insert_recept", ([BT.Us.info.UserId, "", val, BT.Ju.ContentStr.UID, 1, 0]), function (data) {
        if (data.value != true) {
            var STAT = true;
            $("#submit-comment").parents(".dcmp-textarea-container").find("textarea").val("");
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
            
            var zan =  $("<a class='floor-zan' mid="+data.value[0].receptKey+">点赞(0)</a>").appendTo(elinfo[0]);
            zan.click(function(){
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
            })


            var ss = $("<i class='report'  id='' pid='' number=" + data.value[0].receptnumber + "><a  class='huifu reply-b'>参与回复</a></i>").appendTo(elinfo[0]);
            ss.click(function () { BT.Ju.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })

            $("#submit-comment").parent().prev().val("");
            if ($(".comm_list .main-floor").eq(0)[0] != undefined) {
                $(".comm_list .main-floor").eq(0).before($(li).fadeIn(400)); return;
            }
            $(li).appendTo($(".comm_list")[0]).fadeIn(400);
        }
    })
}

/*执行 什么鬼东西*/

BT.Ju.RelodingD = function () {
    // var browseurl = window.location.href;
    // var indexSearch = window.location.search;
    // var indexarray = window.location.search.split("&");
    // var Hrefid = BT.Fn.GetQueryString("id");
    // var indextype = BT.Fn.GetQueryString("type");
    //var Hrefid = indexarray[0].substring(indexarray[0].indexOf("=") + 1); // id
    //var indextype = indexarray[1].substring(indexarray[1].indexOf("=") + 1); //type
    BT.Ju.Reloding(BT.Ju.ContentStr.UID, BT.Ju.ContentStr.TYPE); //browseurl 浏览网址   Hrefid 文章ID type 文章类型
}

/**
* @param browseurl 浏览人ID(用户)
* @param Hrefid 文章ID
* @param indextype 文章类型
*/

//详细页数据加载
BT.Ju.Reloding = function (Hrefid, indextype) {
    BT.Sl.Requeset("S_Select_ContentwGoid", ([Hrefid]), function (r) {//加载对应的内容页详细数据
        ReContentInfo = r.value;
        var typezi = "";
        var _h = "";
        $("h1").text(ReContentInfo[0].tit);
        // $(".title-line span").eq(0).text(ReContentInfo[0].browse);
        // $(".title-line span").eq(1).text(ReContentInfo[0].comment);
        // $(".title-line span").eq(2).text(ReContentInfo[0].coll);
        $(".article").html(ReContentInfo[0].content);
        $("#block-share .t-right-bottom").text(ReContentInfo[0].share);
        $("#block-tri .t-right-bottom").text(ReContentInfo[0].ticket);
        $("#block-zan .t-right-bottom").text(ReContentInfo[0].zan);
        $("#block-coll .t-right-bottom").text(ReContentInfo[0].coll);
        $(".trik_title_content input").val(ReContentInfo[0].ziyuanurl);
        $(".trik_tile_code input").val(ReContentInfo[0].getCode);
        $(".share-btn span").not(".share-zan").text(ReContentInfo[0].zan);
        ReContentInfo[0].type == 0 ? typezi = "&nbsp生活" : typezi = "&nbsp资源";
        ReContentInfo[0].type == 0 ? _h = "life" : _h = "resources";
        $(".info").find("a").eq(1).html(typezi);
        $(".info").find("a").eq(1).attr("href", "../../html/ChirdPage.html?page=" + _h);
        $("time span").html(ReContentInfo[0].bornData);
        //标签
        $(".label ul").html("");
        var labelbox = ReContentInfo[0].label.split(",");
        for (var i = 0; i < labelbox.length; i++) {
            var labelli = $("<li></li>", {}).appendTo($(".label ul"));
            var labela = $("<a></a>", { href: "#" }).appendTo(labelli);
            labela.text(labelbox[i]);

        }
        $(".label ul li").click(function () {
            var _avalua = $(this).find("a").text();
            BT.Fn.labelSearch(_avalua);
        })
        // BT.Sl.Requeset("S_Select_Useri", ([ReContentInfo[0].PID]), function (r) {//加载发表人信息
        //     var people = r.value;
        //     $(".usname a").text(people[0].NickName);
        //     $(".sign").text(people[0].rammy);
        //     $(".u-face a").attr('href', "usercenter.html?Userid=" + people[0].UID);
        //     $(".u-face img").attr('src', people[0].Head_img);
        //     $(".name").attr('href', "usercenter.html?Userid=" + people[0].UID);
        // });

        BT.Fn.Collection();
        BT.Fn.ClickZan();
        BT.Ju.aboutRec(indextype); //相关推荐加载
        //BT.Ju.ShareFun(ReContentInfo[0].tit, window.location.href, ReContentInfo[0].content, "");

        //if (BT.Us.info != "" && BT.Us.info != undefined) { BT.Ju.InserHis(BT.Us.info.UserId, ".."+$("#dateIdStr").attr("content"), ReContentInfo[0].type, ReContentInfo[0].UID); }


        //获取当前帖子最赞评论
        BT.Sl.Requeset("S_Select_MoreZan", ([]), function (r) {
            if (r.value != true) {
                var STAT = true;
                var gz = $("<div class='gz-content'></div>").appendTo($(".mid-right .goodbox").eq(0)[0]);
                var name = $("<div class='gz-name'></div>").appendTo(gz[0]);
                $("<a href='#'>" + r.value[0].NickName + "</a>").appendTo(name[0]);
                $("<img src='../images/icons/level-3.png' data-bd-imgshare-binded='1' />").appendTo(name[0]);
                var o = $("<span mid ="+r.value[0].receptKey+" Pid="+r.value[0].receptID+"><i class='icon iconfont'></i><a>"+r.value[0].receptCount+"</a></span>").appendTo(name[0]);
                $("<p >" + r.value[0].receptContent + "</p>").appendTo(gz[0]);
                if(BT.Us.info == undefined){
                    o.click(function(){
                        alert("请先登录");
                    });return;
                }
                BT.Sl.Requeset("I_Inesrt_ReceptZan", (["Szan", r.value[0].receptKey, BT.Us.info.UserId, r.value[0].UserId]), function (q) {
                    if(q.value.length){
                        o.click(function(){
                            alert("你已经点过赞了");
                        });
                    }else{
                        o.click(function(){
                            var _that = this;
                            var MID = $(this).attr("mid");
                            var UM = BT.Us.info.UserId;
                            var MU = $(this).attr('Pid');
                            if (STAT) {
                                BT.Sl.Requeset("I_Inesrt_ReceptZan", (["clickzan", MID, UM, MU]), function (e) {
                                    $(_that).find('a').text(parseInt($(_that).find('a').text()) + 1);
                                    STAT = false;
                                });
                            } else {
                                alert("你已经点过赞了");
                            }
                        })
                    }
                });
            }
            else {
                var gz = $("<div class='gz-content'> 暂无评论 </div>").appendTo($(".mid-right .goodbox").eq(0)[0]);
            }
        })
    });
}




/**
* @param UID 浏览人ID(用户)
* @param HREF 浏览地址
* @param TYPE 文章类型
* @param GoneId GoneId
* @param CUID 文章ID
*/
// BT.Ju.InserHis = function (UID, HREF, TYPE, GoneId, CUID) {//像数据库插入一条历史记录数据
//     if (BT.Us.info != "" && BT.Us.info != undefined) {
//         BT.Sl.Requeset("I_Insert_history", ([UID, HREF, TYPE, GoneId]), function (r) { //改到在跳转到的页面里面加载这个函数})
//         })
//         //BT.Sl.Requeset("U_Update_ContentBrowse", ([0, GoneId]), function (r) { //改到在跳转到的页面里面加载这个函数})
//         //})
//     }
  
// } 
/*
* @param indextype 文章类型
*/

BT.Ju.aboutRec = function (indextype) { //相关推荐
    BT.Sl.Requeset("S_Select_AboutRec", ([indextype]), function (r) {
        _value = r.value;
        BT.Ju.aboutRecSC(_value);
    })
}

BT.Ju.aboutRecSC = function (value) { //动态生成
    if(BT.Ju.aboutRecSCValue){
        alert(1);
    }else{
        BT.Ju.aboutRecSCValue = value;
    }
    var par = $(".aboutre ul");
    var $model = $("<li><div class='gz-preview'><a href='#'><img src='../images/photo/zy-pho.png' data-bd-imgshare-binded='1'></a></div><a class='gz-info' href='#' target='_blank'><div class='i-tit'>- -</div><div class='i-upname'>- -</div></a></li>");
    for (var i = 0; i < value.length; i++) {
        var $newElement = $model.clone();
        var _value = value[i];
        var clickhref = "../../html/resources" + ".html?id=" + _value.UID + "&type=" + _value.type;
        $newElement.find('.gz-preview a img').attr("src", _value.imgurl);
        $newElement.find(".gz-preview a").attr("href", clickhref).attr("data-uid", _value.UID);
        $newElement.find(".gz-info").attr("href", clickhref);
        $newElement.find(".gz-info .i-tit").text(_value.tit);
        $newElement.find(".gz-info .i-upname").text("up主：" + _value.NickName);
        par.append($newElement);
    }
}


/** 分享 
*
* @param  SHET     分享标题
* @param  SHESRC   分享链接
* @param  SHECON   分享内容
* @param  SHEIMG   分享图片
*/

BT.Ju.ShareFun = function (SHET, SHESRC, SHECON, SHEIMG) {


    // window._bd_share_config = {
    //     common: {
    //         bdText: "nicezan的《" + SHET + "》这篇文章很不错",  //内容
    //         bdDesc: SHECON,   // 摘要
    //         bdUrl: SHESRC,
    //         bdPic: ""  //此处要更换图片
    //     },
    //     share: [{
    //         "bdSize": 16
    //     }],
    //     selectShare: [{
    //         "bdselectMiniList": ['qzone', 'tqq', 'kaixin001', 'bdxc', 'tqf']
    //     }]
    // }
    // with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
    // $(".toolbar .block .tb ul li a").click(function () {
    //     BT.Sl.Requeset("U_Update_ContentBrowse", (["1", ReContentInfo[0].UID]), function (r) {
    //         $(".t-right-bottom").eq(0).text(parseInt($(".t-right-bottom").eq(0).text()) + 1);
    //     })

    // })

}
/*初始化评论区域*/
BT.Ju.SetComment = function (r) {
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

        // BT.Sl.Requeset("I_Inesrt_ReceptZan", (["Szan", r.value[i].receptKey, BT.Us.info.UserId, r.value[i].UserId]), function (q) {
        //     var STAT = true;
        //     if (q.value.length) {
        //         $("<a class='floor-zan' mid=" + r.value[i].receptKey + " style='color:#00a1d6' >点赞(" + r.value[i].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
        //             alert("你已经点过赞了");
        //         });
        //     } else {
        //         $("<a class='floor-zan' mid=" + r.value[i].receptKey + " >点赞(" + r.value[i].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
        //             var _that = this;
        //             var MID = $(this).attr("mid");
        //             var UM = BT.Us.info.UserId;
        //             var MU = $(this).parent().parent().find(".t a").attr("mid");
        //             if (STAT) {
        //                 BT.Sl.Requeset("I_Inesrt_ReceptZan", (["clickzan", MID, UM, MU]), function (e) {
        //                     $(_that)[0].innerHTML = "点赞(" + (parseInt($(_that)[0].innerHTML.replace("点赞(", "").replace(")", "")) + 1) + ")";
        //                     $(_that).css({ "color": "#00a1d6" });
        //                     STAT = false;
        //                 });
        //             } else {
        //                 alert("你已经点过赞了");
        //             }
        //         });
        //     }
        // });
        var ss = $("<i class='report'  id='' pid='' number=" + r.value[i].receptnumber + "><a  class='huifu reply-b'>参与回复</a></i>").appendTo(elinfo[0]);
        ss.click(function () { BT.Ju.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })
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
                    // BT.Sl.Requeset("I_Inesrt_ReceptZan", (["Szan", data.value[j].receptKey, BT.Us.info.UserId, data.value[j].UserId]), function (q) {
                    //     var STAT = true;
                    //     if (q.value.length) {
                    //         $("<a class='floor-zan' mid=" + data.value[j].receptKey + " style='color:#00a1d6' >点赞(" + data.value[j].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
                    //             alert("你已经点过赞了");
                    //         });
                    //     } else {
                    //         $("<a class='floor-zan' mid=" + data.value[j].receptKey + " >点赞(" + data.value[j].receptCount + ")</a>").appendTo(elinfo[0]).click(function () {
                    //             var _that = this;
                    //             var MID = $(this).attr("mid");
                    //             var UM = BT.Us.info.UserId;
                    //             var MU = $(this).parent().parent().parent().find(".w .name").attr("mid");
                    //             if (STAT) {
                    //                 BT.Sl.Requeset("I_Inesrt_ReceptZan", (["clickzan", MID, UM, MU]), function (e) {
                    //                     $(_that)[0].innerHTML = "点赞(" + (parseInt($(_that)[0].innerHTML.replace("点赞(", "").replace(")", "")) + 1) + ")";
                    //                     $(_that).css({ "color": "#00a1d6" });
                    //                     STAT = false;
                    //                 });
                    //             } else {
                    //                 alert("你已经点过赞了");
                    //             }
                    //         });
                    //     }
                    // });
                    var ss = $("<i class='report' id=" + data.value[j].NickName + " pid=" + data.value[j].UserId + " number=" + r.value[i].receptnumber + "><a class='huifu reply-b'>回复</a></i>").appendTo(elinfo[0]);
                    ss.click(function () { BT.Ju.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })
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
/*点击参与回复或者@某个人*/
BT.Ju.ReceptPeo = function (UID, Nickname) {
    // alert(Nickname[3]);
    if ($("#tg_send_post")[0]) { $("#tg_send_post").remove(); }
    var _who = "";
    if (Nickname[0] != "" && Nickname[0] != undefined) {
        _who = "回复 @" + Nickname[0] + " ：";
    }
    var post = $("<div class='tg_send_post' id='tg_send_post'></div>").appendTo($(UID).parents(".main-floor")[0])
    var content = $("<div class='dcmp-content'></div>").appendTo(post[0]).css({ "margin-top": "15px" });
    var face = $("<div class='user_face'></div>").appendTo(content[0]).css({ "height": "50px", "width": "50px" });
    $("<img src='../images/photo/noface.gif' />").appendTo(face[0]);
    var container = $("<div id='dcmp_textarea_container' class='dcmp-textarea-container dcmp-textarea-container_2'></div>").appendTo(content[0]).css({ "margin-left": "70px", "margin-right": "0px" });
    $("<i class='b-icon b-icon-triangle-gray-left'></i>").appendTo(container[0]);
    var textarea = $('<textarea cols="80" name="msg" rows="5" id="comment_text" placeholder="跟大家一起愉快地吐槽吧！(ง •̀_•́)ง" class="b-input ipt-txt"></textarea>').appendTo(container[0]).css({ "width": "508px", "height": "58px", "color": "#555", "font-size": "12px" }).val(_who);
    var dcmp_post = $("<div class='dcmp_post'></div>").appendTo(container[0]).css({ "margin-top": "8px" });
    var ywz_wrapper = $("<div class='ywz-wrapper'></div>").appendTo(dcmp_post[0]);
    var biaoqing_box = $('<div class="biaoqing_box"><a>(⌒▽⌒)</a><a>（￣▽￣）</a><a>(=・ω・=)</a><a>(｀・ω・´)</a><a>(〜￣△￣)〜</a><a>(･∀･)</a><a>(°∀°)ﾉ</a><a>(￣3￣)</a><a>╮(￣▽￣)╭</a><a>(´_ゝ｀)</a><a>←_←</a><a>→_→</a><a>(&lt;_&lt;)</a><a>(&gt;_&gt;)</a><a>(;¬_¬)</a><a>("▔□▔)/</a><a>(ﾟДﾟ≡ﾟдﾟ)!?</a><a>Σ(ﾟдﾟ;)</a><a>Σ(￣□￣||)</a><a>(´；ω；`)</a><a>（/TДT)/</a><a>(^・ω・^)</a><a>(｡･ω･｡)</a><a>(●￣(ｴ)￣●)</a><a>ε=ε=(ノ≧∇≦)ノ</a><a>(´･_･`)</a><a>(-_-#)</a><a>（￣へ￣）</a><a>(￣ε(#￣)Σ</a><a>ヽ(`Д´)ﾉ</a><a>(╯°口°)╯(┴—┴</a><a>（#-_-)┯━┯</a><a>_(:3」∠)_</a><a>(笑)</a><a>(汗)</a><a>(泣)</a><a>(苦笑)</a></div>').appendTo(ywz_wrapper[0]);
    $("<a class='ywz'>(・ω・) 颜文字</a>").appendTo(ywz_wrapper[0]);
    var time4 = null;
    ywz_wrapper.click(function (event) {
        var _self = $(this);
        $(this).find(".biaoqing_box").show();
        $(".dcmp-textarea-container_2").find("textarea").focus();
        return false;
    })
    ywz_wrapper.find(".biaoqing_box a").click(function (event) {
        $(".dcmp-textarea-container_2 textarea").insertContent($(this).text());
        return false;
    })
    ywz_wrapper.hover(function () {
        clearTimeout(time4);
    }, function () {
        time4 = setTimeout(function () {
            ywz_wrapper.find(".biaoqing_box").hide();
        }, 200)
    })

    var button = $('<button type="submit" class="b-btn submit-comment" id="submit-comment2" pid="' + Nickname[1] + '"  number="' + Nickname[2] + '"> 发表评论</button>').appendTo(dcmp_post[0]).css({ "right": "0px" });
    button.click(function () {
        var s = $(this).attr("pid") || "";
        var number = $(this).attr("number") || "";
        var val = $(this).parent().prev().val();
        BT.Sl.Requeset("I_Insert_recept", ([BT.Us.info.UserId, s, val, BT.Ju.ContentStr.UID, 2, number]), function (data) {
            if (data.value != false) {
                var STAT = true;
                var a = $("#submit-comment2").parents(".main-floor").find(".re_ul")[0];
                $("#submit-comment2").parents(".tg_send_post").remove();
                var li = $("<li id='user_'" + BT.Us.info.UserId + "></li>").appendTo(a)
                var a = $("<a class='re_face' href='#' target='_blank' mid=" + BT.Us.info.UserId + " card=" + BT.Us.info.NickName + "></a>").appendTo(li[0]);
                $("<img src='" + BT.Us.info.Head_img + "'  />").appendTo(a[0]);
                var re_cnt = $("<div class='re_cnt'></div>").appendTo(li[0]);
                var w = $("<div class='w'></div>").appendTo(re_cnt[0]);
                $("<a class='name' href='usercenter.html?Userid=1' mid=" + BT.Us.info.UserId + " target='_blank' card=" + BT.Us.info.NickName + ">" + BT.Us.info.NickName + "</a>").appendTo(w[0]);
                var receptnumber = $("#submit-comment2").parents(".re_ul").find("li").length;
                $("<a href='#' target='_blank' class='user-info-level " + (receptnumber + 1) + "'></a>").appendTo(w[0]);
                if (val.indexOf("@") > 0) {
                    var _ssa = val.split(" ")[1];
                    var pattern = new RegExp(_ssa, "gi");
                    var title = val.replace(pattern, "<font class='keyword2'><a href='javascript:;'>" + _ssa + "</a></font>");
                    $("<span class='contentnice contentchild'>" + title + "</span>").appendTo(w[0]);
                }
                else {
                    $("<span class='contentnice contentchild'>" + val + "</span>").appendTo(w[0]);
                }
                var info = $("<div class='info'></div>").appendTo(re_cnt[0]);
                $("<p></p>").appendTo(info[0]);
                var elinfo = $("<div class='elinfo'></div>").appendTo(info[0]);
                $("<span class='floor-num'>1秒前</span>").appendTo(elinfo[0]);

                // $("<a class='floor-zan' mid="+data.value[0].receptKey+">点赞(0)</a>").appendTo(elinfo[0]).click(function () {
                //     var _that = this;
                //     var MID = $(this).attr("mid");
                //     var UM = BT.Us.info.UserId;
                //     var MU = $(this).parent().parent().parent().find(".w .name").attr("mid");
                //     if (STAT) {
                //         BT.Sl.Requeset("I_Inesrt_ReceptZan", (["clickzan", MID, UM, MU]), function (e) {
                //             $(_that)[0].innerHTML = "点赞(" + (parseInt($(_that)[0].innerHTML.replace("点赞(", "").replace(")", "")) + 1) + ")";
                //             $(_that).css({ "color": "#00a1d6" });
                //             STAT = false;
                //         });
                //     } else {
                //         alert("你已经点过赞了");
                //     }
                // });

                var ss = $("<i class='report' id=" + BT.Us.info.NickName + " pid=" + BT.Us.info.UserId + " number=" + (receptnumber + 1) + "><a class='huifu reply-b'>回复</a></i>").appendTo(elinfo[0]);
                ss.click(function () { BT.Ju.ReceptPeo(this, [$(this).attr("id"), $(this).attr("pid"), $(this).attr("number")]); })
                li.fadeIn(400);
            }
        });
    })
    textarea.focus();
}