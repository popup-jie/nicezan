
/*后台*/

/*上传*/
//上传按钮ID  追加图片ID 匿名函数 文件存放地址 新建文件名 番号||用户头像ID
BT.Sl.Upload = function (id, imgid, fn, src, lastname) {
    var a = new plupload.Uploader({//创建实例的构造方法
        runtimes: 'html5,flash,silverlight,html4', //上传插件初始化选用那种方式的优先级顺序
        browse_button: id, // 上传按钮
        url: "/script/php/ajax.php?path=" + src + "&imgName=" + BT.Us.info.UserId + "_" + lastname, //远程上传地址
        flash_swf_url: '/script/php/Moxie.swf', //flash文件地址
        silverlight_xap_url: '/script/php/Moxie.xap', //silverlight文件地址
        filters: {
            max_file_size: '2mb', //最大上传文件大小（格式100b, 10kb, 10mb, 1gb）
            mime_types: [//允许文件上传类型
                        {title: "files", extensions: "jpg,png,gif,jpeg" }
                    ]
        },
        multi_selection: false, //true:ctrl多文件上传, false 单文件上传
        init: {
            FilesAdded: function (up, files) { //文件上传前
                a.start();
            },
            //UploadProgress: function (up, file) { //上传中，显示进度条
            //var percent = file.percent;
            //$("#" + file.id).find('.bar').css({ "width": percent + "%" });
            //$("#" + file.id).find(".percent").text(percent + "%");
            // },
            FileUploaded: function (up, file, info) { //文件上传成功的时候触发
                var data = eval("(" + info.response + ")");
                if (data.lastname == "gif") {
                    $("#" + imgid).attr("src", "");
                    $("#" + imgid).attr("src", data.pic);
                    if (fn != "" && fn != undefined) fn.apply(fn, ([""]));
                }
                else {
                    if (data.status == 1) { //上传的封面超过预计的图片大小
                        alert("上传的图片大小只能大于或等于 160 * 100"); return;
                    }
                    else if (data.status == 2) { //上传的头像超过预计的图片大小
                        alert("上传的图片大小只能小于或等于 90 * 90"); return;
                    }
                    else if (data.error == 1) { //图片损坏
                        alert("上传的图片已经损坏"); return;
                    }
                    var str = src.split("/");
                    $("<div id='removebg'></div>").appendTo($("body")[0]);
                    $("html").css({ "overflow": "hidden" });
                    var bg = $("<div id='bgs'></div>").appendTo($("body")[0]);
                    $("<img src=" + data.pic + " id='img_Id'/>").appendTo(bg[0]);
                    $("<div id='preview_box'><img src=" + data.pic + " id='crop_preview'/></div>").appendTo(bg[0]);
                    $("<button style='margin-top:10px;margin-left:20px' id='sumbit'>确认截图</button>").appendTo(bg[0]);
                    var close = $("<button style='margin-top:10px;margin-left:20px' id='close'>取消</button>").appendTo(bg[0]);
                    close.click(function () {
                        BT.Sl.Requeset("delectcover", ([]), function (r) { })

                        $("#bgs").remove();
                        $("#removebg").remove();
                        $("html").css({ "overflow-y": "auto" })
                    })
                    $("<input type='hidden' id='pic_name' name='pic_name' value=" + data.pic + " />").appendTo(bg[0]);
                    $("<input type='hidden' id='x' name='x' />").appendTo(bg[0]);
                    $("<input type='hidden' id='y' name='y' />").appendTo(bg[0]);
                    $("<input type='hidden' id='w' name='w' />").appendTo(bg[0]);
                    $("<input type='hidden' id='h' name='h' />").appendTo(bg[0]);
                    var api, xsize = data.src == "upload" ? 45 : 160, ysize = data.src == "upload" ? 45 : 100;
                    $("#preview_box").css({ "width": xsize, "height": ysize });

                    //如果图片大于 800 * 500的情况下
                    //data.imgwidth = 800;
                    //data.imgheight = 800 / (xsize / ysize) ;
                    if (data.imgwidth > 800 || data.imgheight > 500) {
                        data.imgwidth = 800;
                        data.imgheight = 500;
                    }
                    $("#img_Id").Jcrop({
                        allowSelect: false,
                        addClass: "fl",
                        onChange: BT.Sl.ShowPreview,
                        onSelect: BT.Sl.ShowPreview,
                        boxWidth: data.imgwidth,
                        boxHeight: data.imgheight,
                        aspectRatio: xsize / ysize,
                        setSelect: [0, 0, data.imgwidth, data.imgwidth / (xsize / ysize)]
                    });
                    bg.css({ "height": data.imgheight + 52, "width": data.imgwidth + xsize + 40 });
                    bg.css({ "left": ($("html,body").width() - bg.width()) / 2, "top": ($("html,body").height() - bg.height()) / 2 });
                    $("#bgs #sumbit").bind("click", function () {
                        if (parseInt($('#w').val())) {
                            var pic_name = $("#pic_name").val();
                            var x = $("#x").val();
                            var y = $("#y").val();
                            var w = $("#w").val();
                            var h = $("#h").val();
                            BT.Sl.Requeset("CreateImg", ([pic_name, x, y, w, h, BT.Us.info.UserId + "_" + lastname, data.src, data.type]), function (data) {
                                $("#bgs").remove();
                                if (imgid != "") {
                                    $("#" + imgid).attr("src", ""); $("#" + imgid).attr("src", data.file);
                                    $("#" + imgid).addClass(data.picname);
                                    $("#removebg").remove();
                                    $("html").css({ "overflow-y": "auto" })
                                }
                                if (fn != "" && fn != undefined) fn.apply(fn, ([""]));
                            });
                            //                            $.post("../../script/php/crop_submit.php", { pic_name: pic_name, x: x, y: y, w: w, h: h, imgName: BT.Us.info.UserId + "_" + lastname, path: data.src, type: data.type }, function (data) {
                            //                                BT.Sl.Requeset("cover", ([]), function (r) { });
                            //                                var data = eval("(" + data + ")");
                            //                                if (data.status == 1) {
                            //                                    $("#bgs").remove();
                            //                                    if (imgid != "") {
                            //                                        $("#" + imgid).attr("src", ""); $("#" + imgid).attr("src", data.file);
                            //                                        $("#" + imgid).addClass(data.picname);
                            //                                        $("#removebg").remove();
                            //                                        $("html").css({ "overflow-y": "auto" })
                            //                                    }
                            //                                    if (fn != "" && fn != undefined) fn.apply(fn, ([""]));
                            //                                }
                            //                            });
                        }
                    });
                }
            },
            Error: function (up, err) { //上传出错的时候触发
                alert(err.message);
            }
        }
    });
    return a.init();
}
/*拖动框框移动*/
BT.Sl.ShowPreview = function (coords) {
    if (parseInt(coords.w) > 0) {
        //计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到
        var rx = $("#preview_box").width() / coords.w;
        var ry = $("#preview_box").height() / coords.h;
        //通过比例值控制图片的样式与显示
        $("#crop_preview").css({
            width: Math.round(rx * $("#img_Id").width()) + "px", //预览图片宽度为计算比例值与原图片宽度的乘积
            height: Math.round(rx * $("#img_Id").height()) + "px", //预览图片高度为计算比例值与原图片高度的乘积
            marginLeft: "-" + Math.round(rx * coords.x) + "px",
            marginTop: "-" + Math.round(ry * coords.y) + "px"
        });
        $('#x').val(coords.x);
        $('#y').val(coords.y);
        $('#w').val(coords.w);
        $('#h').val(coords.h);
    }
}
/*视频投稿*/
BT.Sl.ViewSub = function (src, title, label, type, link, code, content, pasID, viewtype, kcode, UID) {
    //kcode  0是投稿 1是修改 2是删除
    type = type == "生活" ? 0 : (type == "资源" ? 1 : 2);
    BT.Sl.Requeset("I_Insert_Content", ([BT.Us.info.UserId, src, title, label, type, link, code, content, 0, viewtype, kcode, UID]), function (r) {
        if (r.value == true) {
            alert("投稿正在审核中。。需要2-3个工作日");
            $(".subulbox input").val("");
            $(".subulbox .Droptitle button").eq(0).text("请选择分类");
            $(".ptheader").parent().html(" ");

            BT.Fn.CreateSubButton($("#zy-img").find(".contents"), "ptheader_img", "ptheader_div");
            BT.Fn.CreateSubButton($("#fma").find(".contents"), "view-img", "ptheader_div2");
            BT.Fn.CreateSubButton($("#li-img").find(".contents"), "li-img_img", "li-img_div");

            $(".wysiwyg-editor").html("");

            //BT.Sl.Requeset("deleteimgsion", ([]), function (r) { }, "../script/php/code.php")

            $("#submission .m-mid-button").find("ul").eq(0).show().siblings("ul").hide();
            $("#submission .carry").find(".one").show().siblings("div").hide();
            $("#submission #subudjlid").find("li").eq(1).addClass("on").siblings("li").removeClass("on");
            $("#submission #subudjlid").find("li").eq(0).before($("#submission #subudjlid").find("li").eq(1));
            $("#zp2").hide(); $("#adm2").show();
            $(".Droptitle").find("button").eq(0).css({ "color": "#999" });
            $("#adm .DropmenuS").find("button:even").eq(0).text("状态筛选").css({ "color": "#999" });
            $("#adm .DropmenuS").find("button:even").eq(1).text("分区筛选").css({ "color": "#999" }); ;
            $("#adm .DropmenuS").find("button:even").eq(2).text("投稿排序").css({ "color": "#999" }); ;
            BT.Sl.Requeset("S_Select_Content", (["", BT.Us.info.UserId, "", ""]), function (r) {
                BT.Us.SubManageinfo = r.value; //投稿全局变量
            });
            BT.Us.SetSubManage("", "", "");
        } else {
            alert("投稿失败");
        }
    });
}
//获取cookie
//BT.Sl.GetCookie = function (fn) {
//    BT.Sl.Requeset("getCookies", ([]), function (r) {
//        if (r == 1) {
//            fn.apply(fn, ([]));
//        }
//    }, "../script/php/cookies.php")
//}
