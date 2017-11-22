//这里的函数都是首页和首页子页公用函数  

Namespace.register("BT.Es"); //数据获取命名空间


BT.Es.Updatahot = function () {
    var url = window.location.search;
    url1 = (url == "" ? url : url.substring(url.indexOf("=") + 1));
    BT.Es.qs(url);
    if (url1 == "") {
        BS.H.qs(url); //首页起始函数 
    }
    else {
        BS.Cd.qs(url) //首页的子页的起始函数
    }

}


BT.Es.qs = function (url) {
    BT.Es.WantSub();

}

//我要投稿按钮
BT.Es.WantSub = function () {
    $(".mid-right a").eq(0).click(function () {
        if (BT.Us.info != "" && BT.Us.info != undefined) {

            $(".mid-right a").eq(0).attr("href", "/html/usercenter.html");
        }
        else {
            alert("请先登录");
        }
    })

}

/**
* @param count 创建N份
* @param value 传入的数据
* @param t 类型
* @param ele 父元素
*/
BT.Es.Updataab = function (value, count, t, ele) { //创建生活模块资源模块DIV和数据 左边数据
    var cot = 0;
    var $model = $("<div class='content hide'><div class='artBox'><div class='artimg'><a href='#'  target='_blank'><img src='images/product/pro1.jpg' /></a><div class='zan'><p class='zan-num'>581</p><i class='font'>&#xe605;</i></div></div><div class='article'><div class='art-txt'>【高清日剧】Legal High/胜者即是正义 720P（全11 回+SP1）</div><div class='zan-user'><div class='user fl'><i class='font'>&#xe601;</i></div> <span class='fl'>无风自明月</span></div> <div class='zan-see' style='float:right'><div class='see fl'><i class='font'>&#xe60f;</i></div><span class='fl'>1674</span></div></div></div><div class='clear'></div></div>").appendTo(ele);
    var $parentNode = $model.parent();
    for (var i = 0; i < value.length; i++) {//打印
        if (value[i].type == t || t == 3) {
            var $newElement = $model.clone();
            var _value = value[i];
            var url;
            var page;

            t == 0 ? (page = "life") : t == 1 ? (page = "resources") : "";
            url = (value[i].type == 2 ? "videohandling" : "resources");
            var clickhref = "../../html/" + url + ".html?page=" + page + "&id=" + _value.TID + "&type=" + _value.type;

            clickhref2 = "/" + url + "/" + _value.GoneId;

            $newElement.find('.artimg img').attr("src", _value.imgurl);

            $newElement.find(".artimg a").attr("href", clickhref2).attr("type", _value.type);
            //.attr("data-uid", _value.UID);
            $newElement.find(".artimg .zan-num").text(_value.zan);
            $newElement.find(".article .art-txt").text(_value.tit);
            $newElement.find(".article .zan-see span").text(_value.browse);

            $newElement.removeClass('hide');
            (function (arg) {
                BT.Sl.Requeset("S_Select_Useri", ([value[arg].PID]), function (r) {
                    $newElement.find(".article .zan-user span").text(r.value[0].NickName);
                })
            })(i);
            ele.append($newElement);
            

           // $newElement.find(".artimg a").click(function () {
           //      var s= $(this).attr("href");
           //      var href = $(this).attr("href").split("/")[2];
           //      var type = $(this).attr("type");
           //      $.ajax({
           //          url: "../resources/index.php",
           //          type: "POST",
           //          async: false,
           //          data : { date : [href,type] },
           //          success: function (r) {
           //              window.open(s);
           //          }
           //     })
           //     return false;
           // })
            cot++;
            if (cot == count) {
                break;
            }
        }
    }
    ele.append('<div class="clear"></div>');
}

/*--------------------------------------------------------------------------------------------------排行榜--------------------------------------------------------------------------------------------*/


/**
* @param type 文章类型 3为获取全部
* @param day 查看某某天内的信息
*/
BT.Es.RankingList = function (type, day) {//排行榜效果起始函数  
    var lookbtn = $(".look-of-btn").eq(0);
    BT.Sl.Requeset("S_Select_RankingList", ([type, day]), function (r) {
        var _value = r.value;
        BT.Es.Rlcreat(_value, $(".goodUl"));

    })

}

