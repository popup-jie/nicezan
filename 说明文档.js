/*-------------------------------------------------------------------说明文档-------------------------------------------------------------------*/
/*

命名和文件名相同 这样子方便整合  
例如: BT.H.Fn       (BT:框架名字, Honme:的缩写, Fn:带参数 )

load.js // 文档起始，初始化文件

BE文件夹 -> 事件驱动类   -> 原先 BT.Ev.js
BE.load.js 基础事件加载
BE.User.js 用户事件加载

BF文件夹 -> 功能驱动类 -> 原先 BT.Fnx.js
BF.load.js 基础函数加载
BF.Fnx.js  进阶函数加载
BF.User.js 用户功能函数加载

BJ文件夹 -> 展示模块类 
BT.Us.Jump.js 加载跳转功能

BM文件夹 -> 后台管理类
BT.Sl.Mysql.js 后台驱动包

BM文件夹 -> 柠檬函数类
BT.Lm.Syetem.js 柠檬加载

BS文件夹 -> 加载首页数据
BT.Us.Establish.js 加载首页数据

BU文件夹 -> 用户操作类  -> 原先 BT.User.js
BU.load.js 加载初始化函数用户类
BU.User.js 加载用户对应功能类

Btest.js // Bt 前台框架
jquery.zclip.js // 复制粘贴
plupload.full.min.js // 滤镜上传文件


ajax.php // 文件上传文档
code.php // 验证验证码
img.php // 验证码图片
login.php // 登录，注册，修改密码
mysql.php // 执行后台


函数调用案例:

调用后台：
BT.Sl.Requeset("储存过程名字",(["参数一","参数二",'参数三']),function(r){ 
r.value  => 这个是数据库返回来的值 
如果所执行的存储过程是 增加，删除，修改  返回来的则是 true 或者  false
如果是查询 r.value 是返回来的数组  r.count 返回来的长度
})

上传按钮（包截图控件）：
上传按钮ID  追加图片ID   匿名函数  upload || sub 番号||用户头像ID
BT.Sl.Upload("按钮ID","替换图片的ID","回调函数","上传的文件路径","可传可不传")

删除缓存，cookies：
BT.Sl.Requeset("", function (r) { });

获取cookies：
BT.Sl.GetCookie(function () { 如果存在则执行这里 });

分页控件：
data-target => 必传 "Paging"
data-pagenumber => 必传 每页存在多少条数据

var _a = $('<div data-target="Paging" data-btn="true"  data-pagenumber="10" class="Paging"></div>').appendTo(父ID);
var btn = _a.data("btn") || false;

var ID = $("#send .comm_list"); //需要进行分页的内容  格式=>  获取到li  $('div ul');
<div>
<ul>
<li></li>
<li></li>
</ul>
</div>

var pagenumber = _a.data("pagenumber");
var count = _a.data("count") || 4;
$.Page(btn, ID, pagenumber, count, _a, true);


计算回复的时间。投稿的时间距离当前的时间
参数一： 发布的时间
参数二： 服务器当前的时间
BT.Fn.Compute(参数一，参数二);

返回值如果是1 则超过 2天
其他则是 多少时间前

*/