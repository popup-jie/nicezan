//初始化：
window.onload = function () {
    //cookie
    BT.Fn.LocationHref = (window.location.href).split("/"); //路由地址
    // BT.Sl.GetCookie(function () { });
    BT.Sl.Requeset("GetCookie", ([]), function (r) { if(r.value.length){ BT.Us.LoginAfterDel(r,1) }})

    if (window.location.href.indexOf("search.html") != -1) {
        BT.Ev.SearchMode(); //搜索页面
        BT.Fn.Selecttit();
    } else if (window.location.href.indexOf("feedback.html") != -1) {
        BT.Us.Feedback(); // 反馈页面
    } else if (window.location.href.indexOf("usercenter.html") != -1) {
        BT.Ev.UserCenterAccount();
    } else {
        BT.Ev.UserControl();
        if (window.location.href.indexOf("resources.html") != -1 || window.location.href.indexOf("videohandling.html") != -1 || window.location.href.indexOf("ChirdPage.html") != -1) {
            BT.Es.Updatahot();   // 加载首页数据
            BT.Fn.DPageColor();  //不同页面 导航变色
            BT.Ju.RelodingD();   //子页面加载模块
            BT.Ev.Comment();     //评论模块
        } else {
            BT.Es.Updatahot();  // 加载首页数据
            BT.Ev.HomeEffect(); // 加载首页的JS效果
        }
    }
    BT.Ev.TopInfo();
    BT.Ev.Doc();
}