/**
* @param value 传入的数据
* @param ele 父元素
*/
BT.Es.Rlcreat = function (value, ele) { //排行榜效果创建
    var cot = 0;
    var $model1 = $("<li><div class='nowtit hide'><i>" + 0 + "</i><a class='nowtit-a '>- -</a></div><div class='nowBox'><a href='#' target='_blank'><img src='images/product/pai-1.png' class='fl ban-img' /><img src='../../images/icons/ban-bg.png' class='fl ban-bg' style='width: 100%;' /><div class='nowone fl'><i>" + 0 + "</i> <span href='#' class='nowtit2'>- -</span></div></a></div><div class='clear'></div></li>").appendTo(ele);
    var $model = $("<li><div class='nowtit show'><i>" + 1 + "</i><a class='nowtit-a '>- -</a></div><div class='nowBox hide'><a href='#' target='_blank'><img src='images/product/pai-1.png' class='fl ban-img' /><img src='../../images/icons/ban-bg.png' class='fl ban-bg' style='width: 100%;' /><div class='nowone fl'><i>" + 1 + "</i> <span href='#' class='nowtit2'>- -</span></div></a></div><div class='clear'></div></li>").appendTo(ele);
    //var $parentNode = $model.parent();
    var $newElement;
    for (var i = 0; i < 5; i++) {
        $newElement = (i == 0 ? $model1 : $model);
        if (i > 1) {
            $newElement = $model.clone();
        }
        var url;
        url = (value[i].type == 2 ? "videohandling" : "resources");
        var clickhref = "../../html/" + url + ".html?id=" + value[i].UID + "&type=" + value[i].type;
        $newElement.find("a").attr("href", clickhref).attr("data-uid", value[i].UID);
        $newElement.find(".nowtit-a").text(value[i].tit);
        $newElement.find(".nowtit2").text(value[i].tit);
        $newElement.find(".nowBox").find("img").eq(0).attr("src", value[i].imgurl);
        $newElement.find("i").text(i + 1);
        ele.append($newElement);
    }
    ele.append('<div class="clear"></div>');
    //    for (var j = 10; j > 4; j--) {
    //        $(".goodUl li").eq(j).hide();
    //    }

    //排行榜效果
    $(".goodUl .nowtit").hover(function () {
        $(".nowBox").removeClass("show").addClass("hide");
        $(".nowtit").removeClass("hide").addClass("show");
        $(this).removeClass("show").addClass("hide").next().addClass("show");
        $(this).next().find(".ban-bg").css({ "width": "0" }).stop().animate({ "width": "100%" });

    });

}


/**
* @param type 文章类型 3为获取全部
* @param day 查看某某天内的信息
*/
BT.Es.updataRl = function (type, day) {//更换排行榜数据
    BT.Sl.Requeset("S_Select_RankingList", ([type, day]), function (r) {
        var _value = r.value;
        for (var i = 0; i < 5; i++) {
            var clickhref = "../../html/resources" + ".html?id=" + _value[i].UID + "&type=" + _value[i].type;
            $(".goodUl li .nowtit-a").eq(i).text(_value[i].tit);
            $(".goodUl li .nowtit-a ").eq(i).attr("href", clickhref);
            $(".goodUl li .nowtit2").eq(i).text(_value[i].tit);
            $(".goodUl li .nowBox a").eq(i).attr("href", clickhref); ;
            $(".goodUl li .nowBox").eq(i).find("img").eq(0).attr("src", _value[i].imgurl);
        }

    })
}


BT.Es.clickDay = function (url, type) {//切换天数(排行榜)
    var cot = 0;
    cot = (url == "" ? cot : 2);
    $(".Droptitle ul").eq(cot).find("li").click(function () {
        $(this).text() == "三天" ? BT.Es.updataRl(type, 3) : BT.Es.updataRl(type, 7);
    })

}


