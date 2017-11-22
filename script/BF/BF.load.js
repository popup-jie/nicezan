
/*-------------------------------------------------------------功能区域块-------------------------------------------------------------*/
/*生成上传图片按钮*/
BT.Fn.CreateSubButton = function (a, b, c) {
    var ptheader = $('<div class="ptheader" style="position: relative;"></div>').appendTo(a[0]);
    $('<img src="../images/icons/tgsc.png" id=' + b + ' style="position: relative; z-index: 1;">').appendTo(ptheader[0]);
    BT.Sl.Upload(b, b, function (e) { //资源分享投稿
        $("#" + b).css({ "width": "100%", "margin-top": "0px", "height": "100%" });
        $("#" + c).show();
        BT.Sl.Upload(c, b, function (e) { }, "sub", BT.Us.corverpasID);
    }, "sub", BT.Us.corverpasID);
    $('<div style="text-align: center; height: 24px; line-height: 24px; color: #fff; background: #666;cursor: pointer; display: none" id=' + c + '>上传封面</div>').appendTo(a[0]);

}
//不同页面切换 导航变色
BT.Fn.DPageColor = function () {
    if ($.getUrlParam('page') === "life") {
        $(".navUl li a").eq(1).addClass("active");
    } else if ($.getUrlParam('page') === "resources") {
        $(".navUl li a").eq(2).addClass("active");
    } else if ($.getUrlParam('page') === "carry") {
        $(".navUl li a").eq(3).addClass("active");
    }

    if ($.getUrlParam('page') != "") {

        BT.Fn.Slide($("#slider-main")); //此处加载幻灯片效果
        BT.Fn.Chunk();            //块切换
    }

    //$.getUrlParam('page') === "life" ? $(".navUl li a").eq(1).addClass("active") : ($.getUrlParam('page') === "resources" ? $(".navUl li a").eq(2).addClass("active") : $(".navUl li a").eq(3).addClass("active"));


}
/*获取地址栏参数*/
BT.Fn.GetQueryString = function (name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}
/*标签进行搜索匹配*/
BT.Fn.labelSearch = function (a) {
    //var a = $(".search #search_text").val(a);
    // window.location.href = "/html/search.html#" + a;
    window.open("/html/search.html#" + a);
}
// 今天 日期格式
BT.Fn.Now = function () {
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
    month = (month > 9 ? month : "0" + month);
    var onlyDate = year + '-' + month + '-' + day;
    return "" + onlyDate + "";
}
/*计算时间差*/
BT.Fn.Compute = function (time, nowtime) {
    time = BT.Fn.StringToTime(time);
    nowtime = BT.Fn.StringToTime(nowtime);
    var _time1 = nowtime - time;
    _time1 = Math.ceil(_time1 / 1000);
    if (_time1 > 60) {
        _time1 = Math.ceil(_time1 / 60);
        if (_time1 > 60) {
            _time1 = Math.ceil(_time1 / 60);
            if (_time1 > 24) {
                _time1 = Math.ceil(_time1 / 24);
                switch (_time1) {
                    case 1: return "昨天"; break;
                    case 2: return "前天"; break;
                    default: return 1; break;
                }
            } else { return _time1 == 24 ? "昨天" : _time1 + "小时前"; }
        }
        else { return _time1 == 60 ? "1小时前" : _time1 + "分钟前"; }
    } else { return _time1 == 60 ? "1分钟前" : _time1 + "秒前"; }
}
BT.Fn.StringToTime = function (string) {
    var f = string.split(' ', 2);
    var d = (f[0] ? f[0] : '').split('-', 3);
    var t = (f[1] ? f[1] : '').split(':', 3);
    return (new Date(parseInt(d[0], 10) || null, (parseInt(d[1], 10) || 1) - 1, parseInt(d[2], 10) || null, parseInt(t[0], 10) || null, parseInt(t[1], 10) || null, parseInt(t[2], 10) || null)).getTime();
}
/*检索正文内容*/
BT.Fn.SelectContent = function (UID) {
    var flg = false;
    for (var i = 0; i < UID.length; i++) {
        if ($(UID[i]).text() != "") {
            flg = $(UID[i]).text();
            break;
        }
    }
    if (flg == false) {
        return "Up主还没有对改视频进行简介";
    } else {
        return flg;
    }
}

BT.Fn.Selecttit = function () {//热门标签跳转
    var has = window.location.hash.split("#");
    $("#search_text").val(has[1]);
    var key = $("#search_text").val() || "";
    BT.Fn.DelResult(key);
}
