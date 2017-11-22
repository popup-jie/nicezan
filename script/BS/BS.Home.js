Namespace.register("BS.H"); //用户命名空间

/**
* @param value 文章内容
*/

BS.H.qs = function (url) { //首页的起始函数
    var rtype = "";  //按什么排序
    var type = "";   //类型
    url = (url == "" ? url : url.substring(url.indexOf("=") + 1));
    BT.Sl.Requeset("S_Select_ContentAll", (["", rtype, type, ""]), function (r) {
        var value = r.value;
        BS.H.NewBoxClick(value); // 首页 单独块的切换
        BT.Es.clickDay(url, 3);
        BS.H.TextInfo(value); //文字滚播数据
        if (url == "") {
            if (BT.Fn.LocationHref[4] != undefined) {
                if (BT.Fn.LocationHref[4].split(".html")[0] == "search") { return; }
            }
            BT.Sl.Requeset("S_Select_ContentAll", (["", "hot", type, ""]), function (r) {
                var _value = r.value;
                BS.H.PageChange(url, value, _value); //value 为正常根据时间取出  _value根据dybnamicDate字段排序取出 最新动态
            })
        }
        BT.Es.loaddynamic(url); //刷新动态
    })
}

/*-------------------------------------------------------------------------------------------------数据加载--------------------------------------------------------------------------------------------*/

BS.H.PageChange = function (url, value, _value) {//首页数据加载
    BT.Es.Updataab(value, 4, 3, $(".hot-box")); //今日头条获取
    BT.Es.Updataab(_value, 8, 0, $(".lift-box .hot-box-new").eq(0)); //生活娱乐最新动态
    BT.Es.Updataab(_value, 8, 1, $(".zy-box .hot-box-new").eq(0)); //资源分享最新动态
    BT.Es.Updataab(_value, 8, 2, $(".tv-box .hot-box-new").eq(0)); //视频搬运最新动态
    BT.Es.RankingList(3, 7)//排行榜
    BT.Es.CreateGoodRecept();

}

BS.H.PageChange1 = function (value) {//首页数据'刷新'加载
    BT.Es.Updataab(value, 8, 0, $(".lift-box .hot-box-new").eq(1)); //生活娱乐最新动态
    BT.Es.Updataab(value, 8, 1, $(".zy-box .hot-box-new").eq(1)); //资源分享最新动态
    BT.Es.Updataab(value, 8, 2, $(".tv-box .hot-box-new").eq(1)); //视频搬运最新动态
}



BS.H.NewBoxClick = function (value) {  //首页 单独块的切换  最新动态与最新投稿切换
    var type = null;
    var count = 0;
    $('.new-plate').click(function () {
        $(this).addClass("active").siblings().removeClass("active");
        $('.hot-box-new').attr("id", "");
        $(this).parent().parent().find('.hot-box-new').hide().eq($(this).index() - 2).show().attr("id", "newbox");
        var fatherCss = $(this).parent().parent().attr("class");
        var str = $(this).text().replace(/^\s+|\s+$/g, "");
        var newbox = $(this).parent().parent().find('.hot-box-new').eq(1).html().replace(/^\s+|\s+$/g, ""); //去除两头空格
        if (str == "最新投稿" && newbox == "") {
            BS.H.PageChange1(value);
        }

    });

}



/*---------------------------------------------------------------------------------------今日热门文字滚播数据--------------------------------------------------------------------------------------------*/

var timer_text = null;

BS.H.TextSrcoll = function (value) {//文字滚播计时器
    var _d = $("#textsrcoll");
    var _xd = _d.find("ul").clone();
    _d.append(_xd);
    timer_text = setInterval(function () {
        BS.H.TextTime();
    }, 2500);
    _d.find("li").mouseover(function () {
        clearInterval(timer_text);
    }).mouseout(function () {
        timer_text = setInterval(function () {
            BS.H.TextTime();
        }, 2500)
    })

}



var scrolltop = 0;
BS.H.TextTime = function () {//文字滚播计时器内容
    var _li = $("#textsrcoll").find("li").eq(0);
    var _ul = $("#textsrcoll").find("ul").eq(0);
    var _field = $("#textsrcoll").find('ul:first');
    var _lield = $("#textsrcoll").find('ul:last');
    var _m = parseInt($("#textsrcoll").find('ul:first').css("margin-top"));
    if (-(_m) - _ul.height() >= 0) {
        _field.insertAfter(_lield);
        _field.css('margin-top', 0);
        scrolltop = 0;
    }
    else {
        scrolltop += _li.height();
    }
    _field.animate({ "margin-top": -scrolltop });
}


BS.H.TextInfo = function (value) {//今日头条文字滚播数据加载
    var _d = $("#textsrcoll").find("li");
    value.sort(function () { return 0.5 - Math.random() });
    for (var i = 0; i < 5; i++) {
        var clickhref = "../../html/resources" + ".html?id=" + value[i].TID + "&type=" + value[i].type;
        _d.find("a").eq(i).attr("href", clickhref).text(value[i].tit);

    }
    BS.H.TextSrcoll();
}