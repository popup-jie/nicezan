Namespace.register("BT.XDB"); //用户命名空间


BT.XDB.LoadView = function () {
    BT.Sl.Requeset("S_Select_DB_Content", (["GON", $.getUrlParam('G')]), function (r) {
        var r = r.value[0];
        console.log(r);
        $(".pagetitle")[0].innerHTML = r.tit;
        $(".pagedesc")[0].innerHTML = "投稿人:" + r.NickName + "<span style='padding:0 15px'></span>" +
                                      "类型:" + (r.type == 0 ? "生活" : (r.type == 1 ? "资源" : "搬运")) + "-" + r.viewtype + "<span style='padding:0 15px'></span>" +
                                      "标签:" + r.label + "<span style='padding:0 15px'></span>" +
                                      "发表日期:" + r.bornData;
        $(".two_third_content")[0].innerHTML = r.content;

        

    });

}




BT.XDB.LoadView();

