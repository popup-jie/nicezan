Namespace.register("BT.DB"); //用户命名空间

BT.DB.DrawView = function (Retable, i, r) {       //投稿管理的数据
    var _Box, _oper, r = r.value;
    _Box = $("<tr id=" + r[i].GoneId + "></tr>").appendTo(Retable);
    $("<td class='aligncenter'><input type='checkbox' name='' /></td>").appendTo(_Box);
    $("<td><a href='managedetail.html?G=" + r[i].GoneId + "' target='_blank'>" + r[i].tit + "</a></td>").appendTo(_Box);
    $("<td>" + r[i].content.replace(/<\s?div[^>]*>/g, "").replace(/<\s?img[^>]*>/gi, '[图片]') + "</td>").appendTo(_Box);
    $("<td>" + r[i].NickName + "</td>").appendTo(_Box);
    $("<td>" + r[i].bornData + "</td>").appendTo(_Box);


    _oper = $("<td class='star'></td>").appendTo(_Box);
    if (r[i].IsOk == "1") {
        $("<div class='fl'>通过</div>").appendTo(_oper).click(function () { /*BT.DB.OperView(this, "yes");*/ });
    } else if (r[i].IsOk == "2") {
        $("<div class='fl'>不通过</div>").appendTo(_oper).click(function () { /* BT.DB.OperView(this,"no"); */ });
    }
    else if (r[i].IsOk == "0") {
        $("<div class='fl'>通过</div>").appendTo(_oper).click(function (e) {
            var _that = this;
            var eY = e.pageY;
            var eX = e.pageX;
            $("#shtime").remove();
            $("#shbtn").remove();
            $("<div style='top:" + eY + "px; left:" + (eX - 80) + "px; ' id='shtime' contenteditable='true'></div>").appendTo($("body")[0]);
            $("<div style='top:" + (eY + 23) + "px; left:" + (eX - 80) + "px; ' id='shbtn'>确定</div>").appendTo($("body")[0]).click(function () {
                var vtime = $("#shtime")[0].innerHTML;
                $("#shtime").remove();
                $("#shbtn").remove();

                BT.DB.OperView(_that, "yes", "", vtime);

            });

            //            if (confirm("确认通过吗？")) {
            //                BT.DB.OperView(this, "yes");
            //            }
        });
        $("<div >不通过</div>").appendTo(_oper).click(function (e) {
            $("<div class='passbox' id=" + r[i].GoneId + " style='top:" + (($(window).height() - 300)) / 2 + "px" + "'><textarea class='pbox' style='overflow-y:visible'></textarea><div style='position: relative;'>" +
            "<button id='snedyes'>发送</button><button id='sendno'>不发送</button></div></div>").appendTo($("body")[0]);

            $(document).on('click', '#sendno', function () {
                $(document).unbind('click');
                $(this).parent().parent().remove();
            });
            $(document).on('click', '#snedyes', function () {
                var txt = $(".pbox")[0].value;
                if (txt == "") {
                    alert("原因不能为空");

                } else {
                    $(document).unbind('click');
                    BT.DB.OperView(this, "no", txt);
                }


            });

        });
    }

}

BT.DB.LoadView = function () {
    BT.Sl.Requeset("S_Select_DB_Content", (["TON", ""]), function (r) {
        var _num = [0, 0, 0];
        for (var i = 0; i < r.value.length; i++) {
            if (r.value[i].IsOk == "0") {  // 未审核
                _num[0] = _num[0] + 1;
                BT.DB.DrawView($("#compose .stdtable tbody"), i, r);
            }
            if (r.value[i].IsOk == "1") {   //审核通过
                _num[1] = _num[1] + 1;
                BT.DB.DrawView($("#Aexamine .stdtable tbody"), i, r);
            }
            if (r.value[i].IsOk == "2") {  //审核不通过
                _num[2] = _num[2] + 1;
                BT.DB.DrawView($("#Noexamine .stdtable tbody"), i, r);
            }
        }
        for (var j = 0; j < 3; j++) {
            $(".hornav li span")[j].innerHTML = _num[j];
        }
    });

}

BT.DB.OperView = function (that, state, reason, videoTime) {
    reason == undefined ? reason = "" : reason = reason;
    videoTime == undefined ? videoTime = "" : videoTime = videoTime;
    var _that = $(that).parent().parent();
    console.log(state + "--" + $(_that).attr("id") + "--" + reason)
    BT.Sl.Requeset("U_Update_DB_Content", ([state, $(_that).attr("id"), reason, videoTime]), function (r) {
        if (reason != "") {
            _that.remove();
            var g = $(_that).attr("id");
            $("#" + g).hide(500).remove(500);
        } else {
            _that.hide(500).remove(500);
        }

    });
}

BT.DB.LoadView();

