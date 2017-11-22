Namespace.register("BS.Cd"); //用户命名空间


BS.Cd.qs = function (url) {//首页的子页的起始函数
    var rtype = "";  //按什么排序
    var type = "";   //类型
    url = (url == "" ? url : url.substring(url.indexOf("=") + 1));
    switch (url) {
        case "life":
            type = 0;
            $(".hot-box .hot .hot-icon").text("");
            $(".hot-box .hot span").eq(0).text("生活娱乐");
            break;
        case "resources":
            type = 1;
            $(".hot-box .hot .hot-icon").text("").css("font-size", "79px");
            $(".hot-box .hot span").eq(0).text("资源分享");
            break;
        case "carry":
            type = 2;
            $(".hot-box .hot .hot-icon").text("");
            $(".hot-box .hot span").eq(0).text("视频搬运");
            break;
    }
    BT.Sl.Requeset("S_Select_ContentAll", (["", rtype, type, ""]), function (r) {
        var value = r.value;
        BS.Cd.childCreat(value, type);
        BT.Es.Updataab(value, 4, type, $("#newbox")); //创建
        BT.Es.RankingList(type, 7); //排行榜
        BT.Es.clickDay(url, type); //排行榜天数切换
        BS.Cd.dayLabel(type); //每日标签
        BT.Es.loaddynamic(url); //刷新动态
    })

}

/*---------------------------------------------------------------------------------------------子页列表创建--------------------------------------------------------------------------------------------*/

BS.Cd.childCreat = function (value, type) { //子页内容列表创建
    var user = BT.Us.info;
    BS.Cd.updataChild(value, $("#contentbox"), type);
    BS.Cd.changeChild();

}