/*----------------------------------------------------------------------------------------------------新动态刷新--------------------------------------------------------------------------------------------*/

var timer;
BT.Es.Refresh = function (url) {// 刷新效果
    /*刷新效果*/
    $(".middle .Refresh").hover(function () {
        $(this).next().show();
    }, function () {
        $(this).next().hide();
    })
    var i = 0;
    $(".middle .Refresh").unbind('click');
    $(".middle .Refresh").click(function () {
        i++;
        $(this).next().hide();
        $(this).css({ "transform": "rotate(" + i * 720 + "deg)" });
        $(this).next().css({ "transform": "rotate(" + i * 720 + "deg)" });
        BT.Es.Refeffect($(this), url);


    });


}
BT.Es.Refeffect = function (ele, url) {//点击刷新执行的函数
    var type = "";
    var child = 8;
    var $parnet = ele.parent().parent().parent();
    setTimeout(function () {
        ele.parent().hide(100);
    }, 1200);
    clearInterval(timer);
    switch ($parnet.attr("class")) {
        case "lift-box":
            type = 0;
            break;
        case "zy-box":
            type = 1;
            break;
        case "tv-box":
            type = 2;
            break;
        case "hot-box":
            switch (url) {
                case "life":
                    type = 0;
                    break;
                case "resources":
                    type = 1;
                    break;
                case "carry":
                    type = 2;
                    break;
            }
            child = 4;
            break;
    }
    BT.Sl.Requeset("S_Select_ContentAll", (["", "hot", type, ""]), function (r) {
        var _value = r.value;
        BT.Sl.Requeset("S_Select_now", ([]), function (r) {
            var nowt = r.value[0].sertime;
            timer = setInterval(function () { BT.Es.setinerdynamic(nowt); }, 3500);
        })
        ele.parent().parent().parent().find(".hot-box-new").eq(0).html("");
        BT.Es.Updataab(_value, child, type, $parnet.find(".hot-box-new").eq(0)); //生活娱乐最新动态

        if ($(".new-plate").length > 0) {
            var bro = $parnet.find(".new-plate").eq(0);
            bro.addClass("active").siblings().removeClass("active");
            $('.hot-box-new').attr("id", "");
            bro.parent().parent().find('.hot-box-new').hide().eq(bro.index() - 2).show().attr("id", "newbox");
        }

    });

}

BT.Es.loaddynamic = function (url) {//加载动态
    BT.Sl.Requeset("S_Select_now", ([]), function (r) {//获取最新事件
        var _nowTime = r.value[0];
        var fg = BT.Es.dayDivision(_nowTime.sertime);
        timer = setInterval(function () { BT.Es.setinerdynamic(_nowTime.sertime); }, 3500);
        BT.Es.Refresh(url);

    });
}

//写的比较懒。。后面再改
BT.Es.setinerdynamic = function (time) {//计时器执行函数
    BT.Sl.Requeset("S_Select_ContentAll", (["", "hot", "", ""]), function (r) {
        var _value = r.value;
        var _lifebox = new Array();
        var _resbox = new Array();
        var _carry = new Array();
        for (var i = 0; i < _value.length; i++) {
            var da = BT.Es.dayDivision(_value[i].dynamicDate);
            //BT.Fn.Compute(_value[i].dynamicDate, time);
            if (_value[i].dynamicDate > time) {
                switch (_value[i].type) {
                    case "0":
                        _lifebox.push(_value[i]);
                        break;
                    case "1":
                        _resbox.push(_value[i]);
                        break;
                    case "2":
                        _carry.push(_value[i]);
                        break;
                }
            }

        }
        if ($(".lift-box").length > 0) {
            if (_lifebox.length > 0) {
                $(".lift-box .new-dynamic").show().find("span a").text(_lifebox.length);
            }
            if (_resbox.length > 0) {
                $(".zy-box .new-dynamic").show().find("span a").text(_resbox.length);
            }
            if (_carry.length > 0) {
                $(".tv-box .new-dynamic").show().find("span a").text(_carry.length);
            }
        }
        else if ($(".hot-box").length > 0) {
            if (_lifebox.length > 0) {
                $(".hot-box .new-dynamic").show().find("span a").text(_lifebox.length);
            }
            if (_resbox.length > 0) {
                $(".hot-box .new-dynamic").show().find("span a").text(_resbox.length);
            }
            if (_carry.length > 0) {
                $(".hot-box .new-dynamic").show().find("span a").text(_carry.length);
            }
        }


    })
}

