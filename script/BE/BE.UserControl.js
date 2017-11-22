//处理用户模块，登录注册类
BT.Ev.UserControl = function () {
     // 我发布 按钮
    $(".mid-right .publish").click(function () {
        $(this).css({ "marginTop": "26px", "box-shadow": "none" });
        setTimeout(function () {
            $(".mid-right .publish").css({ "marginTop": "20px", "box-shadow": "0px 6px 0px #ebcb06" });
        }, 200);

    });
    $(".page-log").css({ "top": ($(window).height() - $(".page-log").height()) / 2 });
    /*登录按钮*/
    $(".logon").click(function () {
        $(".pagebox").show();
        $(".page-log").hide();
        $("#loginbox").show();
    })
    /*注册按钮*/
    $("#loginbox #logonbtn,.login").click(function () {
        $(".pagebox").show();
        $(".page-log").hide();
        $("#logon-Ebox").show();
    });
    /*返回按钮*/
    $(".go-back").click(function () {
        $(".page-log").show();
        $("#logon-Ibox").hide();
    });
    /*关闭按钮*/
    $(".page-close-btn").click(function () {
        $(".pagebox").hide();
    })

    /*注册*/
    $("#logon-Ibox #finish-btn").bind("click", function () {
        var email = $("#logon-Ebox #user_logon_email input").val();
        //        var nickname = $("#user_Ibox_nickname input").val();
        var password = $("#user_Ibox_password input").val();
        var repassword = $("#user_Ibox_repassword input").val();
        //        if (nickname == "") {
        //            alert("昵称不能为空"); return;
        //        }
        if (password == "" || repassword == "") {
            alert("密码不能为空"); return;
        }
        else if (password.length < 6 || password.length > 12) {
            alert("密码只能为(6-12位)"); return;
        }
        else if (password != repassword) {
            alert("两次密码输入不统一"); return;
        }else{
            BT.Sl.Requeset("reg", ([email, password]), function (r) {
                alert("账号注册成功");
                if ($(".pagebox")) $(".pagebox").hide();
                $(".loginbox ").addClass("hide");
                $(".personal").removeClass("hide");
            });
            //BT.Us.LoginAfter(email, password);
        }
    });
    /*登录*/
    $("#user_login_btn").bind("click", function () {
        BT.Us.Login();
    });
    /*验证信息*/
    $("#emil-btn").bind("click", function () {
        var email = $("#logon-Ebox #user_logon_email input").val();
        if (email == "" || $("#logon-Ebox #user_logon_email input").Regular("email", email) != true) {
            alert("邮箱格式不正确"); return;
        }
        var code_gg = $("#code").val();
        BT.Sl.Requeset("ZipCode", ([code_gg]), function (r) {
            if (r.value == 1) {
                BT.Sl.Requeset("reg", ([email, ""]), function (r) {
                    if (r.value == true) {
                        $("#code").val("");
                        $("#getcode_num").attr("src", '../script/php/img.php?' + Math.random());
                        $("#code").val("").focus();
                        $(".page-log").hide();
                        $("#logon-Ibox").show();
                    } else {
                        alert("账号已注册!");
                        $("#code").val("").focus();
                        $("#getcode_num").attr("src", '../script/php/img.php?' + Math.random()); return;
                    }
                });
            } else {
                alert("验证码错误！");
                $("#getcode_num").attr("src", '../script/php/img.php?' + Math.random());
                $("#code").val("").focus();
            }
        })
    });
    /*刷新验证码*/
    $("#getcode_num").click(function () {
        $(this).attr("src", '../script/php/img.php?' + Math.random());
    });
}
//顶部共同效果
BT.Ev.TopInfo = function () {
    //首页点赞
    //头部 通知块切换 
    $(".notice_top").find("div").click(function () {
        if ($(this).hasClass("active")) { return }
        $(".notice_top").find(".active").animate({ "left": $(this)[0].offsetLeft });
        $(this).addClass("on").siblings().removeClass("on");
        $(".notice-con").find("ul").eq($(this).index()).show().siblings().hide();
        var a = $(this).text().replace(/[\r\n]/g, "");
        a = a.replace(/[ ]/g, "");
        if (a == "通知") {
            //去掉回车换行
            if ($(".notice-con").find("ul").eq(1).find("li").hasClass("list2")) {
                $(".notice-con").css({ "overflow-y": "hidden" });
                $(".noticebox").find(".notice-lostof").hide();
                BT.Us.SetAcccountInfo(2);
                return;
            }
        }
        if (a == "动态") {
            if ($(".notice-con").find("ul").eq(0).find("li").hasClass("list2")) {
                $(".notice-con").css({ "overflow-y": "hidden" });
                $(".noticebox").find(".notice-lostof").hide();
                BT.Us.SetAcccountInfo(2);
                return;
            }
        }
        $(".notice-con").css({ "overflow-y": "scroll" });
        $(".noticebox").find(".notice-lostof").show();
    })
    $(".noticebox").find(".notice-lostof").click(function () {
        window.location.href = "/html/usercenter.html?messages";
    })
    // 头部的通知快 移入出现隐藏
    var timer = null;
    var timer2 = null;
    $(".notice").hover(function () {
        clearTimeout(timer);
        $(".noticebox").show();
    }, function () {
        timer = setTimeout(function () {
            $(".noticebox").hide();
        }, 200);
    })
    $(".per-inf").hover(function () {
        clearTimeout(timer2);
        $(".perbox").show();
    }, function () {
        timer2 = setTimeout(function () {
            $(".perbox").hide();
        }, 200);
    })
    // 搜索效果
    $(".searchbox").bind("click", function () {
        window.location.href = "/html/search.html";
    });
    $(".scrollTop").css({ "right": ($(window).width() - 1000) / 2 - 100 });
    $("#scrollTop").click(function () {
        $("body,html").animate({ 'scrollTop': 0 }, 300);
    });
}