BS.Cd.changeChild = function () {
    var ci = 0, c2 = 0;
    var type = "";
    $(".page_bat span").click(function () {
        $(this).addClass("active").siblings().removeClass("active");
        var _di = $(".page_bat span").eq(1).attr('class');
        var _dicarry = _di.split(" ");
        var _v = BT.Fn.GetQueryString("page");
        switch (_v) {
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
        if (_dicarry[1] == "active") {
            $(".page_bat_down").show();
            $(".Paging").eq(0).hide();
            if (ci == 1) {
                $("#contentbox1").show().siblings("ul").hide();
                $(".Paging").eq(1).show();
            }
            else {
                BT.Sl.Requeset("S_Select_ContentAll", (["", "hot", type, 7]), function (r) {
                    var _value = r.value;
                    BS.Cd.updataChild(_value, $("#contentbox1"), type);
                    BS.Cd.daycha(type);
                    $("#contentbox1").show().siblings("ul").hide();
                    ci = 1;

                })
            }
        }
        else {
            $(".page_bat_down").hide();
            $("#contentbox").show().siblings("ul").hide();
            $(".Paging").eq(0).show();
            $(".Paging").eq(1).hide();
        }

    })

}

/**
* @param value 传入的数据
* @param ele 父元素
*/
BS.Cd.updataChild = function (value, ele, t) {
    var $model = $("<li class='content'><div class='artBox'><div class='artimg'><a href='#' target='_blank'><img src='../images/product/pro1.png' /></a><div class='zan'><p class='zan-num'>581</p><i class='font'></i></div></div><div class='article'><a href='#' style='display: block;' target='_blank'><div class='art-txt' style='color: rgb(102, 102, 102); height: 19px;'><div class='art-type'>电视剧</div>- -</div></a><div class='art-txt2'>- -</div><div class='zan-user'><div class='user fl'><i class='font'></i></div><span class='fl'>- -</span></div><div class='zan-see'><div class='see fl'><i class='font'></i></div><span class='fl'>- -</span></div><div class='zan-message'><div class='message fl'><i class='font'>&#xe610;</i></div><span class='fl'>2</span></div></div></div><div class='clear'></div></li>").appendTo(ele);
    for (var i = 0; i < value.length; i++) {
        var _value = value[i];
        if (_value.type == t) {
            var $newElement = (i == 0 ? $model : $model.clone());
            //var $newElement = $model.clone();
            var url;
            url = (value[i].type == 2 ? "videohandling" : "resources");
            var clickhref = "../../html/" + url + ".html?id=" + _value.TID + "&type=" + _value.type;
            $newElement.find(".artimg a").attr("href", clickhref);
            $newElement.find(".article a").attr("href", clickhref);
            $newElement.find(".artimg img").attr("src", _value.imgurl);
            $newElement.find(".zan .zan-num").text(_value.zan);
            $newElement.find(".art-txt").html("<div class='art-type'>" + _value.viewtype + "</div>" + _value.tit);
            // $newElement.find(".art-type").html("<div class='art-type'>" + _value.viewtype + "</div>" + _value.tit);
        
            //_value.content
            $newElement.find(".art-txt2")

            //var str = $(".m-mid-content-text").find('a.who').eq(i).text();
            
            var _ss = $newElement.find(".art-txt2").html(_value.content);
            //$("#messages .m-mid-content-text").find('a.who').eq(i).text(str)

            _ss.find('img').replaceWith('<p class="fl">[图片]</p>');

            (function (arg) {
                BT.Sl.Requeset("S_Select_Useri", ([value[arg].PID]), function (r) {
                    $newElement.find(".zan-user span").text(r.value[0].NickName);
                })
            })(i);
            $newElement.find(".zan-see span").text(_value.browse);
            $newElement.find(".zan-message span").text(_value.comment);
            ele.append($newElement);
        }
    }

    BT.Es.Paging(ele);
}
BS.Cd.daycha = function (type) { //列表时间选择 :子页
    $(".Droptitle ul").eq(1).find("li").click(function () {
        var _text = $(this).text();
        $("#contentbox1").html("");
        $(".Paging").eq(1).remove();
        if (_text == "三天") {
            BS.Cd.scdayl(type, 3);
        }
        else {
            BS.Cd.scdayl(type, 7);
        }

    })

}

BS.Cd.scdayl = function (type, day) { //列表时间选择数据处理 :子页
    BT.Sl.Requeset("S_Select_ContentAll", (["", "hot", type, day]), function (r) {
        var _value = r.value;
        if (_value != true || _value.length > 0) {
            BS.Cd.updataChild(_value, $("#contentbox1"), type);
        }
        else {
            $("#contentbox1").text("没有内容哦");
        }

    })
}


/*---------------------------------------------------------------------------------------------每日标签--------------------------------------------------------------------------------------------*/
BS.Cd.dayLabel = function (type) {//每日标签生成
    BT.Sl.Requeset("S_Select_dayLabel", ([type]), function (r) {
        var _value = r.value;
        var nums = [];
        var arr = [];
        for (var i = 0; i < _value.length; i++) {
            var _s = _value[i].label.split(",");
            nums.push(_s);
        }
        for (var i = 0; i < nums.length; i++) {
            for (var j = 0; j < nums[i].length; j++) {
                arr.push(nums[i][j]);
            }
        }

        arr.sort(function () { return 0.5 - Math.random() }); //打乱数组
        BS.Cd.dLcreat(arr);



    })
}

BS.Cd.dLcreat = function (arr) { //创建标签
    var _row = 1;
    var elewid = null;
    var _box = $(".hot-tags-box");
    arr.splice(0, 0, "全部");
    var width = 0;
    var totalwid = $(".hot-tags-box").width(); //标签父级高度
    var history = []; var j = 0;
    for (var i = 0; (i < arr.length && j < 19); i++) {
        if (arr[i] != "") {
            var _liq = $("<li class='tag-item'><span>" + arr[i] + "</span></li>").appendTo(_box);
            width += _liq.outerWidth(true); //每个元素的占据的空间 宽度+外边距+内边距+边框
            if (width > totalwid) {
                var w = totalwid - (width - _liq.outerWidth(true));
                _box.children().eq(j - 1).width(_box.children().eq(j - 1).width() + w - 10);
                width = _liq.outerWidth(true);
                _row++;
            }
            if (i == 0) {
                _liq.addClass("on");
            }
            _liq.attr("row", _row);
            history.push(_liq); j++;
        }
    }

    $(".tag-item:not('.on')").click(function () {
        $(this).text();
        BT.Fn.labelSearch($(this).text());
    })
    $(".tag-item.on").click(function () {
        window.open("../../html/search.html");
    })
    //  var _lilast = $("<li class='tag-item' style='float:right;'><span>展示</span></li>").appendTo(_box);
}



