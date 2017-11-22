BT.Us.LoginTime = null;
//登录处理函数
BT.Us.LoginAfter = function (name, pass) {
    var ass = 1;
    if ($("#user_login_rem input")[0] != undefined && $("#user_login_rem input").is(':checked') == false) {
        ass = 0;
    }
    BT.Sl.Requeset("login", ([name, pass, ""]), function (data) {
        if(data.value == "emailFalse"){
            $("#user_login_name").css({'border':'1px solid red'}); $("#user_login_name input").focus(); return;
        }
        else if (data.value[0].a == undefined) { 
            alert("登录成功...");
            BT.Us.LoginAfterDel(data,ass);
        } else {
            $("#user_login_pass input").val("");
            $("#user_login_pass input").focus();
            alert("密码错误");
        }
    })
    
}
//登录成功后所需处理的事情
BT.Us.LoginAfterDel = function(data,ass){
        BT.Us.info = data.value[0];
    //BT.Sl.Requeset("GetCookie", ([]), function (r) {
        BT.Lm.Syetem("1");  // 柠檬系统
        // if (r.value == 1) { // 自动登录
        // } else {
            
        BT.Sl.Requeset("U_Update_LoginStatus", ([BT.Us.info.UserId]), function (r) {
            BT.Us.info.LoginStatus = r.value[0].LoginStatus;
        });
        if (ass == 1) {
            BT.Sl.Requeset("SetCookies", ([BT.Us.info.UserId]), function (r) { });
        }
        //}
        if ($(".pagebox")) $(".pagebox").hide();
        $(".loginbox ").addClass("hide");
        $(".personal").removeClass("hide");
        $(".personal").find(".per-name").text(BT.Us.info.NickName || "编辑新名字");
        $(".personal").find(".per-level-name").text(BT.Us.info.lemonCount || "0");
        $(".pagebox input").val("");
        BT.Us.Topinfo(BT.Us.info.UserId);
        BT.Us.SetAccountHeadImg();
        BT.Us.LoginTime = setInterval(function () {
            BT.Sl.Requeset("DLoginStatus", ([BT.Us.info.UserId, BT.Us.info.LoginStatus]), function (r) {
                if (r.value == true) { alert("您好！您的账号已从别的地方登录"); BT.Us.LoginOut(); }
            });
        }, 3000);
   // });
}
//登陆
BT.Us.Login = function(){
    var name = $("#user_login_name input").val();
    var pass = $("#user_login_pass input").val();
    $("#user_login_name,#user_login_pass").css({'border':'1px solid #dcdcdc'});
    if (name == "" || $("#user_login_name input").Regular("email", name) != true) {$("#user_login_name").css({'border':'1px solid red'}); $("#user_login_name input").focus(); return;}
    else if (name == "") { $("#user_login_name").css({'border':'1px solid red'}); $("#user_login_name input").focus();return;}
    else if (pass == "") {$("#user_login_pass").css({'border':'1px solid red'}); $("#user_login_pass input").focus();  return; }
    else{BT.Us.LoginAfter(name, pass);}
}
/*退出登录*/
BT.Us.LoginOut = function () {
    $(".loginbox").removeClass("hide");
    $(".personal").addClass("hide");
    delete BT.Us.info;
    window.location.href = "/index.html";
    clearInterval(BT.Us.LoginTime);
}
/*修改用户密码*/
BT.Us.ChangePass = function () {
    if ($(".changePASS input").eq(0).val() == "") { alert("新密码不能为空"); return }
    else if ($(".changePASS input").eq(0).val() == "") { alert("重复密码不能为空"); return }
    else if ($(".changePASS input").eq(0).val().length < 8) { alert("密码长度小于6位"); return }
    else if ($(".changePASS input").eq(0).val() != $(".changePASS input").eq(1).val()) { alert("密码不统一"); return }
    BT.Sl.Requeset("changepass", ([BT.Us.info.User_login, $(".changePASS input").eq(0).val(), BT.Us.info.UserId, 1]), function (r) {
        if (r.value != false) {
            alert("修改成功");
            $(this).parents(".changePASS").css({ "display": "none", "opacity": "0" })
        } else {
            alert("修改失败")
        }
    });
    return false;
}
/*修改用户头像*/
BT.Us.SetAccountHeadImg = function () {
    $(".main").find(".user-photo").attr("src", BT.Us.info.Head_img || "/images/photo/pho1.png");
    $(".main").find(".user-left").find("img").attr("src", BT.Us.info.Head_img || "/images/photo/pho1.png");
    $(".main").find(".per-photo").find("img").attr("src", BT.Us.info.Head_img || "/images/photo/pho1.png");
    $(".main").find(".user-left").find("p").text(BT.Us.info.NickName || "老司机一号");
}

