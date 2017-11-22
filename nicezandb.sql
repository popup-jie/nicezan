/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : nicezandb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-09-16 22:15:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nice_banner
-- ----------------------------
DROP TABLE IF EXISTS `nice_banner`;
CREATE TABLE `nice_banner` (
  `UID` char(50) DEFAULT NULL,
  `Psrc` char(100) DEFAULT NULL,
  `Type` char(20) DEFAULT NULL,
  `Pcon` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_banner
-- ----------------------------
INSERT INTO `nice_banner` VALUES ('7f883359-3141-11e6-8bd8-6451063c7c21', 'www.baidu.com', 'life', '1');
INSERT INTO `nice_banner` VALUES ('7f883359-3141-11e6-8bd8-6451063c7c21', 'www.baidu.com', 'life', '2');
INSERT INTO `nice_banner` VALUES ('7f883359-3141-11e6-8bd8-6451063c7c21', 'www.baidu.com', 'life', '3');
INSERT INTO `nice_banner` VALUES ('7f883359-3141-11e6-8bd8-6451063c7c21', 'www.baidu.com', 'life', '4');
INSERT INTO `nice_banner` VALUES ('7f883359-3141-11e6-8bd8-6451063c7c21', 'www.baidu.com', 'life', '5');

-- ----------------------------
-- Table structure for nice_collect
-- ----------------------------
DROP TABLE IF EXISTS `nice_collect`;
CREATE TABLE `nice_collect` (
  `User_id` char(50) DEFAULT NULL COMMENT '收藏人的id',
  `Collector_id` char(50) DEFAULT NULL COMMENT '被收藏者id',
  `GoneId` char(50) DEFAULT NULL COMMENT '文章番号 (如果是字符串，则是评论的ID)',
  `type` int(5) DEFAULT NULL COMMENT '0是 点赞， 1是收藏, 2是评论点赞',
  `CollTime` datetime DEFAULT NULL,
  `CollectLook` char(1) NOT NULL DEFAULT '0' COMMENT '1 看过 0 未看过'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_collect
-- ----------------------------
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4000', '0', '2016-06-14 09:59:08', '0');
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4004', '0', '2016-06-14 09:59:18', '0');
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4035', '0', '2016-06-14 09:59:21', '0');
INSERT INTO `nice_collect` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '9f5ba06f-1582-11e6-854c-6451063c7c21', '4003', '0', '2016-06-14 10:44:18', '0');
INSERT INTO `nice_collect` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4000', '0', '2016-06-14 13:46:48', '0');
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4000', '1', '2016-06-14 15:41:47', '0');
INSERT INTO `nice_collect` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4000', '0', '2016-06-14 19:02:59', '0');
INSERT INTO `nice_collect` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4000', '1', '2016-06-14 19:03:12', '0');
INSERT INTO `nice_collect` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '9f5ba06f-1582-11e6-854c-6451063c7c21', '4003', '1', '2016-06-15 10:37:21', '0');
INSERT INTO `nice_collect` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'f9a110dc-3157-11e6-8bd8-6451063c7c21', '2', '2016-06-15 10:37:46', '0');
INSERT INTO `nice_collect` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'fbade7e7-3157-11e6-8bd8-6451063c7c21', '2', '2016-06-15 10:37:47', '0');
INSERT INTO `nice_collect` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'f19f9973-3157-11e6-8bd8-6451063c7c21', '2', '2016-06-15 10:37:48', '0');
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', '4021', '0', '2016-06-15 10:53:35', '0');
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '4027', '0', '2016-06-15 12:34:56', '0');
INSERT INTO `nice_collect` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '4015', '0', '2016-06-16 14:01:21', '0');
INSERT INTO `nice_collect` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '4020', '0', '2016-06-16 14:01:39', '0');
INSERT INTO `nice_collect` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '4020', '1', '2016-06-16 14:01:41', '0');
INSERT INTO `nice_collect` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '4040', '0', '2016-06-23 10:01:36', '0');
INSERT INTO `nice_collect` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4017', '0', '2016-06-30 14:10:25', '0');
INSERT INTO `nice_collect` VALUES ('cf382118-3d0e-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', '4041', '0', '2016-07-01 10:41:57', '0');
INSERT INTO `nice_collect` VALUES ('2b96d873-3f35-11e6-aae8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '4024', '0', '2016-07-01 10:42:07', '0');
INSERT INTO `nice_collect` VALUES ('cf382118-3d0e-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', '4041', '1', '2016-07-01 10:42:09', '0');
INSERT INTO `nice_collect` VALUES ('b6297b30-3f38-11e6-aae8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '4015', '0', '2016-07-01 11:09:00', '0');
INSERT INTO `nice_collect` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '7233253f-4685-11e6-b005-9c5c8e7be156', '2', '2016-07-10 19:01:12', '0');
INSERT INTO `nice_collect` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '4025', '0', '2016-07-10 23:17:53', '0');
INSERT INTO `nice_collect` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '11044d86-4681-11e6-b005-9c5c8e7be156', '2', '2016-07-10 23:18:03', '0');
INSERT INTO `nice_collect` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '4025', '1', '2016-07-12 16:59:35', '0');

