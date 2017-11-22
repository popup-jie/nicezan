
//初始化用户中心
BT.Us.SetAcccountInfo = function (a) {
    switch (a) {
        //        case "0":                                                                                                                                                                                                      
        //            BT.Sl.Upload("photoimg", "imaegss", "", "upload", "head_img"); /*加载图片上传功能*/                                                                                                                                                                                                      
        //            BT.Us.SetAccountMyinfo(); /*加载初始化数据*/                                                                                                                                                                                                      
        //            BT.Ev.UserCenterAccount(); //加载账户中心模块                                                                                                                                                                                                      
        //            break;                                                                                                                                                                                                      
        case 1:
            BT.Ev.SetSubManage();
            BT.Us.SetSubManage("", "", "");
            break;
        case 2:
            BT.Us.Mes();
            BT.Ev.Message(); //加载通知模块
            break;
        case 3:
            BT.Us.Collection();  //收藏
            BT.Ev.UserCollect();

            break;
        case 4:
            BT.Sl.Requeset("Dhistory", ([BT.Us.info.UserId]), function () { }); //删除用户超过5天以上的浏览记录
            BT.Us.His(); //历史记录
            BT.Ev.His(); //加载历史记录模块
            break;

        default: break;
    }
}
//初始化用户中心-.账号->我的信息 内容
BT.Us.SetAccountMyinfo = function () {
    $("#nickname input").val(BT.Us.info.NickName);
    $("#autograph").find("textarea").val(BT.Us.info.rammy);

    $("#imaegss").attr("src", BT.Us.info.Head_img == null ? "../images/photo/erwei.png" : BT.Us.info.Head_img);
    if (BT.Us.info.area != null && BT.Us.info.area != "") {
        BT.Us.info.area = BT.Us.info.area.split("-");
        $("#usercenter_pros").find("button").eq(0).text(BT.Us.info.area[0]); $("#usercenter_area").find("button").eq(0).text(BT.Us.info.area[1]);
    } if (BT.Us.info.bornData != null && BT.Us.info.bornData != "") {
        BT.Us.info.bornData = BT.Us.info.bornData.split("-");
        $("#bir").find("input.years").val(BT.Us.info.bornData[0]); $("#bir").find("input.months").val(BT.Us.info.bornData[1]); $("#bir").find("input.days").val(BT.Us.info.bornData[2]);
    }
    $("#sex").find("button").eq(0).text(BT.Us.info.sex == 1 ? "男" : "女");
    $("#mylemons .contents span").text(BT.Us.info.lemonCount);
    $("#myeamilx .contents strong,#myeamil .contents strong").text(BT.Us.info.User_login);
    $(".table-wrapper").animate({ "height": "288px", "overflow": "hidden" });
    BT.Sl.Requeset("I_Inesrt_Lemon", [BT.Us.info.UserId, "", "", "3"], function (r) {
        for (var i = 0; i < r.value.length; i++) {
            var _tr = $("<tr></tr>").appendTo($("#currency_log tbody"));
            $("<td><div>" + r.value[i].RecordTime + "</div></td>").appendTo(_tr);
            $("<td><div>" + r.value[i].LemonChange + "</div></td>").appendTo(_tr);
            $("<td><div>" + r.value[i].LemonReason + "</div></td>").appendTo(_tr);
        }
    })
}
/*初始化用户中心->投稿管理*/
BT.Us.SetSubManage = function (_IsOk, _type, arr) { // 0 0  (审核中,生活)
    $(".adm dl").html("");
    if ($(".adm").find(".Paging")[0] != undefined) { $(".Paging").remove(); }
    var stype = isok = "";
    if (_IsOk != "") {
        _IsOk = _IsOk == "审核中" ? '0' : (_IsOk == "已通过" ? '1' : '2');
    } if (_type != "") {
        _type = _type == "生活" ? '0' : (_type == "资源" ? '1' : '2');
    }
    if (arr != "") {
        arr = arr;
    }
    else {
        arr = BT.Us.SubManageinfo;
    }
    for (var i = 0; i < arr.length; i++) {
        if (_IsOk == "" && _type == "") {
            as(arr, i);
        } else {
            isok = _IsOk != "" ? _IsOk : arr[i].IsOk;
            stype = _type != "" ? _type : arr[i].type;
            if (isok == arr[i].IsOk && stype == arr[i].type) {
                as(arr, i);
            }
        }
    }
    $('<div data-target="Paging" data-btn="true" data-pageid="admdl" data-pagenumber="5" class="Paging"></div>').appendTo($("#adm2 .adm")[0]).css({ "position": "absolute", "bottom": "40px", "left": "0px", "right": "0px" });
    $("[data-target]").each(function () {
        if ("Paging" == $(this).attr("data-target")) {
            $(this).addClass("Paging");
            var btn = $(this).data("btn") || false;
            var ID = $(this).data("pageid");
            ID = $("#" + ID);
            var pagenumber = $(this).data("pagenumber");
            var count = $(this).data("count") || 4;
            $.Page(btn, ID, pagenumber, count, $(this), true);
        }
    });

    function as(r, i) {
        spanText = "";
        var dd = $("<dd></dd>").appendTo($("#adm2 .adm dl").eq(0)[0]);
        r[i].IsOk != 1 ? (r[i].IsOk == 0 ? (spanText = "审核中", dd.addClass("sh")) : (spanText = "未通过", dd.addClass("wt"))) : "";
        var artimg = $("<div class='artimg'><img src=" + r[i].imgurl + " /></div>").appendTo(dd[0]);
        $("<span>" + spanText + "</span>").appendTo(artimg[0]);
        var article = $("<div class='article'></div>").appendTo(dd[0]);
        var _types = r[i].type == 1 ? "资源" : (r[i].type == 0 ? "生活" : "视频");
        $("<a href='../html/resources.html?id=" + r[i]._UID + "&type=" + r[i].type + "'  target='_blank'><div class='art-txt'><div class='art-type'>" + _types + "-" + r[i].viewtype + "</div>" + r[i].tit + "</div></a>").appendTo(article[0]);
        var a;
        if (_IsOk == 2) {
            var p = $("<div class='p'><span>已退回：该视频暂时无法正常播放，请检查视频源是否存在问题，请更换视频源，谢谢</span></div>").appendTo(article[0]);
            var tgicons = $("<div class='tgicons'></div>").appendTo(p[0]);
            var a = $("<a href='#' class='xg' title='修改' data-title=" + r[i]._UID + "></a>").appendTo(tgicons[0]);
            a.click('bind', function () {
                UID = $(this).data("title");
                BT.Us.SetChangeSubManage(UID);
            })
            var a = $("<a href='#' class='sc' title='删除' data-title=" + r[i]._UID + "></a>").appendTo(tgicons[0]);
            a.click('bind', function () {
                _self = this;
                UID = $(this).data("title");
                BT.Sl.Requeset("I_Insert_Content", (["", "", "", "", "", "", "", "", "", "", 2, UID]), function (r) {
                    if (r.value == true) {
                        $(_self).parents(".article").parent().slideUp(300, function () {
                            alert("删除成功");
                        });
                    }
                })
            })

        }
        else {
            var p = $("<div class='p'></div>").appendTo(article[0]);

            var _time = BT.Fn.Compute(r[i].time, r[i].timenow);
            if (_time == 1) {
                _time = r[i]._time;
            }
            $("<span>" + _time + " /</span>").appendTo(p[0]);
            $("<span>浏览：" + (r[i].browse || "0") + " </span>").appendTo(p[0]);
            $("<span>评论：" + (r[i].comment || "0") + " </span>").appendTo(p[0]);
            $("<span>收藏：" + (r[i].coll || "0") + " </span>").appendTo(p[0]);
            var tgicons = $("<div class='tgicons'></div>").appendTo(p[0]);
            var a = $("<a href='#' class='xg' title='修改' data-title=" + r[i]._UID + "></a>").appendTo(tgicons[0]);
            a.click('bind', function () {
                UID = $(this).data("title");
                BT.Us.SetChangeSubManage(UID);
            })
            var a = $("<a href='#' class='sc' title='删除' data-title=" + r[i]._UID + "></a>").appendTo(tgicons[0]);
            a.click('bind', function () {
                _self = this;
                UID = $(this).data("title");
                BT.Sl.Requeset("I_Insert_Content", (["", "", "", "", "", "", "", "", "", "", 2, UID]), function (r) {
                    if (r.value == true) {
                        $(_self).parents(".article").parent().slideUp(300, function () {
                            alert("删除成功");
                        });
                    }
                })
            })
        }


        var label = $("<div class='label'></div>").appendTo(article[0]);
        var ul = $("<ul></ul>").appendTo(label);
        var j = r[i].label.split(",");
        if (j.length == 1) {
            j = r[i].label.split("，")
        }
        for (var k = 0; k < j.length; k++) {
            $("<li><a href='#'>" + j[k] + "</a></li>").appendTo(ul[0]);
        }
    }
}
/*初始化用户中心->收藏管理*/
BT.Us.Collection = function () {
    var page_sub = $("#coll #page_sub_box .hot-box").eq(0).find(".content").remove();
    BT.Sl.Requeset("S_Select_Conllect", (["", BT.Us.info.UserId, "own"]), function (r) {
        var r = r.value;
        var item = [r.length == undefined ? 0 : r.length, 0, 0, 0];

        for (var i = 0; i < r.length; i++) {
            console.log(r.type);
            switch (r[i].type) {
                case "0":
                    item[1] += 1;
                    BT.Us.CollectView(r[i], $("#coll #page_sub_box .hot-box")[1]);
                    break;
                case "1":
                    item[2] += 1;
                    BT.Us.CollectView(r[i], $("#coll #page_sub_box .hot-box")[2]);
                    break;
                case "2":
                    item[3] += 1;
                    BT.Us.CollectView(r[i], $("#coll #page_sub_box .hot-box")[3]);
                    break;
            }
            BT.Us.CollectView(r[i], $("#coll #page_sub_box .hot-box")[0]);
        }
        for (var i = 0; i < 4; i++) {
            $("#coll .m-mid-button li:eq(" + i + ") a").text("(" + item[i] + ")");
        }
    });
}
/* 收藏管理 -> 视图 */
BT.Us.CollectView = function (r, poster) {
    console.log(r);
    var conbox = $("<div class='content' id=" + r.GoneId + "></div>").hover(function () {
        $(this).find(".get").css({ "opacity": "1" });
    }, function () {
        $(this).find(".get").css({ "opacity": "0" });
    }).appendTo(poster);

    var artbox = $("<div class='artBox'><div class='fl get'><i class='font'>&#xe620;</i></div></div>").appendTo(conbox);

    $(conbox).find(".get").on('click', function (event) {
        if ($(this).hasClass('get2') == true) {
            $(this).removeClass('get2').addClass("get");
            $(this).parent().parent().css({ 'background': '#fff' });
        }
        else {
            $(this).addClass('get2').removeClass("get")
            $(this).parent().parent().css({ 'background': '#eef7fc' });
        }
        BT.Ev.showGet();
    })

    $("<div class='artimg'><img src='../images/product/pro1.png'/></div>").appendTo(artbox);
    var article = $("<div class='article'></div>").appendTo(artbox);
    var type = r.type == 1 ? "资源" : (r.type == 0 ? "生活" : "视频");
    $("<div class='art-txt' style='height: 19px;'><div class='art-type'>" + type + "-" + r.viewtype + "</div>" + r.tit + "</div>").appendTo(article[0]);
    $("<div class='art-txt2'>" + r.content + "</div>").appendTo(article[0]);
    $("<div class='zan-user'><div class='user fl'><i class='font'></i></div> <span class='fl'>" + r.NickName + "</span></div>").appendTo(article[0]);
    $("<div class='zan-see'><div class='see fl'><i class='font'></i></div> <span class='fl'>" + r.browse + "</span></div>").appendTo(article[0]);
    $("<div class='zan-message'><div class='message fl'><i class='font'>&#xe610;</i></div> <span class='fl'>" + r.comment + "</span></div>").appendTo(article[0]);
    $("<div class='clear'></div>").appendTo(conbox[0]);
}
/*初始化用户中心->历史记录*/
BT.Us.His = function () {
    var user = BT.Us.info;
    var artArray = [];
    BT.Sl.Requeset("S_Select_HisContent", ([user.UserId]), function (r) {
        BT.Us.CreaHisa(r.value);
    })

}
//历史记录 -> 视图
BT.Us.CreaHisa = function (data) {
    $("#histroy .m-mid-content").html("");
    var cont = $("#histroy .m-mid-content");
    var artArray = {
        date: [],
        count: 0
    }
    var day = null;
    var count = 0;
    var url;
    var artArrayDate = artArray.date;
    data.forEach(function (value) {//将相同的时间装进一个数组
        if (!artArrayDate[value.labelTime]) {
            artArrayDate[value.labelTime] = [];
            artArray.count++;
        }
        artArrayDate[value.labelTime].push(value);
    });
    for (var i in artArrayDate) {
        count++;
        day = (i == BT.Fn.Now() ? "今天" : i);
        if (i == BT.Fn.Now()) {
            $("<div class='m-mid-title'><a></a>今天</div>").appendTo(cont);
        }
        else {
            day = i;
            $("<div class='m-mid-title m-mid-title2'><a></a>" + day + "</div>").appendTo(cont);
        }
        var ul = $("<ul></ul>").appendTo(cont);
        for (var j = 0; j < artArrayDate[i].length; j++) {
            var li = $("<li></li>").appendTo(ul);
            url = (artArrayDate[i].type == 2 ? "videohandling" : "resources");
            var clickhref = "../../html/" + url + ".html?id=" + artArrayDate[i][j].UID + "&type=" + artArrayDate[i][j].type;
            var a = $("<a class='hisa' href=" + clickhref + " target='_blank'></a>").appendTo(li);
            if (artArray.count == count) { li.attr("class", "list"); }
            var img = $("<div class='img fl'> <img src=" + artArrayDate[i][j].imgurl + "></div>").appendTo(a);
            var text = $("<div class='fl text'></div>").appendTo(a);
            var list_top = $("<div class='ul_list_top'><span class='fl ul_list_top_title'>资源-" + artArrayDate[i][j].viewtype + "</span> <a class='fl ul_list_top_text' href='#'>" + artArrayDate[i][j].tit + " </a> <div class='clear'></div></div>").appendTo(text);
            var list_bottom = $("<div class='ul_list_bottom'><span>浏览：</span><a>" + artArrayDate[i][j].browse + "</a> <span>评论：</span><a>" + artArrayDate[i][j].comment + "</a> <span>收藏：</span><a>" + artArrayDate[i][j].coll + "</a> <span>点赞：</span><a>" + artArrayDate[i][j].zan + "</a></div>").appendTo(text);
            var ticket = $("<a class='look' data-tilte='http://localhost:8100/html" + url + ".html?id=" + artArrayDate[i][j].UID + "&type=" + artArrayDate[i][j].type + "' data-zipcode = " + artArrayDate[i][j].getCode + ">查看车票</a>").appendTo(li);

            var clear = $("<div class='clear'></div>").appendTo(li);
        }
    }
}
/*初始化用户中心->通知信息*/
BT.Us.Mes = function () {
    var div = $("#messages .m-mid-content #m-mid-content_div1").html("");
    for (var i = 0; i < BT.Us.UserTopinfo.length; i++) {
        var _time = BT.Fn.Compute(BT.Us.UserTopinfo[i].time, BT.Us.UserTopinfo[i].timenow);
        if (_time == 1) { _time = BT.Us.UserTopinfo[i]._time }
        if (BT.Us.UserTopinfo[i].IsOk == 2) {
            var li = $("<li class='deletesend'></li>").appendTo(div[0]);
            var head_img = $("<div class='head_img fl'></div>").appendTo(li[0]);
            $("<img src='../images/photo/zy-pho.png' />").appendTo(head_img[0]);
            var text = $("<div class='fl m-mid-content-text'></div>").appendTo(li[0]);
            var left = $("<div class='fl m-mid-content-text-left'></div>").appendTo(text[0])
            var top = $("<div class='top'></div>").appendTo(left[0]);
            $("<a class='name fl'>NICEZAN超赞</a>").appendTo(top[0]);
            $("<a class='fl time'> - " + _time + "</a>").appendTo(top[0]);
            $("<div class='clear'></div>").appendTo(top[0]);
            $("<div class='bottom'>" + BT.Us.UserTopinfo[i].reason + "</div>").appendTo(left[0]);
            var right = $("<div class='fr'></div>").appendTo(text[0]);
            $("<img src=" + BT.Us.UserTopinfo[i].imgurl + "  />").appendTo(right[0]);
            $("<div class='clear'></div>").appendTo(li[0]);
        }
        else {
            var url = (BT.Us.UserTopinfo[i]._type == 2 ? "videohandling" : "resources");
            var clickhref = "../../html/" + url + ".html?id=" + BT.Us.UserTopinfo[i]._UID + "&type=" + BT.Us.UserTopinfo[i]._type;
            if (BT.Us.UserTopinfo[i].receptLook != undefined) {
                var ds = "评论了"
                var title = BT.Us.UserTopinfo[i].receptContent;
                if (BT.Us.UserTopinfo[i].receptLevel != 1) {
                    ds = "在";
                    if (BT.Us.UserTopinfo[i].receptContent.indexOf("@") > 0) {
                        title = title.replace("@" + BT.Us.UserTopinfo[i].NickName, "<font class='keyword2'><a href='javascript:;'>我</a></font>");
                    }
                }
                var li = $("<li class='receptPeo'></li>").appendTo(div[0]);
                var head_img = $("<div class='head_img fl'></div>").appendTo(li[0]);
                $("<img src=" + BT.Us.UserTopinfo[i].Head_img + " />").appendTo(head_img[0]);
                var text = $("<div class='fl m-mid-content-text'></div>").appendTo(li[0]);
                var left = $("<div class='fl m-mid-content-text-left'></div>").appendTo(text[0])
                var top = $("<div class='top'></div>").appendTo(left[0]);
                $("<a class='name fl'>" + BT.Us.UserTopinfo[i].NickName + "</a>").appendTo(top[0]);
                $("<a class='fl'>" + ds + "</a>").appendTo(top[0]);
                var who = $('<a class="fl who" href=' + clickhref + ' alt=' + BT.Us.UserTopinfo[i].tit + ' title=' + BT.Us.UserTopinfo[i].tit + '>' + BT.Us.UserTopinfo[i].tit + '</a>').appendTo(top[0]);
                $("<a class='fl time' style='float:right'> - " + _time + "</a>").appendTo(top[0]);
                $("<div class='clear'></div>").appendTo(top[0]);
                $("<div class='bottom'>" + title + "</div>").appendTo(left[0]);
                var right = $("<div class='fr'></div>").appendTo(text[0]);
                $("<img src=" + BT.Us.UserTopinfo[i].imgurl + "  />").appendTo(right[0]);
                $("<div class='clear'></div>").appendTo(li[0]);
            }
            else {
                BT.Sl.Requeset("S_Select_Useri", ([BT.Us.UserTopinfo[i].User_id]), function (r) {
                    var ds = "收藏";
                    if (BT.Us.UserTopinfo[i]._ty == 1) {
                        li = $("<li class='messagesColl'></li>").appendTo($("#messages .m-mid-content #m-mid-content_div2")[0]);
                    }
                    else {
                        ds = "赞";
                        li = $("<li class='messagesZan'></li>").appendTo($("#messages .m-mid-content #m-mid-content_div2")[0]);
                    }
                    var header = $("<div class='head_img fl'></div>").appendTo(li[0]);
                    $("<img src=" + r.value[0].Head_img + "  />").appendTo(header[0]);
                    var text = $("<div class='fl m-mid-content-text'></div>").appendTo(li[0]);
                    var left = $("<div class='fl m-mid-content-text-left'></div>").appendTo(text[0]);
                    var top = $("<div class='top'></div>").appendTo(left[0]);
                    $("<a class='name fl' href='#'>" + r.value[0].NickName + "</a>").appendTo(top[0]);
                    $("<a class='fl time' href='#'>-&nbsp;" + _time + "</a>").appendTo(top[0]);
                    $("<div class='clear'></div>").appendTo(top[0]);
                    if (BT.Us.UserTopinfo[i]._ty == 2) {
                        $("<div class='bottom'>赞了你在&nbsp;<a href=" + clickhref + " class='name'>" + BT.Us.UserTopinfo[i].tit + "</a>&nbsp;的资源里的评论</div>").appendTo(left[0]);
                    } else {
                        $("<div class='bottom'>" + ds + "了你的 <a href=" + clickhref + " class='name' alt=" + BT.Us.UserTopinfo[i].tit + " tilte=" + BT.Us.UserTopinfo[i].tit + ">" + BT.Us.UserTopinfo[i].tit + "</a></div>").appendTo(left[0]);
                    }
                    var fr = $("<div class='fr'></div>").appendTo(text[0]);
                    $("<img src=" + BT.Us.UserTopinfo[i].imgurl + " />").appendTo(fr[0]);
                    $("<div class='clear'></div>").appendTo(li[0]);
                });
            }
        }
    }
}
