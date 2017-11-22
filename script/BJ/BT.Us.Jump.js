Namespace.register("BT.Ju"); //页面跳转命名空间

// $(function(){
//     BT.Ju.ContentStr = {
//         UID : $("#dateIdStr").attr("content").split(",")[0], //文章ID
//         TYPE : $("#dateIdStr").attr("content").split(",")[1] //文章类型
//     }
//     BT.Ju.RelodingD();
// })


BT.Ju.RelodingD = function () {
    var browseurl = window.location.href;
    var indexSearch = window.location.search;
    var indexarray = window.location.search.split("&");
    var Hrefid = BT.Fn.GetQueryString("id");
    var indextype = BT.Fn.GetQueryString("type");
    if (Hrefid != null && indextype != null) {
        //var Hrefid = indexarray[0].substring(indexarray[0].indexOf("=") + 1); // id
        //var indextype = indexarray[1].substring(indexarray[1].indexOf("=") + 1); //type
        BT.Ju.Reloding(browseurl,Hrefid, Bindextype); //browseurl 浏览网址   Hrefid 文章ID type 文章类型
    }
}

/**
* @param browseurl 浏览人ID(用户)
* @param Hrefid 文章ID
* @param indextype 文章类型
*/

//详细页数据加载
BT.Ju.Reloding = function (browseurl, Hrefid, indextype) {
    
    BT.Sl.Requeset("S_Select_UserIdContent", ([Hrefid]), function (r) {//加载对应的内容页详细数据
        ReContentInfo = r.value;
        var typezi = "";
        var _h = "";
        $("h1").text(ReContentInfo[0].tit);
        $(".title-line span").eq(0).text(ReContentInfo[0].browse);
        $(".title-line span").eq(1).text(ReContentInfo[0].comment);
        $(".title-line span").eq(2).text(ReContentInfo[0].coll);
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
        BT.Sl.Requeset("S_Select_Useri", ([ReContentInfo[0].PID]), function (r) {//加载发表人信息
            var people = r.value;
            $(".usname a").text(people[0].NickName);
            $(".sign").text(people[0].rammy);
            $(".u-face a").attr('href', "usercenter.html?Userid=" + people[0].UID);
            $(".u-face img").attr('src', people[0].Head_img);
            $(".name").attr('href', "usercenter.html?Userid=" + people[0].UID);
            // $(".u-face a").
        });

        BT.Fn.Collection();
        BT.Fn.ClickZan();
        BT.Ju.aboutRec(); //相关推荐加载
        BT.Ju.ShareFun(ReContentInfo[0].tit, window.location.href, ReContentInfo[0].content, "");

        if (BT.Us.info != "" && BT.Us.info != undefined) { BT.Ju.InserHis(BT.Us.info.UserId, browseurl, ReContentInfo[0].type, ReContentInfo[0].UID); }


        //获取当前帖子最赞评论
        BT.Sl.Requeset("S_Select_MoreZan", ([Hrefid]), function (r) {
            if (r.value != true) {
                var gz = $("<div class='gz-content'></div>").appendTo($(".mid-right .goodbox").eq(0)[0]);
                var name = $("<div class='gz-name'></div>").appendTo(gz[0]);
                $("<a href='#'>" + r.value[0].NickName + "</a>").appendTo(name[0]);

                $("<img src='../images/icons/level-3.png' data-bd-imgshare-binded='1' />").appendTo(name[0]);
                $("<span><i class='icon iconfont'></i>--</span>").appendTo(name[0]);
                $("<p>" + r.value[0].receptContent + "</p>").appendTo(gz[0]);
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
BT.Ju.InserHis = function (UID, HREF, TYPE, GoneId, CUID) {//像数据库插入一条历史记录数据
    if (BT.Us.info != "" && BT.Us.info != undefined) {
        BT.Sl.Requeset("I_Insert_history", ([UID, HREF, TYPE, GoneId]), function (r) {//改到在跳转到的页面里面加载这个函数})
        })
        BT.Sl.Requeset("U_Update_ContentBrowse", ([0, GoneId]), function (r) {//改到在跳转到的页面里面加载这个函数})
       })
    }
  
}  


BT.Ju.aboutRec = function () { //相关推荐
    BT.Sl.Requeset("S_Select_AboutRec", ([]), function (r) {
        _value = r.value;
        BT.Ju.aboutRecSC(_value);
    })

}

BT.Ju.aboutRecSC = function (value) { //动态生成
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
        BT.Sl.Requeset("S_Select_Useri", ([_value.PID]), function (r) {//加载发表人信息
            var people = r.value;
            $newElement.find(".gz-info .i-upname").text("up主：" + people[0].NickName);
        })
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


    window._bd_share_config = {
        common: {
            bdText: "nicezan的《" + SHET + "》这篇文章很不错",  //内容
            bdDesc: SHECON,   // 摘要
            bdUrl: SHESRC,
            bdPic: ""  //此处要更换图片
        },
        share: [{
            "bdSize": 16
        }],
        selectShare: [{
            "bdselectMiniList": ['qzone', 'tqq', 'kaixin001', 'bdxc', 'tqf']
        }]
    }
    with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
    $(".toolbar .block .tb ul li a").click(function () {
        BT.Sl.Requeset("U_Update_ContentBrowse", (["1", ReContentInfo[0].UID]), function (r) {
            $(".t-right-bottom").eq(0).text(parseInt($(".t-right-bottom").eq(0).text()) + 1);
        })

    })

}
