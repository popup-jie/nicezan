<!DOCTYPE>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <?php
        session_start();
        $url =  $_SERVER['REQUEST_URI'];
        $strarr = explode("/",$url);
        require_once('../script/php/Mysql.class.php');
        $db = new DPO();

        $_SESSION["strarr"] = $strarr[2];
        //这里要判断进来的路由是否是 resource
        $arr = $db->StartSql("S_Select_ContentwGoid",array($strarr[2]));
        $arr = json_decode($arr,true);
        if ($arr['value'] == 1 ) {
            Header("Location: ../403.html");  
        }else{
            echo "<title>".$arr['value'][0]['tit']."</title>";
            echo "<meta id='dateIdStr' content=".$url." >"; 
            echo "<meta author=".$arr['value'][0]['NickName']." id='author' >"; #作者名字
            //更新文章浏览量
            $db->StartSql("U_Update_ContentBrowse",array(0, $strarr[2]));
        }
        //判断用户是否登录状态
        if(!empty($_COOKIE['autoLogin'])){
            $type = $strarr[1] == "resources" ? 0 : 1;
            $db->StartSql("I_Insert_history",array($arr['value'][0]['UserId'],$type,$strarr[2]));
        }

    ?>
    <link href="../css/package/iconfont.css" rel="stylesheet" type="text/css" />
    <link href="../css/module/resources.css" rel="stylesheet" type="text/css" />
    <link href="../css/include/common.css" rel="stylesheet" type="text/css" />
    
    <script type="text/javascript" src="../script/package/jquery-1.9.1.min.js"></script>
    <script src="../script/package/jquery.zclip.js" type="text/javascript"></script>
    <!-- Bt框架引用 -->
    <script src="../script/package/Btest.js" type="text/javascript"></script>
    <!-- //Bt框架引用 -->
    <script src="../script/BM/BT.Mysql.js" type="text/javascript"></script>
    <script src="../script/BU/BU.User.js" type="text/javascript"></script>

    <script src="../script/BU/BU.Topinfo.js" type="text/javascript"></script>
    <script src="../script/BJ/BT.Us.JumpNew.js" type="text/javascript"></script>
    <script src="../script/BE/BE.UserControl.js" type="text/javascript"></script>
    <script src="../script/BF/BF.load.js" type="text/javascript"></script>
    <script src="../script/BF/BF.User.js" type="text/javascript"></script>
    
   
   
    <script >
        // $().ready(function () {
        //     $("img").lazyload({
        //         placeholder: "http://jb51.net/img/img_loading.gif",
        //         effect: "fadeIn",
        //         failurelimit: 5
        //     });
        // })
        
    </script>

 

    <!-- //页面初始化 -->