-- ----------------------------
-- Table structure for nice_content
-- ----------------------------
DROP TABLE IF EXISTS `nice_content`;
CREATE TABLE `nice_content` (
  `UID` char(50) NOT NULL,
  `PID` char(50) DEFAULT NULL COMMENT '发表人ID',
  `tit` char(100) DEFAULT NULL COMMENT '标题',
  `browse` int(10) DEFAULT NULL COMMENT '浏览次数',
  `comment` char(10) DEFAULT NULL COMMENT '评论数目',
  `coll` char(10) DEFAULT NULL COMMENT '收藏数目',
  `content` text COMMENT '正文',
  `label` char(70) DEFAULT '' COMMENT '标签',
  `share` char(10) DEFAULT NULL COMMENT '分享',
  `bornData` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发表日期： 1990-01-01',
  `ziyuanurl` text COMMENT '资源链接',
  `getCode` char(5) DEFAULT NULL COMMENT '提取码 ',
  `type` char(1) DEFAULT NULL COMMENT '分区（0是生活 1是资源 2是视频）',
  `GoneId` char(10) DEFAULT NULL COMMENT '番号',
  `imgurl` text COMMENT '视频封面',
  `IsOk` char(1) DEFAULT NULL COMMENT '审核是否通过， 1是通过 0是审核中 2是未通过',
  `zan` int(11) DEFAULT NULL COMMENT '点赞数量',
  `viewtype` char(5) DEFAULT NULL COMMENT '电视种类',
  `videoTime` char(20) DEFAULT NULL,
  `dynamicDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '动态更新时间',
  `reason` text,
  PRIMARY KEY (`UID`,`bornData`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_content
-- ----------------------------
INSERT INTO `nice_content` VALUES ('00ab30d8-3f35-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', '我最帅', '2', '0', '1', '<img src=\"../../content/1467340778.jpg\"><div><br></div>', '1', '0', '2016-07-01 10:40:25', 'www.baidu.com', '111', '1', '4041', '../../sub/cf382118-3d0e-11e6-aae8-6451063c7c21_40411467340748.jpg', '1', '1', '日剧', null, '2016-07-01 10:42:13', null);
INSERT INTO `nice_content` VALUES ('0544439f-315f-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '复图教程攻略 快戳进来~', '39', '0', '2', '1.<a href=\"http://jump.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw60Sjy3YY7/y8uwVu6QnzVykImOuUl9obIdesUqvhcRz+hXSuwz9b96EragWmZ1jer1XQuxoOXhQsUcyHzEJDzubg9rwZLsQY+hzbBME5tRxEWdUAi8pwGnTsCGSX1honDp4TKyY1AKPk6+9zb6bCE7/dj2oeHoEzTI=\" target=\"_blank\">摄影师</a><span>的调色秘密教你美化昏暗照片！步骤：自然磨皮（深度）→选择局部变色笔（乳白色）涂抹整张图片→添加眼部饰品（眉毛）→60%经典HDR→20%深蓝泪雨→调色轴轻微偏向红、绿、蓝色调→20%去雾→消除</span><a href=\"http://jump.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw63pdci9Dw9hvhIJYgDMHLyAImOuUl9obIdesUqvhcRz+hXSuwz9b96EragWmZ1jer1XQuxoOXhQsUcyHzEJDzubg9rwZLsQY+hzbBME5tRxEWdUAi8pwGnTsCGSX1honDp4TKyY1AKPk6+9zb6bCE7/dj2oeHoEzTI=\" target=\"_blank\">黑眼圈</a><span>画笔（涂抹笔），力度为35%，涂抹</span><a href=\"http://jump.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61odkhB+0531piH3pVHR81at6XyibVFgk4fbLMgytUg5Z4Q4OO30Ri8SAtVjSx1NjJY8K44RtEayEkWDJ1Lp6YgSZJDG1z0FNajWtJfeEp2iIuD9Mgr6uq2pJdwpfZAceTU9lv2TuKt91ZmEBVHjGgoMDxm7iZ2BjQ=\" target=\"_blank\">眼睛</a><span>下部，</span><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819357.jpg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>完成</span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>2.</span><img src=\"../../content/1465819384.jpg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>一学就会！轻松消除抢镜路人！</span><br><br><br><span>步骤：选择消除黑眼圈画 笔中的取色笔，透明度设置为100%，根据背景墙颜色，适当更改 画笔大小，涂抹掉路人→继续使用取色笔处理背景墙纹络衔接处 →80%锐化，完成</span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>3.</span><img src=\"../../content/1465819410.jpg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>昏暗夜拍照的福音！快快存起来吧！</span><br><br><br><span>步骤：100%暖化→50%经典lomo→40%智能绘色→30%流年→添加外文文字模板，完成</span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\">暂时先分享到这里。下期再分享！</div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span><br></span></div>', 'PS,修图', '2', '2016-06-27 10:32:52', '', '', '0', '4000', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465819309.jpg', '1', '3', '综合', null, '2016-06-29 09:37:59', null);
INSERT INTO `nice_content` VALUES ('1926f37c-3164-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '教你如何用C/C++做高大上的软件界面', '14', '0', '0', '<span>在我发了键鼠模拟器的那个帖子后，很多人问我界面是怎么做出来的，我想既然大家对做界面那么感兴趣，那我就专门开个贴来聊一下怎么用C/C++做高大上的软件界面。当然，一个很漂亮的软件界面会让人觉得你的程序很高端，面试的时候也会给面试官一个很好的印象，但是很多人刚开始看书学C时，书上老是用printf来打印输入输出，导致很多人以为C只能在那个黑框框下用，不实用，很有很多人认为做界面只能用Java或C#，C/C++不能做界面，这是极大的误会，C/C++不仅擅长底层开发，做界面那更是小菜一碟，用C/C++做界面比Java或C#都更灵活，在我看来，只要C/C++和MFC学通了，任何界面你都做得出来，随便找一个软件，你都可以克隆出一个一模一样的界面来。不信啊？后面你就会见识到。</span><br><span>下面先看一个用C语言做的软件，快速窗口切换程序，这个程序是一年前写的，当时觉得Windows7的窗口切换太麻烦了，特别是那些有多个标签页的软件，每次都要在任务栏点一次，再在弹出来的窗口略缩图里再点一次，如果要经常切换窗口就会感到特别不爽，觉得微软这设计真是脑残，这个程序也很简单，就是当用户按下鼠标中键后，就弹出一个菜单来，菜单里列出了所有窗口，点一下就可以快速切换过去了。菜单界面如下图所示</span><br><br><br><img pic_type=\"0\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=37de94d9b01c8701d6b6b2ee177e9e6e/7a380c338744ebf803e14e02daf9d72a6159a7d6.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><br><br><br><span>这程序仅仅用到了C，所以体积很小，只有80K，占用资源也很少，其原理很简单，先用SetWindowsHookEx函数加载一个鼠标钩子来监视鼠标中键的按下动作，一旦中键按下，就在光标的旁边用CreateWindow函数创建一个窗口，然后在窗口里创建多个按钮，你可以看到，在按钮里既有图标，又有标题，这种按钮是不是很酷，其实实现很简单，就调用DrawIcon()和SetWindowText()2个API就可以了。感兴趣的可以去我的博客下载程序源代码，可能有人会说这太小儿科了，确实，这个程序界面比较简单，没什么好多讲的，那什么软件的界面比较高大上呢，迅雷看看播放器，这个怎么样，够高大上吧，几亿人都在用呢，但是我告诉你，我要克隆出一个跟它一模一样的程序界面来，那也很简单，当然我只是实现它的界面，它的播放下载功能我可不实现，最终程序的界面效果如下图所示</span><br><br><br><img pic_type=\"0\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=9179ac118401a18bf0eb1247ae2e0761/1d6b8744ebf81a4c4ba2c6f4d42a6059242da6d6.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><br><br><br><span>是不是一模一样，连光标移到按钮上的发光效果也跟原版程序一样，这里面最难实现应该是它的进度条了，一边蓝色一边灰色可费了我一定时间，程序是用C++和MFC做的，代码会比窗口切换程序复杂一点。要做这样的界面也不能一蹴而就，首先你要懂做自绘风格的按钮，下面这个程序演示了如何创建各种形状的按钮</span><br><br><br><img pic_type=\"0\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=a8b1980ca28b87d65042ab1737092860/961cebf81a4c510fc254c8276359252dd52aa5d6.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><br><br><br><span>它的原理就是先从CButton派生出一个子类CRoundButton2，然后在CRoundButton2类的DrawItem()把按钮画上去，也不难，具体实现可以参考源代码。正所谓万丈高楼平地起，所有看起来很漂亮的界面都是由一些比较简单的技术堆砌而成的，下面这个例子程序则教你如何用一些比较简单的代码对窗口做出不同的显示效果，界面有3个按钮，提供了3种不同的效果，如下图所示。</span><br><img pic_type=\"0\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=9bacbe8684d6277fe912323018391f63/faa01a4c510fd9f9cb877f54262dd42a2934a4d6.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img pic_type=\"0\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=bc2698db247f9e2f70351d002f31e962/0b14510fd9f9d72a7df43a20d72a2834359bbbd6.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><br><span>怎么样，看完以上例子，谁还敢说C/C++就只能小黑框，谁还敢说C/C++不能做界面，以后谁还敢这么说你就跟他急。对以上程序感兴趣的，可以到我的博客去下载源代码。高手就不用看了，免得你们看了又要喷，这不是给你们看的，呵呵。</span><br><span>源码： 新浪博客地址+杠u杠2658627183</span>', '软件', '1', '2016-06-28 10:32:38', '', '', '0', '4002', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465821639.jpg', '1', '0', '综合', null, '2016-06-29 09:26:32', null);
INSERT INTO `nice_content` VALUES ('1b0ec91a-3112-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '【dota2】春季赛实时战报:OG战队击败液体夺冠', '18', '0', '1', '<p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>春季赛总决赛：Liquid vs OG</strong></p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\"><span>第一场：</span></p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">OG战队拿到<span>小狗</span>与<span>炼金兽王</span>三核心，液体拿到<span>伐木机</span>与<span>拍拍</span>作为针对。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">小光出兵前双方在上路抢F，OG这边炼金强行学了个贪婪拿到F，但是自己被拍拍A死送出一血，而lich也被减速带走。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">小光1分钟一级学了Nova的<span>巫妖</span>TP到上路减速给到拍拍，小狗直接W减速，土猫滚到带走。6分钟上路sa一个5给到小狗，巫妖想救小狗自己被<span>萨尔</span>D到带走，同时中路伐木机配合大鱼人和萨尔冲塔强行击杀了大爹的炼金<span>术士</span>。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">7分钟，上路土猫滚先手到了拍拍小狗给上减速，巫妖给Nova减速，拍拍死前A死了土猫自己也被小狗A死，小光8分50秒，拉远古的土猫状态不好被伐木机轮盘减速到直接带走</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">8分50秒，拉远古的土猫状态不好被伐木机轮盘减速到直接带走。10分钟，炼金强行顶着伐木机和拍拍的面吃到了上路的减速F，本以为逃过一劫，但是被萨尔D回来一个框大带走。11分钟的英雄经济炼金的发育并不好，液体这边非常的针对</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">比赛进入中期，液体大鱼人频繁的带领队友GANK，反观OG方前期最顺的兽王，则一直选择占线打野发育，毫无作为。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">14分钟小狗钻土猫TP下路找到了在自家野区做眼的萨尔直接滚到狗钻出来带走，随后土猫到中路补经济被跳刀大鱼人踩住伐木机一个D带走，半分钟之后巫妖也被大鱼人踩住配合<span>隐刺</span>带走。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">16分钟，拍拍带盾跳刀冲二塔杀掉了炼金，液体位置不好被OG反打，隐刺先被秒掉，小狗也打掉了拍拍的盾。21分钟，OG开5的三人组巫妖土猫和小狗走到了液体的视野下，大鱼人踩住小狗和土猫萨尔接大，sa接5两人直接被秒，巫妖也被萨尔D回来带走。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">23分钟下路隐刺尾随小狗，大鱼人踩住小狗sa给5，但是小狗切臂章强行不死，伐木机跳刀切入一个D带走小狗，炼金TP过来收掉了sa但是又被萨尔D走了。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">26分钟，液体再次冲塔强杀炼金，炼金买活反打但是TP下来又被萨尔D回了泉水，巫妖和小狗被大鱼踩住萨尔接大秒了，兽王吼住伐木机开死灵书带走，但是伐木机10秒就活了飞鞋过来再杀土猫兽王，再次感到战场的炼金被拍拍熊拍晕直接带走 。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">33分钟隐刺找到了土猫直接给5大鱼踩住，狗钻出来魔免跑路，OG在先死人的情况下选择4V5开团，小狗被拍拍直接A死，炼金开着bkb不敢刚正面只能跑bkb结束被伐木机和拍拍追死，巫妖死于不明AOE，伐木机冲泉杀了兽王 ，并且缴获了宝石。</p><p align=\"left\" style=\"margin-bottom: 10px; text-indent: 12px;\">随后，液体打掉肉山再次上高，兽王率先被秒选择买活，OG最后一搏兽王吼住拍拍炼金开bkb想杀但是根本没有输出，液体瞎比冲脸团灭OG，OG打出gg</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"\" src=\"http://image.uuu9.com/pcgame/dota2//UploadFiles//201606/201606121651179251.png\" title=\"点击图片翻页\" style=\"margin: 10px 0px;\">&nbsp;<br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>第二场</span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">这一场比赛OG出奇招给大爹拿到了一号位的虚空，M神拿到了二号位的<span>剑圣</span>!而液体选择了<span>狼人</span>作为自己的大哥，并且选择了肉核<span>龙骑</span>作为自己的二号位。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">开局之后M神展现了自己9000分的个人实力，剑圣走位躲龙骑的火!微操非常的厉害!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">OG战队虽然阵容整体较为劣势但是在前期线上打的非常强势!不断的通过线上的gank来增进自己的前期优势，双酱油前期的gank效率非常高!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">OG这一场的状态突然爆炸!三路开花!线上几乎把液体打崩了!中单的M神10分钟领先了龙骑2000+的经济!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">液体前期打的非常被动，一直被OG追着打，自己完全没有节奏!推进推不起来，打架由于前期劣势又打不过!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">17分钟OG打盾，液体看到之后立刻赶来!但是并不敢先手，剑圣拿到盾与液体开团，龙骑先手被秒!液体立刻后撤!前期的劣势人昂液体不敢与OG正面开团!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">22分钟OG先手失误，DS被秒，但是狼人被虚空击杀!剑圣在交出自己的大招之后没有任何输出环境，直接被液体击杀!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">这一场比赛OG虽然前期大优势，但是一号位虚空的装备选择却是林肯!直接导致OG的整体输出能力不足，不知道后期OG会如何解决这个问题。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">27分钟OG打盾，液体开雾过来准备开团!这一次OG的配合显然更好，OG的凤凰先手开大，OG用一个凤凰换掉了对面4个人!虚空带盾!OG的优势进一步扩大!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">31分钟OG上高，剑圣一个人拆的非常快，拆掉下路高地塔后撤退!33分钟下路虚空先手开团，剑圣赶来打出无限输出!再一波0换4，OG直接推进下路高地!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">拆掉下路高地后微微后撤，虚空技能冷却好了再一波反打，但这一波凤凰被秒!M神第二次切入，击杀液体三人!OG直接转推中路高地，液体完全无力防守!核心都无法买活!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">OG不后退直接选择破第三路!虚空秒掉龙骑，液体直接打出GG。OG扳回一局!</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"\" src=\"http://image.uuu9.com/pcgame/dota2//UploadFiles//201606/_Z201606121744165341.png\" title=\"点击图片翻页\" style=\"margin: 10px 0px;\">&nbsp;<br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>第三场</span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">第三局双方阵容几乎就是上一把的复刻!不同的是OG这一次选择给MOON拿到了三号位虚空而给大爹拿的是一号位斯文。液体继续狼人与龙骑双核，一套高容错率的阵容!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">这一局OG的前期游走并没有上一把那么给力但是相比上来说还是比起液体强了很多，10分钟OG打掉肉山，斯文带盾!拿掉肉山后的OG抱团中路动手，击杀龙骑后再杀液体双酱油，液体又是一波崩盘!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">13分钟OG越2塔开团，虚空大招配合剑圣凤凰秒掉VS与龙骑，液体完全没有办法正面接团了已经。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">16分钟液体上路与OG开团，但是OG这一波处理并不好，虚空被秒之后OG几人先后阵亡!液体完成一波0换4，并且逼出了OG两人买活!OG前期优势荡然无存!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">18分钟OG下路抱团想要和液体开团。但是液体理智的缩了回去，并且开雾绕后。OG<span>莱恩</span>强行先手开团，OG秒掉液体双酱油和龙骑，但是OG的剑圣也交了。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">20分钟液体先手准备击杀斯文，但是在双治疗的支持下，斯文反杀龙骑，斯文的经济领先第二名的狼人2000，虽然全场第一，但不能说是无解肥!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">24分钟OG开雾找人，但是先手出现失误，并没有控制到液体的人，后撤一波后剑圣和斯文准备打盾，液体发觉了他们在打盾，立刻开雾包了过来。但是OG已经拿到了盾!大鱼人跳踩直接把自己交掉，液体赶紧后撤。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">28分钟中路液体先手OG的莱恩，但是被OG的莱恩完美秀掉所有技能!OG击杀液体两人后准备推进，OG抱团上路液体只有三个人还要接团，直接全都送回泉水!OG势如破竹直接推掉液体上路高地。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">33分钟液体在夜魇野区抓死凤凰，但是赶来的虚空留下两人，斯文开大切入，三刀砍死龙骑又打出了一波1换4，斯文已经无敌了!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">37分钟中路一波团战，斯文被秒立刻买活赶到战场，液体龙骑双酱油再次阵亡，这一把龙骑这点已经废掉了!OG直接转下路剑圣强拆掉下路高地后撤退到高坡上等待莱恩到达战场。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">40分钟斯文跳刀先手秒掉VS,虚空大两个，OG转头秒掉液体双核!两个大哥立刻买活，但是没有大招，液体只能打出GG，OG拿到赛点!</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"\" src=\"http://image.uuu9.com/pcgame/dota2//UploadFiles//201606/_Z201606121850332371.png\" title=\"点击图片翻页\" style=\"margin: 10px 0px;\">&nbsp;<br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">第四场</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">液体又一次在第一手选到了大鱼人，就是不信邪!OG则拿到了上几把的制胜关键凤凰。最终OG为M神拿到了中单的TA，而液体则是选择了一个大哥位的蚂蚁与大鱼人配合打一个减甲流。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">开局一分钟，MOON用光所有小号强行让液体的大哥蚂蚁在第一波完全血崩!极限的逃生成功的证明了自己!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">双方在对线期都打的非常和平，线上不断的有小摩擦存在但是双发真正的交手非常之少，TA的经济全场第一，但是领先也并不明显，而总体经济上来看，液体是领先于OG的。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">12分钟上路团战，大鱼人秒掉<span>骷髅王</span>第一条命，但是随后OG的人赶来击杀大鱼人。上路蚂蚁一个人秀掉了OG所有人的技能!双方和平后撤!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">19分钟OG开雾找液体开团，秒掉萨尔后萨尔买活!OG全员阵亡!蝙蝠没有大招!没有先手能力，这一把输了的话Moon一定要背锅了!<span>德鲁伊</span>和蚂蚁的经济来到全场1、2。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">26分钟OG打盾，液体发现了立刻开雾过来，TA带盾和液体正面开团，先手秒掉大鱼人。OG抱团推掉中路二塔!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">31分钟OG开雾找节奏，直接中路往前冲!找到<span>小鹿</span>后直接击杀!德鲁伊天命打出一记缠绕，成功的TP回家!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">34分钟上路河道OG主动动手，秒掉大鱼后大鱼人买活，骷髅王卖掉一条命后立刻后撤!OG稍稍赚了一些!37分钟肉山团，OG先秒掉小鹿但TA同时也交掉，<span>大牛</span>搭配骷髅王击杀了蚂蚁。OG完成一波1换3!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">39分钟OG打盾，TA带盾非常的强势!OG上路抱团开始处理兵线。OG现在正面团的能力非常的强，只要不出现什么巨大的失误就可以拿下这局比赛。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">42分钟OG上路强拆，但是液体完全无法反抗。上路高地被破，液体只能干看着。45分钟野区两方相遇。骷髅王先手秒掉小鹿，液体双酱油瞬间倒地，液体正面完全无法接团，三四五号位全都阵亡!OG强拆掉中路高地!蚂蚁瞬间被秒无法买活，液体打出GG.</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"\" src=\"http://image.uuu9.com/pcgame/dota2//UploadFiles//201606/_Z201606122005432221.png\" title=\"点击图片翻页\" style=\"margin: 10px 0px;\"></p>', 'Dota2,Dota', '4', '2016-06-28 10:37:21', '', '', '0', '4003', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465786447.jpg', '1', '1', '综合', null, '2016-06-29 09:54:17', null);
INSERT INTO `nice_content` VALUES ('1db0e529-3161-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '这些年苹果自扇过的脸 还我国产手机清白', '3', '0', '0', '<div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465820377.jpg\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465820383.jpg\">这些年苹果每出一款新的手机都会让果粉们躁动许久，果粉们对iphone的忠诚信仰是其他品牌的手机粉丝无可比拟的，虽然果粉们知道苹果也有不足的地方，但是仍改变不了苹果在人们心中的形象。但是这些年苹果自扇过的脸，个人觉得为了利益商家改变思路无可厚非，但是那些毁了其他品牌的清白，实在是应该说道说道！\n首当其冲：魅族\n这个被称为“最具苹果气质”的国产品牌，也曾受过苹果的“污蔑”。那是2007年，魅族黄章历经2年的时间，34版设计、3次推倒重来的模具定版，2009年魅族M8问世，却也恰是苹果第一代Iphone上市两年后。一上市就被贴上了“山寨品”的标签。但是鲜为人知的是2006年黄章就已经公布了魅族M8的第一版设计。\n\n在2012年时，魅族沉冤得雪，苹果与三星关于专利诉讼案中，苹果以魅族作为自主创新产品的例子，相当于变相承认了“魅族”抄袭的说法是多么的好笑！当年一片骂声中的魅族忍辱负重，多么需要大家多一分信任和支持，国货需要被信任！\n那一年的海尔\n如今的海尔手机在市场上已经很少见了，属于小众手机一类的。在北京时间2014年9月10日苹果推出iphone 6以来，对大屏以及外观的推陈出新让果粉们一度狂热追捧，但是有谁会想到，早在2013年12月份海尔HT-I928就已经上市了，如果说海尔剽窃苹果手机的设计，那我就呵呵了……\n\n自苹果成功之后，世界各地的品牌手机模仿者甚多，不可否认中国成为了模仿重灾区之一，但是不是此时我们更应该看到的是国产手机中那些努力坚守原创的品牌和产品，作为消费者我们应该对国产产品哪怕有一丝丝的信任和支持，也就不会发生魅族和海尔的所谓的抄袭门。\n备受关注的始终是走在人们视线范围之内的，为什么海尔没有控告苹果的外观设计有抄袭？为什么魅族面对那么多的骂声不开口解释？答案自在人心，国产品牌手机的话语权还没有握紧，专利及品牌保护意识较弱，这是事实也是急需改变的现实！国产手机迈出国门走上国际化大道之路崎岖坎坷，随着市场的不算的规范化，国产手机的专利意识必将觉醒！</div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br><br><br><br>作者：头条号 / 企业基地<br>链接：http://toutiao.com/a6295572021523431682/<br>来源：头条号（今日头条旗下创作平台）<br><br></div>', '手机,苹果', '0', '2016-06-29 09:59:18', '', '', '0', '4004', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465820373.jpg', '1', '1', '综合', null, '2016-07-01 10:47:53', null);
INSERT INTO `nice_content` VALUES ('1ec3bc84-3136-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', '夏装色彩搭配 蓝白就是这么合拍_夏装搭配图片', '1', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.love84.com/fushi/xiajidapei/2016051854911_2.html\"><img src=\"http://www.love84.com/uploads/allimg/160518/1126234444-0.jpg\" alt=\"夏装色彩搭配 蓝白就是这么合拍  夏装搭配图片\" title=\"夏装色彩搭配 蓝白就是这么合拍 \" data-bd-imgshare-binded=\"1\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.love84.com/fushi/xiajidapei/2016051854911_2.html\"><img src=\"http://www.love84.com/uploads/allimg/160518/1126234Q4-1.jpg\" alt=\"夏装色彩搭配 蓝白就是这么合拍  夏装搭配图片\" title=\"夏装色彩搭配 蓝白就是这么合拍 \" data-bd-imgshare-binded=\"1\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>　　慵懒小女人</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　以波西米亚风或是宽松的荷叶边上衣搭配单宁单品，营造出上宽下窄的轮廓，休闲中不失女人味。</p>', '好看', '0', '2016-06-28 09:57:18', '', '', '0', '4005', '../../sub/6e446306-2153-11e6-be50-6451063c7c21_NaN1465801913.jpg', '1', '0', '综合', null, '2016-06-29 09:26:46', null);
INSERT INTO `nice_content` VALUES ('27962f63-3160-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '【星空图片】我们每个人都是宇宙中孤独的行星', '2', '0', '0', '<img src=\"../../content/1465819641.jpg\" style=\"margin: 10px 0px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>星空图片的素材,没有的自己右键！</span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\">楼主的另外一篇文章有打包的话，嫌麻烦就看看另外一篇文章吧！</div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819755.jpg\" style=\"margin: 10px 0px;\"><img src=\"../../content/1465819759.jpg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819774.jpg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>图片均来自网络，大小什么的也请不要介意&lt;(￣）￣)&gt;&nbsp;</span></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819794.jpg\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819797.jpg\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819800.jpg\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"../../content/1465819804.jpg\"></div>', '图片,素材', '0', '2016-06-24 21:12:50', '', '', '0', '4006', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465819626.jpg', '1', '0', '综合', null, '2016-06-29 09:26:49', null);
INSERT INTO `nice_content` VALUES ('2e834696-3111-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '除了撕书，还有哪些经典高考“仪式”？', '25', '0', '0', '<div style=\"margin-bottom: 10px; text-indent: 12px;\">福建省厦门市海沧实验中学，高三学生高考前释放压力，在教学楼前将废旧试卷和书页洒下，并高声呐喊“高考加油”，缓解压力。【导语】5月20日，厦门市海沧实验中学高三学生在教学楼前将废旧试卷和书页洒下，并大喊</div><div style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp;</div><div style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp;</div><div style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp;</div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"img\" src=\"http://p1.ifengimg.com/ifengimcp/pic/20160530/35e9d19cb00330abe163_size76_w940_h626.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>福建省<a href=\"http://app.travel.ifeng.com/city_detail_98\" rel=\"nofollow\">厦门</a>市海沧实验中学，高三学生高考前释放压力，在教学楼前将废旧试卷和书页洒下，并高声呐喊“高考加油”，缓解压力。&nbsp;<br><br><br>【导语】&nbsp;<br><br>5月20日，厦门市海沧实验中学高三学生在教学楼前将废旧试卷和书页洒下，并大喊“高考加油”，引发网上关注。随即，厦门市教育局下发了《关于做好高三年学生心理疏导工作的通知》：<br>“高考临近，近日个别高中校组织学生以撕书、吼楼等形式宣泄考前压力，并上传视频，在社会上造成了不良影响。” “撕书、吼楼等形式背离了学校育人的宗旨，同时也不是排解高考心理压力的正确方法，应予以纠正。”<br>《通知》还要求各高中严格规范管理，坚持正面引导，坚持正确的方式方法，科学开展高三年心理疏导工作，杜绝简单地通过组织学生撕书、吼楼等形式宣泄压力。<br>那么，除了撕书和“喊楼”，高考前你还见过什么特殊的仪式呢？<br><img alt=\"img\" src=\"http://p1.ifengimg.com/ifengimcp/pic/20160530/bf676d9be6155859cbd5_size87_w940_h596.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>5月24日，河北邯郸市峰峰矿区职教中心的高三学生在教室里做“跨越障碍”游戏。随着高考临近，该校针对高三学生开展一系列游戏和心理咨询等活动，帮助高三学生释放压力，调整心态，以轻松、乐观、自信的心态迎接高考。&nbsp;<br>最过瘾的撕书偶尔成悲剧&nbsp;<br><br>高考前撕书的源头已不可考，但是自2010年初见报端以来，发展到今天，高考撕书已从个别行为演变成一场全国性的狂欢表演。每年临近高考，关于撕书的新闻数量快赶上被撕的书本了，形式也从单一的撕书演变到撕书、踩书、扔书等花样百出。<br>一直以来，对撕书的行为网上存在着不同的声音。有人认为，学生撕书只是为了缓解紧张情绪，释放考试压力，同时也彰显了青春的活力，不应该过多地干预，刺激他们的情绪。但也有人认为，这种做法不仅破坏了环境，还表现出了对知识的不尊重，不一定要用撕书，可以用其他的方式来缓解压力。<br>撕书可能成为一件失控的事情。2014年5月30日上午，因不满老师制止他们的撕书行为，陕西长武县中学6名高三学生围殴一名50岁老师。“等到其他老师闻讯赶来制止时，曹老师的头上和脸上全是血，衣服也被整个染成了红色，光擦血的卫生纸就扔了半纸篓。而学生用来打人的三根拖把棍，也已被打断成好几截。” 主管政教工作的副校长谢林平说。<br>2015年6月3日晚上，有网友爆料称，当天下午，湖北咸宁高中三年级学生为在考前释放压力在教学楼撕书、扔书，结果此举引来校长朱大浩不满，他当场对一些学生拳打脚踢。校方称当时只是在劝阻学生离开危险区域过程中产生拉扯，并未动手打人。这一说法与《武汉晚报》起初对学生采访并不一致，微博博主小路称撕书活动快结束时，有人冲上来，把围观的学生给打了。相关人员不仅撕扯了女生头发，还把有的男生打伤。<br>为了防止学生撕书，除了像厦门市教育局这样的明文禁止式，还有“杀鸡儆猴”式的。2015年5月28日，湖北汉川实验高中在校内通报，该校7名高三学生因为往楼下撒纸张，被勒令退学。这则通报称，高三学生张某、周某等7人在5月27日晚自习课期间，无事生非，哗众取宠，向楼下抛撒纸张，扰乱了正常教学秩序，破坏了学校整洁文明，影响了其他同学复习备考。给予7人勒令退学、扣发毕业证、违纪处分记入个人档案。对此，该校雷校长表示，学校并未将他们勒令退学，这7名学生可以按时参加高考。至于学校电子屏上的通报，是做给其他学生看的。<br><img alt=\"img\" src=\"http://p0.ifengimg.com/ifengimcp/pic/20160530/543e32b3489d273d2f1f_size33_w600_h413.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>2014年，广东省深圳市，翠园中学在高考来临之际，举行高考喊楼活动，高三学生叠愿望纸飞机，把梦想飞向天空中，高一高二学生为高三学长加油助兴。&nbsp;&nbsp;<br>最受欢迎的“喊楼”并不能缓解压力&nbsp;<br><br>与撕书一样，“喊楼”也是各地高考前的保留节目。<br>“喊楼”起源于高校，即在毕业离校之时，学生们相约到同系同学宿舍楼下大声叫出心中的不舍与祝福。也有不少男生抓住“最后的机会”，借此向心仪女生“表白”。近几年，“喊楼”文化进入中学，成为各地中学为高三学子加油鼓气的重头戏。<br>2016年5月的一个晚上，福建晋江季延中学教学楼下的石板路上聚集了高一、高二年的1200多名学生，他们仰起头，向三、四、五楼的高三年学长学姐送上大声的祝福——“扬帆起航，乘风破浪，季延学子，再创辉煌”。“喊楼”是季延中学的一项传统活动，至今已开展了6年，高三五班学生颜凯莉说：“高一时，还不懂，跟着凑热闹；高二时，就有点感觉，想着明年该轮到我们了；现在，有感动也有不舍，很难说得清。”<br>除了正经的加油助威，还有“某某学长我爱你，明年北大去追你！” “考过富二代，战胜官二代”“苦过累过，高考必过”这类或大胆、或有趣的口号。<br>伴随着“喊楼”的，还有唱歌祝福的。新闻报道中，《海阔天空》《我的未来不是梦》《红日》等流行歌曲都成为“出镜率”很高的歌曲，并常常引起几个人的大合唱……<br>社会对“喊楼”行为的接受程度要远大于撕书，尽管它可能起不到缓解压力的作用。“每逢高考前，都有不少学生找我，咨询如何缓解压力。”福州八中心理教研室主任谢维兴说，他认为喊楼、撕书更多是体现一种团结的氛围，但对缓解压力并不会有什么作用。<br><img alt=\"img\" src=\"http://p0.ifengimg.com/ifengimcp/pic/20160530/6889561b52969d741cf2_size55_w480_h270.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>2014年，衡水二中高考百日誓师大会现场，200余名高二学生组成“高三加油”巨型红字。&nbsp;<br>最严肃的“仪式”：百日誓师大会&nbsp;<br><br>比起“喊楼”的草根，高考宣誓则是一个充满“官方”色彩的行为。<br>河北衡水中学在中国教育界一直有着特殊的地位，它是“超级中学”的代表，以军事化管理而闻名。2013年，《南方周末》刊发了《衡水中学的“封神”之路 ——超级高考工厂》，文章认为，完全可以把衡水中学当做一家工厂来看待，“现代企业的流水线终于被无缝移植到中学教育当中。教师们仿佛是往电路板上焊接元件的女工。”<br>衡水的高考誓师大会也成为了社会关注的焦点。2014年衡水二中的“百日誓师大会”上，全体高三学生身着整齐的校服，在操场上排出近30个方阵。方阵排头拉起红色条幅，上书“冲进重点孝爹娘”、“清华北大等我来”等标语。方阵中心的空地上，高二年级的300余名同学组成“高三加油”的巨型红字，为学长、学姐备战高考加油。<br>2013年，衡水二中百日誓师的视频传到网上后，引发了网友的争议。视频中，高三同学举起右拳宣誓：“13高考，谁与争锋，英雄少年，唯我二中，冲刺百天，着力巅峰，决战百天，我必成功！我必成功！我必成功！我必成功！”据当时统计，超过160万人次点击观看了视频。网友评论臧否不一，有人深受鼓舞，表示支持祝福<br><img alt=\"img\" src=\"http://p2.ifengimg.com/ifengimcp/pic/20160530/0288082e8b5886ceede8_size18_w440_h294.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>2015年，近千名高三陪读家长赶在零点时分抢拜“神树”，险酿火灾。&nbsp;<br>最传统的自我安慰：拜神&nbsp;<br><br>据媒体报道，5月21日，2016年高考前的最后一个阴历十五，被誉为“亚洲最大高考工厂”的安徽六安毛坦厂中学外，数百名陪读家长冒雨不断涌入该校“神树”所在的窄巷中，抢拜“头香”，祈愿孩子在高考中取得好成绩。<br>“拜神树”是毛坦厂中学的一个“传统项目”，许多人认为这一天，给神“烧头柱香”能带来好运。2015年，在拜神树过程中，香客们不断将手中的香火扔进火堆里，引燃了“神树”下方的石棉瓦顶棚和百余根祈福带，过旺的香火火势一时间难以控制。随后，众人长时间不间断灭火，才得已彻底控制火势。<br>2013年，从5 月7 日至10 日4 天的时间里，河南漯河市许慎文化园内，前前后后跪着千余名来自漯河市几所高中的“尖子生”。这些“尖子生”在学校的组织下，统一服装颜色和样式，向殿内的“文曲星”许慎“许夫子”行叩礼祭拜，祈愿在今年的高考中能“金榜题名”。<br>2014年6月，在四川绵阳梓潼县七曲山大庙内，不少家长和考生祈求魁星点斗，金榜题名，庙宇里的香烛最贵卖到了1498元。有的父母从上海或新疆等遥远的地方，“打飞的”到庙宇去烧香祈祷。<br>临考拜神，替孩子烧香，更像是家长们自己的情绪释放。<br><img alt=\"img\" src=\"http://p1.ifengimg.com/ifengimcp/pic/20160530/3a0624aa26a35dd4788e_size29_w440_h330.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>2015年，高考前一天，老师给学生们发红包。&nbsp;<br>不断创新的高考“仪式”&nbsp;<br><br>发钱：2015年6月6日，离高考只剩最后一天。在成都石室中学考点外，前来看考场的川师实外的高三学生们，每人都领到了一个十元钱的红包，还有各学科老师的手写祝福，诚意十足喔！老师们说，十块钱寓意十全十美，希望学生们都能够考试顺利。<br>送行：2015年6月5日，安徽六安市毛坦厂中学的四千多名高三及复读学生，从学校出发前往考场。学校共启用42辆大巴分批送考，几千名学生家长和当地居民夹道相送，祝福考生。当地交警出动10辆警车，40名警员，一路护送。<br>玩游戏：2014年，河南南阳卧龙区部分中学高三年级开展了高考前“减压”游戏活动，让考生通过参与“扔气球”等各种“减压”游戏来释放紧张心情。“高考加油，压力BYE BYE …”在市十五中学校园内，高三年级学生王娇和全班同学一起，把一大堆写满各种字的气球扔到了教学楼下，气球上写的内容都是同学们对考试的忧虑和担心，看着气球被扔到楼下，全班同学一起放声大笑。<br><img alt=\"img\" src=\"http://p2.ifengimg.com/ifengimcp/pic/20160530/d666a57318a9ddb37ad5_size42_w440_h293.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>2015年，毛坦厂中学，几千名学生家长和当地居民夹道相送，祝福考生。&nbsp;<br>东亚国家高考文化，谁也不比谁差&nbsp;<br><br>事实上，不仅是在中国，国外的考生和家长为了“高考”也做出过许多“奇怪”的举动。<br>韩国在每年11月份第二周的周四进行高考，名为“大学修业能力考试”。考试从当天上午8时40分开始，下午5时结束。从考前的数周起，家长就会准备不同的午餐菜单。传统的米糕和巧克力被认为能给考生带来好运气，按照韩国风俗，年糕有黏性，寓意考生能牢记知识。然而考生最忌讳的是吃海带，因为海带比较油腻，吃了有落榜之嫌。<br>叉子（刺中正确答案）和卫生纸（韩语中与“解决问题”谐音）是高考考生的吉祥礼物。将考生姓名贴在学校大门口可能帮他们金榜题名，并且学弟学妹们敲锣打鼓地举着横幅也被视为有同样的奇效。高考当日，同校的低年级学生都会早早来到校门口，聚集起来为赴考的学长学姐们呐喊、打气，横幅、旗鼓、民族服装、跪拜大礼齐上阵，以示衷心祝福。<br>在日本，据外媒2014年报道，考拉可以长时间挂在树上，即使睡觉也不会掉下来。许多日本考生认为考拉粪便能够传递这种坚韧精神，为此其已经成为考前最好礼物。<br>在日本大学入学考试之前，许多学生互送考拉粪便作为考前礼物。这种怪异礼物非常受欢迎，以至于名古屋市东山动物园在不到10分钟时间里，就将装有考拉粪便和手写纸条的小袋子分发一空。<br><img alt=\"img\" src=\"http://p0.ifengimg.com/ifengimcp/pic/20160530/552fc8efdf53c56217e4_size236_w934_h639.jpg\" style=\"margin: 10px 0px;\">&nbsp;<br>2015年报道，韩国高考考场外，一众学弟学妹实施跪拜，为师兄师姐加油打气。&nbsp;<br>仪式有助激励考生&nbsp;<br><br>不管争议多大，撕书、喊楼、拜神等行为都逐渐仪式化而被一年又一年地传承下来。法国社会学家涂尔干研究了宗教的仪式后说：“仪式是在集合群体中产生的行为方式，它们必定要激发、维持或重塑群体中的某些心理状态。”因为仪式具有强化认同感，赋予勇气的作用。高考前的这些集体仪式性的行为，可以激发考生集体性的亢奋，提供给他们勇气和信心，让他们能够在最后一段时间互相激励，坚定前行。从这方面上讲，这些行为有正面的意义。</p></div>', '仪式', '0', '2016-06-25 09:58:32', '', '', '0', '4007', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465785902.jpg', '1', '0', '综合', null, '2016-07-01 11:02:33', null);
INSERT INTO `nice_content` VALUES ('352f877f-3164-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '高大上有木有? Android那些\"高端\"领域', '0', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp; &nbsp; 现如今的<a href=\"http://detail.zol.com.cn/cell_phone_index/subcate57_list_s1398_1.html\">Android</a>系统可以说早已深入到千家万户。用户对Android应用的巨量需求，催生了五花八门的APP。在遍地开花的安卓应用中，软件的用途几乎充斥了工作、学习、生活的方方面面，而在一些高端领域，普通用户接触较少的方面，则赋予了Android几分神秘的色彩，相信这也是大家感到好奇的地方。那么本文接下来的内容中，我们就一起来探讨一下Android应用所涉及到的那些直接与“高科技”挂钩的高大上领域。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span></span><img alt=\"高大上有木有? Android那些&quot;高端&quot;领域 \" src=\"http://article.fd.zol-img.com.cn/t_s640x2000/g4/M07/06/02/Cg-4WVS018qIMgs0AAGl-28lCd4AASfWwF9ALMAAaYT477.jpg\" style=\"margin: 10px 0px;\"><br><strong>高大上有木有?&nbsp;Android那些\"高端\"领域</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp;&nbsp;&nbsp;&nbsp;据笔者所知，在早前时期，当茶余饭后聊起Android和iOS之时，至少有大部分人会觉得除了系统上的差异性以外，两大平台应用程序之间的差别成为最火爆的“槽点”之一。这就说到了点子上，Android程序在过去，只要被拿来与iOS应用相提并论，众多的怨言也许就会纷纷而来。诸如APP设计差、体验糟糕、风格掉档次等等这些。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://detail.zol.com.cn/picture_index_1476/index14755257.shtml\"><img alt=\"高大上有木有? Android那些&quot;高端&quot;领域 \" src=\"http://article.fd.zol-img.com.cn/t_s640x2000/g4/M07/08/0E/Cg-4zFS2V-2IfqdHAAELhHzYNpcAASqRwEKPX0AAQuc503.jpg\" style=\"margin: 10px 0px;\"></a><br><strong>Android应用水准正在接近iOS</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　但事实上，Android从4.1起，系统本身的流畅程度已经达到了一个比较好的水准。问题主要集中在App方面，目前大量Android应用远不如iOS版。不过实事求是的讲，的确有越来越多的Android应用正在接近iOS版，一部分甚至超越了iOS，而进入到了一些相对高端应用维度。Android本身绝非“灰土气”而难登大雅之堂。</p>', 'Android', '0', '2016-06-27 09:57:22', '', '', '0', '4008', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465821698.jpg', '1', '0', '综合', null, '2016-06-29 09:26:56', null);
INSERT INTO `nice_content` VALUES ('37e21fdc-3115-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '《勇闯银河系》中文智能安装版下载[1.94GB]', '3', '0', '0', '<p><font size=\"5\"><span><a href=\"http://bbs.gamersky.com/thread-2465831-1-1.html#Soft\">&gt;&gt;下载地址&lt;&lt;</a></span></font></p><p>&nbsp;</p><p>【游戏封面】</p><p>&nbsp;</p><p><a href=\"http://img1.gamersky.com/image2016/06/20160603_ljy_126_1/gamersky_01origin_01_201663113755E.jpg\" target=\"_blank\"><img alt=\"游民星空\" src=\"http://img1.gamersky.com/image2016/06/20160603_ljy_126_1/gamersky_01small_02_20166311378B2.jpg\" border=\"0\"></a></p><p><br></p><p>中文名称：勇闯银河系<br>游戏名称：Rebel Galaxy<br>游戏类型：即时战略<br>游戏制作：Double Damage&nbsp;<br>游戏发行：Double Damage&nbsp;<br>游戏平台：PC<br>上市时间：2015年10月20日<br>官方网址：<a target=\"_blank\" href=\"http://rebel-galaxy.com/\">点击进入</a></p><p>&nbsp;</p><p><a target=\"_blank\" href=\"http://www.gamersky.com/z/rebelgalaxy/\">游民星空勇闯银河系专区</a></p><p><br></p><p>版本：免安装中文未加密正式版，已整合v1.08升级档，解压安装即可玩。</p><p><br></p><p>运行：</p><p>1、解压缩</p><p>2、安装游戏</p><p>3、桌面快捷开始游戏</p><p>注：游戏文件部分杀软报毒查杀，添加信任列表后恢复即可。</p><p>&nbsp;</p><p>【游戏简介】</p><p>&nbsp;</p><p>　　《勇闯银河系》是一款由Double Damage Games工作的即时战略游戏。游戏拥有绚丽的画质，激烈的空战和神秘的宇宙探索。而玩家在游戏中扮演太空船的指挥官，在宇宙中调查怪异的现象、对抗太空强盗，寻找稀有矿物，同时将会与当地居民互动，另外，战斗采用即时制。</p>', '勇闯银河系,中文游戏', '0', '2016-06-27 21:08:45', 'http://bbs.gamersky.com/thread-2465831-1-1.html#Soft', '', '1', '4009', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465787759.jpg', '1', '0', '游戏', null, '2016-06-29 09:27:00', null);
INSERT INTO `nice_content` VALUES ('3b88591e-3145-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', '可编程玩具：做模型学编程两不误', '5', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">可编程玩具就是往玩具的控制芯片里输入一段指令，让它按着你编写的指令来运行，由于可玩性高还能在玩耍中锻炼到思维能力，因此越来越受到小朋友的青睐。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.fsdpp.cn/d/file/sheji/2016-04-18/0b04a920a33858723cc347cc378488cd.jpg\" target=\"_blank\"><img src=\"http://www.fsdpp.cn/d/file/sheji/2016-04-18/0b04a920a33858723cc347cc378488cd.jpg\" border=\"0\" alt=\"\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">这款由 ZeGoBeast 设计的可编程<a href=\"http://www.fsdpp.cn/zhuanti/jiqiren.html\" target=\"_blank\">机器人</a>有别于普通可编程玩具，首先需要你开动脑筋，动手将一个个相当零散的小木板部件组装成一个模型整体，这过程使孩子对机械知识有初步了解。要让其运行起来，还需编写指令输入到电子控制板里。设计团队还制作帮助手册和光盘教程，指导孩子编程。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.fsdpp.cn/d/file/sheji/2016-04-18/150165e2f0fdcf089fb6f9eb80b0714f.jpg\" target=\"_blank\"><img src=\"http://www.fsdpp.cn/d/file/sheji/2016-04-18/150165e2f0fdcf089fb6f9eb80b0714f.jpg\" border=\"0\" alt=\"\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">目前这个编程玩具在 Kickstarter 上众筹，预订价为249美元。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.fsdpp.cn/d/file/sheji/2016-04-18/4fe9152e3b6e02c0ef05b21af42a4ec5.jpg\" target=\"_blank\"><img src=\"http://www.fsdpp.cn/d/file/sheji/2016-04-18/4fe9152e3b6e02c0ef05b21af42a4ec5.jpg\" border=\"0\" alt=\"\" style=\"margin: 10px 0px;\"></a></p>', '创意产品', '0', '2016-06-28 10:32:48', '', '', '0', '4010', '../../sub/6e446306-2153-11e6-be50-6451063c7c21_NaN1465808400.jpg', '1', '0', '综合', null, '2016-07-01 10:44:25', null);
INSERT INTO `nice_content` VALUES ('3fea686d-3166-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '为什么有人认为网易云音乐是业界良心？', '0', '0', '0', '<div style=\"margin-bottom: 10px; text-indent: 12px;\">作者：233u<br>链接：https://www.zhihu.com/question/24495947/answer/31282971<br>来源：知乎<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。<br><br><div style=\"margin-bottom: 10px; text-indent: 12px;\">看看Android手机客户端 <br><br><b>对比对象：</b><br><ul><li>网易云音乐，<br></li><li>虾米好声音，<br></li><li>QQ音乐，</li></ul>均为截至2014.10.1的最新版 <br><br><b>界面：</b><br><noscript>&amp;lt;img src=\"https://pic4.zhimg.com/1e16ec7a6ad368273ac42a7f7a934507_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic4.zhimg.com/1e16ec7a6ad368273ac42a7f7a934507_r.jpg\"&amp;gt; QQ </noscript><img src=\"https://pic4.zhimg.com/1e16ec7a6ad368273ac42a7f7a934507_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic4.zhimg.com/1e16ec7a6ad368273ac42a7f7a934507_r.jpg\" data-actualsrc=\"https://pic4.zhimg.com/1e16ec7a6ad368273ac42a7f7a934507_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> QQ <noscript>&amp;lt;img src=\"https://pic4.zhimg.com/7f0b3600f8a152626e33123faad1c007_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic4.zhimg.com/7f0b3600f8a152626e33123faad1c007_r.jpg\"&amp;gt; 虾米 </noscript><img src=\"https://pic4.zhimg.com/7f0b3600f8a152626e33123faad1c007_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic4.zhimg.com/7f0b3600f8a152626e33123faad1c007_r.jpg\" data-actualsrc=\"https://pic4.zhimg.com/7f0b3600f8a152626e33123faad1c007_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> 虾米 <noscript>&amp;lt;img src=\"https://pic4.zhimg.com/d2193ca45ccd6d33d5b5930b345bbc6b_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic4.zhimg.com/d2193ca45ccd6d33d5b5930b345bbc6b_r.jpg\"&amp;gt; 网易 </noscript><img src=\"https://pic4.zhimg.com/d2193ca45ccd6d33d5b5930b345bbc6b_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic4.zhimg.com/d2193ca45ccd6d33d5b5930b345bbc6b_r.jpg\" data-actualsrc=\"https://pic4.zhimg.com/d2193ca45ccd6d33d5b5930b345bbc6b_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> 网易 <br><br>其中，只有网易云音乐界面不是照搬iOS的，还有点Android风格（就他能左右划）。 <br><br><b>通知栏播放器： </b><noscript>&amp;lt;img src=\"https://pic2.zhimg.com/59dddeb1e7d0189b6a6f1d747a5a35c9_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic2.zhimg.com/59dddeb1e7d0189b6a6f1d747a5a35c9_r.jpg\"&amp;gt; QQ </noscript><img src=\"https://pic2.zhimg.com/59dddeb1e7d0189b6a6f1d747a5a35c9_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic2.zhimg.com/59dddeb1e7d0189b6a6f1d747a5a35c9_r.jpg\" data-actualsrc=\"https://pic2.zhimg.com/59dddeb1e7d0189b6a6f1d747a5a35c9_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> QQ <noscript>&amp;lt;img src=\"https://pic2.zhimg.com/8482fb9d80a3255361f58b861f81c80d_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic2.zhimg.com/8482fb9d80a3255361f58b861f81c80d_r.jpg\"&amp;gt; 虾米 </noscript><img src=\"https://pic2.zhimg.com/8482fb9d80a3255361f58b861f81c80d_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic2.zhimg.com/8482fb9d80a3255361f58b861f81c80d_r.jpg\" data-actualsrc=\"https://pic2.zhimg.com/8482fb9d80a3255361f58b861f81c80d_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> 虾米 <noscript>&amp;lt;img src=\"https://pic3.zhimg.com/69a1875c168e3195ef82823803043f46_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic3.zhimg.com/69a1875c168e3195ef82823803043f46_r.jpg\"&amp;gt;网易 </noscript><img src=\"https://pic3.zhimg.com/69a1875c168e3195ef82823803043f46_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic3.zhimg.com/69a1875c168e3195ef82823803043f46_r.jpg\" data-actualsrc=\"https://pic3.zhimg.com/69a1875c168e3195ef82823803043f46_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\">网易 <br><br><br>只有网易用的原生风格播放器.  <br><br><br><b>锁屏： </b><noscript>&amp;lt;img src=\"https://pic4.zhimg.com/c462fd33890972eb665a97a0c7291393_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic4.zhimg.com/c462fd33890972eb665a97a0c7291393_r.jpg\"&amp;gt;\nQQ\n</noscript><img src=\"https://pic4.zhimg.com/c462fd33890972eb665a97a0c7291393_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic4.zhimg.com/c462fd33890972eb665a97a0c7291393_r.jpg\" data-actualsrc=\"https://pic4.zhimg.com/c462fd33890972eb665a97a0c7291393_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\">\nQQ\n<noscript>&amp;lt;img src=\"https://pic3.zhimg.com/b4edc3cace8630dcd1e3f5806c6a7706_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic3.zhimg.com/b4edc3cace8630dcd1e3f5806c6a7706_r.jpg\"&amp;gt; 虾米 </noscript><img src=\"https://pic3.zhimg.com/b4edc3cace8630dcd1e3f5806c6a7706_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic3.zhimg.com/b4edc3cace8630dcd1e3f5806c6a7706_r.jpg\" data-actualsrc=\"https://pic3.zhimg.com/b4edc3cace8630dcd1e3f5806c6a7706_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> 虾米 <noscript>&amp;lt;img src=\"https://pic4.zhimg.com/72ab59f54297728c0fef361b15b90e0b_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" class=\"origin_image zh-lightbox-thumb\" width=\"1080\" data-original=\"https://pic4.zhimg.com/72ab59f54297728c0fef361b15b90e0b_r.jpg\"&amp;gt; 网易</noscript><img src=\"https://pic4.zhimg.com/72ab59f54297728c0fef361b15b90e0b_b.jpg\" data-rawheight=\"1920\" data-rawwidth=\"1080\" data-original=\"https://pic4.zhimg.com/72ab59f54297728c0fef361b15b90e0b_r.jpg\" data-actualsrc=\"https://pic4.zhimg.com/72ab59f54297728c0fef361b15b90e0b_b.jpg\" data-lazyloaded=\"\" style=\"margin: 10px 0px;\"> 网易<br><br>只有网易用的系统原生锁屏插件, 其余俩是自己做了个锁屏, 锁屏界面按home键还能正常进系统一刚. <br><br><b>所以, 谁在认真做Android客户端, 谁在做这个平台符合规范的事情, 高下立判. </b><br><br><br>另, 三家里只有一家能从自家的音乐平台里找自家CEO的账号和歌单, 上一个我看到这么干的, 是jing的施凯文.</div></div>', '播放器,好用', '0', '2016-06-28 09:57:27', '', '', '0', '4011', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465822587.jpeg', '0', '0', '综合', null, '2016-06-29 09:27:07', null);
INSERT INTO `nice_content` VALUES ('43150308-3117-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '家长联名要求\"熊孩子\"退学 学校:不抛弃不放弃', '0', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://p34.qhimg.com/dmfd/__90/t01bcbffe4ef2b426b2.jpg?size=800x600\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">新华报业网讯 6月12日上午，南京浦口琅琊路小学威尼斯水城分校门前，聚集了众多该校学生家长，称他们的孩子都在三年级某班就读，家长们集体“维权”，提出了给自己孩子调换班级，或者要求班上一调皮“熊孩子”退学的要求。而学校坚持，不抛弃不放弃帮助“熊孩子”。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>现场 众家长们学校门口要求“熊孩子”退学</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">从今天早晨开始，家长们就聚集在了南京浦口琅琊路小学威尼斯水城分校的门口“维权”。他们告诉记者，孩子在该校三年级某班就读，这个班上有一名男孩冬冬(化名)非常顽皮。在其他家长看来，冬冬就是那种典型的“熊孩子”:上课不认真听讲，欺负别的同学。经常搞恶作剧，也因此让不少孩子都受伤了。一些家长数落说，“我家孩子已经被他打过很多次了，都害怕见到他。”“这个孩子，还有攻击性。别的孩子都怕他……”“早点退学算了，我们可以帮你想办法……”“他这样影响其他人的学习，也太自私了吧……”“就是在前一段时间，他把我孩子的身上还咬了。”家长们说，冬冬除了搞恶作剧外，上课时也经常到处乱跑，扰乱正常的教学秩序。家长们认为，孩子班上有这么一位同学冬冬让他们很不放心，担心孩子学习受到影响，人身安全得不到保障。因此他们希望学校能劝退冬冬，或者调换班级。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">“我们都怕再次受到伤害，教育局我们也去过很多趟，但是教育局说九年义务教育也不能劝退，但是这个孩子最近攻击越来越频繁。”家长们说。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>调查 众家长们反映的情况基本属实</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">面对众家长们学校门口要求“熊孩子”退学的数落，家长们所说的是事实吗?随后，记者联系上了学校的相关负责人。该负责人说，这些家长所反映的情况基本属实，从二年级开始，冬冬就经常会有一些顽劣的行为，一直比较淘气，有攻击性。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">“这孩子确实太顽皮，大闹，恶作剧，在课堂上到处乱跑，扰乱秩序，确实是这样子的。”南京浦口琅琊路小学威尼斯水城分校赵副校长介绍说。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">一个三年级的男孩为何有这样的行为呢?冬冬的父亲介绍说，他家里一共三个孩子，冬冬排行老二，自己和妻子工作较忙，陪伴孩子的时间确实不多，但是其他两个孩子都很乖巧。其他家长说的情况有的是属实的，但有时冬冬去攻击其孩子也是而原因的，有别的孩子搞怒了他。“我们陪伴他的时间确实不多，但是我始终教育他要成人成才，不要做伤害别人的事情。他在家很好，一看到同学都兴奋。我的其他两个孩子都很好，很乖巧的，不知道他为什么这样。”冬冬的父亲说，为了找出原因，他曾经带孩子到上海、南京几大医院就诊，但是都没有发现问题。他希望其他家长和同学能给儿子一些空间，不要特意去打扰他和拍摄视频，下面他也会尽到家长的责任。“我已经有一个月的时间什么事情都不做，天天在家陪伴他了，陪他聊天什么的，也希望大家互相尊重。”冬冬的父亲说。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>学校 不抛弃不放弃学校坚持帮助“熊孩子”</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">针对其他家长提出的要求男孩退学或者调换班级的诉求，南京浦口琅琊路小学威尼斯水城分校相关负责人说，学校很能理解家长们的感受，但是根据我国义务教育法的规定，学校是没有权力劝退任何一名学生的，每一名孩子都有接受义务教育的权利。他们也已经请男孩的家长到学校来陪读，效果在慢慢体现。而作为学校，他们会尽最大的力量帮助这名孩子，避免他对其他同学造成伤害。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">学校一直很关注该班，学校领导亲自担任该班班主任，加强对该生教育。经学校多次与冬冬的家长沟通，冬冬的家长已于上周来校陪读，即使因特殊情况无法陪读时，学校也会安排教师轮流陪伴，保证其接受正常教育，并确保其他孩子也能得到良好学习环境。目前，学校已经向省市教育、心理专家寻求帮助，聘请专家对孩子进行心理辅导。在学校及家长努力之下，该生表现已经有所好转。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">对于众多家长的诉求，学校多次给予了解释，一方面请家长能够将心比心、换位思考，不仅要关心自己的孩子，也要关爱他人的孩子;另一方面也明确地告诉家长们，每一个孩子都有接受义务教育的权利，学校更有责任关心呵护学习有困难的孩子，有点心理问题的孩子不能也不应受到歧视。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">“我们准备这样做，由校长书记年级组长对孩子进行一对一的陪读，坐在他的座位旁边陪读，他到哪里学校的相关负责人就到哪里，避免对其他孩子造成伤害。”赵副校长说。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">同时，针对家长相关诉求，浦口区区教育局主要领导也和家长代表们进行了对话，宣传了国家相关教育政策。学校认为，对待家长们的合理诉求，学校全力解决，对于明显超出法律法规要求的，学校不能给予满足。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">为了解决这个问题，做好家长的沟通工作，浦口区教育局也曾经安排专家来对这名男孩的行为举止进行评估，但是评估时孩子并没有出现异常举动。在这种情况下，浦口区教育局决定对男孩进行心理疏导。南京浦口区教育局基础教育科王科长表示，“我们今天早晨在做这样一个工作，跟相关高校取得联系，请求他们的帮助，由他们派出最专业的心理疏导专家来对孩子进行辅导，帮助孩子改正和进步。”浦口区教育局认为，在做好个体帮扶工作的同时，他们也会积极与双方家长进行沟通。从目前来看，这名男孩肯定要在集体中生活学习，因此调换班级的可能性不大，在这种情况下，他们希望男孩的家长能做好家庭教育工作，其他家长能多一些宽容，帮助孩子一同成长。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">新华报业全媒体记者 卢斌</p>', '熊孩子,高考', '0', '2016-06-28 09:57:28', '', '', '0', '4012', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465788664.jpg', '1', '0', '综合', null, '2016-06-29 09:27:11', null);
INSERT INTO `nice_content` VALUES ('495890ea-3394-11e6-b749-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', 'Xbox老大：所有第一方大作都将登陆PC平台', '5', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">　 &nbsp;据外媒PCgamer报道，Xbox主管Phil Spencer称微软不会以游戏独占来逼迫玩家购买主机，未来所有的第一方大作都将登陆PC平台。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　在今年微软E3发布会上，我们已经<u><font size=\"2\">注意到了很多微软的大作都标明了将会登陆Xbox以及Win10，据微软称希望打造更加一体的体验，不会让平台成为玩家的阻碍。因此看来，微软势必将会把Xbox游戏统统搬上Win10，为Win10开路</font></u><font size=\"7\">。</font></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gamersky.com/image2016/06/20160616_lmh_241_1/gamersky_02origin_03_2016616840B1E.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　“我们希望玩家购买Xbox的原因是想要舒服地坐在沙发上，用家里的大电视来玩自己喜欢的游戏，这与在PC上玩游戏的体验是不一样的。单纯从物理层面上考虑的话，PC平台上是绝对可以玩《光环》的。”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　那么为什么《光环5》不登陆PC平台呢？Phil Spencer解释道微软与343是着眼于未来：“我们当然可以拿去年的游戏，返返工登陆PC，但更希望能拿出新的作品。”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>“当然大家可以说我拿《极限竞速》的半成品登陆PC平台，但在将来，《极限竞速》游戏将全部登陆PC。”</span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span><img src=\"http://img1.gamersky.com/image2016/06/20160616_lmh_241_1/gamersky_01origin_01_20166168403C8.jpg\" style=\"margin: 10px 0px;\"></span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"></p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><span>PC平台上的《极限竞速6：巅峰》是《极限竞速》游戏的不完全登陆</span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　那么《极限竞速》都登陆PC平台了，《光环》呢？Phil Spencer并没直接回应，他只是说到所有的微软第一方大作都将会登陆PC平台。这似乎意味着不仅是《光环》，还有更多独占游戏将登陆PC。</p><img src=\"../../content/1466062235.jpg\"><div style=\"text-align: center;\"><font size=\"7\"><u><b>你好毒</b></u></font></div>', 'Xbox1,212', '0', '2016-06-28 15:31:11', '', '', '0', '4040', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_40401466062228.jpg', '1', '1', '生活', null, '2016-06-29 09:43:32', null);
INSERT INTO `nice_content` VALUES ('54ec1789-3161-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '十大“约炮”聊天软件排名：陌陌第二 第一是微信', '2', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732591.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO10、tataUFOtataUFO是一个针对高校学生的社交平台，高校是荷尔蒙的集中发酵区，早先的 Facebook、Tinder都是从学生中做异性经济起家，tataUFO就是聚焦于大学生社交 ，每天晚上十点钟为你推送一个其他学校的异性。用户可以选择 “Like” 或 “Pass”，“Like” 后向对方发送通知，如果对方也中意的话，将可以交换真实姓名和联系方式。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732425.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO9、派派同城交友派派是一款基于手机聊吧的陌生人交友工具，你可以在派派上认识不同兴趣、不同地域的小伙伴，用户在聊吧中可以进行无门槛沟通，还能给心仪的Ta送上虚拟礼物，搭讪交友更方便!你可以查看对方的个人信息以及交友兴趣、地理位置，免费发送文字和语音消息，好友间还可以免费拨打网络电话。通过“先聊天，再交友”更高效地找到志同道合的新朋友。派派，让你1分钟交到新朋友!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732379.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO8、羞小白羞小白一个基于熟人的匿名社交手机软件，让羞于直接表达的人或难以直接表述的事进行匿名表达。有些话反而很难说出口?想跟男神女神表白，却又不好意思直接开口?想和朋友们说悄悄话，下载羞小白app，随意选择一个马甲，就可以尽情地匿名和好友聊天，有什么话都可以尽情地说，再也不用羞涩，也不用顾忌。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732531.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO7、柏拉图所谓的一见钟情钟的不过是颜，在这是看脸的时代，没有姣好的面孔，谁愿意去慢慢了解你的内心。柏拉图一款先聊天再看脸的恋爱交友app，不再看脸说话，首创照片随聊天数增加渐渐清晰的交友玩法，更有好玩儿的语音留声机、心情聊天室功能，让你玩的根本停不下来。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732332.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO6、某某某某是一款全新的移动社交应用，给你全新私密约会体验。某某除了帮你筛选你的优质的好友，还会智能推荐你好友的好友;悄悄喜欢你这些好友，在他们也悄悄喜欢你以后，你们可以立即开始私密聊天。某某的全新聊天方式提供文字、语音、与图片信息，对方阅读后五秒即销毁，充分保护您的隐私，让您无虑畅聊。NO7、柏拉图所谓的一见钟情钟的不过是颜，在这是看脸的时代，没有姣好的面孔，谁愿意去慢慢了解你的内心。柏拉图一款先聊天再看脸的恋爱交友app，不再看脸说话，首创照片随聊天数增加渐渐清晰的交友玩法，更有好玩儿的语音留声机、心情聊天室功能，让你玩的根本停不下来。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732545.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO5、遮遮遮遮，屏蔽“脸”这个最大的黑洞，让人们的视线重新回到真实的部分中来。遮住脸后，P图变的没有意义，可以更自由更安全的分享更真实的东西，不用担心会自己的信息被曝光，选择性的分享自己的亮点。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732877.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO4、友加友加是一款面向年轻用户群的基于位置的移动即时社交应用 ，你可以通过友加发现全球任意距离范围内的陌生人或者朋友，查看对方个人信息和位置，免费发送短信、照片、语音和短视频。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732332.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO3、遇见在遇见里，邂逅是不分季节、时间、地域和性别的。我，不要青石路间与你的擦肩而过，不要只是餐厅隔座与你对视而望，不要公交车上只看你上下。我想要的，是手牵手，跟你一起走。几寸的遇见里，拥有广阔天地。Mr Right，邻家大男孩，萌妹纸，可爱萝莉，只要你想，TA就在你身边!遇见你，找到我!</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732779.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO2、陌陌陌陌早些年可以说是社交的龙头老大，无奈后面堕落了，被微信给比上去了，不过相对于陌陌上群众基础很大，流动性也比较快，搜寻一个好炮犹如大海捞针，没事儿的时候你就可以查查附近的陌生人，你的女神讲不准就出现了，不过陌陌约炮要把握好尺度和节奏，不可过快，没事儿揣摩下女神的心理吧，有助于提高成功率。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://qimg.hxnews.com/2016/0608/1465349732158.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">NO1、微信微信相信都不用多做介绍，这款软件无疑是现在最火的约炮神器，不管是摇一摇还是查周边，都为交友提供了一个很便利的渠道，而且朋友圈已成为了中国最流行的SNS社区之一。</p>', '排名,微信,陌陌', '0', '2016-06-25 09:57:31', '', '', '0', '4013', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465820461.jpg', '1', '0', '综合', null, '2016-06-29 09:27:19', null);
INSERT INTO `nice_content` VALUES ('553a7de2-315c-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '生活不止眼前的苟且在线下载', '3', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">生活不只眼前的苟且歌词：</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">妈妈坐在门前，哼着花儿与少年</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">虽已时隔多年，记得她泪水涟涟</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">那些幽暗的时光，那些坚持与慌张</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">在临别的门前，妈妈望着我说</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">生活不止眼前的苟且，还有诗和远方的<a nameid=\"95260\">田野</a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">你赤手空拳来到人世间，为找到那片海不顾一切</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">她坐在我对面，低头说珍重再见</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">虽已时隔多年，记得她泪水涟涟</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">那些欢笑的时光，那些誓言与梦想</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">在分手的街边，她紧抱住我说</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">生活不止眼前的苟且，还有诗和远方的田野</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">你赤手空拳来到人世间，为找到那片海不顾一切</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">我独自渐行渐远，膝下多了个少年</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">少年一天天长大，有一天要离开家</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">看他背影的成长，看他坚持与回望</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">我知道有一天，我会笑着对他说</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">生活不止眼前的苟且，还有诗和远方的田野</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">你赤手空拳来到人世间，为找到那片海不顾一切</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">最下方车票处有资源哦！</p>', '许巍,民谣', '0', '2016-06-28 09:57:33', 'http://pan.baidu.com/s/1o8rh8Wa', 'xgtn', '1', '4014', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465818193.png', '1', '0', '娱乐', null, '2016-06-29 09:27:22', null);
INSERT INTO `nice_content` VALUES ('57a6517c-3165-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '火影忍者', '20', '4', '1', '<div style=\"margin-bottom: 10px; text-indent: 12px;\"><h1>火影忍者</h1></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><a title=\"点击查看大图\" href=\"http://baike.sogou.com/PicBooklet.v?relateImageGroupIds=&amp;lemmaId=75345207&amp;now=http%3A%2F%2Fugc.qpic.cn%2Fbaikepic2%2F7685%2F20150325070639-113715415.jpg%2F0&amp;type=1\" target=\"_blank\"><img title=\"火影忍者\" alt=\"\" src=\"http://ugc.qpic.cn/baikepic2/7685/20150325070639-113715415.jpg/300\" style=\"margin: 10px 0px;\"></a></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div><p style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp; &nbsp;根据<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=87927&amp;ss_c=ssc.citiao.link\">岸本齐史</a>的漫画《火影忍者》第一部改编制作的同名动画，是《火影忍者》动画的第一期，自2002年10月开始在<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=674667&amp;ss_c=ssc.citiao.link\">东京电视台</a>播出，共220话；第二期动画《<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=404265\" target=\"_blank\" ss_c=\"ssc.citiao.link\">火影忍者疾风传</a>》自2007年2月开始播出，集数累加计算。共680集未完结...</p><table><tbody><tr><td><table><tbody><tr><th>中文名</th><td>火影忍者</td></tr><tr><th>出版社</th><td><a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=674667&amp;ss_c=ssc.citiao.link\">东京电视台</a>、Studio Pierrot</td></tr><tr><th>其他名称</th><td>狐忍</td></tr><tr><th>类&nbsp;&nbsp;&nbsp;&nbsp;型</th><td><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=616645\" target=\"_blank\" ss_c=\"ssc.citiao.link\">少年漫画</a>、励志</td></tr><tr><th>揭载号</th><td>1999年43号</td></tr><tr><th>播放期间</th><td>2002年10月3日－2007年2月8日</td></tr><tr><th>集&nbsp;&nbsp;&nbsp;&nbsp;数</th><td>目前674集</td></tr></tbody></table></td><td><table><tbody><tr><th>原作者</th><td><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=87927\" target=\"_blank\" ss_c=\"ssc.citiao.link\">岸本齐史</a></td></tr><tr><th>原版名称</th><td>NARUTO -ナルト-</td></tr><tr><th>地&nbsp;&nbsp;&nbsp;&nbsp;区</th><td><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=6698\" target=\"_blank\" ss_c=\"ssc.citiao.link\">日本</a></td></tr><tr><th>制片人</th><td>具嶋朋子，小林教子，萩<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=69715040&amp;ss_c=ssc.citiao.link\">野贤</a></td></tr><tr><th>出品人</th><td>朴谷直治</td></tr><tr><th>动画制作</th><td><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7820698\" target=\"_blank\" ss_c=\"ssc.citiao.link\">Studio Pierrot</a></td></tr><tr><th>播放电视台</th><td><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=674667\" target=\"_blank\" ss_c=\"ssc.citiao.link\">东京电视台</a></td></tr></tbody></table></td></tr></tbody></table><div style=\"margin-bottom: 10px; text-indent: 12px;\"><h2><a>动漫背景</a></h2></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">《火影忍者》是日本漫画家岸本齐史的代表作，作品自1999年开始在<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=642932&amp;ss_c=ssc.citiao.link\">《周刊少年JUMP》</a>上连载后，读者反应非常热烈。随后，《火影忍者》的TV动画在日本东京电视台播放，成为最受欢迎的<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7662118&amp;ss_c=ssc.citiao.link\">动漫作品</a>之一。故事成功地将原本隐藏在黑暗中，用世界上最强大的毅力和最艰辛的努力去做最密不可宣和隐讳残酷的事情的忍者，描绘成了太阳下最值得骄傲最光明无限的的职业。</p><div style=\"margin-bottom: 10px; text-indent: 12px;\"><h2><a>剧情简介</a></h2></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span><a title=\"点击查看大图\" href=\"http://baike.sogou.com/PicBooklet.v?relateImageGroupIds=&amp;lemmaId=75345207&amp;now=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20140711%2F20140711204224-2077372952.jpg&amp;type=1\" target=\"_blank\"><img title=\"\" alt=\"\" src=\"http://ugc.qpic.cn/baikepic/47671/cut-20140711204235-1199732697.jpg/0\" style=\"margin: 10px 0px;\"></a></span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">十多年前一只拥有巨大威力的妖兽“<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=741295&amp;ss_c=ssc.citiao.link\">九尾妖狐</a>”袭击了<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=439309&amp;ss_c=ssc.citiao.link\">木叶忍者村</a>，当时的<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=320830&amp;ss_c=ssc.citiao.link\">第四代火影</a>拼尽全力，以自己的生命为代价将“九尾妖狐”封印在了刚出生的鸣人身上。<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=439309&amp;ss_c=ssc.citiao.link\">木叶村</a>终于恢复了平静，但村民们却把鸣人当成像“九尾妖狐”那样的怪物看待，所有人都疏远他。无可奈何，鸣人用各种恶作剧试图吸引大家的注意力。在<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=1705158&amp;ss_c=ssc.citiao.link\">伊鲁卡</a>老师的关心下，鸣人始终保持着乐观的精神。为了让更多的人认可自己，他下定决心要成为火影！鸣人怀着过人的自信与勇气开始了训练，但一切要比他想象的要困难的多！</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">鸣人自小就孤苦无依，一晃十多年过去了，少年鸣人考入了木叶村的<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=7913736&amp;ss_c=ssc.citiao.link\">忍者学校</a>，结识了好朋友佐助和<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=454747&amp;ss_c=ssc.citiao.link\">小樱</a>。佐助是<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=2986055&amp;ss_c=ssc.citiao.link\">宇智波</a>家族的传人之一，当他还是小孩的时候他的哥哥——一个已经拥有高超忍术的忍者将他们家族的人都杀死了，然后投靠了一个黑暗的组织 晓，佐助自小就发誓要超越哥哥，为家族报仇。鸣人他们在忍者学校得到了教官<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=437082&amp;ss_c=ssc.citiao.link\">卡卡西</a>的精心指点，在他的帮助下去迎接成长中的一次又一次挑战！不久之后，在<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=2500091&amp;ss_c=ssc.citiao.link\">卡卡西老师</a>的带领下，鸣人与佐助、小樱一起踏上了修行之路。等待他们的将是无穷无尽的艰险挑战，而鸣人等人也在这生与死的较量中逐渐长大起来。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">火影忍者前期讲述的是：鸣人、小樱和佐助在卡卡西的带领下的艰辛修炼。佐助因为迫切想要战胜自己的哥哥宇智波鼬而叛离木叶。和大蛇丸合作想要得到更强大的力量，大蛇丸一心想要佐助的身体，想要在时机成熟时，吞噬佐助，不料反被佐助当成了力量的养分而吞噬。因此大蛇丸暂时死亡。鸣人为了找回佐助踏上了两年的修行之旅，无尽的艰险和危险让鸣人无所畏惧，坚强面对。后来，鸣人回归木叶村。晓因为要收集<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=37473024&amp;ss_c=ssc.citiao.link\">尾兽</a>便让<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=473714&amp;ss_c=ssc.citiao.link\">佩恩</a>三人攻击木叶，因此木叶受到了巨大的摧毁和打击，但被鸣人成功保护，最终打败佩恩成为木叶英雄。佩恩的失败也导致了<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=32540650&amp;ss_c=ssc.citiao.link\">第四次忍界大战</a>的序幕渐渐拉开，晓在没有得到<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=8416047&amp;ss_c=ssc.citiao.link\">完全体</a>的八尾和九尾下，冒险召唤十尾。第四次忍界大战也正式开始。晓的头即是和卡卡西小时候一组的成员带土，他深爱着琳，在一次任务中受重伤，知道自己无救便把自己的一只眼睛给了卡卡西。但后来带土却被斑所救，于是就开始了造梦计划。后期动漫相当一部分是回忆过去，从侧面来烘托鸣人的人物性格，对周围人的影响。他的坚毅感动了所有人，正因为如此<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=457002&amp;ss_c=ssc.citiao.link\">雏田</a>才会如此的爱他。</p></div></div></div></div></div></div>', '火影忍者，动漫，热血', '0', '2016-06-28 10:45:57', 'http://donghua.dmzj.com/donghua_info/106.html', '', '1', '4015', '../../sub/04b56ce8-310e-11e6-bea3-6451063c7c21_NaN1465822171.jpg', '1', '2', '动画', null, '2016-07-01 11:10:03', null);
INSERT INTO `nice_content` VALUES ('5805bc11-3160-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '【星空图片】我们每个人都是宇宙中孤独的行星 下方有资源', '1', '0', '0', '最下方有素材的资源哦<div><br></div><div><br></div><div>图片内容都来自于网络</div><div><img src=\"../../content/1465820046.jpg\"></div><div><br></div><div><img src=\"../../content/1465820050.jpg\"></div><div><br></div><div><img src=\"../../content/1465820052.jpg\"></div>', '资源,星空', '0', '2016-06-14 09:57:36', 'http://pan.baidu.com/s/1bHEjPO', 'nefs', '1', '4016', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465819999.jpg', '1', '0', '生活', null, '2016-07-12 16:18:08', null);
INSERT INTO `nice_content` VALUES ('6511297f-315b-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '音乐资源的网站-----Listen 1 -', '3', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">随着<a href=\"http://www.iplaysoft.com/tag/%E9%9F%B3%E4%B9%90\" target=\"_blank\">音乐</a>正版化的演进，如今网络音乐的版权基本已被割据在「虾米音乐、QQ音乐、<a href=\"http://www.iplaysoft.com/wang-yi-yun-yin-yue.html\" target=\"_blank\">网易云音乐</a>、豆瓣音乐」等几大势力手上了，虽然<a href=\"http://www.iplaysoft.com/tag/%E6%AD%A3%E7%89%88\" target=\"_blank\">正版</a>化是好事，但实际对用户来说不是那么美好。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">你会发现，想听的歌有些在 A 站，有些在 B 站或 C 站，找一首歌常常要来回在几个网站切换<a href=\"http://www.iplaysoft.com/tag/%E6%90%9C%E7%B4%A2\" target=\"_blank\">搜索</a>，简直麻烦死了。之前我们推荐过「<a href=\"http://www.iplaysoft.com/music-spy.html\" target=\"_blank\">音乐间谍</a>」软件非常方便，但目前已经沦陷了。正当我为此抓狂的时候，意外地发现了一款不错的新的<strong>综合音乐搜索工具</strong>——<strong>Listen 1</strong>……</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">是一个用 Python 语言开发的免费<a href=\"http://www.iplaysoft.com/tag/%E5%BC%80%E6%BA%90\" target=\"_blank\">开源</a>综合音乐搜索工具项目，桌面版的 Listen 1 支持 Windows 和&nbsp;<a href=\"http://www.iplaysoft.com/os/mac-platform\" target=\"_blank\">Mac</a>&nbsp;系统，可以让你集中在一个<a href=\"http://www.iplaysoft.com/tag/%E7%BD%91%E9%A1%B5\" target=\"_blank\">网页</a>上快速搜索网易云音乐、QQ 音乐、虾米音乐、豆瓣音乐等多家音乐网站的歌曲，直接进行在线播放，以及收听精选音乐歌单。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img.iplaysoft.com/wp-content/uploads/2016/listen1/listen1.jpg\" srcset=\"http://img.iplaysoft.com/wp-content/uploads/2016/listen1/listen1.jpg 1x,http://img.iplaysoft.com/wp-content/uploads/2016/listen1/listen1_2x.jpg 2x\" alt=\"Listen 1\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">利用&nbsp;&nbsp;<strong>Listen 1</strong>&nbsp;可以避免每次都要打开多个网站去找歌的麻烦，对于懒人来说肯定好用。而且，除了桌面网页版之外，它还提供了更加方便易用的&nbsp;<a href=\"http://www.iplaysoft.com/chrome-extensions.html\" target=\"_blank\">Chrome 谷歌浏览器扩展</a>，可以让你直接在<a href=\"http://www.iplaysoft.com/tag/%E6%B5%8F%E8%A7%88%E5%99%A8\" target=\"_blank\">浏览器</a>上搜歌听歌，非常方便。</p><h3>Listen 1 综合音乐搜索播放器截图</h3><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img.iplaysoft.com/wp-content/uploads/2016/listen1/listen1_win.jpg\" alt=\"Listen 1 Windows 截图\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><b><font size=\"5\">Listen 1 的 Windows 和&nbsp;<a href=\"http://www.iplaysoft.com/os/mac-platform\" target=\"_blank\">Mac</a>&nbsp;版的安装和使用基本没任何难度，就不需多说了。由于 Listen 1 的 Chrome 版扩展插件「并没有」上架到官方的 Chrome 应用商店，因此无法傻瓜式安装，需要按照以下步骤手动进行：</font></b></p><ol><li>新版本的<a href=\"http://www.iplaysoft.com/google-chrome.html\" target=\"_blank\">谷歌浏览器</a>有安全限制，不能像以往那样直接用 .crx 进行安装，需按下面方法</li><li>下载扩展项目的 zip 文件，解压到本地</li><li>在 Chrome 上访问这个网址：<span>chrome://extensions</span>&nbsp;打开扩展程序设置页面</li><li>在右上角找到「开发者模式」并打上勾</li><li>然后点击「加载已解压的扩展程序」，选择你解压获得的文件夹即可完成！</li><li>Enjoy music!</li><li><br></li></ol><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">本以为不可下载、无视音质的 Listen 1 应当是提供方便「人畜无害」的。不过随着数字版权的日益严谨，现在有许多数字专辑需要付费才可试听，然而 Listen 1 却绕过了付费的渠道，可以完整聆听全曲。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">以张杰的《我想》为例，在 QQ 音乐中需要付费 2 元才可试听，可在 Listen 1 中并没有任何门槛。这就好比在网站上需要单点付费的电影，你却可以利用一个插件无限次免费观看，这显然是侵权的。（但是在网易云音乐试听 Adele 的收费专辑 《25》时却是无法播放的）</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">希望开发者在提供便利的同时，也能注意版权问题，让用户用也用得安心。</p></div>', '音乐,软件', '1', '2016-06-26 11:33:55', '', '', '0', '4017', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465817785.jpg', '1', '1', '游戏攻略', null, '2016-06-30 14:10:26', null);
INSERT INTO `nice_content` VALUES ('73f31ef2-3112-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '伦敦裸体餐厅开业 4.6万人排号体验裸着2', '3', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431640_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">吃够了山珍海味饕餮盛宴，下馆子是不是已经让你厌烦。但是如今，英国餐厅又玩出了新概念，顾客可以裸吃裸聊，这又会是一种怎样的体验呢？综合外媒报道，伦敦首家裸体餐厅开业，已经有46000多人排号准备体验。餐厅老板表示，他希望裸身吃饭能够让用餐者专注于他们的食物。该餐厅用原始食材、陶制器皿并用蜡烛照明，服务员也都裸身提供服务。（腾讯 糖醋国际）</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431641_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">这间名为Bunyadi的餐厅一共可以容纳42名用餐者，目前暂定营业期为三个月，声称其提供“纯粹的解放”，并为用餐者提供最自然状态下的用餐形式。图为前往体验的记者艾米丽。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431642_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">为了达到这种最自然的原始状态，该餐厅全部采用蜡烛照明，用陶器盛装饭菜和饮料，用餐的区域用竹子区隔开，餐厅的食物则全是农户自己种植的。前来用餐的顾客还必须把自己的手机寄存。图为前往该餐厅体验的艾米丽和詹姆斯。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431643_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">餐厅里的服务员们都只穿着裸色的内裤，并在腰上围着树叶。看上去很有古希腊风格。图为餐厅服务员们。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431644_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">餐厅分为裸体区和非裸体区。不想裸体用餐的顾客可以穿上餐厅提供的长袍。图为餐厅的吧台区。餐厅给所有的客人提供一件白色长袍，当他们进入用餐区时，可以自行选择是否脱掉。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431645_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">前去体验的女记者艾米丽表示，自己在去餐厅的路上非常紧张。刚进入餐厅时，艾米丽感到一阵潮湿的温热。她喝下一杯鸡尾酒后就来到了更衣室脱下了自己的衣服，并穿上了餐厅提供的白色长袍。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431646_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">艾米丽说，她想到自己会像刚出生时那样赤裸身体，觉得很激动。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431647_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">前去体验的记者詹姆斯说，当自己换上长袍走出更衣室后，他和他的伙伴觉得自己就像罗马贵族，所有人都穿着长袍和脱鞋，用陶制杯子喝着天然饮料。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431648_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">当然前往用餐的顾客必须遵守“约法三章”。图为这间餐厅的用餐规则，第一条就是“这间餐厅里禁止猥亵、侵犯以及任何形式的性行为。任何不遵守规定的顾客会被立刻赶出去。”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431649_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">图为餐厅老板赛博·莱尔。他声称这间概念餐厅的特色就来自于裸体。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431650_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>图为顾客汉娜·贝茨和她的男友在餐厅用餐。</span>&nbsp;<br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431651_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>图为服务员给汉娜·贝茨上菜。</span>&nbsp;<br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/16/1643/164316/16431653_980x1200_0.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>图为餐厅供应的食物，都被装在陶制餐具里。</span></p>', '人与自然,原始', '0', '2016-06-25 11:25:50', '', '', '0', '4018', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465786596.jpg', '1', '0', '综合', null, '2016-06-29 09:43:18', null);
INSERT INTO `nice_content` VALUES ('7c4f8d82-3166-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '四月是你的谎言', '1', '0', '2', '<div style=\"margin-bottom: 10px; text-indent: 12px;\"><h1>四月是你的谎言<br></h1></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><a title=\"点击查看大图\" href=\"http://baike.sogou.com/PicBooklet.v?relateImageGroupIds=1153719&amp;lemmaId=68173320&amp;now=&amp;type=1\" target=\"_blank\"><img title=\"四月是你的谎言\" alt=\"\" src=\"http://ugc.qpic.cn/baikepic/39256/cut-20140508115534-1337408607.jpg/0\" style=\"margin: 10px 0px;\"></a></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div><p style=\"margin-bottom: 10px; text-indent: 12px;\">《四月是你的谎言（四月は君の嘘）》是由日本漫画家<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=140159362\" target=\"_blank\" ss_c=\"ssc.citiao.link\">新川直司</a>作画的漫画。曾获得<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=839200&amp;ss_c=ssc.citiao.link\">讲谈社漫画赏</a>少年部门奖。故事讲述了拥有少见才能的中学男生（钢琴家），和女生（<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=46580055&amp;ss_c=ssc.citiao.link\">小提琴家</a>）共同努力、成长的青春物语。《四月是你的谎言》<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=465818&amp;ss_c=ssc.citiao.link\">电视动画</a>于2014年10月开始播放。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">作品最初在<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=367550&amp;ss_c=ssc.citiao.link\">讲谈社</a>的《月刊少年Magazine》2011年5月号开始连载，描述了初中生的<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=146533&amp;ss_c=ssc.citiao.link\">钢琴师</a>和小提琴手与对方的才能产生共鸣并共同成长的经历。据称作者起初并未接触过<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=4568451&amp;ss_c=ssc.citiao.link\">古典乐</a>，但在高中时代听过一场重金属乐表演后便有了“想要描写演奏小提琴的少女”的创作念头，并向小提琴家池田梨枝子、钢琴家山崎香和菅野雅纪、作曲家大泽彻训等人进行过协助取材的请求。</p><table><tbody><tr><td><table><tbody><tr><th>中文名称</th><td>四月是你的谎言</td></tr><tr><th>外文名称</th><td>四月は君の嘘</td></tr><tr><th>出品时间</th><td>2016</td></tr><tr><th>制片地区</th><td>日本</td></tr><tr><th>连载平台</th><td>月刊少年Magazine</td></tr></tbody></table></td><td><table><tbody><tr><th>主演</th><td><a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=83348582&amp;ss_c=ssc.citiao.link\">有马公生</a>，<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=76181011&amp;ss_c=ssc.citiao.link\">宫园薰</a>等</td></tr><tr><th>集数</th><td>22</td></tr><tr><th>语言</th><td>日语</td></tr><tr><th>作者</th><td>新川<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=73434792&amp;ss_c=ssc.citiao.link\">直司</a></td></tr></tbody></table></td></tr></tbody></table><div style=\"margin-bottom: 10px; text-indent: 12px;\"><h2><a>作品概要</a></h2></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">电视动画《四月是你的谎言》改编自日本漫画家新川直司作画的同名漫画。在2014年3月21日举行的noitaminA的10周年纪念活动”noitaminA发表会2014 ～10th Anniversary～“上，《四月是你的谎言》宣布TV<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=465814&amp;ss_c=ssc.citiao.link\">动画化</a>[1-2]。电视动画将于2014年10月开始播放。</p></div></div></div></div>', '四月是你的谎言，动漫', '0', '2016-06-15 11:24:11', 'http://pan.baidu.com/s/1dEXhk33', '', '1', '4020', '../../sub/04b56ce8-310e-11e6-bea3-6451063c7c21_NaN1465822691.jpg', '1', '1', '动画', null, '2016-06-16 14:01:41', null);
INSERT INTO `nice_content` VALUES ('7f883359-3141-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', '矮个女生扎对发型瞬间显高个 马尾辫扎发超百搭', '25', '2', '1', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td><p style=\"margin-bottom: 10px; text-indent: 12px;\">很多矮个子女生是不是觉得自己跟大长腿、高挑身材一点都沾边，然而很没自信，那么不如来一款时髦有气质的扎马尾辫<a href=\"http://www.love84.com/meirong/meifa/\" target=\"_blank\"><span>发型</span></a>吧，让你瞬间显高还能自信满满，下面魔女网小编就推荐3款马尾辫扎法，矮个子女生赶快收藏起来哦！</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">&nbsp;</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.love84.com/meirong/PopHair/2015082439961_2.html\"><img alt=\"\" src=\"http://www.love84.com/uploads/allimg/150824/00523aI3-0.jpg\" data-bd-imgshare-binded=\"1\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　让自己变高的方式有很多种，穿增高鞋、带高帽子，还有一个方法就是：扎马尾！以下三种扎法让头发一股脑地高高扎起，瞬间变高哦。</p></td></tr></tbody></table>', '穿衣', '3', '2016-06-15 11:22:51', '', '', '0', '4021', '../../sub/6e446306-2153-11e6-be50-6451063c7c21_NaN1465806788.jpg', '1', '1', '综合', null, '2016-06-23 10:04:20', null);
INSERT INTO `nice_content` VALUES ('9194b2cf-3136-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', '韩国街拍示范衬衫搭配 知性迷人_衬衫怎么搭配好', '3', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.love84.com/fushi/jiepai/2016030247819_2.html\"><img src=\"http://www.love84.com/uploads/allimg/160302/1Q142B30-0.jpg\" alt=\"韩国街拍示范衬衫搭配 知性迷人 衬衫怎么搭配好看\" title=\"韩国街拍示范衬衫搭配 知性迷人\" data-bd-imgshare-binded=\"1\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　红色印花<a href=\"http://www.love84.com/special/m10000/\" target=\"_blank\"><span>衬衫</span></a>搭配紧身<a href=\"http://www.love84.com/special/m10001/\" target=\"_blank\"><span>牛仔裤</span></a>和小皮鞋，最简单常见的<a href=\"http://www.love84.com/special/m10000/\" target=\"_blank\"><span>衬衫</span></a>look，虽然简单，精致明艳的红色花衬衫还是让人眼前一亮。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://www.love84.com/fushi/jiepai/2016030247819_2.html\"><img src=\"http://www.love84.com/uploads/allimg/160302/1Q142La-1.jpg\" alt=\"韩国街拍示范衬衫搭配 知性迷人 衬衫怎么搭配好看\" title=\"韩国街拍示范衬衫搭配 知性迷人\" data-bd-imgshare-binded=\"1\" style=\"margin: 10px 0px;\"></a></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">　　粉色衬衫搭配牛仔<a href=\"http://www.love84.com/special/m9987/\" target=\"_blank\"><span>短裤</span></a>，穿的时候把衬衫随意扎一点，不仅更有时尚感，也更加突出大长腿。</p>', '穿衣', '0', '2016-06-15 10:18:38', '', '', '0', '4022', '../../sub/6e446306-2153-11e6-be50-6451063c7c21_NaN1465802099.jpg', '1', '0', '综合', null, '2016-07-12 16:55:05', null);
INSERT INTO `nice_content` VALUES ('92e2df6d-3111-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '王源参加中考，上了高中的TFBOYS两小只送祝福', '1', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">[<strong>摘要</strong>]6月12日是王源参加中考的日子，昨天，TFBOYS的王俊凯、易烊千玺先后发文送上祝福。</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/ent/pics/hv1/89/87/2082/135404324.jpg\" style=\"margin: 10px 0px;\"></p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><span>易烊千玺</span>&nbsp;<span>微博</span></p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/ent/pics/hv1/91/87/2082/135404326.png\" style=\"margin: 10px 0px;\"></p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><a rel=\"nofollow\">王俊凯</a>微博</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.gtimg.com/ent/pics/hv1/165/87/2082/135404400.jpg\" style=\"margin: 10px 0px;\"></p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\">左起：王源、王俊凯、易烊千玺</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">腾讯娱乐讯（文/小番）6月12日是王源参加中考的日子，昨天，TFBOYS的王俊凯、易烊千玺先后发文送上祝福。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">今天到14日是重庆市中考的日子，王源要参加考试，两小只的祝福，让很多网友都觉得很暖。易烊千玺发文称：“希望源哥的中考一定考出理想成绩～等考完再一起撒了疯的耍。”王俊凯则画了一幅画，并祝福称：“源儿，中考加油，画工有点差，但是祝福的心意不会差，高中等你呦！”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">易烊千玺去年9月顺利进入湖南省重点中学湖师大附中读高中，而王俊凯则在前年也就是2014年就进入了重庆八中读高中。三小只即将成为高中生，不少亲妈粉调侃，表示自己又老了一些了。</p>', '高考', '0', '2016-06-14 09:57:50', '', '', '0', '4023', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465786104.jpg', '1', '0', '综合', null, '2016-06-14 09:57:50', null);
INSERT INTO `nice_content` VALUES ('997afe10-3164-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '装机狗U盘重装原版win10系统教程', '1', '0', '0', '<cc><div style=\"margin-bottom: 10px; text-indent: 12px;\">导语：Windows 10对电脑有一些硬件/软件要求，并且功能的可用性可能因设备和市场而异。电脑设备连接到 Internet 并自动启用 Windows 更新。 Windows10会自动更新。随着时间的推移，可能会有额外的更新要求。Win10安装可分为升级安装和全新安装，升级安装的用户请先删除系统防护软件，以免在升级过程中造成安装失败不停重启，全新安装用户可查看本站PE等安装教程。今天先来看下如何一分钱不花又轻松的安装win10原版系统.<br><br><br>u盘启动盘制作前准备（注意操作前备份好u盘有用的资料）<br><br><br>1.准备一个使用装机狗软件制作好的启动u盘一个（最好1G以上的空的U盘），<br><br><br>2.下载原版 Win10镜像文件（大家可以到网上搜索原版 Win10系统下载，通常以ISO或GHO为后缀的镜像文件）；<br><br><br>第一步：将原版 Win10系统镜像包复制到U盘ISO文件夹内。<br><br><br>注意：有时制作完成后，打开U盘找不到ISO目录或提示格式化U盘，可以点击这里查看：找不到ISO目录或者U盘提示需要格式化的解决方法！<br><br><br>将下载好的系统镜像包复制到u盘ISO文件夹内！如下图所示：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=ee9528e28118367aad897fd51e718b68/753defc4b74543a9dce21f0719178a82b8011420.jpg\" style=\"margin: 10px 0px;\"><br>粘贴win10系统iso镜像包的操作<br><br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=a7dd56e3317adab43dd01b4bbbd6b36b/2de0b34543a982269038ceec8d82b9014b90eb21.jpg\" style=\"margin: 10px 0px;\"><br>耐心等待其粘贴进度完成<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=e6dce681ddb44aed594ebeec831e876a/716147a98226cffc7ed35a79be014a90f703ea21.jpg\" style=\"margin: 10px 0px;\"><br>复制win10系统iso镜像包到u盘ISO文件夹内完成<br><br><br>第二步重启电脑，在开机画面出来的时候按“快捷键”直接进入装机狗主窗口界面！<br><br><br>当我们按快捷键后会弹出一个窗口，窗口里面会有几个选择，我们要找到并按上下方向键“↑↓”选择到u盘，然后按回车键进入装机狗主界面！（一般我们选择的时候可以看下其中一个选项是有关USB或者您u盘的品牌的英文名称，那便是我们的u盘了！）<br><br><br>至于一键进入U盘启动的示例教程，小编就不详述了，因为不同的电脑，一键进入的快捷键也可能不一样。所以装机狗小编整理了各种品牌主板一键进入装机狗的快捷键，我们可以在下面的列表中查找自己相应的主板品牌，然后就可以看到该主板的一键启动装机狗的热键了。<br><br><br>操作前提：必须先将已经用装机狗制作好启动盘的U盘插入电脑主机USB接口，然后重启电脑。<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=57be0a4f4ded2e73fce98624b703a16d/858d8626cffc1e17eb4669fa4d90f603728de921.jpg\" style=\"margin: 10px 0px;\"><br>注意：其它机型请尝试或参考以上品牌常用启动热键<br><br><br>当我们经过相应的主板品牌快捷键进入“快速引导菜单”后我们会看到如下三种较为常见的菜单界面之一（一般选择USB开头的即可）：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=b8709a1629738bd4c421b2399189876c/4402cbfc1e178a82dbc59a6bf103738da877e821.jpg\" style=\"margin: 10px 0px;\"><br><br><br>注意：通过键盘的上（↑）下（↓）按键选择好相应的菜单项后，直接回车即可进入;<br><br><br>第三步：进入装机狗Win8PE系统后，运行“装机狗PE一键装机”工具，安装Win 10系统！<br><br><br>1）当我们利用按快捷键选择您的U盘启动进入到装机狗主菜单后，按上下↑↓方向键选择到“【01】 运行装机狗Win8PE增强版”，然后按下“回车键”，将进入装机狗Win8PE系统，如下图：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=2929fe888cd4b31cf03c94b3b7d4276f/09d81a178a82b901295426f8748da9773812ef21.jpg\" style=\"margin: 10px 0px;\"><br><br><br>2）当选择到“【01】 运行装机狗Win8PEx86精简版（支持UEFI）”后，按下车键进入winPE系统的界面，如下图：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=4ab75b2fb41c8701d6b6b2ee177d9e6e/d8338e82b9014a9092c7a376ae773912b21bee21.jpg\" style=\"margin: 10px 0px;\"><br><br><br>3）运行“装机狗PE一键装机”工具后，用鼠标点击更多按钮旁边的下拉按钮，下图有用红框框着的那个！然后会显示出下拉选择框，在里面找到我们下载到的那个原版win10系统镜像包，刚才已经复制到U盘的了，我们只需选择它，然后单击下鼠标即可，如下图：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=ee1063e78001a18bf0eb1247ae2d0761/4ca6bd014a90f6031649798c3e12b31bb151ed21.jpg\" style=\"margin: 10px 0px;\"><br><br><br>4）当点击“开始”按钮后会弹出一个小窗口，我们只需继续点击该弹出窗口的“是（Y）”按钮即可，如下图所示：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=d5d857faa68b87d65042ab17370a2860/7f254e90f603738dcfb3e9e9b41bb051f919ec21.jpg\" style=\"margin: 10px 0px;\"><br><br><br>5）接下来会出现一个正在安装WIM文件的窗口，该窗口有进度条，此时我们无需做任何操作，只需耐心等待其完成即可，如下图所示：<br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=e0c5717080d6277fe9123230183a1f63/8cb4f203738da9775ed663e0b751f8198718e321.jpg\" style=\"margin: 10px 0px;\"><br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=c94f572d207f9e2f70351d002f32e962/3027778da9773912dbdf60aaff198618377ae221.jpg\" style=\"margin: 10px 0px;\"><br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=ee12f784992f07085f052a08d926b865/b5a9ad773912b31bd99528e28118367adbb4e121.jpg\" style=\"margin: 10px 0px;\"><br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=4dbb4ed400082838680ddc1c889ba964/6f533d12b31bb05192dd56e3317adab44bede021.jpg\" style=\"margin: 10px 0px;\"><br><br><br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=f5ebd7f32f381f309e198da199034c67/ff36b71bb051f819eddce681ddb44aed2f73e721.jpg\" style=\"margin: 10px 0px;\"><br>就这样很快的我们就能拥有免费的Win10系统了。</div><br></cc><br>', '装机,win10', '0', '2016-06-14 09:57:51', '', '', '0', '4024', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465821872.jpg', '1', '1', '综合', null, '2016-07-01 10:42:07', null);
INSERT INTO `nice_content` VALUES ('a4067da1-3164-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '海贼王', '110', '6', '2', '<div style=\"margin-bottom: 10px; text-indent: 12px;\"><h1>海贼王</h1></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><a title=\"点击查看大图\" href=\"http://baike.sogou.com/PicBooklet.v?relateImageGroupIds=54436,138871,130810&amp;lemmaId=48758&amp;now=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20131205%2F20131205141724-1910142475.jpg&amp;type=1\" target=\"_blank\"><img title=\"海贼王\" alt=\"\" src=\"http://ugc.qpic.cn/baikepic/28059/cut-20131205141740-634573626.jpg/0\" style=\"margin: 10px 0px;\"></a></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"></div><a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=64944393&amp;ss_c=ssc.citiao.link\">《ONE PIECE》</a>（中文译名：海贼王；别名：航海王，<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=75605696&amp;ss_c=ssc.citiao.link\">海贼路飞</a>，<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=12786847&amp;ss_c=ssc.citiao.link\">草帽小子</a>），简称“OP”，是一部连载中的日本<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=616645&amp;ss_c=ssc.citiao.link\">少年漫画</a>作品，作者为<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=125820&amp;ss_c=ssc.citiao.link\">尾田荣一郎</a>。该作于1997年起在<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=338168&amp;ss_c=ssc.citiao.link\">日本漫画</a>杂志《周刊少年Jump》定期连载，并在该杂志中长期占据人气榜的第一位，另外有同名的<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=465818&amp;ss_c=ssc.citiao.link\">电视动画</a>、<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=2055243&amp;ss_c=ssc.citiao.link\">海贼王剧场版</a>和<a target=\"_blank\" href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=13483&amp;ss_c=ssc.citiao.link\">电子游戏</a>等周边媒体产品。《ONE PIECE》漫画单行本在日本以外的亦已有30多个翻译版本发行，发行量在日本本土突破3亿部，是日本图书出版史上发行量最高的作品。在2009年是排行第一名的日本最畅销漫画。2012年在第41回<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=6698\" target=\"_blank\" ss_c=\"ssc.citiao.link\">日本</a><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=69081\" target=\"_blank\" ss_c=\"ssc.citiao.link\">漫画家</a>协会赏获得大赏。</div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><h2><a>故事简介</a></h2></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\"><a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=66534\" target=\"_blank\" ss_c=\"ssc.citiao.link\">传奇</a>海盗<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=198471\" target=\"_blank\" ss_c=\"ssc.citiao.link\">哥尔·D·罗杰</a>在<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=70575021\" target=\"_blank\" ss_c=\"ssc.citiao.link\">临死</a>前曾留下关于其毕生的财富“One Piece”的消息，由此引得群雄并起，众海盗们为了这笔传说中的巨额财富展开争夺，各种<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=811437\" target=\"_blank\" ss_c=\"ssc.citiao.link\">势力</a>、政权不断交替，整个<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=64999406\" target=\"_blank\" ss_c=\"ssc.citiao.link\">世界</a>进入了动荡混乱的“大海贼时代”。生长在东海某小村庄的路飞受到海贼香克斯的精神指引，决定成为一名出色的海盗。为了达成这个目标，并找到万众瞩目的One Piece，路飞踏上艰苦的旅程。一路上他遇到了无数磨难，也结识了<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=49045\" target=\"_blank\" ss_c=\"ssc.citiao.link\">索隆</a>、<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=64453627\" target=\"_blank\" ss_c=\"ssc.citiao.link\">娜美</a>、<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=115255\" target=\"_blank\" ss_c=\"ssc.citiao.link\">乌索普</a>、<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=1403060\" target=\"_blank\" ss_c=\"ssc.citiao.link\">香吉</a>、<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=64938333\" target=\"_blank\" ss_c=\"ssc.citiao.link\">罗宾</a>等一众性格各异的好友。他们携手一同展开充满传奇色彩的<a href=\"http://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=75060939\" target=\"_blank\" ss_c=\"ssc.citiao.link\">大冒险</a>。</p></div></div></div></div>', '海贼王，动漫，热血', '0', '2016-06-14 09:57:52', 'http://donghua.dmzj.com/donghua_info/116.html', '', '1', '4025', '../../sub/04b56ce8-310e-11e6-bea3-6451063c7c21_NaN1465821815.jpg', '1', '3', '动画', null, '2016-07-12 19:22:36', null);
INSERT INTO `nice_content` VALUES ('b783852e-315b-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'Haiku Deck : 这个好用的 PPT 制作工具', '1', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">经常被要求做出高端大气上档次的 PPT，但没有很好的设计基础最后却弄巧成拙；想好好钻研 PowerPoint 和 Keynote ，但一开始就被网络上的教程弄得眼花缭乱……</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">AppSo（微信号：appsolution）决定推荐一款十分好用的 PPT 应用：HaiKuDeck，<span>它让你用最简单清新的方式做幻灯片</span>。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">2011 年，创业伙伴 Adam Tratt 和 Kevin Leneway 联手开发的 Facebook 游戏失败。在设计师已辞职的情况下，他们只能自己制作 PPT 告诉投资人这个坏消息。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">最后，这段筋疲力尽的经历促成了此后横扫 36 个国家和地区的 App Store 头牌生产力应用 Haiku Deck 的横空出世。</p><img src=\"http://p1.pstatp.com/large/7e500028b24fda19a88\" img_width=\"1000\" img_height=\"880\" alt=\"Haiku Deck : 这个好用的 PPT 制作工具，还能自动帮你找配图 iOS Web\" style=\"margin: 10px 0px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">不管你是想展示一个想法、上一堂课、讲一个故事还是做一次振奋人心的演讲，Haiku Deck 都十分快捷、简单和高效。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">与同类 app 相比，Haiku Deck 删减了很多繁杂无用的功能，<span>专注于用「文字 + 图片」的方式来表达想法</span>。</p><img src=\"http://p3.pstatp.com/large/7cb00028ddb41d1be75\" img_width=\"1000\" img_height=\"880\" alt=\"Haiku Deck : 这个好用的 PPT 制作工具，还能自动帮你找配图 iOS Web\" style=\"margin: 10px 0px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">Haiku Deck 内置了 6 种主要模板、12 种布局格式、20 种字体/主题，让你能根据不同的情况选择最适合的版式。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">另外，添加备注功能也区分为公开与私密两种，简直不能更贴心了。</p><img src=\"http://p2.pstatp.com/large/7e60002811f80f87347\" img_width=\"800\" img_height=\"704\" alt=\"Haiku Deck : 这个好用的 PPT 制作工具，还能自动帮你找配图 iOS Web\" style=\"margin: 10px 0px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">AppSo（微信号 appsolution）提醒大家注意的是，有一些字体/主题的英文字体的大小写不可调整。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">对很多人来，选择配图是 PPT 的一个难题。<span>我选择配图的原则是——简约美观设计感强，同时能与文字内容互为补充</span>。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">在 HaiKu Deck 中，我基本不用去担心配图的问题。用户可以选择简洁的颜色作为 PPT 的背景，也可以选用系统自带的背景图。另外，<span>内置搜索还能根据你输入的关键词，匹配符合版权规则的高质量图片给你使用</span>。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">此外它还支持对图片进行剪切和缩放等编辑功能，用户可以更容易地在 PPT 中加入心仪的照片。</p><img src=\"http://p3.pstatp.com/large/7e500028b25e901d5ad\" img_width=\"800\" img_height=\"704\" alt=\"Haiku Deck : 这个好用的 PPT 制作工具，还能自动帮你找配图 iOS Web\" style=\"margin: 10px 0px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">数据支持是说服别人的重要因素，制作 PPT 怎能少得了饼状图、柱状图之类的对比呢？<span>你可以直接通过拖动来改变柱形高度和圆饼所占比例大小，它附带的数据也会自动相应调整。</span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>编辑文稿的操作也同样简单</span>：单张文稿的缩略图都可以直接点击复制、删除，还能长按调整位置。</p><img src=\"http://p3.pstatp.com/large/7e6000281207c354889\" img_width=\"800\" img_height=\"704\" alt=\"Haiku Deck : 这个好用的 PPT 制作工具，还能自动帮你找配图 iOS Web\" style=\"margin: 10px 0px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">编辑完 PPT 以后，你可以设置查看权限，并且通过社交网络、邮件等方式分享。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>你还可以用手机控制 iPad 上的演示</span>：只要都使用相同账户登录，并连接同一 Wif 网络并打开蓝牙即可。</p><img src=\"http://p3.pstatp.com/large/7d400028b6d7973b653\" img_width=\"800\" img_height=\"704\" alt=\"Haiku Deck : 这个好用的 PPT 制作工具，还能自动帮你找配图 iOS Web\" style=\"margin: 10px 0px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>总而言之，Haiku Deck 提供所需素材，让你快速做好一个 PPT。</span>但美中不足的是，它的同步速度较慢，根据个人网络情况，可能需要搭配梯子来获得流畅的体验。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">对于 PPT，我的看法与 Haiku Deck 的首席执行官 Adam Tratt 不谋而合：</p><blockquote><p style=\"margin-bottom: 10px; text-indent: 12px;\">几乎所有的演示都是这样的套路：<span>一个想法一张 PPT</span>，选个好看的照片，字体弄得漂亮点，不要照着 PPT 念。那些所谓的附加功能事实上更加限制了使用者的发挥。</p></blockquote><p style=\"margin-bottom: 10px; text-indent: 12px;\"><span>如果你追求简洁高效和清晰表达，想要在短时间做出简单漂亮的 PPT ，喜欢使用简单明了的方式来单向展示，那么就选择 Haiku Deck 吧。</span></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">除了 iOS，Haiku Deck 还有网页版：www.haikudeck.com</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">HaiKuDeck 适用于 iOS 8.0+ 的 iPhone 和 iPad，大小 46.8 MB，免费有内购。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">本文由让手机更好用的 AppSo 原创出品，关注微信号 appsolution，回复「PPT」获取文章《讲一个声色俱全的好故事，有它就够了》</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><font size=\"7\">本文转载自今日头条！！</font></p>', '科技,软件,PowerPoint,Haiku', '0', '2016-06-14 09:57:53', '', '', '0', '4026', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465818065.png', '1', '0', '综合', null, '2016-06-14 09:57:53', null);
INSERT INTO `nice_content` VALUES ('bbc18287-32f0-11e6-b749-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'G5拉夫为何仅2分3板？竟因首节“索爱”詹皇被拒', '0', '0', '0', '詹姆斯和欧文创造了历史，他们成为了总决赛历史上首个同时拿下40分的二人组。但是反观拉夫，他出场33分钟，却仅仅拿下两分，对于赢下第五场比赛几乎没有任何的贡献。为何拉夫的状态和三巨头的另外两人差别如此之大？<br>很多人认为早在这场比赛的第一节，拉夫的神经就已经被詹姆斯摧毁了。因为比赛中发生了这么一幕：<br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=3b8c0a4cf3f2b211e42e8546fa816511/ee904635e5dde711bb5b2fc9afefce1b9c166172.jpg\" style=\"margin: 10px 0px;\"><br>这一幕被许多人认为是拉夫想和詹姆斯击掌却被詹皇完全无视的情景，甚至有人认为是二人关系破裂的信号。<br>但实际情况却不像动图上反映的这样糟糕，拉夫只是在向詹姆斯解释他在防守时手臂是伸直的，并不是想和詹姆斯击掌，而且两人也没有发生争吵。<br>不过看看拉夫这无辜又可怜的眼神，是否想起了当年那个被詹姆斯训斥的查尔莫斯？<br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=7ff7a2fdba119313c743ffb855390c10/bec726dde71190ef5a72fee0c61b9d16fcfa6072.jpg\" style=\"margin: 10px 0px;\"><br>拉夫的行为只不过是想表达他想给予詹姆斯帮助，并不是试图和詹姆斯拉近感情的行为。当初詹姆斯选择将拉夫拉进骑士组成“三巨头”，就是因为他了解拉夫在进攻端的技巧，更明白他可以成为防守端可靠的内线屏障。<br>赛后，二人的拥抱便直接终结了关于二人关系破裂的流言。<br><img pic_type=\"1\" src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=d646eb1e9b13b07ebdbd50003cd69113/de2f241190ef76c68a5b97149516fdfaae516772.jpg\" style=\"margin: 10px 0px;\">', 'NBA，詹姆斯', '0', '2016-06-15 20:00:21', '', '', '0', '4039', '../../sub/04b56ce8-310e-11e6-bea3-6451063c7c21_40391465992019.jpg', '1', '0', '热门话题', null, '2016-06-16 15:33:04', null);
INSERT INTO `nice_content` VALUES ('bd1ea43b-3111-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '美22岁女歌手演唱会后遭枪击身亡 凶手当场自杀', '2', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">中新网6月12日电 据美媒报道，美国一位流行音乐歌手10日在一场音乐会后遭枪击身亡。22岁的翻唱歌手克里斯蒂娜·格莱米(Christina Grimmie)在佛罗里达奥兰多演唱会后给观众签名，枪手趁机靠近她，连开三枪。</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"\" src=\"http://p1.ifengimg.com/cmpp/2016/06/12/09/32383ac1-dc5a-4dae-aa74-3127a30571f8_size98_w500_h500.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">报道称，歌手的兄弟在现场同凶手搏斗，凶手在作案现场开枪自杀。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">佛罗里达州奥兰多市的警察局长约翰·米纳( John Mina )说，枪手不是本地人，似乎并不认识被害的女歌手，看来他“到奥兰多来是要来犯罪”。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">警方透露凶手是27岁的白人男子洛伊布尔。警察正在检查他的电脑和手机，寻找作案动机。但警方说,没有迹象显示他认识被害人或者跟踪、紧盯过这位歌手。</p><p align=\"center\" style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"\" src=\"http://p2.ifengimg.com/cmpp/2016/06/12/09/f65f3a35-5c1e-4b45-ad32-02916f4a6e6b_size60_w500_h281.jpg\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">据悉，凶手作案的时候携带了两支手枪、不少子弹和一把猎刀。奥兰多警方发言人米格里奥( Wanda Miglio )表示，格莱米的兄弟阻止了枪手伤害其他人，所以是英雄。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">格莱米是美国唱歌选秀节目《美国好声音》2014年比赛的第三名。数百万歌迷在Youtube上欣赏过她翻唱的歌曲</p>', '女歌手,枪击,演唱会,美', '0', '2016-06-14 09:57:55', '', '', '0', '4027', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465786291.jpg', '1', '1', '综合', null, '2016-06-15 12:35:37', null);
INSERT INTO `nice_content` VALUES ('c12bca7f-3112-11e6-bea3-6451063c7c21', '9f5ba06f-1582-11e6-854c-6451063c7c21', '自闭症女孩邀朋友庆18岁生日 结果没有一个人来', '0', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\">中新网6月12日电 据外媒报道，生日本应过得开开心心，但美国缅因州一名自闭症少女海莉(Hallee Sorenson)去年7月邀朋友和同学来参加18岁的生日会，最终却没有一个人来，满心期待的海莉独自一人坐在餐厅里，凄凉地吃生日蛋糕，场景让人心 碎。她的妈妈希望她今年生日会能有人来。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">海莉的妈妈艾莉森(Allyson Seel-Sorenson)将女儿当时独自庆祝生日的照片发到网上。这名母亲说：“我当时躲在柱子后面哭泣，我不知道我应该怎么对海莉说，可怜的孩子，她不知道该做些什么。”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">艾莉森说，海莉对18岁的生日充满了期待，我们对这一天的到来感到兴奋极了，但是最终却没有一个人出席。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">今年，海莉的生日又要来了。为了不再让去年的事情重演，海莉的一名表姐瑞贝卡决定，今年为海莉制造一个难忘的生日。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">瑞贝卡决定利用社交网站的力量。日前，她将去年海莉独自盯着蛋糕的照片放到脸书上，请求大家寄生日卡，让她今年有个“难以置信”的生日，也让她的母亲好过些。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">瑞贝卡贴文称：“海莉虽然患有自闭症，但是她很风趣、甜美、有同情心、聪明，也是所有人的好朋友。”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">瑞贝卡说：“去年的生日，海莉的朋友没有一个人出席，没有一个人。但是你们帮助她在今年有一个难以置信的生日派对。”</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">瑞贝卡是一名911接线员，她一开始并没有认为贴文会引起轰动，但是在网上公布后的48小时内，海莉去年庆生的照片就已被了12万次。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">今年的生日，海莉应该会收到很多的祝福，许多网友还说会给海莉寄出生日礼物。不过海莉的妈妈艾莉森说，只要贺卡就足够了。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">艾莉森说，最重要的是，她希望女儿在今年的生日到来时，能有一个开心的笑容。</p>', '18岁,生日,自闭症', '0', '2016-06-14 09:57:57', '', '', '0', '4028', '../../sub/9f5ba06f-1582-11e6-854c-6451063c7c21_NaN1465786728.jpg', '1', '0', '综合', null, '2016-06-14 09:57:57', null);
INSERT INTO `nice_content` VALUES ('c257dcb7-3163-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '【软件】毕竟这些冷门软件高大上', '1', '0', '0', '<span>第一款，直播党。 直播党，用手机写出你心底的故事。直播党是全国首款追直播贴应用，直播贴即用图文的方式一集一集的讲述身边发生的真实故事。每个人都有好故事，这是一个独一无二的直播贴社区，也是一个现实生活的真实写照。</span><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=41a37e79b01bb0518f24b320067bda77/58b3c2fdfc0392453e5c93548494a4c27c1e2579.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=f506104712dfa9ecfd2e561f52d1f754/424ec995d143ad4bd6c6349b81025aafa50f0679.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>☆减轻造成</span><a href=\"http://jump.bdimg.com/safecheck/index?url=rN3wPs8te/pL4AOY0zAwhz3wi8AXlR5gsMEbyYdIw61odkhB+0531p/cKwgmq3ABImOuUl9obIdesUqvhcRz+hXSuwz9b96EragWmZ1jer1XQuxoOXhQsZeAxeXsOhvoTU8VLgPEHAWVMLLeelyGLHNsEwTm1HERZ1QCLynAadOwIZJfWGicOnhMrJjUAo+Tr73NvpsITv92Pah4egTNMg==\" target=\"_blank\">眼疲劳</a><span>的蓝色眩光，蓝色眩光是造成眼睛疲劳的主要原因之一，通过本应用程序减轻蓝色眩光，能有效保护视力。特征▽减轻蓝色眩光。无需花费分毫，即可减轻蓝色光，缓解眼睛疲劳。 抑制屏幕发出的刺眼蓝光。 无需另外购买价格高昂的过滤眼镜。 免费应用就能实现过滤功能。▽过滤蓝色眩光，自然舒适！ 本过滤器采用优化算法，过滤效果自然。 具有褐色过滤模式，网页等细小文字也一目了然。 不必降低屏幕亮度就能有效减轻蓝色光，屏幕内容更加清晰可见。 强过滤模式还具有防屏幕侧视偷窥效果。 多种过滤模式供选择，亮度也能自由调整。操作简便！ 应用启动后仅需设定过滤量即可，不含复杂设定。 能通过通知栏迅速调整过滤设置。</span><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=10e534e6aa773912c4268569c8188675/226fc9fcc3cec3fd1ae5d52ed588d43f8694270b.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=40fac06aa28b87d65042ab1737092860/80a8ac6eddc451da722d7eb0b5fd5266d116320b.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>鲁大师降温神器.</span><br><span>这款就是给手机散热的啦,夏天手机玩一玩就滚烫,我的三星机还有爆炸的前例,我就下了这个给手机散热,还是不错的.</span><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=8daf2d530fd79123e0e0947c9d355917/116e622762d0f703d6a0e8870bfa513d2797c5dc.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=f63082eb66380cd7e61ea2e59145ad14/32918b13632762d0b14dd9e4a3ec08fa503dc6f3.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>柚子相机</span><br><span>手机里必不可少的就是美图软件啦 楼楼用过好多美图软件 喜欢的却很少 这款柚子相机很小清新呀。而且滤镜特别棒</span><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=dceee92fae345982c58ae59a3cf5310b/0af2a1ec08fa513d6da411853e6d55fbb3fbd9d8.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><span>LINE Selfie Sticker</span><br><span>聊天时还和别人用一样的表情，那也太没有新意啦~试过把自己的脸「Bia」在表情图上么？马上就可以来试一试！</span><br><span>LINE Selfie Sticker 内置了超过二十款不同的表情风格，选个你喜欢的，然后拍照，它就会自动读取你的五官和肤色，生成独一无二的表情图！聊天必备，随时表达「真实」的自己，一定会让对方「永生难忘」……</span><img changedsize=\"false\" src=\"http://static.tieba.baidu.com/tb/editor/images/client/image_emoticon28.png\" style=\"margin: 10px 0px;\"><span>&nbsp;</span><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=2fb8567c8982b9013dadc33b438ca97e/4a7dbba1cd11728ba754f179cbfcc3cec2fd2ce9.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=d13bd64404082838680ddc1c8898a964/1ab638dbb6fd52662652414fa818972bd50736e9.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=544504636d061d957d4637304bf50a5d/0c56d50735fae6cd86cdd63a0cb30f2443a70fe9.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"><br><img src=\"http://imgsrc.baidu.com/forum/w%3D580/sign=68622abbf403918fd7d13dc2613c264b/e88d83025aafa40f40beb386a864034f79f019e9.jpg\" pic_ext=\"jpeg\" style=\"margin: 10px 0px;\"></div>', '软件,最新', '0', '2016-06-14 09:57:59', '', '', '0', '4029', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465821471.jpg', '1', '0', '综合', null, '2016-06-14 09:57:59', null);
INSERT INTO `nice_content` VALUES ('c4478f50-3165-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '推荐一款极少人知道的软件-Camfrog Video Cha', '4', '0', '0', '<div style=\"margin-bottom: 10px; text-indent: 12px;\">软件简介</div><div style=\"margin-bottom: 10px; text-indent: 12px;\">                    可跟很多拥有摄像头的在线用户在闲聊房间一起聊天，支持一对一和多人聊天室的交谈。也可做为视频会议的一个手段。用户可浏览Camfrog.com成员目录中的相片。Camfrog Video有很强的防火墙和路由器适应性，因此视频聊天体验将较顺畅，视频和音频的优化效果也很好。                     <br>                    官网：<a title=\"http://www.camfou.com/\" hidefocus=\"true\" href=\"http://www.camfou.com/\" target=\"_blank\" stat-id=\"detail.homepage.soft-119\">http://www.camfou.com/</a><img src=\"../../content/1465822364.png\"></div>', '软件,中国', '0', '2016-06-14 10:43:49', 'http://pan.baidu.com/s/1o7PxnuU', '8ipq', '1', '4030', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465822381.png', '1', '0', '生活', null, '2016-06-29 09:38:43', null);
INSERT INTO `nice_content` VALUES ('c882d392-3164-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '给大家推荐一款玩电脑必备的软件', '2', '0', '0', '<span>首先呢，大家在看电影，看电视或者浏览网页时的过程中。是不是发现，现在的广告越来越多，越来越惹人烦恼了。好不容易看个电视剧，还要看他1分钟的广告。现在这种情况可以解决了，只要安装这个软件（软件只有不到2m），就可以屏蔽这些烦恼的广告了，看视频不再需要等待，网页的广告和弹窗都会屏蔽掉。</span><br><br><span>反正我一直在用，大家可以测试。</span><br><span>下载地址是：</span><a href=\"http://jump.bdimg.com/safecheck/index?url=x+Z5mMbGPAvVIlwZePSt0B3tEqEFWbC4kYEIagYmMtZBzFm1If7AwAcI/1AcUHLqkgnWxoFWhhEd86IJyRxDbQc5gZNhd7IAUnwE6HH41PeXhrkBidNJJWXYXOL+zpmNq5qJSBJBA3lJkkMbXPQU1qNa0l94SnaIi4P0yCvq6rakl3Cl9kBx5NT2W/ZO4q33VmYQFUeMaCgwPGbuJnYGNA==\" target=\"_blank\">http://pan.baidu.com/share/link?shareid=1869565747&amp;uk=1461139175</a><br><br><span>大家安装好点击一键优化就可以直接看到效果了。</span><br><span>好用的话回来顶我。&nbsp;</span><br><br><img pic_type=\"0\" src=\"http://imgsrc.baidu.com/forum/w%3D580%3Bcp%3Dtieba%2C10%2C502%3Bap%3D%B5%E7%C4%D4%C8%ED%BC%FE%B0%C9%2C90%2C510/sign=5b273bbf79f0f736d8fe4c093a6ed069/44265eafa40f4bfb0bae9394024f78f0f636189c.jpg\" pic_ext=\"png\" bdwater=\"电脑软件吧,588,542\" style=\"margin: 10px 0px;\"><br><br>', '优化,软件', '0', '2016-06-14 09:58:02', '', '', '0', '4031', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465821944.jpg', '1', '0', '综合', null, '2016-06-30 14:05:00', null);
INSERT INTO `nice_content` VALUES ('cecba818-3117-11e6-bea3-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '超好用！简单5步帮你做出优雅大气的渐变色背景', '13', '15', '0', '<span>编者按：经常看到UI设计中有很多漂亮的渐变色</span><span><a href=\"http://www.uisdc.com/tag/%e8%83%8c%e6%99%af\" title=\"查看 背景 中的全部文章\" target=\"_blank\">背景</a></span><span>，其实只需要轻松5步就可以做出那种效果，配合一张大气的图片效果绝对惊艳，来看今天这篇教程！</span><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br><div style=\"margin-bottom: 10px; text-indent: 12px;\"><h4><strong><font size=\"5\">影像/<a href=\"http://www.uisdc.com/tag/%e8%83%8c%e6%99%af\" title=\"查看 背景 中的全部文章\" target=\"_blank\">背景</a>处理</font></strong></h4><div style=\"margin-bottom: 10px; text-indent: 12px;\"><strong><font size=\"5\"><br></font></strong></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://image.uisdc.com/wp-content/uploads/2016/06/ds201606131.png\" alt=\"\" style=\"margin: 10px 0px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><strong><br></strong></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div><div style=\"margin-bottom: 10px; text-indent: 12px;\"><p style=\"margin-bottom: 10px; text-indent: 12px;\">Sketch3当中我们能做的图像处理其实只有寥寥四项可以调整，分别是：</p><ol><li>Hue（色相）</li><li>Saturation（饱和度）</li><li>Brightness（亮度）</li><li>Contrast（对比）</li></ol><p style=\"margin-bottom: 10px; text-indent: 12px;\">不要问我它们是干嘛的，不然这篇就会变成写给非摄影师的-基本修图，请用 Google 搜寻这四个关键词来建立一些基本认识喔。废话不多说，首先我们就来试试看如何利用上方的影像来制作出一个有渐层颜色覆盖的背景吧！</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>Step 1. 去饱和度</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">在 Sketch3 图层面板中选取你的影像之后，于右下角的控制面板内用力的把饱和度拉到0来让影像转成灰阶吧，这个步骤的原因其实非常单纯，就只是为了避免后期覆盖的颜色跟照片原本的颜色混合产生…意想不到的效果（当然，您时间很多的话也是可以不去饱和度慢慢的调整）。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://image.uisdc.com/wp-content/uploads/2016/06/ds201606132.png\" alt=\"\" style=\"margin: 10px 0px;\"><br></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">去除饱和度后的影像应该要类似下图，一种看起来很厉害，充满大师级的黑白感受：</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img alt=\"ds201606133\" src=\"http://image.uisdc.com/wp-content/uploads/2016/06/ds201606133.png\" style=\"margin: 10px 0px;\"></p><div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div></div></div></div>', '设计,美工,技巧', '5', '2016-06-15 10:32:01', 'http://www.uisdc.com/create-elegant-gradual-background', '', '1', '4032', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465788723.jpg', '1', '0', '生活', null, '2016-07-01 10:43:59', null);
INSERT INTO `nice_content` VALUES ('cf2ba312-3162-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', '“自VR”启蒙元年', '9', '0', '0', '<p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>记忆的深度</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">一位父亲带着女儿去攀岩，头盔上戴着最流行的运动摄像机。当他们攀升到20米左右，高过大部分树冠时，父亲恰巧回头看到落日时分金辉层染，那一刹那的壮丽让他觉得这就是自己和女儿生命中极为重要的一个“Moment”！可当回看运动摄像机拍下的视频时，画面却中只有面前的“墙壁”、只有山岩。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img1.caijing.com.cn/2016/0613/1465786922281.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">这是兹曼软件技术公司联合创始人张德立分享的一个故事。兹曼ZMER正推出国内首款VR运动摄像机，具有真正意义上的无盲区拍摄/录制，水平360°×垂直360°全景成像。如果攀岩头盔上戴的是ZMER VR运动摄像机，就可以拍到普通镜头顾及不到的角度，这个落日的Moment一定可以记录下来。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">记忆的深度可以有多深、有多广阔、有多真切?360°×360°的全景球状照片或视频能够完整记录全部细节，正面背面，主视角以及当时忽视的环境，配戴上VR眼睛再来看这样的旅行记录，一定有身临其境的感觉，或者将来给孩子讲“当年的故事”一定更有感染力吧。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">VR摄像机就像是把世界每一面都记录下来的“时光机”，只要是被记录下来的，都可以再次被体验。如果说未来五到十年有什么东西能够像Uber颠覆全球出租车行业一样颠覆全球娱乐产品，那就是VR（虚拟现实）。VR行业有大批资本追逐，关于VR的创业项目也越来越火爆。从去年开始，各大知名企业纷纷宣布加入或者布局VR产品，三星、华为、HTC、Google、微软等企业纷纷推出硬件设备，腾讯、乐视、阿里等也开始在生态建设上布局VR。现状是VR观看设备很热，得到科技潮人们的追捧，但VR内容发展缓慢，制作成本很高，最终会反过来限制VR产业的进一步发展。所以VR拍摄设备必将成为未来的主流VR领域的核心设备。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>你也可以拥有的</strong><strong>VR</strong><strong>拍摄设备</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">世界上第一部VR大制作电影已经出现，这部名叫《HELP》的VR电影只有5分钟，却花掉了500万美元的制作费用，使用4台专门3D打印制作的庞大摄像机同时拍摄然后后期拼合成整个360°的VR电影。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><img src=\"http://img4.caijing.com.cn/2016/0613/1465786922492.jpg\" border=\"0\" style=\"margin: 10px 0px;\"></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">目前市场上的VR拍摄设备质量参次不齐，从几千块到几十万不等，行业也未建立标杆，技术的不成熟与市场的多变性导致许多厂商并没有明确的市场定位。而ZMER的上市，将是一次市场上的突破尝试：3000元内的零售价格、面向运动和旅行达人以及追求炫酷科技的潮人们的精准定位、既能满足专业用户的高品质需求又能满足初学者的简便操作，都将成为它在VR拍摄设备市场中异军突起的有力支持。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">市场上有的零星类似产品与ZMER相比，在便携和实时拼接上还有很大差距。而且号称“全景”的拍摄设备，由于单镜头的设计局限，使得其覆盖的视场角最多只能达到360°×230°，它带来的是某一方向上视野的缺失，实际上这并不能称之为真正的“全景”。而ZMER使用两个215°的鱼眼镜头，形成完整的球形视场，视场角达到，是真正能做到360°×360°的无盲区拍摄。同时，ZMER VR运动摄像机的机内实时拼接系统使得它不需要任何的后期处理即可实时得到经过校正的拼接的完整全景影像。利用手机等设备就可以即时看到360°×360°的全景影像。这个特性使得ZMER可以在不借助任何外接设备的条件下，轻松实现网络VR直播。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">ZMER VR运动摄像机是目前市场可见的最小巧的VR拍摄设备，仅有口袋大小，非常便携；机身上只有拍摄按钮和WiFi开关，操作简单。通过手持或安装在底座上拍摄，利用底座可以装在汽车挡风玻璃或车顶上充当行车记录仪、拍摄沿路风景。它一次充电可以拍摄2小时左右，如果是车载拍摄可利用汽车持续供电无限拍摄。内置存储支持128GB存储卡可以记录32小时的拍摄内容。除了拍摄照片或视频外，还可以进行3秒或10秒间隔的延时视频拍摄，这也是运动相机常见的玩法。它拥有非常丰富全面的运动配件，可以通过不同配件，把摄像机固定在头盔、肩带、自行车把等运动装备上进行拍摄，适应各种极限运动。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">张德立认为目前VR摄像产业普通遇到的瓶颈是生态环境限制了设备的像素，在如今的视频生态环境中，解码设备、显示和传输设备均以1080P为主流，所以高于此分辨率的原视频会在传输中遇到卡顿，降低清晰度等问题。ZMER的画质设计是性价比的平衡之作。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">配合这个VR运动摄像机的手机APP功能丰富，不但可以对硬件设备进行无缝控制，同时内置的播放器有多种观看模式，包括：1：1模式、2：1模式、VR模式和特别好玩的“小行星”模式，小行星模式仿佛把人放在一个很小的星球上一样，就像《小王子》中的场景一样。同时，通过APP还可以对拍摄到的全景内容进行编辑，实现剪辑、滤镜、加字幕等神奇的效果。ZMER VR运动摄像机所拍摄的内容文件格式是通用的JPG（照片）或MP4（视频）格式，专业人士也可以利用它拍摄的素材在电脑中进行更专业的编辑和使用。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">玩VR拍摄的人一定会希望将自己的作品第一时间与朋友分享，并获得社交圈中的惊艳反馈。因此，ZMERAPP还可以实现拍摄内容一键分享，自动生成带全景播放器的H5链接，用户可轻松将VR内容分享到各类社交平台。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>“老男孩”的新玩意儿</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">聊到创业故事，张德立戏称他们的创业团队都是“老男孩”，几位核心创始人都是70年代中生人，都是同学，都曾在IBM、高通这样的著名技术公司工作，研究“大数据”。创业的时候就想着一起做点普通人看得懂、可以玩的技术，带着这个想法，在多年前就开始了VR领域的探索。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">最早的设备是自己组装的6个GoPro，通过软件将6台机器采集的视频后期拼接到一起。但在拍摄及后期制作中发现这种做法经常会出现画面扭曲现象或无法实现全景拼接。因此，索性开始自主研发VR拍摄设备。研发过程中试过市面上常见的各种技术方法，解决一个个难题，直到ZMER的诞生，终于实现了他们共同认可的“极简”手持一体机产品。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">张德立表示：公司的近期主要精力还是放在新产品的研发和叠戴上，希望能从技术上构建市场壁垒，得到业内认可，迅速占领市场。而第一代的ZMER VR运动摄像机也将在6月16日上线京东众筹。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\"><strong>ZMER VR</strong><strong>运动摄像机可以怎么玩？</strong></p><p style=\"margin-bottom: 10px; text-indent: 12px;\">张德立认为ZMER对于前面说到的攀岩、以及自行车运动等都是特别合适的，例如固定在自行车把手上不但可以拍到沿途的风景，还可以拍到自行车手自己的状态。利用延时+全景拍摄还可以让它更好玩，不但可以拍星星位移，同时还能拍到地面上的各种车灯变化，交相辉映。聚会时，无法亲身前往的朋友可以通过全景拍摄和实时VR观看加入到其中。摄影师以前永远通过镜头看前面，通过它能发现背后的风景，这无疑是魅力所在。想象一下，例如“大阅兵”这样的盛大场面，其中某一个参与者身上戴着一个VR运动摄像机，那么你将可以看到他身边的人在大阅兵中的状态，壮阔与细节，这样的记录将是前所未有的。有一部叫《爱情银行》的电影，恋人们可以去这家叫“爱情银行”的咖啡馆拍摄告白，以视频的形式存储起来。把身边的场景永远留住，人类大概都有这样的奢望，VR拍摄可以实现这个愿望。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">除了个人用户的“玩”，VR拍摄设备也可以有广阔的行业用途，现场直播 、电力行业、交通执法、房地产、旅游业等，ZMER的定制服务与行业深度合作，利用VR技术可以解决一些行业的痛点。例如用于教学，进入的同学就不但能看见老师讲课，也能看到周围背后同学的状态，有真实的上课感觉。军队的侦察使用、或探险等用途，后方更能通过VR拍摄设备看到周围的全景。现在已经常用于房地产销售的全景照片，通常由拍摄多张照片拼接以展示完整的房屋情况，用VR拍摄设备的话更全面直接。甚至交管局或警察的执法记录仪，VR拍摄就不只是现在这样只拍摄正面的情况，更可以把后面缺失的部分补上，“来自后背的袭击”将不再是无法证明的叙说。现在最流行的网络视频直播，用VR拍摄设备来拍的话，360°视频的无疑是更好玩的。观众来看VR视频或VR电影，有主画面有支线，甚至可能需要看几遍来了解多角度的场景，也可能不同的人关注角度不同甚至看出不同的结局来。</p><p style=\"margin-bottom: 10px; text-indent: 12px;\">张德立觉得：VR设备正处于市场初期，而未来，人们在生活中实现VR通讯也是有可能的。人们通过VR设备，实际身处不同地方也可以像真实在同一间办公室聊天一样；又或者一起相约去王府井逛街，好像在真实的一间间店面逛，其实是网上下单。一方面，VR摄像机自身必然向更智能、更轻便的方向发展，能更广泛的走进大众的生活中，运用到各种场景里；另一方面，VR摄像机的普及会产生更多的VR内容，这些VR内容又进一步推动VR行业里的观看设备、VR平台的快速发展。虽然“创业的路上风景极差”，困难很多，但是张德立和ZMER团队一定会淋漓尽致的将VR拍摄设备做下去！</p>', 'VR', '5', '2016-06-14 09:58:05', 'http://baike.baidu.com/link?url=GlG87iyV24CG0mwiO5foxGW2X57SEzQ3FsZM1f0zbURYeDaWJjAkpk_HPOwl7H0h-5uEgaPn9-GG24MzB38XGUkP0apJITL8Ntzdra7UbP_', '', '1', '4033', '../../sub/04b56ce8-310e-11e6-bea3-6451063c7c21_NaN1465820972.jpg', '1', '0', '生活', null, '2016-07-12 19:02:51', null);
INSERT INTO `nice_content` VALUES ('cffc8236-315a-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'iTunes_x64_install安装包分享', '2', '0', '0', '还在网上找不到iTunew64位的么？！没事这里有。。。。<div><br></div><div>本up主发福利啦。。经常更新一些安装包和教程哦！</div>', '软件,苹果,老版', '0', '2016-06-14 09:58:06', 'http://pan.baidu.com/s/1kV6MHIv', '8mzt', '1', '4034', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465817584.png', '1', '0', '生活', null, '2016-06-14 09:58:06', null);
INSERT INTO `nice_content` VALUES ('d3d047a9-3158-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '想开发App却不会编程？现在有工具可以帮你', '3', '0', '0', '<div style=\"margin-bottom: 10px; text-indent: 12px;\">Semble 让制作一个 App 变得像制作 PPT 一般简单。\n开发应用软件（App）这事一度只能由学习计算机的专业人士完成，不过现在情况改变了。想要为你的手机开发强大的 App？试试 Semble，它是一款全新的 App 创造工具，能够让任何地方的人把他们的想法传递给其他人。\n\nSemble 被其团队称之为：一个直观的工具，可以用来开发和分享 App。Semble 平台是免费的，并能提供近乎是无限的选择，这就意味着你想要制作多少应用都没有问题，因为成本几乎可以忽略不计。Semble 团队称使用它创作一款 App 和写邮件、做演示幻灯片一样简单。你既能做一款商业活动的 App，也可以做一款产品促销的 App。\n一些使用 Semble 的用户反馈说，使用它创作软件真的没有什么限制，你可以随心所欲。Karen Washington 是一个住在纽约哈林区附近的城市农民和社会活动家。Washington 制作了一个名为农场女皇（Farm Queen）的App向人们宣传如何在城市中种庄稼。她说：“使用这个工具来分享我的知识并使得人人都懂得耕作是一件容易的事，通过向使用我的 App 的人传递我对于耕作的热情，我觉得我被赋予了改变世界的力量。”\n“通过移动设备传播信息应该是人人都能够做的事，它不应被限制在程序员和IT人士的圈子里，” Semble 背后的公司 Mag+ 创始人兼 CEO Staffan Ekholm 说到，“WordPress 在网页上做到的事，我们打算用 Apps 的形式来做。我们的愿望是让想要得到强大 App 的人如愿，我们还能帮助人们改变他们对于 App 的看法——想要的软件不一定需要 IT 公司来开发，自己动手，也能完成。”\n\n使用 Semble 制作软件时，用户只需拖拽他们想要的功能即可，这和制作 PPT 的过程很像。Semble 制作软件的步骤还可以更加简单，用户可以自定义一个 App，或在现成的模板中加入自己的内容。此外，用户可以在自己的 App 中加入动态内容（如RSS订阅）并随时升级整个 App，这能够保证一个 App 在用户面前一直保持新鲜感和良好的形象。\nEkholm 还说：“我在出版业中已经有 20 年了，我见证了整个行业变好的过程，Semble 的出现是为了让出版业进一步发展。这个工具可以让任何人把自己美妙、富有沉浸感的内容传递到他人的数字智能设备上，不管是城市农民或者其他小型企业，都能做出自己想要的 App。”<br><img src=\"../../content/1465816811.jpg\"><br><br><br></div>', '软件,技术', '0', '2016-06-14 09:59:21', '', '', '0', '4035', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465816824.jpg', '1', '1', '综合', null, '2016-06-14 09:59:21', null);
INSERT INTO `nice_content` VALUES ('f67cafc7-3159-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '福利！AI安装教程及安装包。想学设计的快来！', '10', '0', '0', '<div label-module=\"para\" style=\"margin-bottom: 10px; text-indent: 12px;\"><span>Adobe Illustrator CS6</span>&nbsp;软件使用 Adobe Mercury 支持，能够高效、精确处理大型复杂文件。<div style=\"margin-bottom: 10px; text-indent: 12px;\"><br></div></div><div label-module=\"para\" style=\"margin-bottom: 10px; text-indent: 12px;\">adobe Illustrator CS6全新的追踪引擎可以快速地设计流畅的图案以及对描边使用渐变效果，快速又精确地完成设计，其强大的性能系统提供各种形状、颜色、复杂效果和丰富的排版 ，可以自由尝试各种创意并传达您的创作理念。</div><div label-module=\"para\" style=\"margin-bottom: 10px; text-indent: 12px;\">比 Adobe Illustrator CS4 和<a target=\"_blank\" href=\"http://baike.baidu.com/view/4042633.htm\">Adobe Illustrator CS5</a>在增加大量功能和问题修复之外，最主要的是通过Adobe Mercury实现64位支持，优化了内存和整体性能能，可以提高处理大型、复杂文件的精确度、速度和稳定性，实现了原本无法完成的任务。</div><div label-module=\"para\" style=\"margin-bottom: 10px; text-indent: 12px;\">最下方 车票有教程和安装包哦！</div>', '设计,软件', '2', '2016-06-14 11:31:07', 'http://pan.baidu.com/s/1eS8sONK', 'mvgz', '1', '4037', '../../sub/e1ca9e6e-df01-4b90-8efa-5a49edfb82fb_NaN1465817109.png', '1', '0', '生活', null, '2016-06-29 09:38:37', null);

-- ----------------------------
-- Table structure for nice_history
-- ----------------------------
DROP TABLE IF EXISTS `nice_history`;
CREATE TABLE `nice_history` (
  `id` char(50) NOT NULL,
  `PID` char(50) DEFAULT NULL,
  `Browseurl` text COMMENT '浏览网址',
  `Browsedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '浏览时间',
  `type` int(3) NOT NULL,
  `ConGoneId` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_history
-- ----------------------------
INSERT INTO `nice_history` VALUES ('05b52bf1-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 19:51:58', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('0a3422a7-3163-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 20:33:33', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('0a831dd3-3d9a-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-29 09:38:28', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('0b690849-31ca-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=1db0e529-3161-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 08:50:56', '0', '1db0e529-3161-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('0b6c0e44-3f36-11e6-aae8-6451063c7c21', '2b96d873-3f35-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=1db0e529-3161-11e6-8bd8-6451063c7c21&type=0', '2016-07-01 10:47:53', '0', '1db0e529-3161-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('0ef12c8c-46b1-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '../resources/4025', '2016-07-10 23:20:58', '1', '9');
INSERT INTO `nice_history` VALUES ('0f1f0a01-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=cffc8236-315a-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 19:50:48', '1', 'cffc8236-315a-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('0fe59ec4-3d9a-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-29 09:38:37', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1378bf95-3d9a-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=c4478f50-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-29 09:38:43', '1', 'c4478f50-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1583756e-31cf-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:27:00', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1596ddd5-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=553a7de2-315c-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 19:50:55', '1', '553a7de2-315c-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('17f7a506-3f38-11e6-aae8-6451063c7c21', 'ee8084bf-3f37-11e6-aae8-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?id=2e834696-3111-11e6-bea3-6451063c7c21&type=0', '2016-07-01 11:02:33', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('181cf881-31da-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-06-14 10:45:49', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('182aa45d-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-06-13 19:50:59', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1b9414ae-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=37e21fdc-3115-11e6-bea3-6451063c7c21&type=1', '2016-06-13 19:51:05', '1', '37e21fdc-3115-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1c7ee683-31da-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1#', '2016-06-14 10:45:57', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1cabc342-3231-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=37e21fdc-3115-11e6-bea3-6451063c7c21&type=1', '2016-06-14 21:08:45', '1', '37e21fdc-3115-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('1e2992ce-3166-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=ec4ea15d-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 20:55:35', '1', 'ec4ea15d-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('25869240-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=2e834696-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-13 19:56:55', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('27770441-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=553a7de2-315c-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 19:51:38', '1', '553a7de2-315c-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('28fec0b7-3e89-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://localhost:8080/html/resources.html?page=life&id=6511297f-315b-11e6-8bd8-6451063c7c21&type=0', '2016-06-30 14:10:15', '0', '6511297f-315b-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('2a37bd95-4809-11e6-b55e-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '../resources/4016', '2016-07-12 16:18:08', '1', '5805bc11-3160-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('2cc08495-4809-11e6-b55e-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '../resources/4025', '2016-07-12 16:20:43', '1', 'a4067da1-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('2ee1dfad-31cf-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:28:21', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('32002151-31d2-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=undefined&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 11:30:35', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('3350171b-3f35-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=00ab30d8-3f35-11e6-aae8-6451063c7c21&type=1', '2016-07-01 10:42:13', '1', '00ab30d8-3f35-11e6-aae8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('3a106e77-3f35-11e6-aae8-6451063c7c21', '2b96d873-3f35-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=997afe10-3164-11e6-8bd8-6451063c7c21&type=0', '2016-07-01 10:42:02', '0', '997afe10-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('3d460a56-3f33-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-07-01 10:43:59', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('3fdbecb9-32a0-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=00612d30-329d-11e6-8bd8-6451063c7c21&type=1', '2016-06-15 10:24:21', '1', '00612d30-329d-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('4006d0e9-3d9c-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-29 09:54:17', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('42e99742-31da-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?id=2e834696-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-14 10:47:01', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('4953d554-46b1-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '../resources/4025', '2016-07-10 23:20:58', '1', '9');
INSERT INTO `nice_history` VALUES ('52d9cc32-329d-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-06-15 10:24:33', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('560aa6b5-32f0-11e6-b749-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 19:57:31', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('57c76449-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=d3d047a9-3158-11e6-8bd8-6451063c7c21&type=0', '2016-06-13 19:56:25', '0', 'd3d047a9-3158-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('591461ac-3f35-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=00612d30-329d-11e6-8bd8-6451063c7c21&type=1', '2016-07-01 10:42:54', '1', '00612d30-329d-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('5e236ee7-3203-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-14 15:41:17', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('605115ec-31e0-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=resources&id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 11:31:05', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('63efb681-32b5-11e6-b749-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=a4067da1-3164-11e6-8bd8-6451063c7c21&type=1', '2016-06-15 12:55:32', '1', 'a4067da1-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('647d1020-38e6-11e6-aae8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?page=undefined&id=495890ea-3394-11e6-b749-6451063c7c21&type=0', '2016-06-23 10:04:15', '0', '495890ea-3394-11e6-b749-6451063c7c21');
INSERT INTO `nice_history` VALUES ('65a4e2f9-32a1-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:32:34', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('67f23108-31cd-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=2e834696-3111-11e6-bea3-6451063c7c21&type=undefined', '2016-06-14 09:14:59', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('682454b7-32a1-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:32:38', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6893ff6e-32f0-11e6-b749-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-15 19:58:02', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('692d4d0d-31c8-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 08:39:14', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('695a34b1-3d9a-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=2e834696-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-29 09:41:07', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6aa3af05-3166-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 20:58:14', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6b6ab7a3-31c8-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=a4067da1-3164-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 08:39:18', '1', 'a4067da1-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6b72a4e7-32a1-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=life&id=7f883359-3141-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:32:44', '0', '7f883359-3141-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6c4024f4-31c8-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=ec4ea15d-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 21:09:56', '1', 'ec4ea15d-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6d1a4a10-3e88-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://localhost:8080/html/resources.html?page=undefined&id=c882d392-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-30 14:05:00', '0', 'c882d392-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('6db16cd7-32a1-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=life&id=3b88591e-3145-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:32:47', '0', '3b88591e-3145-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7021bed7-32a1-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=life&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:32:52', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7143371c-3166-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=ec4ea15d-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 20:58:20', '1', 'ec4ea15d-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('71a0a2b5-32a1-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=life&id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-15 10:35:29', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('734d3914-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=9194b2cf-3136-11e6-8bd8-6451063c7c21&type=%E7%94%9F%E6%B4%BB', '2016-06-15 10:18:38', '0', '9194b2cf-3136-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7803b76e-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=00612d30-329d-11e6-8bd8-6451063c7c21&type=%E8%B5%84%E6%BA%90', '2016-06-15 10:18:46', '1', '00612d30-329d-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('78f8f23a-31cd-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 21:13:16', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('790ccbad-3d27-11e6-aae8-6451063c7c21', 'cf382118-3d0e-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=27962f63-3160-11e6-8bd8-6451063c7c21&type=0', '2016-06-28 19:58:18', '0', '27962f63-3160-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('79d83d37-3d99-11e6-aae8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=73f31ef2-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-29 09:34:25', '0', '73f31ef2-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7ce63cce-32b2-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=bd1ea43b-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-15 12:34:55', '0', 'bd1ea43b-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7d8b9087-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=7f883359-3141-11e6-8bd8-6451063c7c21&type=%E7%94%9F%E6%B4%BB', '2016-06-15 10:18:55', '0', '7f883359-3141-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7f1d39e6-32b2-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-15 12:34:58', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7f2a6f97-3f35-11e6-aae8-6451063c7c21', '2b96d873-3f35-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-07-01 10:43:58', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7f89cd73-329e-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=9194b2cf-3136-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:11:49', '0', '9194b2cf-3136-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('7fe6eff4-31cd-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=54ec1789-3161-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:15:40', '0', '54ec1789-3161-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('81dfd215-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=3b88591e-3145-11e6-8bd8-6451063c7c21&type=%E7%94%9F%E6%B4%BB', '2016-06-15 10:19:58', '0', '3b88591e-3145-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('85a38733-3166-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 21:04:16', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('86aaf9c8-3166-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=92e2df6d-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-13 20:58:30', '0', '92e2df6d-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('8729f516-321f-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 19:02:53', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('8f2f661c-3f35-11e6-aae8-6451063c7c21', '2b96d873-3f35-11e6-aae8-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=3b88591e-3145-11e6-8bd8-6451063c7c21&type=0', '2016-07-01 10:44:25', '0', '3b88591e-3145-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('9058b8fd-3166-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=a4067da1-3164-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 21:04:19', '1', 'a4067da1-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('95aa0ebc-3162-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=146627c6-3118-11e6-bea3-6451063c7c21&type=0', '2016-06-13 20:30:18', '0', '146627c6-3118-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('95f598db-32b2-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=bd1ea43b-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-15 12:35:37', '0', 'bd1ea43b-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('963bdabe-31d3-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=undefined&id=1db0e529-3161-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:59:14', '0', '1db0e529-3161-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('991f26e9-31d1-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=undefined&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:59:12', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('998f6866-31d3-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=life&id=d3d047a9-3158-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:59:20', '0', 'd3d047a9-3158-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('99ef8c9a-32b2-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-15 12:35:43', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('9bfcf7d1-31d3-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=resources&id=c4478f50-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 09:59:24', '1', 'c4478f50-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('a376f8c0-329b-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 09:59:48', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('a7008050-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=life&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:20:05', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('a9cec345-31da-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=life&id=2e834696-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-14 10:50:58', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('acf4e333-38e6-11e6-aae8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?page=undefined&id=c882d392-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-23 10:03:54', '0', 'c882d392-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('ad1857f0-31da-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?page=life&id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-14 11:30:23', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('aebc1e43-3231-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=27962f63-3160-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 21:12:50', '0', '27962f63-3160-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('af7d7253-38e6-11e6-aae8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?page=undefined&id=1ec3bc84-3136-11e6-8bd8-6451063c7c21&type=0', '2016-06-23 10:03:58', '0', '1ec3bc84-3136-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('af87dc78-315c-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=f67cafc7-3159-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 19:48:04', '1', 'f67cafc7-3159-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b06731ca-31c8-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-06-14 08:53:59', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b0fdaee9-329b-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=2e834696-3111-11e6-bea3-6451063c7c21&type=0', '2016-06-15 09:58:32', '0', '2e834696-3111-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b2807911-38e6-11e6-aae8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?page=undefined&id=7f883359-3141-11e6-8bd8-6451063c7c21&type=0', '2016-06-23 10:04:03', '0', '7f883359-3141-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b60d5fa3-3164-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=cf2ba312-3162-11e6-8bd8-6451063c7c21&type=1', '2016-06-13 20:45:31', '1', 'cf2ba312-3162-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b661ae28-3166-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=c257dcb7-3163-11e6-8bd8-6451063c7c21&type=0', '2016-06-13 20:59:51', '0', 'c257dcb7-3163-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b6a10436-329b-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=ec4ea15d-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-15 09:51:53', '1', 'ec4ea15d-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('b7945c3a-3d9a-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?id=73f31ef2-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-29 09:43:18', '0', '73f31ef2-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('bb4f94dc-3387-11e6-b749-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-16 14:01:18', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('bb774b66-3157-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=undefined&id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-06-13 19:12:36', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('bcb7274d-38e6-11e6-aae8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?page=life&id=7f883359-3141-11e6-8bd8-6451063c7c21&type=0', '2016-06-23 10:04:20', '0', '7f883359-3141-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('bd199e88-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=3b88591e-3145-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:20:42', '0', '3b88591e-3145-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('be9f8b0b-38e6-11e6-aae8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?page=resources&id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-23 10:05:32', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('bfcc07ea-3d9a-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=life&id=495890ea-3394-11e6-b749-6451063c7c21&type=0', '2016-06-29 09:43:32', '0', '495890ea-3394-11e6-b749-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c1dde8dd-3166-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-13 21:00:10', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c2159d54-31d9-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=c4478f50-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 10:43:25', '1', 'c4478f50-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c287c6a9-329f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=7f883359-3141-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 11:01:41', '0', '7f883359-3141-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c6b70212-3387-11e6-b749-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=7c4f8d82-3166-11e6-8bd8-6451063c7c21&type=1', '2016-06-16 14:01:37', '1', '7c4f8d82-3166-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c7598f85-3202-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?page=undefined&id=1926f37c-3164-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 15:41:20', '0', '1926f37c-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c84045f0-31cd-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=146627c6-3118-11e6-bea3-6451063c7c21&type=0', '2016-06-14 21:10:34', '0', '146627c6-3118-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('c92bcef3-31fd-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 16:11:41', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('cc1fd03b-3387-11e6-b749-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=a4067da1-3164-11e6-8bd8-6451063c7c21&type=1', '2016-06-16 14:01:46', '1', 'a4067da1-3164-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('d08ce68c-31d9-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?id=c4478f50-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 10:43:49', '1', 'c4478f50-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('d41e4297-3d99-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-29 09:36:56', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('db61c0f1-31d9-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-14 10:44:07', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('dcd845e8-315f-11e6-8bd8-6451063c7c21', '04b56ce8-310e-11e6-bea3-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=37e21fdc-3115-11e6-bea3-6451063c7c21&type=1', '2016-06-13 20:10:48', '1', '37e21fdc-3115-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('dd3e2f5c-3d99-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=resources&id=cecba818-3117-11e6-bea3-6451063c7c21&type=1', '2016-06-29 09:37:12', '1', 'cecba818-3117-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('ddb9bd9c-315d-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=146627c6-3118-11e6-bea3-6451063c7c21&type=0', '2016-06-13 19:56:31', '0', '146627c6-3118-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('e2a42a73-315f-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=6511297f-315b-11e6-8bd8-6451063c7c21&type=0', '2016-06-13 20:38:57', '0', '6511297f-315b-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('e57720b7-329a-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://localhost:8100/html/resources.html?id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:32:42', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('ea97ee11-329c-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?page=life&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-15 10:00:29', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('ec9f4704-3230-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?page=life&id=1b0ec91a-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-14 21:07:25', '0', '1b0ec91a-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('f40b606f-31d9-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://10.3.16.57:8100/html/resources.html?id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-06-14 10:44:49', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('f53f7f96-3d99-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=life&id=73f31ef2-3112-11e6-bea3-6451063c7c21&type=0', '2016-06-29 09:37:52', '0', '73f31ef2-3112-11e6-bea3-6451063c7c21');
INSERT INTO `nice_history` VALUES ('f93aaf50-3d99-11e6-aae8-6451063c7c21', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712', 'http://10.3.16.57:8100/html/resources.html?page=life&id=0544439f-315f-11e6-8bd8-6451063c7c21&type=0', '2016-06-29 09:37:59', '0', '0544439f-315f-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('f9efe51f-31cd-11e6-8bd8-6451063c7c21', '6e446306-2153-11e6-be50-6451063c7c21', 'http://10.3.16.57:8100/html/resources.html?id=54ec1789-3161-11e6-8bd8-6451063c7c21&type=0', '2016-06-14 09:19:04', '0', '54ec1789-3161-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('fb26ed40-3f38-11e6-aae8-6451063c7c21', 'b6297b30-3f38-11e6-aae8-6451063c7c21', 'http://10.3.16.58:8100/html/resources.html?id=57a6517c-3165-11e6-8bd8-6451063c7c21&type=1', '2016-07-01 11:08:54', '1', '57a6517c-3165-11e6-8bd8-6451063c7c21');
INSERT INTO `nice_history` VALUES ('ff3d25a2-3203-11e6-8bd8-6451063c7c21', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', 'http://localhost:8080/html/resources.html?id=74c19ecd-3117-11e6-bea3-6451063c7c21&type=0', '2016-06-14 15:45:47', '0', '74c19ecd-3117-11e6-bea3-6451063c7c21');

-- ----------------------------
-- Table structure for nice_info
-- ----------------------------
DROP TABLE IF EXISTS `nice_info`;
CREATE TABLE `nice_info` (
  `UserName` varchar(50) NOT NULL COMMENT '用户账号',
  `UserPass` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `UserId` varchar(50) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_info
-- ----------------------------
INSERT INTO `nice_info` VALUES ('111@qq.com', 'c466a1badb3a3c6df23764bb4e004ef3', '4456ab39-3f33-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('1205503306@qq.com', '81c73a5d7ae44bf348129416cf4e4546', 'a226c8f9-3f33-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('121@qq.com', 'feaf6def48f161ff0d54c74da4bfda14', 'd1773957-22e6-11e6-be50-6451063c7c21');
INSERT INTO `nice_info` VALUES ('123123123@qq.com', '81c73a5d7ae44bf348129416cf4e4546', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('1572381893@qq.com', 'aef484683fc283db3c98551d67ffe218', '4f6893d7-3116-11e6-bea3-6451063c7c21');
INSERT INTO `nice_info` VALUES ('1@qq.com', 'a6ec5a7b854d204b74cd90a8306a957e', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fb');
INSERT INTO `nice_info` VALUES ('2553420729@qq.com', 'cf8bd7387aefb0c75a857f11d4ae1fe2', '32948fa9-3f37-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('2@qq.com', 'a6ec5a7b854d204b74cd90a8306a957e', '9f5ba06f-1582-11e6-854c-6451063c7c21');
INSERT INTO `nice_info` VALUES ('2@qq.om', 'a6ec5a7b854d204b74cd90a8306a957e', 'ee30d6af-22e9-11e6-be50-6451063c7c21');
INSERT INTO `nice_info` VALUES ('372264507@qq.com', '6a720de6d6c407d3213263da546312b3', '2a63d2b5-3f36-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('3@qq.com', 'a6ec5a7b854d204b74cd90a8306a957e', 'f67597d1-286b-11e6-b422-6451063c7c21');
INSERT INTO `nice_info` VALUES ('476298818@qq.com', 'c332bf624318e4885c41caea5dce600e', '6e446306-2153-11e6-be50-6451063c7c21');
INSERT INTO `nice_info` VALUES ('4@qq.com', 'a6ec5a7b854d204b74cd90a8306a957e', '04b56ce8-310e-11e6-bea3-6451063c7c21');
INSERT INTO `nice_info` VALUES ('5@qq.com', '6a720de6d6c407d3213263da546312b3', 'a8e72d64-3d02-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('602061025@qq.com', 'aef484683fc283db3c98551d67ffe218', '21744988-3f34-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('867427795@qq.com', 'a6ec5a7b854d204b74cd90a8306a957e', 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fa');
INSERT INTO `nice_info` VALUES ('985923481@qq.com', 'fc2338721f9f2cfdcbc961c55436008f', '9c2d2cfc-3f35-11e6-aae8-6451063c7c21');
INSERT INTO `nice_info` VALUES ('admin', 'a6ec5a7b854d204b74cd90a8306a957e', 'ffc75bc8-3e0e-4a76-aa40-ff5e21228712');
INSERT INTO `nice_info` VALUES ('woshinidie@qq.com', 'ca1bc50e6f4218bac279ccee2e77d5ff', '2b96d873-3f35-11e6-aae8-6451063c7c21');

-- ----------------------------
-- Table structure for nice_label
-- ----------------------------
DROP TABLE IF EXISTS `nice_label`;
CREATE TABLE `nice_label` (
  `label` char(10) NOT NULL COMMENT '标签名字',
  `count` int(5) DEFAULT NULL COMMENT '搜索次数',
  PRIMARY KEY (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_label
-- ----------------------------
INSERT INTO `nice_label` VALUES ('僵尸国度', '0');
INSERT INTO `nice_label` VALUES ('动画', '0');
INSERT INTO `nice_label` VALUES ('单机游戏', '0');
INSERT INTO `nice_label` VALUES ('吉河美希', '0');
INSERT INTO `nice_label` VALUES ('品川大地', '0');
INSERT INTO `nice_label` VALUES ('国产', '0');
INSERT INTO `nice_label` VALUES ('小学生', '0');
INSERT INTO `nice_label` VALUES ('小视频', '0');
INSERT INTO `nice_label` VALUES ('微电影', '0');
INSERT INTO `nice_label` VALUES ('恋爱', '0');
INSERT INTO `nice_label` VALUES ('惊爆草莓', '0');
INSERT INTO `nice_label` VALUES ('搞笑', '0');
INSERT INTO `nice_label` VALUES ('日剧', '0');
INSERT INTO `nice_label` VALUES ('日常', '0');
INSERT INTO `nice_label` VALUES ('校园', '0');
INSERT INTO `nice_label` VALUES ('校园迷糊大王', '0');
INSERT INTO `nice_label` VALUES ('治愈', '0');
INSERT INTO `nice_label` VALUES ('泡面', '0');
INSERT INTO `nice_label` VALUES ('漫画', '0');
INSERT INTO `nice_label` VALUES ('电影', '0');
INSERT INTO `nice_label` VALUES ('电视剧', '0');
INSERT INTO `nice_label` VALUES ('萝莉', '0');
INSERT INTO `nice_label` VALUES ('足立花', '0');
INSERT INTO `nice_label` VALUES ('野村美月', '0');
INSERT INTO `nice_label` VALUES ('阿澄佳奈', '0');
INSERT INTO `nice_label` VALUES ('魔法', '0');
INSERT INTO `nice_label` VALUES ('龙与虎', '0');

-- ----------------------------
-- Table structure for nice_lemon
-- ----------------------------
DROP TABLE IF EXISTS `nice_lemon`;
CREATE TABLE `nice_lemon` (
  `UID` char(50) DEFAULT NULL,
  `RecordTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `LemonChange` char(11) DEFAULT NULL COMMENT '柠檬交换数量',
  `LemonReason` char(100) DEFAULT NULL COMMENT '柠檬原因'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_lemon
-- ----------------------------
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-05-26 10:59:20', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-05-26 11:11:24', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-05-27 08:48:39', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('d1773957-22e6-11e6-be50-6451063c7c21', '2016-05-30 09:21:53', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-05-30 09:29:00', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-05-30 09:42:01', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-05-30 09:47:18', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-05-30 11:17:27', '1', '达到10个文章赞送你一颗柠檬');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-05-31 09:13:02', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-05-31 09:23:47', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-05-31 10:24:56', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-01 10:17:27', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-01 14:48:48', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-02 09:34:26', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-02 09:44:19', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('f67597d1-286b-11e6-b422-6451063c7c21', '2016-06-02 10:44:44', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-02 10:50:19', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-03 15:39:01', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('', '2016-06-06 10:02:25', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-06 10:10:14', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-06 11:14:09', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-07 10:44:09', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-07 15:34:49', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-08 10:26:04', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-11 17:18:12', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-12 09:19:21', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-13 09:47:01', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-13 09:47:35', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 09:49:48', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-13 09:50:25', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-13 10:24:56', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-13 11:14:01', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-13 11:16:28', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('4f6893d7-3116-11e6-bea3-6451063c7c21', '2016-06-13 11:24:17', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 11:35:00', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 17:14:33', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 19:28:34', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 19:34:39', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 19:45:29', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 20:14:15', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-13 20:31:54', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-13 20:45:01', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-13 20:50:02', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-13 20:53:04', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-13 20:54:11', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-13 20:58:13', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-14 08:39:03', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-14 10:43:15', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-14 10:46:15', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-14 13:45:51', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-15 09:24:43', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-15 09:45:36', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-15 10:01:06', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('4f6893d7-3116-11e6-bea3-6451063c7c21', '2016-06-15 10:33:20', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-15 19:57:30', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-16 11:12:17', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-06-16 13:59:06', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-16 15:28:35', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-17 08:40:00', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-17 09:23:38', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-19 20:38:59', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-21 10:46:16', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-23 10:01:32', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-06-28 13:37:33', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('a8e72d64-3d02-11e6-aae8-6451063c7c21', '2016-06-28 15:34:52', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('cf382118-3d0e-11e6-aae8-6451063c7c21', '2016-06-28 17:02:08', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '2016-06-28 19:58:51', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-29 09:19:39', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-29 09:36:51', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '2016-06-30 13:09:41', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-06-30 13:42:04', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-01 09:57:12', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('cf382118-3d0e-11e6-aae8-6451063c7c21', '2016-07-01 10:20:44', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('4456ab39-3f33-11e6-aae8-6451063c7c21', '2016-07-01 10:28:00', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('a226c8f9-3f33-11e6-aae8-6451063c7c21', '2016-07-01 10:30:37', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('d5d9a60d-3f33-11e6-aae8-6451063c7c21', '2016-07-01 10:32:04', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('21744988-3f34-11e6-aae8-6451063c7c21', '2016-07-01 10:34:11', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('cf382118-3d0e-11e6-aae8-6451063c7c21', '2016-07-01 10:40:25', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('2b96d873-3f35-11e6-aae8-6451063c7c21', '2016-07-01 10:41:38', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9c2d2cfc-3f35-11e6-aae8-6451063c7c21', '2016-07-01 10:44:46', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('bdae73ec-3f35-11e6-aae8-6451063c7c21', '2016-07-01 10:45:43', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-07-01 10:45:55', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('2b96d873-3f35-11e6-aae8-6451063c7c21', '2016-07-01 10:46:33', '3', '投稿奖励');
INSERT INTO `nice_lemon` VALUES ('2a63d2b5-3f36-11e6-aae8-6451063c7c21', '2016-07-01 10:48:45', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('cb0d5ddb-3f36-11e6-aae8-6451063c7c21', '2016-07-01 10:53:15', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('e30192d8-3f36-11e6-aae8-6451063c7c21', '2016-07-01 10:53:55', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('32948fa9-3f37-11e6-aae8-6451063c7c21', '2016-07-01 10:56:08', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('62f1596e-3f37-11e6-aae8-6451063c7c21', '2016-07-01 10:57:29', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('933ca39e-3f37-11e6-aae8-6451063c7c21', '2016-07-01 10:58:50', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('cf48cd80-3f37-11e6-aae8-6451063c7c21', '2016-07-01 11:00:31', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ee8084bf-3f37-11e6-aae8-6451063c7c21', '2016-07-01 11:01:24', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('f43817b9-3f37-11e6-aae8-6451063c7c21', '2016-07-01 11:01:33', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('2c5a5b6f-3f38-11e6-aae8-6451063c7c21', '2016-07-01 11:03:07', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ad37c7e4-3f38-11e6-aae8-6451063c7c21', '2016-07-01 11:06:44', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('b6297b30-3f38-11e6-aae8-6451063c7c21', '2016-07-01 11:06:59', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('cba1a1b7-41c5-11e6-affe-9c5c8e7be156', '2016-07-04 17:00:46', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('1af64670-41c6-11e6-affe-9c5c8e7be156', '2016-07-04 17:02:59', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('3c6f918c-41c6-11e6-affe-9c5c8e7be156', '2016-07-04 17:03:55', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('40201462-41c6-11e6-affe-9c5c8e7be156', '2016-07-04 17:04:01', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-04 17:34:31', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-07-04 17:37:28', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('88f68a66-41d3-11e6-affe-9c5c8e7be156', '2016-07-04 18:39:07', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('b456895b-41d3-11e6-affe-9c5c8e7be156', '2016-07-04 18:40:20', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('03556098-41d4-11e6-affe-9c5c8e7be156', '2016-07-04 18:42:32', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('0f869bb4-41d4-11e6-affe-9c5c8e7be156', '2016-07-04 18:42:53', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('19c52d31-41d4-11e6-affe-9c5c8e7be156', '2016-07-04 18:43:10', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('40e831a3-41d4-11e6-affe-9c5c8e7be156', '2016-07-04 18:44:16', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('8425a8a0-41d4-11e6-affe-9c5c8e7be156', '2016-07-04 18:46:08', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('c1577271-41d4-11e6-affe-9c5c8e7be156', '2016-07-04 18:47:51', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('6d6b9f8b-41d5-11e6-affe-9c5c8e7be156', '2016-07-04 18:52:40', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('339d2fed-4262-11e6-822d-9c5c8e7be156', '2016-07-05 11:40:22', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-06 20:44:43', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-09 14:09:39', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-10 16:58:56', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '2016-07-10 17:21:13', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-10 18:48:37', '1', '达到10个评论赞送你一颗柠檬');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-10 18:58:52', '1', '达到10个评论赞送你一颗柠檬');
INSERT INTO `nice_lemon` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '2016-07-12 15:47:53', '1', '登录恩赞奖励');
INSERT INTO `nice_lemon` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '2016-07-12 16:51:42', '1', '登录恩赞奖励');

-- ----------------------------
-- Table structure for nice_message
-- ----------------------------
DROP TABLE IF EXISTS `nice_message`;
CREATE TABLE `nice_message` (
  `content` text COMMENT '文章内容',
  `sname` char(50) DEFAULT NULL,
  `sQQ` char(50) DEFAULT NULL,
  `sEmail` char(50) DEFAULT NULL,
  `sender` char(50) DEFAULT NULL COMMENT '发送给谁',
  `accepter` char(50) DEFAULT NULL COMMENT '接受人',
  `sentDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发送时间',
  `IsLook` char(1) DEFAULT NULL COMMENT '是否查看过此信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_message
-- ----------------------------
INSERT INTO `nice_message` VALUES ('恩赞成立1周年了,非常感谢大家的支持', null, null, null, '管理员', '所有人', '2016-05-30 10:41:51', '0');
INSERT INTO `nice_message` VALUES ('轮播出现BUG ', null, null, null, 'e1ca9e6e-df01-4b90-8efa-5a49edfb82fa', '管理员', '2016-05-30 10:41:52', '0');
INSERT INTO `nice_message` VALUES ('1212', null, null, null, '管理员', '所有人', '2016-05-30 10:41:52', '0');
INSERT INTO `nice_message` VALUES ('FD', ' 1', ' 1', ' 1', '6e446306-2153-11e6-be50-6451063c7c21', '管理员', '2016-05-30 10:41:53', '0');
INSERT INTO `nice_message` VALUES ('大大大的意见啊', ' 2', ' 2', ' 2', '9f5ba06f-1582-11e6-854c-6451063c7c21', '管理员', '2016-05-30 10:41:54', '0');
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:33:34', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:33:42', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:33:44', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:33:53', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:33:56', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:33:59', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:34:02', null);
INSERT INTO `nice_message` VALUES ('', 'asd', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:34:29', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:34:32', null);
INSERT INTO `nice_message` VALUES ('', '', '', '', 'd5d9a60d-3f33-11e6-aae8-6451063c7c21', '管理员', '2016-07-01 10:34:34', null);
INSERT INTO `nice_message` VALUES ('', 'e', 'e', 'e', '游客', '管理员', '2016-07-01 11:09:26', null);
INSERT INTO `nice_message` VALUES ('1aculgnadlbZZy', '游客', '管理员', 'e', '', 'e', '2016-07-01 11:22:58', null);
INSERT INTO `nice_message` VALUES ('e', '1acuOwzHfmIyK7', '管理员', 'e', '', 'e', '2016-07-01 11:22:58', null);
INSERT INTO `nice_message` VALUES ('e', '游客', '1acuJ4hcnh3NqG', 'e', '', 'e', '2016-07-01 11:22:58', null);
INSERT INTO `nice_message` VALUES ('e', '游客', '管理员', '1acu63dcUTdbBL', '', 'e', '2016-07-01 11:22:58', null);
INSERT INTO `nice_message` VALUES ('e', '游客', '管理员', 'e', '1acuPdKsjR5FNh', 'e', '2016-07-01 11:22:58', null);
INSERT INTO `nice_message` VALUES ('e', '游客', '管理员', 'e', '', '1acuHNyZzRnFUu', '2016-07-01 11:22:58', null);

-- ----------------------------
-- Table structure for nice_recept
-- ----------------------------
DROP TABLE IF EXISTS `nice_recept`;
CREATE TABLE `nice_recept` (
  `receptKey` char(50) NOT NULL,
  `receptID` char(50) DEFAULT NULL COMMENT '回复的人ID',
  `receptPid` char(50) DEFAULT NULL COMMENT '被回复人的ID',
  `receptContent` text COMMENT '回复的内容',
  `receptTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复的时间',
  `receptCount` char(10) DEFAULT NULL COMMENT '回复的内容被点赞的次数',
  `receptGoupID` char(50) DEFAULT NULL COMMENT '回复的帖子ID',
  `receptLevel` char(5) DEFAULT NULL COMMENT '回复的级别',
  `receptnumber` int(5) DEFAULT NULL COMMENT '回答的楼数',
  `receptwho` char(5) DEFAULT NULL COMMENT '相对回复的楼数',
  `receptLook` char(1) DEFAULT NULL COMMENT '1 看过 0未看过',
  PRIMARY KEY (`receptTime`,`receptKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_recept
-- ----------------------------
INSERT INTO `nice_recept` VALUES ('11044d86-4681-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '', '(⌒▽⌒)（￣▽￣）大家一起玩', '2016-07-10 17:31:23', '24', '4025', '1', '1', '0', '0');
INSERT INTO `nice_recept` VALUES ('5e07147a-4685-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '', '(=・ω・=)好好啊', '2016-07-10 18:02:10', '4', '4025', '1', '2', '0', '0');
INSERT INTO `nice_recept` VALUES ('7233253f-4685-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '', '(°∀°)ﾉ来卡', '2016-07-10 18:02:44', '9', '4025', '1', '3', '0', '0');
INSERT INTO `nice_recept` VALUES ('44a1a702-46af-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '', '我是4楼', '2016-07-10 23:02:07', '0', '4025', '1', '4', '0', '0');
INSERT INTO `nice_recept` VALUES ('6744941b-46b1-11e6-b005-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '', '不用说了。我只是最帅的5楼了', '2016-07-10 23:17:24', '0', '4025', '1', '5', '0', '0');
INSERT INTO `nice_recept` VALUES ('4d71aaff-4809-11e6-b55e-9c5c8e7be156', '9f5ba06f-1582-11e6-854c-6451063c7c21', '', '你好呀。5楼。我觉得这投稿写 的很好(⌒▽⌒)', '2016-07-12 16:19:07', '0', '4025', '2', '1', '5', '0');

-- ----------------------------
-- Table structure for nice_user
-- ----------------------------
DROP TABLE IF EXISTS `nice_user`;
CREATE TABLE `nice_user` (
  `UserId` char(50) NOT NULL COMMENT '用户ID',
  `NickName` char(15) DEFAULT NULL COMMENT '用户昵称',
  `Head_img` char(120) DEFAULT NULL COMMENT '头像',
  `area` char(10) DEFAULT NULL COMMENT '地区 省份-城市',
  `sex` char(2) DEFAULT NULL COMMENT '性别 1男 0女',
  `bornData` char(10) DEFAULT NULL COMMENT '生日： 1990-01-01',
  `rammy` text COMMENT '备注',
  `lemonCount` int(11) unsigned DEFAULT NULL COMMENT '柠檬数',
  `LoginTiem` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `LoginStatus` varchar(20) DEFAULT NULL,
  `LoginUserId` varchar(255) DEFAULT NULL COMMENT '用户设置cookies登陆',
  `SubCount` int(11) DEFAULT NULL COMMENT '投稿数量',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nice_user
-- ----------------------------
INSERT INTO `nice_user` VALUES ('04b56ce8-310e-11e6-bea3-6451063c7c21', '老司机帅', '../images/photo/pho1.png', '广东-深圳', '1', '2016-06-13', '帅', '17', '2016-07-12 16:53:05', '8', '', '0');
INSERT INTO `nice_user` VALUES ('21744988-3f34-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:55:59', '0', '', '0');
INSERT INTO `nice_user` VALUES ('2a63d2b5-3f36-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:56:00', '0', '', '0');
INSERT INTO `nice_user` VALUES ('2b96d873-3f35-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '4', '2016-07-11 16:55:58', '0', '', '0');
INSERT INTO `nice_user` VALUES ('32948fa9-3f37-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:56:01', '0', '', '0');
INSERT INTO `nice_user` VALUES ('4456ab39-3f33-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:55:57', '0', '', '0');
INSERT INTO `nice_user` VALUES ('4f6893d7-3116-11e6-bea3-6451063c7c21', '血月丶仙道', '../images/photo/pho1.png', '广东-深圳', '0', '2016-06-13', '帅哥', '2', '2016-07-11 16:55:57', '0', '', '0');
INSERT INTO `nice_user` VALUES ('6e446306-2153-11e6-be50-6451063c7c21', '老司机d', '../images/photo/pho1.png', '海南-北京', '1', '2016-05-28', '0ff', '20', '2016-07-11 16:55:55', '0', '', '0');
INSERT INTO `nice_user` VALUES ('9c2d2cfc-3f35-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:56:00', '0', '', '0');
INSERT INTO `nice_user` VALUES ('9f5ba06f-1582-11e6-854c-6451063c7c21', '我老铁怕谁', '../images/photo/pho1.png', '', '0', '', '', '25', '2016-07-12 19:02:17', '23', 'e2b7a2832ea943b6715b495ada36ce8d', '0');
INSERT INTO `nice_user` VALUES ('a226c8f9-3f33-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:55:57', '0', '', '0');
INSERT INTO `nice_user` VALUES ('a8e72d64-3d02-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', null, '0', '2016-06-28', '0', '1', '2016-07-11 16:55:57', '0', '', '0');
INSERT INTO `nice_user` VALUES ('d1773957-22e6-11e6-be50-6451063c7c21', '老司机', '../images/photo/pho1.png', null, '0', '2016-05-26', '0', '2', '2016-07-11 16:55:56', '0', '', '0');
INSERT INTO `nice_user` VALUES ('d5d9a60d-3f33-11e6-aae8-6451063c7c21', '老司机', '../images/photo/pho1.png', '', '0', '2016-07-01', '', '1', '2016-07-11 16:55:58', '0', '', '0');
INSERT INTO `nice_user` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fa', '333', '../images/photo/pho1.png', null, null, null, '123123123', '125', '2016-07-11 16:55:54', '0', '', '0');
INSERT INTO `nice_user` VALUES ('e1ca9e6e-df01-4b90-8efa-5a49edfb82fb', '老司机林志1', '../images/photo/pho1.png', '广东-深圳', '1', '1996-04-04', '超级火火火大傻逼', '29', '2016-07-11 16:55:54', '0', '', '0');
INSERT INTO `nice_user` VALUES ('ee30d6af-22e9-11e6-be50-6451063c7c21', '老司机', '../images/photo/pho1.png', null, '0', '2016-05-26', '0', '1', '2016-07-11 16:55:56', '0', '', '0');
INSERT INTO `nice_user` VALUES ('f67597d1-286b-11e6-b422-6451063c7c21', '老司机', '../images/photo/pho1.png', null, '0', '2016-06-02', '0', '1', '2016-07-11 16:55:56', '0', '', '0');
INSERT INTO `nice_user` VALUES ('ffc75bc8-3e0e-4a76-aa40-ff5e21228712', '老司机3', '../images/photo/pho1.png', '广东-深圳', '0', '1996-04-04', '超级火火火大傻逼', '2227', '2016-07-11 16:55:54', '0', '', '0');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `po` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '1');
INSERT INTO `test` VALUES ('2', '2');
INSERT INTO `test` VALUES ('3', '3');
INSERT INTO `test` VALUES ('4', '5');
INSERT INTO `test` VALUES ('9', '9');
INSERT INTO `test` VALUES ('10', '10');
INSERT INTO `test` VALUES ('11', '11');
INSERT INTO `test` VALUES ('12', '12');

-- ----------------------------
-- Table structure for t_base_pinyin
-- ----------------------------
DROP TABLE IF EXISTS `t_base_pinyin`;
CREATE TABLE `t_base_pinyin` (
  `pin_yin_` varchar(255) CHARACTER SET gbk NOT NULL,
  `code_` int(11) NOT NULL,
  PRIMARY KEY (`code_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_base_pinyin
-- ----------------------------
INSERT INTO `t_base_pinyin` VALUES ('zuo', '10254');
INSERT INTO `t_base_pinyin` VALUES ('zun', '10256');
INSERT INTO `t_base_pinyin` VALUES ('zui', '10260');
INSERT INTO `t_base_pinyin` VALUES ('zuan', '10262');
INSERT INTO `t_base_pinyin` VALUES ('zu', '10270');
INSERT INTO `t_base_pinyin` VALUES ('zou', '10274');
INSERT INTO `t_base_pinyin` VALUES ('zong', '10281');
INSERT INTO `t_base_pinyin` VALUES ('zi', '10296');
INSERT INTO `t_base_pinyin` VALUES ('zhuo', '10307');
INSERT INTO `t_base_pinyin` VALUES ('zhun', '10309');
INSERT INTO `t_base_pinyin` VALUES ('zhui', '10315');
INSERT INTO `t_base_pinyin` VALUES ('zhuang', '10322');
INSERT INTO `t_base_pinyin` VALUES ('zhuan', '10328');
INSERT INTO `t_base_pinyin` VALUES ('zhuai', '10329');
INSERT INTO `t_base_pinyin` VALUES ('zhua', '10331');
INSERT INTO `t_base_pinyin` VALUES ('zhu', '10519');
INSERT INTO `t_base_pinyin` VALUES ('zhou', '10533');
INSERT INTO `t_base_pinyin` VALUES ('zhong', '10544');
INSERT INTO `t_base_pinyin` VALUES ('zhi', '10587');
INSERT INTO `t_base_pinyin` VALUES ('zheng', '10764');
INSERT INTO `t_base_pinyin` VALUES ('zhen', '10780');
INSERT INTO `t_base_pinyin` VALUES ('zhe', '10790');
INSERT INTO `t_base_pinyin` VALUES ('zhao', '10800');
INSERT INTO `t_base_pinyin` VALUES ('zhang', '10815');
INSERT INTO `t_base_pinyin` VALUES ('zhan', '10832');
INSERT INTO `t_base_pinyin` VALUES ('zhai', '10838');
INSERT INTO `t_base_pinyin` VALUES ('zha', '11014');
INSERT INTO `t_base_pinyin` VALUES ('zeng', '11018');
INSERT INTO `t_base_pinyin` VALUES ('zen', '11019');
INSERT INTO `t_base_pinyin` VALUES ('zei', '11020');
INSERT INTO `t_base_pinyin` VALUES ('ze', '11024');
INSERT INTO `t_base_pinyin` VALUES ('zao', '11038');
INSERT INTO `t_base_pinyin` VALUES ('zang', '11041');
INSERT INTO `t_base_pinyin` VALUES ('zan', '11045');
INSERT INTO `t_base_pinyin` VALUES ('zai', '11052');
INSERT INTO `t_base_pinyin` VALUES ('za', '11055');
INSERT INTO `t_base_pinyin` VALUES ('yun', '11067');
INSERT INTO `t_base_pinyin` VALUES ('yue', '11077');
INSERT INTO `t_base_pinyin` VALUES ('yuan', '11097');
INSERT INTO `t_base_pinyin` VALUES ('yu', '11303');
INSERT INTO `t_base_pinyin` VALUES ('you', '11324');
INSERT INTO `t_base_pinyin` VALUES ('yong', '11339');
INSERT INTO `t_base_pinyin` VALUES ('yo', '11340');
INSERT INTO `t_base_pinyin` VALUES ('ying', '11358');
INSERT INTO `t_base_pinyin` VALUES ('yin', '11536');
INSERT INTO `t_base_pinyin` VALUES ('yi', '11589');
INSERT INTO `t_base_pinyin` VALUES ('ye', '11604');
INSERT INTO `t_base_pinyin` VALUES ('yao', '11781');
INSERT INTO `t_base_pinyin` VALUES ('yang', '11798');
INSERT INTO `t_base_pinyin` VALUES ('yan', '11831');
INSERT INTO `t_base_pinyin` VALUES ('ya', '11847');
INSERT INTO `t_base_pinyin` VALUES ('xun', '11861');
INSERT INTO `t_base_pinyin` VALUES ('xue', '11867');
INSERT INTO `t_base_pinyin` VALUES ('xuan', '12039');
INSERT INTO `t_base_pinyin` VALUES ('xu', '12058');
INSERT INTO `t_base_pinyin` VALUES ('xiu', '12067');
INSERT INTO `t_base_pinyin` VALUES ('xiong', '12074');
INSERT INTO `t_base_pinyin` VALUES ('xing', '12089');
INSERT INTO `t_base_pinyin` VALUES ('xin', '12099');
INSERT INTO `t_base_pinyin` VALUES ('xie', '12120');
INSERT INTO `t_base_pinyin` VALUES ('xiao', '12300');
INSERT INTO `t_base_pinyin` VALUES ('xiang', '12320');
INSERT INTO `t_base_pinyin` VALUES ('xian', '12346');
INSERT INTO `t_base_pinyin` VALUES ('xia', '12359');
INSERT INTO `t_base_pinyin` VALUES ('xi', '12556');
INSERT INTO `t_base_pinyin` VALUES ('wu', '12585');
INSERT INTO `t_base_pinyin` VALUES ('wo', '12594');
INSERT INTO `t_base_pinyin` VALUES ('weng', '12597');
INSERT INTO `t_base_pinyin` VALUES ('wen', '12607');
INSERT INTO `t_base_pinyin` VALUES ('wei', '12802');
INSERT INTO `t_base_pinyin` VALUES ('wang', '12812');
INSERT INTO `t_base_pinyin` VALUES ('wan', '12829');
INSERT INTO `t_base_pinyin` VALUES ('wai', '12831');
INSERT INTO `t_base_pinyin` VALUES ('wa', '12838');
INSERT INTO `t_base_pinyin` VALUES ('tuo', '12849');
INSERT INTO `t_base_pinyin` VALUES ('tun', '12852');
INSERT INTO `t_base_pinyin` VALUES ('tui', '12858');
INSERT INTO `t_base_pinyin` VALUES ('tuan', '12860');
INSERT INTO `t_base_pinyin` VALUES ('tu', '12871');
INSERT INTO `t_base_pinyin` VALUES ('tou', '12875');
INSERT INTO `t_base_pinyin` VALUES ('tong', '12888');
INSERT INTO `t_base_pinyin` VALUES ('ting', '13060');
INSERT INTO `t_base_pinyin` VALUES ('tie', '13063');
INSERT INTO `t_base_pinyin` VALUES ('tiao', '13068');
INSERT INTO `t_base_pinyin` VALUES ('tian', '13076');
INSERT INTO `t_base_pinyin` VALUES ('ti', '13091');
INSERT INTO `t_base_pinyin` VALUES ('teng', '13095');
INSERT INTO `t_base_pinyin` VALUES ('te', '13096');
INSERT INTO `t_base_pinyin` VALUES ('tao', '13107');
INSERT INTO `t_base_pinyin` VALUES ('tang', '13120');
INSERT INTO `t_base_pinyin` VALUES ('tan', '13138');
INSERT INTO `t_base_pinyin` VALUES ('tai', '13147');
INSERT INTO `t_base_pinyin` VALUES ('ta', '13318');
INSERT INTO `t_base_pinyin` VALUES ('suo', '13326');
INSERT INTO `t_base_pinyin` VALUES ('sun', '13329');
INSERT INTO `t_base_pinyin` VALUES ('sui', '13340');
INSERT INTO `t_base_pinyin` VALUES ('suan', '13343');
INSERT INTO `t_base_pinyin` VALUES ('su', '13356');
INSERT INTO `t_base_pinyin` VALUES ('sou', '13359');
INSERT INTO `t_base_pinyin` VALUES ('song', '13367');
INSERT INTO `t_base_pinyin` VALUES ('si', '13383');
INSERT INTO `t_base_pinyin` VALUES ('shuo', '13387');
INSERT INTO `t_base_pinyin` VALUES ('shun', '13391');
INSERT INTO `t_base_pinyin` VALUES ('shui', '13395');
INSERT INTO `t_base_pinyin` VALUES ('shuang', '13398');
INSERT INTO `t_base_pinyin` VALUES ('shuan', '13400');
INSERT INTO `t_base_pinyin` VALUES ('shuai', '13404');
INSERT INTO `t_base_pinyin` VALUES ('shua', '13406');
INSERT INTO `t_base_pinyin` VALUES ('shu', '13601');
INSERT INTO `t_base_pinyin` VALUES ('shou', '13611');
INSERT INTO `t_base_pinyin` VALUES ('shi', '13658');
INSERT INTO `t_base_pinyin` VALUES ('sheng', '13831');
INSERT INTO `t_base_pinyin` VALUES ('shen', '13847');
INSERT INTO `t_base_pinyin` VALUES ('she', '13859');
INSERT INTO `t_base_pinyin` VALUES ('shao', '13870');
INSERT INTO `t_base_pinyin` VALUES ('shang', '13878');
INSERT INTO `t_base_pinyin` VALUES ('shan', '13894');
INSERT INTO `t_base_pinyin` VALUES ('shai', '13896');
INSERT INTO `t_base_pinyin` VALUES ('sha', '13905');
INSERT INTO `t_base_pinyin` VALUES ('seng', '13906');
INSERT INTO `t_base_pinyin` VALUES ('sen', '13907');
INSERT INTO `t_base_pinyin` VALUES ('se', '13910');
INSERT INTO `t_base_pinyin` VALUES ('sao', '13914');
INSERT INTO `t_base_pinyin` VALUES ('sang', '13917');
INSERT INTO `t_base_pinyin` VALUES ('san', '14083');
INSERT INTO `t_base_pinyin` VALUES ('sai', '14087');
INSERT INTO `t_base_pinyin` VALUES ('sa', '14090');
INSERT INTO `t_base_pinyin` VALUES ('ruo', '14092');
INSERT INTO `t_base_pinyin` VALUES ('run', '14094');
INSERT INTO `t_base_pinyin` VALUES ('rui', '14097');
INSERT INTO `t_base_pinyin` VALUES ('ruan', '14099');
INSERT INTO `t_base_pinyin` VALUES ('ru', '14109');
INSERT INTO `t_base_pinyin` VALUES ('rou', '14112');
INSERT INTO `t_base_pinyin` VALUES ('rong', '14122');
INSERT INTO `t_base_pinyin` VALUES ('ri', '14123');
INSERT INTO `t_base_pinyin` VALUES ('reng', '14125');
INSERT INTO `t_base_pinyin` VALUES ('ren', '14135');
INSERT INTO `t_base_pinyin` VALUES ('re', '14137');
INSERT INTO `t_base_pinyin` VALUES ('rao', '14140');
INSERT INTO `t_base_pinyin` VALUES ('rang', '14145');
INSERT INTO `t_base_pinyin` VALUES ('ran', '14149');
INSERT INTO `t_base_pinyin` VALUES ('qun', '14151');
INSERT INTO `t_base_pinyin` VALUES ('que', '14159');
INSERT INTO `t_base_pinyin` VALUES ('quan', '14170');
INSERT INTO `t_base_pinyin` VALUES ('qu', '14345');
INSERT INTO `t_base_pinyin` VALUES ('qiu', '14353');
INSERT INTO `t_base_pinyin` VALUES ('qiong', '14355');
INSERT INTO `t_base_pinyin` VALUES ('qing', '14368');
INSERT INTO `t_base_pinyin` VALUES ('qin', '14379');
INSERT INTO `t_base_pinyin` VALUES ('qie', '14384');
INSERT INTO `t_base_pinyin` VALUES ('qiao', '14399');
INSERT INTO `t_base_pinyin` VALUES ('qiang', '14407');
INSERT INTO `t_base_pinyin` VALUES ('qian', '14429');
INSERT INTO `t_base_pinyin` VALUES ('qia', '14594');
INSERT INTO `t_base_pinyin` VALUES ('qi', '14630');
INSERT INTO `t_base_pinyin` VALUES ('pu', '14645');
INSERT INTO `t_base_pinyin` VALUES ('po', '14654');
INSERT INTO `t_base_pinyin` VALUES ('ping', '14663');
INSERT INTO `t_base_pinyin` VALUES ('pin', '14668');
INSERT INTO `t_base_pinyin` VALUES ('pie', '14670');
INSERT INTO `t_base_pinyin` VALUES ('piao', '14674');
INSERT INTO `t_base_pinyin` VALUES ('pian', '14678');
INSERT INTO `t_base_pinyin` VALUES ('pi', '14857');
INSERT INTO `t_base_pinyin` VALUES ('peng', '14871');
INSERT INTO `t_base_pinyin` VALUES ('pen', '14873');
INSERT INTO `t_base_pinyin` VALUES ('pei', '14882');
INSERT INTO `t_base_pinyin` VALUES ('pao', '14889');
INSERT INTO `t_base_pinyin` VALUES ('pang', '14894');
INSERT INTO `t_base_pinyin` VALUES ('pan', '14902');
INSERT INTO `t_base_pinyin` VALUES ('pai', '14908');
INSERT INTO `t_base_pinyin` VALUES ('pa', '14914');
INSERT INTO `t_base_pinyin` VALUES ('ou', '14921');
INSERT INTO `t_base_pinyin` VALUES ('o', '14922');
INSERT INTO `t_base_pinyin` VALUES ('nuo', '14926');
INSERT INTO `t_base_pinyin` VALUES ('nue', '14928');
INSERT INTO `t_base_pinyin` VALUES ('nuan', '14929');
INSERT INTO `t_base_pinyin` VALUES ('nv', '14930');
INSERT INTO `t_base_pinyin` VALUES ('nu', '14933');
INSERT INTO `t_base_pinyin` VALUES ('nong', '14937');
INSERT INTO `t_base_pinyin` VALUES ('niu', '14941');
INSERT INTO `t_base_pinyin` VALUES ('ning', '15109');
INSERT INTO `t_base_pinyin` VALUES ('nin', '15110');
INSERT INTO `t_base_pinyin` VALUES ('nie', '15117');
INSERT INTO `t_base_pinyin` VALUES ('niao', '15119');
INSERT INTO `t_base_pinyin` VALUES ('niang', '15121');
INSERT INTO `t_base_pinyin` VALUES ('nian', '15128');
INSERT INTO `t_base_pinyin` VALUES ('ni', '15139');
INSERT INTO `t_base_pinyin` VALUES ('neng', '15140');
INSERT INTO `t_base_pinyin` VALUES ('nen', '15141');
INSERT INTO `t_base_pinyin` VALUES ('nei', '15143');
INSERT INTO `t_base_pinyin` VALUES ('ne', '15144');
INSERT INTO `t_base_pinyin` VALUES ('nao', '15149');
INSERT INTO `t_base_pinyin` VALUES ('nang', '15150');
INSERT INTO `t_base_pinyin` VALUES ('nan', '15153');
INSERT INTO `t_base_pinyin` VALUES ('nai', '15158');
INSERT INTO `t_base_pinyin` VALUES ('na', '15165');
INSERT INTO `t_base_pinyin` VALUES ('mu', '15180');
INSERT INTO `t_base_pinyin` VALUES ('mou', '15183');
INSERT INTO `t_base_pinyin` VALUES ('mo', '15362');
INSERT INTO `t_base_pinyin` VALUES ('miu', '15363');
INSERT INTO `t_base_pinyin` VALUES ('ming', '15369');
INSERT INTO `t_base_pinyin` VALUES ('min', '15375');
INSERT INTO `t_base_pinyin` VALUES ('mie', '15377');
INSERT INTO `t_base_pinyin` VALUES ('miao', '15385');
INSERT INTO `t_base_pinyin` VALUES ('mian', '15394');
INSERT INTO `t_base_pinyin` VALUES ('mi', '15408');
INSERT INTO `t_base_pinyin` VALUES ('meng', '15416');
INSERT INTO `t_base_pinyin` VALUES ('men', '15419');
INSERT INTO `t_base_pinyin` VALUES ('mei', '15435');
INSERT INTO `t_base_pinyin` VALUES ('me', '15436');
INSERT INTO `t_base_pinyin` VALUES ('mao', '15448');
INSERT INTO `t_base_pinyin` VALUES ('mang', '15454');
INSERT INTO `t_base_pinyin` VALUES ('man', '15625');
INSERT INTO `t_base_pinyin` VALUES ('mai', '15631');
INSERT INTO `t_base_pinyin` VALUES ('ma', '15640');
INSERT INTO `t_base_pinyin` VALUES ('luo', '15652');
INSERT INTO `t_base_pinyin` VALUES ('lun', '15659');
INSERT INTO `t_base_pinyin` VALUES ('lue', '15661');
INSERT INTO `t_base_pinyin` VALUES ('luan', '15667');
INSERT INTO `t_base_pinyin` VALUES ('lv', '15681');
INSERT INTO `t_base_pinyin` VALUES ('lu', '15701');
INSERT INTO `t_base_pinyin` VALUES ('lou', '15707');
INSERT INTO `t_base_pinyin` VALUES ('long', '15878');
INSERT INTO `t_base_pinyin` VALUES ('liu', '15889');
INSERT INTO `t_base_pinyin` VALUES ('ling', '15903');
INSERT INTO `t_base_pinyin` VALUES ('lin', '15915');
INSERT INTO `t_base_pinyin` VALUES ('lie', '15920');
INSERT INTO `t_base_pinyin` VALUES ('liao', '15933');
INSERT INTO `t_base_pinyin` VALUES ('liang', '15944');
INSERT INTO `t_base_pinyin` VALUES ('lian', '15958');
INSERT INTO `t_base_pinyin` VALUES ('lia', '15959');
INSERT INTO `t_base_pinyin` VALUES ('li', '16155');
INSERT INTO `t_base_pinyin` VALUES ('leng', '16158');
INSERT INTO `t_base_pinyin` VALUES ('lei', '16169');
INSERT INTO `t_base_pinyin` VALUES ('le', '16171');
INSERT INTO `t_base_pinyin` VALUES ('lao', '16180');
INSERT INTO `t_base_pinyin` VALUES ('lang', '16187');
INSERT INTO `t_base_pinyin` VALUES ('lan', '16202');
INSERT INTO `t_base_pinyin` VALUES ('lai', '16205');
INSERT INTO `t_base_pinyin` VALUES ('la', '16212');
INSERT INTO `t_base_pinyin` VALUES ('kuo', '16216');
INSERT INTO `t_base_pinyin` VALUES ('kun', '16220');
INSERT INTO `t_base_pinyin` VALUES ('kui', '16393');
INSERT INTO `t_base_pinyin` VALUES ('kuang', '16401');
INSERT INTO `t_base_pinyin` VALUES ('kuan', '16403');
INSERT INTO `t_base_pinyin` VALUES ('kuai', '16407');
INSERT INTO `t_base_pinyin` VALUES ('kua', '16412');
INSERT INTO `t_base_pinyin` VALUES ('ku', '16419');
INSERT INTO `t_base_pinyin` VALUES ('kou', '16423');
INSERT INTO `t_base_pinyin` VALUES ('kong', '16427');
INSERT INTO `t_base_pinyin` VALUES ('keng', '16429');
INSERT INTO `t_base_pinyin` VALUES ('ken', '16433');
INSERT INTO `t_base_pinyin` VALUES ('ke', '16448');
INSERT INTO `t_base_pinyin` VALUES ('kao', '16452');
INSERT INTO `t_base_pinyin` VALUES ('kang', '16459');
INSERT INTO `t_base_pinyin` VALUES ('kan', '16465');
INSERT INTO `t_base_pinyin` VALUES ('kai', '16470');
INSERT INTO `t_base_pinyin` VALUES ('ka', '16474');
INSERT INTO `t_base_pinyin` VALUES ('jun', '16647');
INSERT INTO `t_base_pinyin` VALUES ('jue', '16657');
INSERT INTO `t_base_pinyin` VALUES ('juan', '16664');
INSERT INTO `t_base_pinyin` VALUES ('ju', '16689');
INSERT INTO `t_base_pinyin` VALUES ('jiu', '16706');
INSERT INTO `t_base_pinyin` VALUES ('jiong', '16708');
INSERT INTO `t_base_pinyin` VALUES ('jing', '16733');
INSERT INTO `t_base_pinyin` VALUES ('jin', '16915');
INSERT INTO `t_base_pinyin` VALUES ('jie', '16942');
INSERT INTO `t_base_pinyin` VALUES ('jiao', '16970');
INSERT INTO `t_base_pinyin` VALUES ('jiang', '16983');
INSERT INTO `t_base_pinyin` VALUES ('jian', '17185');
INSERT INTO `t_base_pinyin` VALUES ('jia', '17202');
INSERT INTO `t_base_pinyin` VALUES ('ji', '17417');
INSERT INTO `t_base_pinyin` VALUES ('huo', '17427');
INSERT INTO `t_base_pinyin` VALUES ('hun', '17433');
INSERT INTO `t_base_pinyin` VALUES ('hui', '17454');
INSERT INTO `t_base_pinyin` VALUES ('huang', '17468');
INSERT INTO `t_base_pinyin` VALUES ('huan', '17482');
INSERT INTO `t_base_pinyin` VALUES ('huai', '17487');
INSERT INTO `t_base_pinyin` VALUES ('hua', '17496');
INSERT INTO `t_base_pinyin` VALUES ('hu', '17676');
INSERT INTO `t_base_pinyin` VALUES ('hou', '17683');
INSERT INTO `t_base_pinyin` VALUES ('hong', '17692');
INSERT INTO `t_base_pinyin` VALUES ('heng', '17697');
INSERT INTO `t_base_pinyin` VALUES ('hen', '17701');
INSERT INTO `t_base_pinyin` VALUES ('hei', '17703');
INSERT INTO `t_base_pinyin` VALUES ('he', '17721');
INSERT INTO `t_base_pinyin` VALUES ('hao', '17730');
INSERT INTO `t_base_pinyin` VALUES ('hang', '17733');
INSERT INTO `t_base_pinyin` VALUES ('han', '17752');
INSERT INTO `t_base_pinyin` VALUES ('hai', '17759');
INSERT INTO `t_base_pinyin` VALUES ('ha', '17922');
INSERT INTO `t_base_pinyin` VALUES ('guo', '17928');
INSERT INTO `t_base_pinyin` VALUES ('gun', '17931');
INSERT INTO `t_base_pinyin` VALUES ('gui', '17947');
INSERT INTO `t_base_pinyin` VALUES ('guang', '17950');
INSERT INTO `t_base_pinyin` VALUES ('guan', '17961');
INSERT INTO `t_base_pinyin` VALUES ('guai', '17964');
INSERT INTO `t_base_pinyin` VALUES ('gua', '17970');
INSERT INTO `t_base_pinyin` VALUES ('gu', '17988');
INSERT INTO `t_base_pinyin` VALUES ('gou', '17997');
INSERT INTO `t_base_pinyin` VALUES ('gong', '18012');
INSERT INTO `t_base_pinyin` VALUES ('geng', '18181');
INSERT INTO `t_base_pinyin` VALUES ('gen', '18183');
INSERT INTO `t_base_pinyin` VALUES ('gei', '18184');
INSERT INTO `t_base_pinyin` VALUES ('ge', '18201');
INSERT INTO `t_base_pinyin` VALUES ('gao', '18211');
INSERT INTO `t_base_pinyin` VALUES ('gang', '18220');
INSERT INTO `t_base_pinyin` VALUES ('gan', '18231');
INSERT INTO `t_base_pinyin` VALUES ('gai', '18237');
INSERT INTO `t_base_pinyin` VALUES ('ga', '18239');
INSERT INTO `t_base_pinyin` VALUES ('fu', '18446');
INSERT INTO `t_base_pinyin` VALUES ('fou', '18447');
INSERT INTO `t_base_pinyin` VALUES ('fo', '18448');
INSERT INTO `t_base_pinyin` VALUES ('feng', '18463');
INSERT INTO `t_base_pinyin` VALUES ('fen', '18478');
INSERT INTO `t_base_pinyin` VALUES ('fei', '18490');
INSERT INTO `t_base_pinyin` VALUES ('fang', '18501');
INSERT INTO `t_base_pinyin` VALUES ('fan', '18518');
INSERT INTO `t_base_pinyin` VALUES ('fa', '18526');
INSERT INTO `t_base_pinyin` VALUES ('er', '18696');
INSERT INTO `t_base_pinyin` VALUES ('en', '18697');
INSERT INTO `t_base_pinyin` VALUES ('e', '18710');
INSERT INTO `t_base_pinyin` VALUES ('duo', '18722');
INSERT INTO `t_base_pinyin` VALUES ('dun', '18731');
INSERT INTO `t_base_pinyin` VALUES ('dui', '18735');
INSERT INTO `t_base_pinyin` VALUES ('duan', '18741');
INSERT INTO `t_base_pinyin` VALUES ('du', '18756');
INSERT INTO `t_base_pinyin` VALUES ('dou', '18763');
INSERT INTO `t_base_pinyin` VALUES ('dong', '18773');
INSERT INTO `t_base_pinyin` VALUES ('diu', '18774');
INSERT INTO `t_base_pinyin` VALUES ('ding', '18783');
INSERT INTO `t_base_pinyin` VALUES ('die', '18952');
INSERT INTO `t_base_pinyin` VALUES ('diao', '18961');
INSERT INTO `t_base_pinyin` VALUES ('dian', '18977');
INSERT INTO `t_base_pinyin` VALUES ('di', '18996');
INSERT INTO `t_base_pinyin` VALUES ('deng', '19003');
INSERT INTO `t_base_pinyin` VALUES ('de', '19006');
INSERT INTO `t_base_pinyin` VALUES ('dao', '19018');
INSERT INTO `t_base_pinyin` VALUES ('dang', '19023');
INSERT INTO `t_base_pinyin` VALUES ('dan', '19038');
INSERT INTO `t_base_pinyin` VALUES ('dai', '19212');
INSERT INTO `t_base_pinyin` VALUES ('da', '19218');
INSERT INTO `t_base_pinyin` VALUES ('cuo', '19224');
INSERT INTO `t_base_pinyin` VALUES ('cun', '19227');
INSERT INTO `t_base_pinyin` VALUES ('cui', '19235');
INSERT INTO `t_base_pinyin` VALUES ('cuan', '19238');
INSERT INTO `t_base_pinyin` VALUES ('cu', '19242');
INSERT INTO `t_base_pinyin` VALUES ('cou', '19243');
INSERT INTO `t_base_pinyin` VALUES ('cong', '19249');
INSERT INTO `t_base_pinyin` VALUES ('ci', '19261');
INSERT INTO `t_base_pinyin` VALUES ('chuo', '19263');
INSERT INTO `t_base_pinyin` VALUES ('chun', '19270');
INSERT INTO `t_base_pinyin` VALUES ('chui', '19275');
INSERT INTO `t_base_pinyin` VALUES ('chuang', '19281');
INSERT INTO `t_base_pinyin` VALUES ('chuan', '19288');
INSERT INTO `t_base_pinyin` VALUES ('chuai', '19289');
INSERT INTO `t_base_pinyin` VALUES ('chu', '19467');
INSERT INTO `t_base_pinyin` VALUES ('chou', '19479');
INSERT INTO `t_base_pinyin` VALUES ('chong', '19484');
INSERT INTO `t_base_pinyin` VALUES ('chi', '19500');
INSERT INTO `t_base_pinyin` VALUES ('cheng', '19515');
INSERT INTO `t_base_pinyin` VALUES ('chen', '19525');
INSERT INTO `t_base_pinyin` VALUES ('che', '19531');
INSERT INTO `t_base_pinyin` VALUES ('chao', '19540');
INSERT INTO `t_base_pinyin` VALUES ('chang', '19715');
INSERT INTO `t_base_pinyin` VALUES ('chan', '19725');
INSERT INTO `t_base_pinyin` VALUES ('chai', '19728');
INSERT INTO `t_base_pinyin` VALUES ('cha', '19739');
INSERT INTO `t_base_pinyin` VALUES ('ceng', '19741');
INSERT INTO `t_base_pinyin` VALUES ('ce', '19746');
INSERT INTO `t_base_pinyin` VALUES ('cao', '19751');
INSERT INTO `t_base_pinyin` VALUES ('cang', '19756');
INSERT INTO `t_base_pinyin` VALUES ('can', '19763');
INSERT INTO `t_base_pinyin` VALUES ('cai', '19774');
INSERT INTO `t_base_pinyin` VALUES ('ca', '19775');
INSERT INTO `t_base_pinyin` VALUES ('bu', '19784');
INSERT INTO `t_base_pinyin` VALUES ('bo', '19805');
INSERT INTO `t_base_pinyin` VALUES ('bing', '19976');
INSERT INTO `t_base_pinyin` VALUES ('bin', '19982');
INSERT INTO `t_base_pinyin` VALUES ('bie', '19986');
INSERT INTO `t_base_pinyin` VALUES ('biao', '19990');
INSERT INTO `t_base_pinyin` VALUES ('bian', '20002');
INSERT INTO `t_base_pinyin` VALUES ('bi', '20026');
INSERT INTO `t_base_pinyin` VALUES ('beng', '20032');
INSERT INTO `t_base_pinyin` VALUES ('ben', '20036');
INSERT INTO `t_base_pinyin` VALUES ('bei', '20051');
INSERT INTO `t_base_pinyin` VALUES ('bao', '20230');
INSERT INTO `t_base_pinyin` VALUES ('bang', '20242');
INSERT INTO `t_base_pinyin` VALUES ('ban', '20257');
INSERT INTO `t_base_pinyin` VALUES ('bai', '20265');
INSERT INTO `t_base_pinyin` VALUES ('ba', '20283');
INSERT INTO `t_base_pinyin` VALUES ('ao', '20292');
INSERT INTO `t_base_pinyin` VALUES ('ang', '20295');
INSERT INTO `t_base_pinyin` VALUES ('an', '20304');
INSERT INTO `t_base_pinyin` VALUES ('ai', '20317');
INSERT INTO `t_base_pinyin` VALUES ('a', '20319');

-- ----------------------------
-- Procedure structure for asa
-- ----------------------------
DROP PROCEDURE IF EXISTS `asa`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `asa`(a char(50))
BEGIN
	select *,nice_content.type as _type,UNIX_TIMESTAMP(nice_collect.CollTime) as WirteTime,nice_content.UID as _UID,nice_content.type as _type,
	nice_collect.CollTime as time,now() as timenow,DATE_FORMAT(nice_collect.CollTime,'%Y-%m-%d') as _time,nice_collect.type as _ty,nice_collect.GoneId as _GoneId
	from nice_collect,nice_content,nice_user where nice_collect.type != 2 
	and nice_collect.GoneId = nice_content.GoneId 
	and nice_content.PID = nice_user.UserId 
	and nice_user.UserId = a;
	#and nice_collect.User_id = nice_user.UserId;
	/*
	,nice_content.type as _type,UNIX_TIMESTAMP(nice_collect.CollTime) as WirteTime,nice_content.UID as _UID,nice_content.type as _type,
	nice_collect.CollTime as time,now() as timenow,DATE_FORMAT(nice_collect.CollTime,'%Y-%m-%d') as _time,nice_collect.type as _ty,nice_collect.GoneId as _GoneId
	*/
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for D_Delect_history
-- ----------------------------
DROP PROCEDURE IF EXISTS `D_Delect_history`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `D_Delect_history`(a char(50))
BEGIN
	#删除超过5天的历史记录
	DELETE from nice_history where DATEDIFF(now(), nice_history.Browsedate) > 5 and nice_history.PID = a;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for D_Delect_LoginStatus
-- ----------------------------
DROP PROCEDURE IF EXISTS `D_Delect_LoginStatus`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `D_Delect_LoginStatus`(a char(50),b char(10))
BEGIN
	if(b = "out") then
		#修改用户登录状态
		UPDATE nice_user set nice_user.LoginStatus = 0 WHERE nice_user.UserId = a;
	else
		select * from nice_user WHERE nice_user.UserId = a and nice_user.LoginStatus = b;
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Inesrt_ClickZan
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Inesrt_ClickZan`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Inesrt_ClickZan`(a char(20),b char(50),c char(50),d char(50))
BEGIN
	#吕坤城 2016-4-8  点赞功能
	# 参数 a 是否点赞  
	# 参数 b 番号查询文章唯一
	# 参数 c 点赞者的id
	# 参数 d 被点赞者的id
	DECLARE num_zan INT DEFAULT 0;   # 操作 定义点赞变量
	IF a ='Szan' THEN
		SELECT * FROM nice_collect WHERE nice_collect.type = 0 AND nice_collect.GoneId = b and nice_collect.User_id = c;
	ELSE
		
		SELECT zan INTO num_zan FROM nice_content WHERE nice_content.GoneId = b;   # 获取出点赞 数量
		IF a = 'clickzan' THEN
			set num_zan = num_zan+1;
			IF num_zan%10=0 THEN
					INSERT INTO nice_lemon (UID,RecordTime,LemonChange,LemonReason) VALUES (d,NOW(),1,"达到10个文章赞送你一颗柠檬");
					UPDATE nice_user SET nice_user.lemonCount = 1+nice_user.lemonCount WHERE nice_user.UserId = d; 
			END IF;
			INSERT INTO nice_collect (User_id,Collector_id,GoneId,type,CollTime) VALUES(c,d,b,0,NOW());     # 点赞文章
		#ELSE
		#	set num_zan = num_zan-1;
			#DELETE FROM nice_collect WHERE nice_collect.type = 1 and nice_collect.GoneId = b;
		END IF;
		UPDATE nice_content SET `zan` =  num_zan WHERE nice_content.GoneId = b ; 
	END if;
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Inesrt_Conllect
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Inesrt_Conllect`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Inesrt_Conllect`(a char(20),b char(50),c char(50),d char(50))
BEGIN
	#吕坤城 2016-4-8  收藏文章
	# 参数 a 是否收藏  
	# 参数 b 番号查询文章唯一
	# 参数 c 收藏者的id
	# 参数 d 被收藏者的id
	# 
	DECLARE num_share INT DEFAULT 0;   # 操作 获取出本文章的收藏数量
	SELECT coll INTO num_share FROM nice_content WHERE nice_content.GoneId = b;   # 获取出收藏数量
	IF a = 'confirm' THEN
		set num_share = num_share+1;
		INSERT INTO nice_collect (User_id,Collector_id,GoneId,type,CollTime) VALUES(c,d,b,1,NOW());     # 收藏文章
	ELSE
		set num_share = num_share-1;
		DELETE FROM nice_collect WHERE nice_collect.GoneId = b and nice_collect.type = 1;
	END IF;
	UPDATE nice_content SET `coll` =  num_share WHERE nice_content.GoneId = b; 
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Inesrt_DB_Massage
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Inesrt_DB_Massage`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Inesrt_DB_Massage`(a char(10),b text,c char(50),d char(50),e char(10))
BEGIN
	#吕坤城 2016-4-28 操作 管理员发送信息，接收反馈信息
	# @param  a  type
 	# @param  b  content
	# @param  c  发送者
	# @param  d  接收者
	# @param  e  发布时间
	
	CASE a
		  WHEN 'USER' THEN            # @oper  用户获取通知 
				 SELECT * FROM nice_message WHERE nice_message.accepter = '所有人';
		  WHEN 'MANAGE' THEN          # @oper  获取收到反馈意见
				 SELECT * FROM nice_message WHERE nice_message.accepter = '管理员';
		  WHEN 'IMassage' THEN        # @oper  录入信息
				 INSERT INTO nice_message (content,sender,accepter,sentDate,IsLook) VALUES(b,c,d,e,0);	
	END CASE;
	
		 
	

	
#
	

	
	
	


END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Inesrt_Lemon
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Inesrt_Lemon`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Inesrt_Lemon`(a  char(50), c char(11), d char(100),e char(10))
BEGIN
	#吕坤城  2016-4-14  柠檬系统的收支详情
	# 参数 a 本人的id
	# 参数 b 操作的时间
	# 参数 c 用(出)多少柠檬
  # 参数 d 什么原因
  # 参数 e 类型
	CASE e
		WHEN '1' THEN                # 每次登录自动积分       
				IF(select count(*) from nice_lemon where nice_lemon.UID = a and nice_lemon.LemonReason ="登录恩赞奖励" and DATE_FORMAT(nice_lemon.RecordTime,'%Y-%m-%d') = DATE_FORMAT(now(),'%Y-%m-%d'))<=0 THEN
						INSERT INTO nice_lemon (UID,RecordTime,LemonChange,LemonReason) VALUES (a,NOW(),c,d);
					  UPDATE nice_user SET nice_user.lemonCount = c+nice_user.lemonCount WHERE nice_user.UserId = a; 
				END IF;
	  WHEN '2' THEN                #其余柠檬的收入
			  INSERT INTO nice_lemon (UID,RecordTime,LemonChange,LemonReason) VALUES (a,NOW(),c,d);
				UPDATE nice_user SET nice_user.lemonCount = c+nice_user.lemonCount WHERE nice_user.UserId = a; 
		WHEN '3' THEN               #查询个人柠檬
				 SELECT * from nice_lemon WHERE nice_lemon.UID = a ORDER BY nice_lemon.RecordTime desc;
	END CASE;	
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Inesrt_Massage
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Inesrt_Massage`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Inesrt_Massage`(a text,b char(50),c char(50),d char(50),e char(50),f char(50))
BEGIN
	#吕坤城 2016-5-25 反馈意见和管理员发送信息
	# @param a  内容
  # @param b  昵称
	# @param c  QQ
	# @param d  Email
  # @param e  发送者
  # @param f  接收者

	INSERT INTO nice_message(content,sname,sQQ,sEmail,sender,accepter,sentDate) VALUES(a,b,c,d,e,f,NOW());

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Inesrt_ReceptZan
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Inesrt_ReceptZan`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Inesrt_ReceptZan`(a char(20),b char(50),c char(50),d char(50))
BEGIN
	#吕坤城 2016-4-8  点赞功能 (**评论)
	# 参数 a 是否点赞  
	# 参数 b 评论文章id唯一
	# 参数 c 评论者的id
	# 参数 d 被评论的id
	DECLARE num_zan INT DEFAULT 0;   # 操作 定义点赞变量
  #DECLARE GID CHARACTER(50);
  #SELECT nice_content.GoneId INTO GID FROM nice_content WHERE nice_content.UID = b;
	IF a ='Szan' THEN
		SELECT * FROM nice_collect WHERE nice_collect.type = 2 AND nice_collect.GoneId = b and nice_collect.User_id = c;
	ELSE
		SELECT receptCount INTO num_zan FROM nice_recept WHERE nice_recept.receptKey = b;   # 获取出点赞 数量
	   SELECT num_zan;
		IF a = 'clickzan' THEN
			set num_zan = num_zan+1;
			IF num_zan%10=0 THEN
					INSERT INTO nice_lemon (UID,RecordTime,LemonChange,LemonReason) VALUES (d,NOW(),1,"达到10个评论赞送你一颗柠檬");
					UPDATE nice_user SET nice_user.lemonCount = 1+nice_user.lemonCount WHERE nice_user.UserId = d; 
			END IF;
			INSERT INTO nice_collect (User_id,Collector_id,GoneId,type,CollTime) VALUES(c,d,b,2,NOW());     # 点赞文章
		#ELSE
	      #	set num_zan = num_zan-1;
		    #	DELETE FROM nice_collect WHERE nice_collect.type = 1 and nice_collect.GoneId = b;
		END IF;
		UPDATE nice_recept SET `receptCount` =  num_zan WHERE nice_recept.receptKey = b ; 
	END if;
	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Insert_Content
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Insert_Content`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Insert_Content`(a char(50),b text,c char(100),d char(70),e char(1),f text,g char(5),h text,j char(1),l char(5),k char(1),UID char(50))
BEGIN
	#沈俊坚 写入投稿内容 16-3-30
	set @ss = (select MAX(nice_content.GoneId) + 1 from nice_content);
	if( k = 0) THEN #插入
		INSERT INTO nice_content(UID,PID,imgurl,tit,label,type,ziyuanurl,getCode,content,GoneId,IsOk,viewtype,browse,nice_content.`comment`,coll,nice_content.zan,nice_content.`share`)
		VALUES(uuid(),a,b,c,d,e,f,g,h,@ss,j,l,0,0,0,0,0);
		UPDATE nice_user SET nice_user.SubCount = nice_user.SubCount + 1 where nice_user.UserId = a;
	elseif(k = 1) then #修改
		UPDATE nice_content SET nice_content.imgurl = b, nice_content.tit = c, nice_content.label = d, nice_content.type = e,
		nice_content.ziyuanurl = f, nice_content.getCode = g, nice_content.content = h, nice_content.viewtype = l,nice_content.IsOk = j
		WHERE nice_content.PID = a and nice_content.UID = UID;
	else # 删除
		DELETE FROM nice_content WHERE nice_content.UID = UID;
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Insert_history
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Insert_history`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Insert_history`(a char(50),b text,c int(3),d char(50))
BEGIN
#林志雄 4.10 插入历史记录
#a 浏览人id
#b 历史记录路径	
#c	文章类型
#d	ConGoneId
if (SELECT count(*) from nice_history WHERE nice_history.Browseurl = b and nice_history.PID = a) > 0 THEN #该人是否已经有浏览过此页面的记录
		if (select count(*) from nice_history where DATE_FORMAT(nice_history.Browsedate,'%Y-%m-%d') = DATE_FORMAT(now(),'%Y-%m-%d') and nice_history.Browseurl = b and nice_history.PID = a ) > 0 THEN
			UPDATE nice_history SET nice_history.Browsedate = NOW() WHERE nice_history.Browseurl = b and  nice_history.PID = a and DATE_FORMAT(nice_history.Browsedate,'%Y-%m-%d') = DATE_FORMAT(now(),'%Y-%m-%d');  
		else INSERT into nice_history(id,PID,Browseurl,type,ConGoneId) VALUES (uuid(),a,b,c,d);
		end if;
	else INSERT into nice_history(id,PID,Browseurl,type,ConGoneId) VALUES (uuid(),a,b,c,d);
end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Insert_label
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Insert_label`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Insert_label`(a char(10),b char(10))
BEGIN
		#2016-4-26 沈俊坚 写入标签，方便用户搜索
		#如果进行搜索，所输入的数字没有在表内，则写入
	if( select count(*) from nice_label WHERE nice_label.label = a) > 0 THEN
		#如果是搜索的情况下，则搜索次数 + 1
		if  b = "search" THEN
			UPDATE nice_label SET nice_label.count = nice_label.count + 1 where nice_label.label = a;
		end if;
	else
		#投稿，视频发布后，把标签写入label表
		INSERT INTO nice_label(nice_label.label,nice_label.count) VALUES(a,0);
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Insert_recept
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Insert_recept`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `I_Insert_recept`(a char(50),b char(50),c text,e char(50),f char(5),h char(5))
BEGIN
	#发表评论
	#沈俊坚 2016-4-28
	#判断是否当前帖子已经有回复的内容，没有则1，有则 +1
	#declare @ss char(5);
	SET @ss = (select max(nice_recept.receptnumber) + 1 from nice_recept where nice_recept.receptGoupID = e and nice_recept.receptLevel = f);
	SET @UUD = uuid();
	if (select count(*) from nice_recept WHERE nice_recept.receptGoupID = e and nice_recept.receptwho = h) > 0 then
		insert into nice_recept(receptKey,receptID,receptPid,receptContent,receptCount,receptGoupID,receptLevel,receptnumber,receptwho,receptLook,receptTime)
		values(@UUD,a,b,c,0,e,f,@ss,h,0,now());
		UPDATE nice_content set nice_content.dynamicDate = now() where nice_content.GoneId = e;
	else
		insert into nice_recept(receptKey,receptID,receptPid,receptContent,receptCount,receptGoupID,receptLevel,receptnumber,receptwho,receptLook,receptTime)
		values(@UUD,a,b,c,0,e,f,1,h,0,now());
	end if;
  UPDATE nice_content SET nice_content.`comment` = nice_content.`comment` + 1 WHERE nice_content.GoneId = e; 
	select * from nice_recept where nice_recept.receptKey = @UUD;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for I_Insert_Userinfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `I_Insert_Userinfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `I_Insert_Userinfo`(a varchar(50),b varchar(50))
BEGIN
  #注册
	if(select count(*) from nice_info where nice_info.UserName = a) > 0 then
		select 'a';
	elseif(b!="") then
		#SET @ss = (select max(nice_user.UID) + 1 from nice_user);
		SET @UD = uuid();
		INSERT INTO nice_info(UserName,UserPass,UserId) values(a,b,@UD);
		INSERT INTO nice_user(UserId,NickName,Head_img,sex,bornData,rammy,lemonCount,LoginStatus,area,SubCount) 
		VALUES(@UD,"老司机","/images/photo/pho1.png",0,DATE_FORMAT(now(),'%Y-%m-%d'),"",1,0,"",0); #注册
		select * from nice_user where nice_user.UserId = @UD;	
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_AboutRec
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_AboutRec`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_AboutRec`(a char(1))
BEGIN
	#林志雄 相关推荐 2016.5.30
	#暂时是随机取出四条数据
	
	SELECT * FROM nice_content,nice_user where nice_content.type = a and nice_user.UserId = nice_content.PID ORDER BY RAND() LIMIT 4 ;
	#SELECT nice_user.NickName,nice_content.PID from nice_user WHERE NickName = ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_artContent
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_artContent`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_artContent`()
BEGIN
	#林志雄 4.6 选取文章具体内容
	SELECT * from nice_content;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_Conllect
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_Conllect`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_Conllect`(a char (10), b char(50),c char(10))
BEGIN
	#吕坤城  2016-4-10  
	# 参数 a  文章番号 唯一
  # 参数 b  本人的id  
	# 参数 c  判断
	IF c = "own" THEN 
		# 操作 查询本人收藏的文章
		SELECT nice_content.*,nice_user.NickName FROM nice_collect,nice_content,nice_user WHERE nice_collect.type=1 and nice_collect.GoneId = nice_content.GoneId and nice_collect.User_id = b and nice_content.PID = nice_user.UserId;
	ELSEIF c = "del" THEN
		# 删除收藏
	  UPDATE nice_content,nice_collect SET nice_content.coll = (nice_content.coll-1) WHERE nice_collect.type = 1 and nice_collect.GoneId = a and nice_content.PID = nice_collect.Collector_id and nice_content.GoneId =a;
		DELETE FROM nice_collect WHERE nice_collect.type = 1 and nice_collect.GoneId = a and nice_collect.User_id = b;
		
	ELSE
		#查询文章是否收藏了
		SELECT * FROM nice_collect WHERE nice_collect.GoneId = a and nice_collect.User_id = b and nice_collect.type =1;
	END if;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_Content
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_Content`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_Content`(a char(1),b char(50),c char(1),d char(1))
BEGIN
	#林志雄 16-3-30 
	#获取投稿
	if( a = 3) then 	#后台加载，此时可以获取全部数据
		SELECT * from nice_content;	
	elseif(a = 1) THEN #通过的投稿 首页刷新的时候 时间排序
		SELECT * from nice_content where nice_content.IsOk = a order by nice_content.bornData desc;
	elseif(a = 2) THEN #通过的投稿 首页刷新的时候 按照点击排序
	SELECT * from nice_content where nice_content.IsOk = a order by nice_content.browse desc;
	elseif( d != "") THEN #排序 
		if d = 1 THEN #点击次数高到低 如果次数一样，优先级是时间
			SELECT *,nice_content.UID as _UID,nice_content.bornData as time,now() as timenow,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as _time from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId where nice_content.PID = b ORDER BY CAST(nice_content.browse as SIGNED) desc,nice_content.bornData desc;
		else #发布时间
			SELECT *,nice_content.UID as _UID,nice_content.bornData as time,now() as timenow,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as _time from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId where nice_content.PID = b ORDER BY nice_content.bornData desc;
		end if;
	elseif( a = 4) THEN #获取个人投稿未通过
		select *,nice_content.UID as _UID,nice_content.bornData as time,now() as timenow,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as _time from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId where nice_content.PID = b and nice_content.IsOk = 2 ORDER BY nice_content.dynamicDate desc;
	ELSEIF(SELECT count(*) from nice_content where nice_content.PID = b) > 0 then #获取个人投稿资料
		SELECT *,nice_content.UID as _UID,nice_content.bornData as time,now() as timenow,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as _time from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId where nice_content.PID = b ORDER BY nice_content.bornData desc;
		
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_ContentAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_ContentAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_ContentAll`(a char(30),b char(10),c char(1),d char(1))
BEGIN
	#模糊搜索
	if b = "" && c = "" then # load数据
		select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId 
		where cast(nice_content.IsOk as unsigned int) = 1 and (nice_content.label like concat("%",a,"%") or nice_content.tit like concat("%",a,"%"));
	elseif b != "" then
		case b
			when "click" then #最多点击
				select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId
				and (
					case c
						when " " then nice_content.PID = nice_user.UserId
						else nice_content.type = c end
				)
				where nice_content.tit like concat("%",a,"%") and  cast(nice_content.IsOk as unsigned int) = 1 order by nice_content.browse desc;
			when "new" then 	#最新投稿
				select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId 
				and (
					case c
						when " " then nice_content.PID = nice_user.UserId

						else nice_content.type = c end
				)
				where nice_content.tit like concat("%",a,"%") and  cast(nice_content.IsOk as unsigned int) = 1 order by nice_content.bornData desc;
			when "zan" then   #最多点赞
				select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId 
				and (
					case c
						when " " then nice_content.PID = nice_user.UserId
						else nice_content.type = c end
				)
				where  nice_content.tit like concat("%",a,"%") and cast(nice_content.IsOk as unsigned int) = 1 order by nice_content.zan desc;
			when "coll" then #最多收藏
				select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId
				and (
					case c
						when " " then nice_content.PID = nice_user.UserId
						else nice_content.type = c
					end
				)
				where  nice_content.tit like concat("%",a,"%") and  cast(nice_content.IsOk as unsigned int) = 1  order by nice_content.coll desc;
			when "hot" then #最热投稿
				select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId
				and (
					case c
						when " " then nice_content.PID = nice_user.UserId
						else nice_content.type = c
					end
				)
				and (
					case d
						when " " then nice_content.PID = nice_user.UserId
						else DATEDIFF(now(), nice_content.bornData) < d
					end
				)
				where nice_content.tit like concat("%",a,"%") and  cast(nice_content.IsOk as unsigned int) = 1 order by nice_content.dynamicDate desc;
		end case;
	elseif b = "" && c != "" then
			select *,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as datatime,nice_content.UID as TID from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId
			where nice_content.tit like concat("%",a,"%") and (cast(nice_content.IsOk as unsigned int) = 1 and nice_content.type = c);
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_ContentGoneId
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_ContentGoneId`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_ContentGoneId`()
BEGIN
	#沈俊坚 2016-3-30
	#获取番号,
	select max(nice_content.GoneId) from nice_content;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_ContentwGoid
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_ContentwGoid`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_ContentwGoid`(a char(10))
BEGIN
 #林志雄 2016.4.18 根据GoneId 来获取数据
	SELECT *,nice_user.NickName from nice_content,nice_user WHERE nice_content.GoneId = a and nice_content.PID = nice_user.UserId and nice_content.IsOk = 1;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_dayLabel
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_dayLabel`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_dayLabel`(a char(1))
BEGIN
	#林志雄 2016 5. 19  每日标签
	select nice_content.label from nice_content where nice_content.type=a order by nice_content.browse DESC limit 0,20;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_DB_Content
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_DB_Content`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_DB_Content`(a char(10), b char (10))
BEGIN
	#吕坤城 2016-4-25   后台稿件管理审核
	# @param a 类型
	# @param b 文章特定id
  IF a = 'TON' THEN 
		 SELECT nice_content.*,nice_user.NickName FROM nice_content,nice_user WHERE nice_content.PID = nice_user.UserId;
	ELSEIF a = 'GON' THEN
			SELECT nice_content.*,nice_user.NickName FROM nice_content,nice_user WHERE nice_content.PID = nice_user.UserId AND nice_content.GoneId = b;
	END IF;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_GoodRecept
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_GoodRecept`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_GoodRecept`(a char(1))
BEGIN
	#获取优评
	if(a = 7) then
		
		select *,DATEDIFF(now(), nice_recept.receptTime) as _b from nice_recept,nice_user where	nice_user.UserId = nice_recept.receptID and DATEDIFF(now(), nice_recept.receptTime) <= 15 ORDER BY nice_recept.receptCount + 0 desc;
	else
		select * from nice_recept,nice_user where	nice_user.UserId = nice_recept.receptID and DATEDIFF(now(), nice_recept.receptTime) <= 3 ORDER BY nice_recept.receptCount + 0 desc;
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_HisContent
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_HisContent`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_HisContent`(pid char(50))
BEGIN
	select *,DATE_FORMAT(nice_history.Browsedate,'%Y-%m-%d') as labelTime from nice_history,nice_content
	where nice_history.PID = pid and nice_history.ConGoneId = nice_content.UID
	order by nice_history.Browsedate DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_labelAll
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_labelAll`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_labelAll`(a char(10))
BEGIN
	#模糊搜索
	#匹配标签表 前面这样做
	if (select count(*) from nice_label WHERE nice_label.label LIKE CONCAT(a,"%") > 0) then
		select * from nice_label WHERE nice_label.label LIKE CONCAT(a,"%");
	#匹配文章表， 只匹配 文字标题
	elseif(select count(*) from nice_content where nice_content.tit like concat(a,"%") > 0 ) then
		select nice_content.tit as label from nice_content where nice_content.tit like concat(a,"%") group by nice_content.tit;
	#匹配 用户表， 用户匿名
	elseif(select count(*) from nice_user where nice_user.NickName like concat(a,"%") > 0 ) then
		select nice_user.NickName as label from nice_user where nice_user.NickName like concat(a,"%") group by nice_user.NickName;
	#拼音搜索 标签表
	elseif(select count(*) from nice_label where to_pinyin(nice_label.label) like concat(a,"%") > 0) then
		#select * from nice_label WHERE to_pinyin(nice_label.label) LIKE CONCAT(a,"%");
		#select * from nice_content WHERE to_pinyin(nice_content.tit) LIKE CONCAT("%",a,"%");
		#select * from nice_label union all select * from nice_content;
		select nice_label.label from nice_label WHERE to_pinyin(nice_label.label) LIKE CONCAT(a,"%") UNION select nice_content.tit from nice_content WHERE to_pinyin(nice_content.tit) LIKE CONCAT("%",a,"%");
	#拼音搜索 文字标题
	elseif(select count(*) from nice_content where to_pinyin(nice_content.tit) like concat(a,"%") > 0) then
		select * from nice_content WHERE to_pinyin(nice_content.tit) LIKE CONCAT(a,"%");
	end if;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_LoginUserId
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_LoginUserId`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `S_Select_LoginUserId`(a varchar(50),b varchar(255), c char(10 ))
BEGIN
	if(c = 'login') then
		select * from nice_user where nice_user.LoginUserId = a;
	elseif(c='out') THEN
		UPDATE nice_user SET nice_user.LoginUserId = '' where nice_user.UserId = a;
	else
		UPDATE nice_user SET nice_user.LoginUserId = b where nice_user.UserId = a;
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_Messages
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_Messages`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_Messages`(a char(10))
BEGIN
	#获取用户反馈信息
	if(a = "user") then
		select * from nice_message,nice_user WHERE nice_message.accepter = "管理员" and nice_message.IsLook = '0' and nice_user.UserId = nice_message.sender;
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_MoreZan
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_MoreZan`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_MoreZan`(a char(50))
BEGIN
	select *  from nice_user,nice_recept WHERE nice_recept.receptGoupID = a and nice_user.UserId = nice_recept.receptID ORDER BY nice_recept.receptCount + '0' desc limit 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_now
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_now`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_now`()
BEGIN
#林志雄 获取最新时间 2016.5.15
	select NOW() as sertime;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_RankingList
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_RankingList`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_RankingList`(a int,b int)
BEGIN
	#林志雄 排行榜
  set @dt = now();
	if( a = 3) THEN 
		if(select count(*) from nice_content where DATE_FORMAT(date_add(now(), interval -12 day),'%Y-%m-%d') <= DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') > 0 ) then
			select * from nice_content where DATE_FORMAT(date_add(@dt, interval -30 day),'%Y-%m-%d') <= DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') order by nice_content.browse DESC limit 5;
		else
			select * from nice_content where DATE_FORMAT(date_add(@dt, interval -b day),'%Y-%m-%d') <= DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') order by nice_content.browse DESC limit 5;
		end if;
	
	#SELECT * from nice_content order by nice_content.browse DESC;
	else
		select * from nice_content where DATE_FORMAT(date_add(@dt, interval -b day),'%Y-%m-%d') <= DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') and nice_content.type=a order by nice_content.browse DESC limit 5;
		SELECT * from nice_content WHERE nice_content.type=a order by nice_content.browse DESC;
	end if;

	

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_recept
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_recept`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_recept`(a char(50),b char(2))
BEGIN
	#获取当前文章或视频的评论
	if(b = "") then
		#获取当前对文章进行评论的数据
		select *,nice_recept.receptTime as time,now() as timenow,DATE_FORMAT(nice_recept.receptTime,'%Y-%m-%d') as _time from nice_recept inner JOIN nice_user on nice_recept.receptID = nice_user.UserId WHERE nice_recept.receptGoupID = a and nice_recept.receptwho = 0 ORDER BY nice_recept.receptnumber desc limit 10;
	else 
		#当前楼数进行回复
		select *,nice_recept.receptTime as time,now() as timenow,DATE_FORMAT(nice_recept.receptTime,'%Y-%m-%d') as _time from nice_recept inner JOIN nice_user on nice_recept.receptID = nice_user.UserId WHERE nice_recept.receptGoupID = a and nice_recept.receptwho = b and nice_recept.receptLevel = 2 ORDER BY nice_recept.receptnumber limit 10;
	end if;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_Useri
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_Useri`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_Useri`(id char(50))
BEGIN
	#林志雄 4.6 根据id查找用户资料
	SELECT * from nice_user  where nice_user.UserId=id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_UserIdContent
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_UserIdContent`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `S_Select_UserIdContent`(id char(50))
BEGIN
	#林志雄 4.6 根据文章id选择相应数据
	SELECT * from nice_content where nice_content.UID = id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for S_Select_Userinfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `S_Select_Userinfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `S_Select_Userinfo`(a varchar(50),b varchar(50),c varchar(50))
BEGIN
	#沈俊坚 16-3-24
	#用户登录 修改密码
	/*
	if(select count(*) from nice_user WHERE nice_user.User_login = a) > 0 THEN #账号已注册
		if(select count(*) from nice_user WHERE nice_user.User_login = a and nice_user.User_pass = b) > 0 THEN #登录
			SELECT * from nice_user WHERE nice_user.User_login = a and nice_user.User_pass = b; 
		elseif (SELECT count(*) from nice_user WHERE nice_user.UserId = c ) > 0 THEN #修改密码
			UPDATE nice_user SET nice_user.User_pass = b WHERE nice_user.UserId = c;
		else select 'a'; #登陆失败
		end if;
	elseif (c = "" && a!= "" && b !="") then  #注册
		SET @ss = (select max(nice_user.UID) + 1 from nice_user);
		INSERT INTO nice_user(UID,User_login,User_pass,UserId,NickName,Head_img,sex,bornData,rammy,lemonCount,LoginStatus,area) VALUES(@ss,a,b,uuid(),"老司机","/images/photo/pho1.png",0,DATE_FORMAT(now(),'%Y-%m-%d'),"",0,0,""); #注册
		select * from nice_user where nice_user.User_login = a;	
	else select 'a';
	end if;
*/
	if(c != "") then #修改密码
		UPDATE nice_info SET nice_info.UserPass = b WHERE nice_info.UserId = c;
	elseif(select count(*) from nice_info WHERE nice_info.UserName = a and nice_info.UserPass = b) > 0 THEN  #登陆
		#SELECT * from nice_user WHERE nice_info.UserName = a and nice_info.UserPass = b;
		set @USID = (select nice_info.UserId from nice_info WHERE nice_info.UserName = a and nice_info.UserPass = b);
		Select * from nice_user where nice_user.UserId = @USID;
  else select 'a';
	end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`(a char(50))
BEGIN
	#获取评论帖子的数据 层级为1 
	select *,UNIX_TIMESTAMP(nice_recept.receptTime) as WirteTime,nice_content.UID as _UID,
	nice_recept.receptTime as time,now() as timenow,DATE_FORMAT(nice_recept.receptTime,'%Y-%m-%d') as _time
	from nice_recept,nice_content,nice_user
	where nice_recept.receptGoupID = nice_content.GoneId and nice_recept.receptLevel = 1 and nice_user.UserId = nice_content.PID;

	#获取@当前用户的评论，以及参与回复 层级为2 
	select *,UNIX_TIMESTAMP(nice_recept.receptTime) as WirteTime,nice_content.UID as _UID,nice_content.type as _type,
	nice_recept.receptTime as time,now() as timenow,DATE_FORMAT(nice_recept.receptTime,'%Y-%m-%d') as _time
	from nice_recept,nice_content,nice_user
	where nice_recept.receptGoupID = nice_content.GoneId and nice_recept.receptLevel = 2 and nice_user.UserId = nice_content.PID;

	#获取文章的赞 或 收藏
	select *,nice_content.type as _type,UNIX_TIMESTAMP(nice_collect.CollTime) as WirteTime,nice_content.UID as _UID,nice_content.type as _type,
	nice_collect.CollTime as time,now() as timenow,DATE_FORMAT(nice_collect.CollTime,'%Y-%m-%d') as _time,nice_collect.type as _ty,nice_collect.GoneId as _GoneId
	from nice_collect,nice_content,nice_user where nice_collect.type != 2 
	and nice_collect.GoneId = nice_content.GoneId 
	and nice_content.PID = nice_user.UserId 
	and nice_user.UserId = a;
	#获取评论点赞
	select *,nice_content.type as _type,UNIX_TIMESTAMP(nice_collect.CollTime) as WirteTime,nice_content.UID as _UID,
	nice_collect.CollTime as time,now() as timenow,DATE_FORMAT(nice_collect.CollTime,'%Y-%m-%d') as _time,nice_collect.type as _ty,nice_collect.GoneId as _GoneId
	from nice_collect,nice_user,nice_recept,nice_content where nice_collect.type = 2
	and nice_collect.GoneId = nice_recept.receptKey 
	and nice_user.UserId = a
	and nice_recept.receptGoupID = nice_content.GoneId
	and nice_content.GoneId = nice_recept.receptGoupID;
	
	#获取未通过
	select *,nice_content.UID as _UID,nice_content.bornData as time,now() as timenow,DATE_FORMAT(nice_content.bornData,'%Y-%m-%d') as _time,
	UNIX_TIMESTAMP(nice_content.bornData) as WirteTime
	from nice_content INNER JOIN nice_user on nice_content.PID = nice_user.UserId 
	where nice_content.PID = a and nice_content.IsOk = 2 ORDER BY nice_content.dynamicDate desc;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for tests
-- ----------------------------
DROP PROCEDURE IF EXISTS `tests`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tests`()
BEGIN
	select count(*) from nice_content where DATE_FORMAT(date_add(now(), interval -12 day),'%Y-%m-%d') <= DATE_FORMAT(nice_content.bornData,'%Y-%m-%d');
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for U_Update_ContentBrowse
-- ----------------------------
DROP PROCEDURE IF EXISTS `U_Update_ContentBrowse`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `U_Update_ContentBrowse`(a char(50), b char(50))
BEGIN
	#俊杰 2016-5-30
	#文章浏览次数加一 和分享
	#  @param  a  type 
  # @param  b  ID
  #
	
	# b = 0 文章浏览
	IF a = 0 THEN
		UPDATE nice_content set nice_content.browse = nice_content.browse + 1 where nice_content.GoneId = b;
		
	# b = 1 分享
	ELSEIF a = 1 THEN
		 UPDATE nice_content set nice_content.share = nice_content.share + 1 where nice_content.GoneId = b;
	END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for U_Update_DB_Content
-- ----------------------------
DROP PROCEDURE IF EXISTS `U_Update_DB_Content`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `U_Update_DB_Content`(a char(10), b char(10),c text,d char(20))
BEGIN
	#吕坤城 2016-4-27 后台通过与否
	# @param  a 状态
	# @param  b 文章号
	# @param  c 退回原因
	# @param  d 视频审核time(目前放着。后期更改)

	IF a = 'yes' THEN
		UPDATE nice_content SET nice_content.IsOk = '1',nice_content.videoTime = d WHERE nice_content.GoneId = b; 
	ELSEIF a = 'no' THEN
		#UPDATE nice_content SET nice_content.bornData = NOW() WHERE nice_content.GoneId = b;
		UPDATE nice_content SET nice_content.IsOk = '2',nice_content.reason = c WHERE nice_content.GoneId = b; 
	END IF;
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for U_Update_LoginStatus
-- ----------------------------
DROP PROCEDURE IF EXISTS `U_Update_LoginStatus`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `U_Update_LoginStatus`(a char(50))
BEGIN
	#沈俊坚 2016-5-24
	#判断一个账号重复登录
	SET @ss = (select max(nice_user.LoginStatus) + 1 from nice_user where nice_user.UserId = a);
	UPDATE nice_user SET nice_user.LoginTiem = now(),nice_user.LoginStatus = @ss where nice_user.UserId = a;
	select * from nice_user where nice_user.UserId = a;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for U_Update_Read
-- ----------------------------
DROP PROCEDURE IF EXISTS `U_Update_Read`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `U_Update_Read`(a char(50),b char(5))
BEGIN
	#俊杰 2016-5-24
	#更改用户查看过的评论
	if(select count(*) from nice_recept where nice_recept.receptKey = a) > 0 then
		UPDATE nice_recept set nice_recept.receptLook = 1 where nice_recept.receptKey = a;
	else
		UPDATE nice_collect set nice_collect.CollectLook = 1 where nice_collect.GoneId = a and nice_collect.type = b;
	end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for U_Update_Userinfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `U_Update_Userinfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `U_Update_Userinfo`(a char(15),b char(120),c char(10),d char(2),e char(10), f text, g char(50))
BEGIN
	#沈俊坚 3-27 修改用户个人信息
	UPDATE nice_user SET NickName = a, Head_img = b, area = c, sex = d, bornData = e, rammy = f WHERE nice_user.UserId = g;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for to_pinyin
-- ----------------------------
DROP FUNCTION IF EXISTS `to_pinyin`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `to_pinyin`(NAME VARCHAR(255) CHARSET gbk) RETURNS varchar(255) CHARSET gbk
BEGIN
    DECLARE mycode INT;
    DECLARE tmp_lcode VARCHAR(2) CHARSET gbk;
    DECLARE lcode INT;

    DECLARE tmp_rcode VARCHAR(2) CHARSET gbk;
    DECLARE rcode INT;

    DECLARE mypy VARCHAR(255) CHARSET gbk DEFAULT '';
    DECLARE lp INT;

    SET mycode = 0;
    SET lp = 1;

    SET NAME = HEX(NAME);

    WHILE lp < LENGTH(NAME) DO

        SET tmp_lcode = SUBSTRING(NAME, lp, 2);
        SET lcode = CAST(ASCII(UNHEX(tmp_lcode)) AS UNSIGNED); 
        SET tmp_rcode = SUBSTRING(NAME, lp + 2, 2);
        SET rcode = CAST(ASCII(UNHEX(tmp_rcode)) AS UNSIGNED); 
        IF lcode > 128 THEN
            SET mycode =65536 - lcode * 256 - rcode ;
            SELECT CONCAT(mypy,pin_yin_) INTO mypy FROM t_base_pinyin WHERE CODE_ >= ABS(mycode) ORDER BY CODE_ ASC LIMIT 1;
            SET lp = lp + 4;
        ELSE
            SET mypy = CONCAT(mypy,CHAR(CAST(ASCII(UNHEX(SUBSTRING(NAME, lp, 2))) AS UNSIGNED)));
            SET lp = lp + 2;
        END IF;
    END WHILE;
    RETURN LOWER(mypy);
END
;;
DELIMITER ;
