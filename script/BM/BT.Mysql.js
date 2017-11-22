Namespace.register("BT.Sl"); //后台命名空间
//后台
BT.Sl.Requeset = function (sqlName, json, fn) {
    $.ajax({
        url: '../script/php/function.php',
        type: "post",
        data: { sql: sqlName, json: json },
        async: false,
        success: function (r) {
            //            if (src == "../script/php/code.php" || src == "../script/php/cookies.php") { }
            //            else {
            //                r = eval("(" + r + ")");
            //            }
            r = eval("(" + r + ")");
            fn.apply(fn, [r]);
        }
    })
}