/*修改我的信息*/
BT.Us.UpdateMyinfo = function () {
    var imaegs = $("#imaegss")[0].src;
    var nickname = $("#nickname input").val();
    var autograph = $("#autograph").find("textarea")[0].value;
    //  var sex = $("#sex").find("button").eq(0).val() == "男" ? "1" : "0";
    var sex = $("#sex").find("button").eq(0).text() == "男" ? "1" : "0";
    var pros = $("#usercenter_pros").find("button").eq(0).text() + "-" + $("#usercenter_area").find("button").eq(0).text();
    if ($("#bir").find("input.months").val().length < 2) {
        $("#bir").find("input.months").val("0" + $("#bir").find("input.months").val());
    }
    if ($("#bir").find("input.days").val().length < 2) {
        $("#bir").find("input.days").val("0" + $("#bir").find("input.days").val());
    }
    var borndata = $("#bir").find("input.years").val() + "-" + $("#bir").find("input.months").val() + "-" + $("#bir").find("input.days").val();
    BT.Sl.Requeset("U_Update_Userinfo", ([nickname, imaegs, pros, sex, borndata, autograph, BT.Us.info.UserId]), function (r) {
        if (r.value == true) {
            alert("修改成功");
        } else {
            alert("修改失败");
        }
    });
}
/*发布资源投稿信息*/
BT.Us.InsertSubinfoZY = function () {
    var src = $("#ptheader_img").attr("src");
    var title = $("#zy-title input").val();
    var label = $("#zy-label input").val();
    var viewtype = $("#zy-ify #typesa button").eq(0).text();
    var link = $("#zy-link input").val();
    var code = $("#zy-code input").val();
    var content = $("#zy-content .wysiwyg-editor").html();
    if (src == "../images/icons/tgsc.png") { alert("未上传封面图"); }
    else if (title == "") { alert("标题不能为空"); }
    else if (label == "") { alert("标签不能为空"); }
    else if ($("#zy-label input").Regular("fuhao", label) != true) {
        alert("标签只能用逗号隔开");
    }
    // else if (type == "请选择分区") { alert("分区未选择"); }
    else if (viewtype == "请选择种类") { alert("种类未选择"); }
    else if (link == "") { alert("链接地址不能为空"); }
    //if (code == "") { alert("提取码不能为空"); return; } 
    else if (content == "") { alert("正文内容不能为空"); }
    else {
        var _content;
        for (var i = 0; i < $("#zy-content .wysiwyg-editor").find("p").length; i++) {
            var _text = $("#zy-content .wysiwyg-editor").find("p").eq([i]).html();
            $("#zy-content .wysiwyg-editor").find("p").eq([i]).remove();
            $("<span></span>").html("").html(_text).appendTo($("#zy-content .wysiwyg-editor")(0));
        }
        _content = $("#zy-content .wysiwyg-editor").html();
        BT.Lm.Syetem("3");
        if ($("#zy-img").data("uid") != undefined) {
            BT.Sl.ViewSub(src, title, label, "资源", link, code, _content, BT.Us.corverpasID, viewtype, 1, $("#zy-img").data("uid"));
        } else {
            BT.Sl.ViewSub(src, title, label, "资源", link, code, _content, BT.Us.corverpasID, viewtype, 0, "");
        }
    }
}
/*发布生活投稿信息*/
BT.Us.InsertSubinfoLife = function () {
    var src = $(".life #li-img img").attr("src");
    var title = $(".life #li-title input").val();
    var label = $(".life #li-label input").val();
    var viewtype = $(".life #li-type button").eq(0).text();
    var content = $(".life #li-content textarea").val();
    if (src == "../images/icons/tgsc.png") { alert("未上传封面图"); return; }
    if (title == "") { alert("标题不能为空"); return; }
    if (label == "") { alert("标签不能为空"); return; }
    if ($(".carry #labela input").Regular("fuhao", label) != true) { alert("标签只能用逗号隔开"); return; }
    if (viewtype == "请选择种类") { alert("种类未选择"); return; }
    if (content == "") { alert("简介不能为空"); return; }
    BT.Sl.ViewSub(src, title, label, "生活", "", "", content, BT.Us.corverpasID, viewtype, 0, "");
    $(".carry #li-content textarea").val(" ");
    $(".carry #li-type button").eq(0).text("请选择分类");
}
/*发布视频投稿信息*/
BT.Us.InsertSubinfoViedo = function () {
    var src = $(".carry #fma img").attr("src");
    var title = $(".carry #tita input").val();
    var label = $(".carry #labela input").val();
    //var type = $(".carry #fla #flass button").eq(0).text();
    var viewtype = $(".carry #fla #flasa button").eq(0).text();
    var link = $(".carry .inputboxt input").val();
    var content = $(".carry #jj textarea").val();
    if (src == "../images/icons/tgsc.png") { alert("未上传封面图"); return; }
    if (title == "") { alert("标题不能为空"); return; }
    if (label == "") { alert("标签不能为空"); return; }
    if ($(".carry #labela input").Regular("fuhao", label) != true) {
        alert("标签只能用逗号隔开"); return;
    }
    //if (type == "请选择分区") { alert("分区未选择"); return; }
    if (viewtype == "请选择种类") { alert("种类未选择"); return; }
    if (link == "") { alert("链接地址不能为空"); return; }
    if (content == "") { alert("简介不能为空"); return; }
    BT.Sl.ViewSub(src, title, label, "视频", link, "", content, BT.Us.corverpasID, viewtype, 0, "");
    $(".carry #jj textarea").val(" ");
    $(".carry #fla #flass button").eq(0).text("请选择分类");
}
/*初始化用户中心->修改我的投稿信息*/
BT.Us.SetChangeSubManage = function (UID) {
    BT.Sl.Requeset("S_Select_UserIdContent", ([UID]), function (r) {
        if (r.value != false) {  //获取到相对应内容的值
            $("#subudjlid li").eq(1).addClass("on").siblings().removeClass("on");
            $("#subudjlid li").eq(1).after($("#subudjlid li"));
            $("#submission .subulbox #adm2").hide();
            $(".m-mid-button #adm").hide();
            $("#submission .subulbox #zp2").show();
            $(".m-mid-button #zp").show();
            $("#zp2 .res").show().siblings("dl").hide();
            $("#zy-img").attr("data-uid", r.value[0].UID)
            var src = $("#ptheader_img").attr("src", r.value[0].imgurl).css({ "margin-top": "0px" });
            $("#zy-img .contents #ptheader_div").show();
            BT.Sl.Upload("ptheader_div", "ptheader_img", function (e) { }, "sub", BT.Us.corverpasID);
            var title = $("#zy-title input").val(r.value[0].tit);
            $("#zy-title .contents span").text(r.value[0].tit.length + "/" + '30')
            var label = $("#zy-label input").val(r.value[0].label);
            type = r.value[0].type == 0 ? "生活" : (r.value[0].type == 1 ? "资源" : "视频");
            var type = $("#zy-ify #types button").eq(0).text(type)
            var viewtype = $("#zy-ify #typesa button").eq(0).text(r.value[0].viewtype);
            var link = $("#zy-link input").val(r.value[0].ziyuanurl);
            var code = $("#zy-code input").val(r.value[0].getCode || "");
            var content = $("#zy-content .wysiwyg-editor").html(r.value[0].content);
        }
    })
}
/*初始化用户反馈->反馈页面*/
BT.Us.Feedback = function () {
    $(".feed-btn").click(function () {
        var a = $("#feed-con")[0].value;
        var b = $("#feed-name")[0].value;
        var c = $("#feed-qq")[0].value;
        var d = $("#feed-email")[0].value;
        var UserId = "游客";
        if (BT.Us.info != undefined) {
            UserId = BT.Us.info.UserId;
        }
        BT.Sl.Requeset("I_Inesrt_Massage", ([a, b, c, d, UserId, "管理员"]), function (r) {
            if (r.value == true) {
                alert("反馈成功");
                $("#feed-con").val("")
                $("#feed-name").val("")
                $("#feed-qq").val("")
                $("#feed-email").val("")
            }
        });
    })
}