BT.Es.dayDivision = function (t) {//时间分割
    var dayarray = [];
    var date = t.split(' ');
    var t1 = date[0].split('-');
    var t2 = date[1].split(':');
    dayarray = t1.concat(t2);
    return dayarray;
}

/*搜索出来的结果进行分页处理*/
BT.Es.Paging = function (r) {
    var _a = $('<div data-target="Paging" data-btn="true"  data-pagenumber="6" class="Paging"></div>').appendTo($(".child .mid-left")[0]).css({ "position": "absolute", "left": "0px", "right": "0px" });
    var btn = _a.data("btn") || false;
    var ID = r;
    var pagenumber = _a.data("pagenumber");
    var count = _a.data("count") || 4;
    $.Page(btn, ID, pagenumber, count, _a, false);

}






/*---------------------------------------------------------------------------------------------------优评-------------------------------------------------------------------------------------------------*/

/*创建优评*/
BT.Es.CreateGoodRecept = function (str) {
    if (str == undefined || str == "") {
        str = "7";
    } else {
        if (str == "一周") str = 7;
        else str = 3;
    }
    $(".goodbox").eq(1).find(".comtUl").html("");
    BT.Sl.Requeset("S_Select_GoodRecept", ([str]), function (r) {
        if (r.value == true) { return; }
        var _s = 4;
        if (r.value.length < 4) {
            _s = r.value.length;
        }
        for (var i = 0; i < _s; i++) {
            BT.Sl.Requeset("S_Select_ContentwGoid", ([r.value[i].receptGoupID]), function (data) {
                var url = (data.value[0].type == 2 ? "videohandling" : "resources");
                var clickhref = "/html/" + url + ".html?id=" + data.value[0].UID + "&type=" + data.value[0].type;

                var li = $("<li></li>").appendTo($(".goodbox").eq(1).find(".comtUl"));
                var user = $("<div class='comt-user'></div>").appendTo(li[0]);
                $("<div class='user fl'><img src=" + r.value[i].Head_img + " /></div>").appendTo(user[0]);
                $("<span class='fl'>" + r.value[i].NickName + "</span>").appendTo(user[0]);
                var zan = $("<div class='comt-zan fr'></div>").appendTo(user[0]);
                $("<img src='/images/icons/good-icon.png' />").appendTo(zan[0]);
                var titles = r.value[i].receptContent;
                if (r.value[i].receptContent.indexOf("@") > 0) {
                    titles = titles.replace("回复 @" + r.value[i].NickName + " ：", "<font class='keyword2'><a href='javascript:;'></a></font>");
                }

                $("<span>" + r.value[i].receptCount + "</span>").appendTo(zan[0]);
                $("<div class='clear'></div>").appendTo(user[0]);
                var comt = $("<p class='comt-art' Chref = " + clickhref + ">" + titles + "</p>").appendTo(li[0]);
                var bg = $("<div class='comt-bg'></div>").appendTo(li[0]);
                $("<img src='images/icons/san-top.png' class='comt-zan' style='display: none' />").appendTo(bg[0]);
                var txt = $("<p class='comt-txt' ></p>").appendTo(bg[0]);
                var comment = $("<span class='fr color1'  Chref = " + clickhref + ">回复(" + data.value[0].comment + ")</span>").appendTo(txt[0]);
                $("<span class='fl' style='text-indent:5px;width:220px'>" + data.value[0].tit + "</span>").appendTo(txt[0]);
                comt.click(function () {
                    window.location.href = $(this).attr("Chref");
                })
                comment.click(function () {
                    window.location.href = $(this).attr("Chref");
                })
            });
        }
    });
}