</head>
<body>
    
    <div class="main">
        <div class="header">
            <div class="cen wid">
                <div class="logo fl">
                    <a href="../index.html"><img src="../images/icons/logo.png" /></div></a>
                <div class="Bignav fl">
                    <div class="nav">
                        <ul class="navUl">
                            <li><a href="../index.html">首页</a></li>
                            <li><a href="ChirdPage.html?page=life">生活</a></li>
                            <li><a href="ChirdPage.html?page=resources">资源</a></li>
                            <li><a href="ChirdPage.html?page=carry">搬运</a></li>
                        </ul>
                    </div>
                </div>
                <div class="loginbox fr">
                    <div class="login fl">
                        <a href="#">注册</a></div>
                    <div class="logon fl">
                        <a href="#" class="bgcolor">登录</a></div>
                </div>
                <div class="personal fr hide">
                    <div class="searchbox fl">
                        <div class="search-txt fl">
                            <div class="screen fl">
                                <div class="scr-first">
                                    全部<i class="font scr-down-icon">&#xe604;</i>
                                </div>
                                <div class="scr-down">
                                    <div class="scr-x">
                                        全部</div>
                                    <div class="scr-x">
                                        生活</div>
                                    <div class="scr-x">
                                        资源</div>
                                    <div class="scr-x">
                                        搬运</div>
                                </div>
                            </div>
                            <input type="text" class="fl" placeholder="搜索你喜欢的" />
                        </div>
                        <i class="font search fl">&#xe612;</i>
                    </div>
                    <div class="notice fl">
                        <i class="font notice-icon">&#xe60e;</i>
                        <div class="noticebox">
                            <img src="../images/icons/san-icon.png" style="margin-top: -7px; margin-left: 140px;" />
                            <div class="notice_top">
                                <div class='on'>
                                    动态</div>
                                <div>
                                    通知</div>
                                <div class="active">
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                            <div class="notice-con">
                                <ul>
                                </ul>
                                <ul>
                                </ul>
                            </div>
                            <a class="notice-lostof" href="/html/messages.html">查看更多</a>
                        </div>
                    </div>
                    <div class="per-inf fl">
                        <img src="../images/photo/pho1.png" class="user-photo" width="40" />
                        <div class="perbox">
                            <img src="../images/icons/san-icon.png" style="margin-top: -7px; margin-left: 91px;" />
                            <div class="perinfbox">
                                <div class="per-photo fl">
                                    <img src="../images/photo/b-pho1.png" /></div>
                                <div class="per-p-inf fl">
                                    <p class="per-name">
                                        无风自明月</p>
                                    <i class="lemon">
                                        <img src="../images/icons/lenmen.png" /></i>
                                    <!-- <img src="../images/icons/level-3.png" class="pre-level fl"/> -->
                                    <span class="per-level-name">152</span>
                                </div>
                            </div>
                            <div class="perzan">
                                <div class="per-tiao">
                                    <div class="per-tiao-now fl">
                                    </div>
                                    <img src="../images/icons/level-3.png" class="pre-level fl" />
                                </div>
                            </div>
                            <div class="per-setup">
                                <ul class="setup-Ul">
                                    <li><i class="font per-icon">&#xe601;</i><a href="#">个人中心</a></li>
                                    <li><i class="font per-icon">&#xe606;</i><a href="#">账户中心</a></li>
                                    <li><i class="font per-icon">&#xe607;</i><a href="#">收藏夹</a></li>
                                    <li><i class="font per-icon">&#xe60b;</i><a href="#">退出</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="middle">
            <div class="middle-hr">
            </div>
            <div class="cen wid">
                <div>
                    <div class='fl'>
                        <div class="info">
                            <a href="../../index.html" target="_blank">主页</a> &gt<a href="#" target="_blank"> 资源</a>
                            <time itemprop="startDate" datetime="2015-06-27T17:50"><span>2015-06-27 17:50</span></time>
                        </div>
                        <h1>
                        </h1>
                        <div class="details">
                            <div class="title-line">
                                <i class="icon iconfont"></i><span><?php echo $arr['value'][0]['browse'];  ?></span></div>
                            <div class="title-line">
                                <i class="icon iconfont" style="font-size: 16px;"></i><span><?php echo $arr['value'][0]['comment'];  ?></span></div>
                            <div class="title-line">
                                <i class="icon iconfont" id="collect_Icon"></i><span><?php echo $arr['value'][0]['coll'];  ?></span></div>
                        </div>
                    </div>
                    <div class='fr'>
                        <div class="viewbox">
                            <div class="upinfo">
                                <div class="u-face" id="r-info-rank">
                                    <a href="#" target="_blank">
                                       <?php echo "<img src=".$arr['value'][0]['Head_img'].">"; ?></a></div>
                                <div class="r-info">
                                    <div class="usname">
                                        <a class="name" href="#" target="_blank"><?php echo $arr['value'][0]['NickName']; ?></a><span>
                                            <img src=""></span>
                                    </div>
                                    <div class="sign">
                                    </div>
                                    <div class="up-video-message">
                                        <div>
                                            投稿：<?php echo $arr['value'][0]['SubCount'];  ?></div>
                                        <div>
                                            粉丝：- -</div>
                                    </div>
                                </div>
                                <div class='clear'></div>
                            </div>
                        </div> 
                    </div>
                    <div class='clear'></div>
                    <div class='mid-left'>
                        <div class="article">
                        </div>
                        <div class="label">
                            <ul>
                            </ul>
                            <span><a class="newj" href="#">新增</a></span>
                        </div>
                        <div class="toolbar">
                            <div class="block" id="block-share">
                                <div class="t">
                                    <i class="icon-share"></i>
                                    <div class="t-right">
                                        <span class="t-right-top">分享</span> <span class="t-right-bottom"></span>
                                    </div>
                                </div>
                                <div class="tb bdsharebuttonbox">
                                    <ul class="lian-Ul ">
                                        <li class="lian-1"><i class="font font-weibo"></i><a data-cmd="tsina" class="asign"></a></li>
                                        <li class="lian-2"><i class="font font-weixin"></i><a data-cmd="weixin" class="asign"></a></li>
                                        <li class="lian-3"><i class="font font-tieba">
                                            <img src="../images/icons/tie-icon.png"></i><a data-cmd="tieba" class="asign"></a></li>
                                        <li class="lian-4"><i class="font font-kong"></i><a data-cmd="qzone" class="asign"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="block" id="block-tri">
                                <div class="t">
                                    <i class="icon-ticket"></i>
                                    <div class="t-right">
                                        <span class="t-right-top">车票</span> <span class="t-right-bottom"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="block" id="block-zan">
                                <div class="t">
                                    <i class="icon-like"></i>
                                    <div class="t-right">
                                        <span class="t-right-top">点赞</span> <span class="t-right-bottom"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="block" id="block-coll">
                                <div class="t">
                                    <i class="icon-coll"></i>
                                    <div class="t-right">
                                        <span class="t-right-top">收藏</span> <span class="t-right-bottom"></span>
                                    </div>
                                </div>
                            </div>
                            <!-- 车票连接框 -->
                            <div class="triK">
                                <div class="triK_title">
                                    车票链接</div>
                                <div class="trik_title_content">
                                    <input type="text" value="" />
                                    <a id="copy" href="javascript:void(0)">复制</a>
                                </div>
                                <div class="triK_title">
                                    提取码</div>
                                <div class="trik_tile_code">
                                    <input type="text" value="me2y" />
                                </div>
                                <a href="#">链接失效？</a><a href="#">密码错误？</a><a href="#">内容有误？</a>
                            </div>
                        </div>
                        <div class="common">
                            <div class="nicezan-comment">
                                <div class="b-head">
                                    <span class="b-head-t results" style="display: inline;">30</span><span class="b-head-t">评论</span></div>
                                <div class="send" id="send">
                                    <div class="tg_send_post">
                                        <div class="dcmp-content">
                                            <div class="user_face">
                                                <img src="../images/photo/noface.gif"></div>
                                            <div id="dcmp_textarea_container" class="dcmp-textarea-container">
                                                <i class="b-icon b-icon-triangle-gray-left"></i>
                                                <textarea cols="80" name="msg" rows="5" id="comment_text" placeholder="跟大家一起愉快地吐槽吧！(ง •̀_•́)ง"
                                                    class="b-input ipt-txt"></textarea>
                                                <div class="login-link-wrp">请先<a class="login-link b-btn" href="https://account.bilibili.com/login" target="_blank">登录</a>后发表评论 (・ω・)</div>
                                                <div class="dcmp_post">
                                                    <div class="ywz-wrapper">
                                                        <div class="biaoqing_box">
                                                            <a>(⌒▽⌒)</a><a>（￣▽￣）</a><a>(=・ω・=)</a><a>(｀・ω・´)</a><a>(〜￣△￣)〜</a><a>(･∀･)</a><a>(°∀°)ﾉ</a><a>(￣3￣)</a><a>╮(￣▽￣)╭</a><a>(´_ゝ｀)</a><a>←_←</a><a>→_→</a><a>(&lt;_&lt;)</a><a>(&gt;_&gt;)</a><a>(;¬_¬)</a><a>("▔□▔)/</a><a>(ﾟДﾟ≡ﾟдﾟ)!?</a><a>Σ(ﾟдﾟ;)</a><a>Σ(￣□￣||)</a><a>(´；ω；`)</a><a>（/TДT)/</a><a>(^・ω・^)</a><a>(｡･ω･｡)</a><a>(●￣(ｴ)￣●)</a><a>ε=ε=(ノ≧∇≦)ノ</a><a>(´･_･`)</a><a>(-_-#)</a><a>（￣へ￣）</a><a>(￣ε(#￣)Σ</a><a>ヽ(`Д´)ﾉ</a><a>(╯°口°)╯(┴—┴</a><a>（#-_-)┯━┯</a><a>_(:3」∠)_</a><a>(笑)</a><a>(汗)</a><a>(泣)</a><a>(苦笑)</a></div>
                                                        <a class="ywz">(・ω・) 颜文字</a></div>
                                                    <button type="submit" class="b-btn submit-comment" id="submit-comment">
                                                        发表评论</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- <div class="c_order">
                                        <ul class="b-slt-tab">
                                            <li order="0" class="on"><a>最新</a></li><li order="2"><a>最热</a></li></ul>
                                        <div class="pagelistbox small">
                                            <span class="result">共 66 页 </span><a class="p active">1</a><a class="p" href="javascript:;"
                                                page="2">2</a><a class="p" href="javascript:;" page="3">3</a><a class="p" href="javascript:;"
                                                    page="4">4</a><a class="p" href="javascript:;" page="5">5</a><strong>...</strong><a
                                                        class="p endPage" href="javascript:;" page="66">66</a><a class="p nextPage" href="javascript:;"
                                                            page="2">下一页</a></div>
                                    </div> -->
                                    <ul class="comm_list">

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mid-right">
                    
                    <div class="publishbox">
                        <div class="publish">
                            <div class="share-btn">
                                <span class="share-zan">点赞</span><span></span>
                            </div>
                        </div>
                        <div class="publish2">
                        </div>
                    </div>
                    <div class="goodbox">
                        <div class="gz-tit">
                            <h3>
                                最赞评论</h3>
                        </div>
                    </div>
                    <div class="goodbox">
                        <div class="gz-tit">
                            <h3>
                                相关推荐</h3>
                        </div>
                        <div class="gz-content aboutre">
                            <ul>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    <div class="pagebox">
        <div class="page-opac">
        </div>
        <div class="page-log" id="loginbox">
            <div class="page-log-logo">
                <img src="../images/icons/logo.png" /></div>
            <div class="page-close-btn">
                <img src="../images/icons/close-icon.png" /></div>
            <div class="page-input" id="user_login_name">
                <span>邮箱</span><input type="text" placeholder="请输入您的注册邮箱" />
            </div>
            <div class="page-input" id="user_login_pass">
                <span>密码</span><input type="password" placeholder="密码" />
            </div>
            <span class="page-rember fl" id="user_login_rem">
                <input type="checkbox" class="page-rem-btn" checked="checked" />自动登录</span>
            <span class="page-forget fr">忘记密码？</span>
            <div class="clear">
            </div>
            <div class="page-log-btn page-login-btn fl" id="user_login_btn">
                登录</div>
            <div class="page-log-btn fr" id="logonbtn">
                注册</div>
            <div class="clear">
            </div>
            <div class="weibobox">
                <i class="font weibo">&#xe603;</i></div>
            <span class="weibo-txt">微博账号登录</span>
            <div class="QQbox">
                <i class="font QQ">&#xe600;</i></div>
            <span class="QQ-txt">QQ账号登录</span>
        </div>
        <div class="page-log" id="logon-Ebox" style="display: none;">
            <div class="page-log-logo">
                <img src="../images/icons/logo.png" /></div>
            <div class="page-close-btn">
                <img src="../images/icons/close-icon.png" /></div>
            <div class="page-input" id="user_logon_email">
                <span>邮箱</span><input type="text" placeholder="请填写你常用的邮箱" />
            </div>
            <div class="page-input page-code fl">
                <span class="code-txt">验证码</span><input type="text" class="code" id="code" maxlength="4" /><a
                    class="send-out">发送</a>
            </div>
            <div style="background: #626262; width: 130px; height: 50px; float: right;">
                <img src="../script/php/img.php" id="getcode_num" title="看不清，点击换一张" align="absmiddle"></p>
            </div>
            <div class="clear">
            </div>
             <div class="page-input">
                <span class="mcode-txt">邮箱验证码</span><input type="text" class="mcode" />
            </div>
            <div class="page-log-btn page-logon-btn fl" id="emil-btn" style="margin-top: 0px;">
                立即验证</div>
            <div class="clear">
            </div>
        </div>
        <div class="page-log" id="logon-Ibox" style="display: none;">
            <div class="page-log-logo">
                <img src="../images/icons/logo.png" /></div>
            <div class="go-back">
                返回</div>
            <div class="page-close-btn">
                <img src="../images/icons/close-icon.png" /></div>
            <div class="page-input" id="user_Ibox_nickname">
                <span>昵称</span><input type="text" placeholder="请填写你的昵称" /><i class="font warning">&#xe608;</i>
            </div>
            <div class="page-input" id="user_Ibox_password">
                <span>密码</span><input type="password" placeholder="请输入密码(8-12位)" /><i class="font warning">&#xe608;</i>
            </div>
            <div class="page-input" id="user_Ibox_repassword">
                <span>密码</span><input type="password" placeholder="请再一次输入确认密码" />
            </div>
            <div class="page-log-btn page-logon-btn fl" id="finish-btn" style="margin-top: 0px;">
                完成注册</div>
            <div class="clear">
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="footer-1">
            <div class="wid cen">
                <div class="flogo">
                    <img src="../images/icons/flogo.png" class="fl" /></div>
                <ul class="font-Ul">
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">友情链接</a></li>
                    <li><a href="#">意见反馈</a></li>
                    <li><a href="#">免责声明</a></li>
                </ul>
                <ul class="lian-Ul">
                    <li class="lian-1"><i class="font font-weibo">&#xe603;</i></li>
                    <li class="lian-2"><i class="font font-weixin">&#xe61b;</i></li>
                    <li class="lian-3"><i class="font font-tieba">
                        <img src="../images/icons/tie-icon.png" /></i></li>
                    <li class="lian-4"><i class="font font-kong">&#xe61a;</i></li>
                </ul>
                <div class="clear">
                </div>
            </div>
            <div class="clear">
            </div>
        </div>
        <div class="footer-2">
            <div class="wid cen">
                <span class="fl">本站不提供任何上传下载服务，所有内容均来自视频分享站点所提供的公开引用资源</span> <span class="fr">Copyright
                    © 2016 NiceZan 保留所有权利0</span>
            </div>
        </div>
    </div>
</body>
</html>
