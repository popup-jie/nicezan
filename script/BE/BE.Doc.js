BT.Ev.Searchnow = -1;
//Dom事件
BT.Ev.Doc = function () {
    document.onkeyup = function (e) {
        var e = e || event;
        if ($("#zy-title input").is(":focus") == true) {
            var _text = $("#zy-title input").val().length;
            $("#zy-title .contents span").text(_text + "/" + '30')
        }
        else if ($("#li-title input").is(":focus") == true) {
            var _text = $("#li-title input").val().length;
            $("#li-title .contents span").text(_text + "/" + '30')
        }
        else if (e.keyCode == "13") {
            if ($("#loginbox").is(":hidden") == false && $("#loginbox")[0] != undefined) {
               BT.Us.Login();
            }
            else if ($("#search_text").is(":focus") == true) {
                var _text = $(".search .getSearchtext").text();
                if (_text != "") {
                    $("#search_text").val(_text);
                    BT.Fn.DelResult(_text);
                }
                else {
                    var _text = $("#search_text").val();
                    BT.Fn.DelResult(_text);
                }
            }
        }
        else if (e.keyCode == "40" && $("#search_text").is(":focus") == true) {
            if ($(".search .search_get").find("div").length - 1 > BT.Ev.Searchnow || $(".search .search_get").find("div").length == 1) {
                BT.Ev.Searchnow++;
                $(".search .search_get").find("div").eq(BT.Ev.Searchnow).css({ "background": "#56acdf", "color": "#fff", "cursor": "pointer" }).addClass("getSearchtext").siblings().css({ "background": "#fff", "color": "#333" }).removeClass("getSearchtext");
                var _text = $("#search_text").val();
                $("#search_text").val("").focus().val(_text);
            }
        }
        else if (e.keyCode == "38" && $("#search_text").is(":focus") == true) {
            if (BT.Ev.Searchnow != 0) {
                BT.Ev.Searchnow--;
                $(".search .search_get").find("div").eq(BT.Ev.Searchnow).css({ "background": "#56acdf", "color": "#fff", "cursor": "pointer" }).addClass("getSearchtext").siblings().css({ "background": "#fff", "color": "#333" }).removeClass("getSearchtext");
                var _text = $("#search_text").val();
                $("#search_text").val("").focus().val(_text);
            }
        }
        else if ($(".search #search_text")[0]) {
            if ($(".search #search_text").val().length > 0 && $(".search #search_text").val() != " ") {
                $(".search .search_get").stop(true, true).animate({ "opacity": "1" }, 200);
                BT.Sl.Requeset("S_Select_labelAll", ([$("#search_text").val()]), function (data) {
                    BT.Fn.DealWidthresult(data);
                })
            }
        } else {
            $(".search .search_get").stop(true, true).animate({ "opacity": "0" }, 200);
        }
    }
    /*退出*/
    $(".setup-Ul li:last").bind("click", function () {
        BT.Sl.Requeset("D_Delect_LoginStatus", ([BT.Us.info.UserId, "out"]), function (r) { });
        BT.Sl.Requeset("BackOut", ([BT.Us.info.UserId]), function (r) { BT.Us.LoginOut(); });
        alert("退出成功");
    });
}