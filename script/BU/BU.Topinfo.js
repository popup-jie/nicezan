/*初始化顶部通知栏信息*/
BT.Us.Topinfo = function () {
    BT.Us.CollZanRecept = new Array();
    BT.Sl.Requeset("test", ([BT.Us.info.UserId]), function (data) {
        BT.Us.UserTopinfo = TopquickSort(data.value);
    });
    for (var i = 0; i < BT.Us.UserTopinfo.length; i++) {
        if (BT.Us.UserTopinfo[i].CollectLook == 0 || BT.Us.UserTopinfo[i].receptLook == 0 || BT.Us.UserTopinfo[i].IsOk == 2) {
            BT.Us.CollZanRecept.push(BT.Us.UserTopinfo[i]);
        }
    }
    for (var i = 0; i < BT.Us.CollZanRecept.length; i++) {
        if (BT.Us.CollZanRecept[i].IsOk == 2) {
            var li = $("<li class='list'></li>").appendTo($(".notice-con ul").eq(1)[0]);
            $("<img src='../images/photo/zy-pho.png' class='fl' width='40' height='40' />").appendTo(li[0]);
            var div = $("<div class='notice-box fl'></div>").appendTo(li[0])
            $("<span class='notice-user'>NICEZAN超赞</span>").appendTo(div[0]);
            $("<span class='notice-atxt'>您的投稿失败</span>").appendTo(div[0]);
            $("<p class='notice-txt'>" + BT.Us.UserTopinfo[i].tit + "</p>").appendTo(div[0]);
            $("<div class='clear'></div>").appendTo(li[0]);
            li.click(function () {
                $(".mid-right .myuser").eq(2).show().siblings("div").hide();
                $(".user-left ul li").eq(2).addClass("on").siblings().removeClass("on");
                BT.Us.SetAcccountInfo(2);
            })
            $(".noticebox").find(".notice-lostof").show();
            $("<div class='clear'></div>").appendTo(li[0]);
        }
        else {
            var url = (BT.Us.UserTopinfo[i].type == 2 ? "videohandling" : "resources");
            var clickhref = "../../html/" + url + ".html?id=" + BT.Us.UserTopinfo[i]._UID + "&type=" + BT.Us.UserTopinfo[i].type;
            if (BT.Us.UserTopinfo[i]._type != undefined && BT.Us.UserTopinfo[i].CollectLook == 0) {
                BT.Sl.Requeset("S_Select_Useri", ([BT.Us.UserTopinfo[i].User_id]), function (r) {
                    var ds = BT.Us.UserTopinfo[i]._type == 1 ? "收藏了你的" : (BT.Us.UserTopinfo[i]._type == 0 ? "赞你了的" : "赞了你的评论");
                    var li = $("<li class='list' GondId=" + BT.Us.UserTopinfo[i].GoneId + " Gtype=" + BT.Us.UserTopinfo[i]._type + "></li>").appendTo($(".notice-con ul").eq(0)[0]);
                    $("<img src=" + r.value[0].Head_img + " class='fl' width='40' height='40' />").appendTo(li[0]);
                    var div = $("<div class='notice-box fl'></div>").appendTo(li[0])
                    $("<span class='notice-user'>" + r.value[0].NickName + "</span>").appendTo(div[0]);
                    $("<span class='notice-atxt'>" + ds + "</span>").appendTo(div[0]);
                    $("<p class='notice-txt'>" + BT.Us.UserTopinfo[i].tit + "</p>").appendTo(div[0]);
                    li.click(function () {
                        BT.Sl.Requeset("U_Update_Read", ([$(this).attr("GondId"), $(this).attr("Gtype")]), function (data) {
                            window.location.href = clickhref;
                        });
                    })
                });
            } else if (BT.Us.UserTopinfo[i].receptLook == 0) {
                var li = $("<li class='list' KeyId = " + BT.Us.UserTopinfo[i].receptKey + "></li>").appendTo($(".notice-con ul").eq(0)[0]);
                $("<img src=" + BT.Us.UserTopinfo[i].Head_img + " class='fl' width='40' height='40' />").appendTo(li[0]);
                var div = $("<div class='notice-box fl'></div>").appendTo(li[0])
                $("<span class='notice-user'>" + BT.Us.UserTopinfo[i].NickName + "</span>").appendTo(div[0]);
                var title = BT.Us.UserTopinfo[i].receptContent;
                if (BT.Us.UserTopinfo[i].receptContent.indexOf("@") > 0) {
                    title = title.replace("@" + BT.Us.UserTopinfo[i].NickName, "<font class='keyword2'><a href='javascript:;'>我</a></font>");
                    $("<span class='notice-atxt'>在" + BT.Us.UserTopinfo[i].tit + "资源里" + "</span>").appendTo(div[0]);
                    $("<p class='notice-txt'>" + title + "</p>").appendTo(div[0]);
                }
                else {
                    $("<span class='notice-atxt'>评论了你的</span>").appendTo(div[0]); $("<p class='notice-txt'>" + BT.Us.UserTopinfo[i].tit + "</p>").appendTo(div[0]);
                }
                li.click(function () {
                    BT.Sl.Requeset("U_Update_Read", ([$(this).attr("KeyId"), ""]), function (data) {
                        window.location.href = clickhref;
                    });
                })
                $("<div class='clear'></div>").appendTo(li[0]);
            }
        }
    }

    if ($(".notice-con").find("ul").eq(0).find("li").length < 1) {
        $("<li class='list2'>暂无信息</li>").appendTo($(".notice-con ul").eq(0)[0]);
        $(".noticebox").find(".notice-lostof").hide();
    }
    else {
        if ($(".notice-con").find("ul").eq(0).find("li").length > 20) {
            $(".notice-con").find("ul").eq(0).find("li").IndexHide(10);
        }
        $(".notice-con").css({ "overflow-y": "auto" });
    }

    if ($(".notice-con").find("ul").eq(1).find("li").length < 1) {
        $("<li class='list2'>暂无信息</li>").appendTo($(".notice-con ul").eq(1)[0]);
        //$(".noticebox").find(".notice-lostof").hide();
    }
    else {
        if ($(".notice-con").find("ul").eq(1).find("li").length > 20) {
            $(".notice-con").find("ul").eq(1).find("li").IndexHide(10);
        }
        $(".notice-con").css({ "overflow-y": "auto" });
    }
    $(".notice-con").scrollUnique(); //子元素滚动完后不再滚动了
}


var TopquickSort = function (arr) { // 从大到小
    if (arr.length <= 1) { return arr; }
    var pivotIndex = Math.floor(arr.length / 2);
    var pivot = arr.splice(pivotIndex, 1)[0];
    var time = pivot.WirteTime;
    var left = [];
    var right = [];
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].WirteTime > time) {
            left.push(arr[i]);
        } else {
            right.push(arr[i]);
        }
    }
    return TopquickSort(left).concat([pivot], TopquickSort(right));
};

