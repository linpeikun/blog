/*
Navicat MySQL Data Transfer

Source Server         : upupw
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mytp

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-25 20:15:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tp_admin
-- ----------------------------
DROP TABLE IF EXISTS `tp_admin`;
CREATE TABLE `tp_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_admin
-- ----------------------------
INSERT INTO `tp_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `tp_admin` VALUES ('3', 'lin', 'c93169f1eb9be7246f990690b5e66b2d');
INSERT INTO `tp_admin` VALUES ('4', '123', 'c4ca4238a0b923820dcc509a6f75849b');
INSERT INTO `tp_admin` VALUES ('5', '1232', '979d472a84804b9f647bc185a877a8b5');

-- ----------------------------
-- Table structure for tp_article
-- ----------------------------
DROP TABLE IF EXISTS `tp_article`;
CREATE TABLE `tp_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL COMMENT '描述',
  `keywords` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `click` int(11) NOT NULL COMMENT '点击量',
  `pic` varchar(100) NOT NULL COMMENT ' 缩略图',
  `state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '推荐状态 0-不推荐 1-推荐',
  `cateid` int(11) NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_article
-- ----------------------------
INSERT INTO `tp_article` VALUES ('5', '哈哈', 'qq', '呵呵,哈哈,嘿嘿', '<p>啧啧啧</p>', 'pk', '1503560932', '16', '/uploads/20170824/00e76c2780f9086e2b70316707fbb5e2.jpg', '0', '1');
INSERT INTO `tp_article` VALUES ('2', '广州公司聚餐好去处 聚餐休闲的好地方', '广州公司聚餐好去处有哪些呢？以下是小编整理的一些网友推荐的餐厅以及推荐理由，需要的朋友不妨来看看有没有让你满意的吧。', '聚餐,吃饭,呵呵', '<p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">广州公司聚餐好去处</strong>有哪些呢?以下是小编整理的一些网友推荐的<span style=\"list-style: none; margin: 0px; padding: 0px;text-decoration:underline;\"><a href=\"http://mytp.com/jiehun/canting/\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration: none; color: rgb(11, 59, 140); display: inline-block;\">餐厅</a></span>以及推荐理由，需要的朋友不妨来看看有没有让你满意的吧。</p><p style=\"text-align:center;list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><a href=\"http://mytp.com/index.php/index/Article/20160920156214_2.html\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration: none; color: rgb(11, 59, 140); display: inline-block;\"><img alt=\"广州公司聚餐好去处 聚餐休闲的好地方\" border=\"0\" width=\"750\" height=\"375\" src=\"http://mytp.com/static/index/images/55_160920113801_1.jpg\" style=\"list-style: none; margin: 0px; padding: 0px; border: 0px; max-width: 750px;\"/></a></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">1：香江大酒店茶皇厅</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">地址：番禺区大石迎宾路538号香江大酒店2楼(近沙溪大桥)</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">电话：020-84786888转 84786168</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥79</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:21 环境:19 服务:19</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">餐厅简介: 虽说也做“中餐和早茶”，但自助餐才是真正的“拳头产品”。一落座，先送一份炖汤，“真材实料”，而且“每天不同”。自取的食物品种“多”，味道“好”，甚至有“不少”“普通自助吃不到”的“贵价食品”。“三文鱼、象拔蚌、北极贝任吃”，还有很多的<span style=\"list-style: none; margin: 0px; padding: 0px;text-decoration:underline;\"><a href=\"http://mytp.com/jiehun/z96592.html\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration: none; color: rgb(11, 59, 140); display: inline-block;\">海鲜</a></span>、炖汤、甜水等。环境和服务都“好好”，“生日当天凭身份证”还可以“免费一位”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">推荐菜式: 三文鱼、象拔蚌、木瓜炖雪蛤、冻蟹。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">2：白虎西餐厅(长隆酒店)</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">地址：广州市番禺区大石迎宾路</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">电话：020-84786838</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥159</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:22 环境:32 服务:26</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">推荐理由： 环境“一流”，自助餐种类“多”，口味“不错”。去的话，可以“随意”吃三文鱼而“不用排队”，还有“超多的海鲜、刺身、寿司之类”，点心、<span style=\"list-style: none; margin: 0px; padding: 0px;text-decoration:underline;\"><a href=\"http://mytp.com/jiehun/shuiguo/\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration: none; color: rgb(11, 59, 140); display: inline-block;\">水果</a></span>也“相当好”。“最最喜欢”的是可以“一边看白虎，一边吃饭”，“不知不觉”总能“吃多”。吃完后，“一路走去”，还可以观赏“不少动物”。因此，就算价钱“超五星级”，也是“物有所值”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">3：唐荔园餐厅</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">地址：荔湾区黄沙大道如意坊路口荔湾湖公园内</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">电话：020-81702228</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥71</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:22 环境:26 服务:18</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">简介: 公园里的“园林酒家”，档次“不差”，性价比也“很好”。做的是“正宗<span style=\"list-style: none; margin: 0px; padding: 0px;text-decoration:underline;\"><a href=\"http://mytp.com/jiehun/yuecai/\" target=\"_blank\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration: none; color: rgb(11, 59, 140); display: inline-block;\">粤菜</a></span>”，颇具“西关风味”。早茶也“不错”，“一直开到中午”。环境“冇得弹”，临湖，空气“清新”。“靠湖边”的桌子“用绿色花栏隔开”，“不会相互干扰”。最爱等到“晚上”，湖中“各色彩灯”亮起时，到“湖心的小艇”上用餐(设最低消费)，“别有一番感受”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">推荐菜谱: 乳鸽、艇仔粥。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">4：利苑酒家</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">越秀店地址：越秀区建设六马路33号宜安广场4楼</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">越秀店电话：020-84786888转 84786168</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">&nbsp;</p><p style=\"text-align:center;list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><a href=\"http://mytp.com/index.php/index/Article/20160920156214_2.html\" style=\"list-style: none; margin: 0px; padding: 0px; outline: none; text-decoration: none; color: rgb(11, 59, 140); display: inline-block;\"><img alt=\"广州公司聚餐好去处 聚餐休闲的好地方\" border=\"0\" width=\"750\" height=\"375\" src=\"http://mytp.com/static/index/images/55_160920113818_1.jpg\" style=\"list-style: none; margin: 0px; padding: 0px; border: 0px; max-width: 750px;\"/></a></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">5：顺峰海鲜酒楼</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">珠江新城店地址：天河区珠江新城华夏路8号合景国际金融广场4楼</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">珠江新城店电话：85500028</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥79</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:23 环境:21 服务:24</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">餐厅简介: “广州顶级的粤菜餐厅之一”。环境和出品“一流”。“最欣赏”的是服务——有什么要求，“眉稍抬，手未举，口没开”，“马上”就有人“迎上来”。多吃两次，领班就能“记住你的名字和喜欢的食物”。想象一下，带客户过来，领班“离得老远就认出你”，“热情”地打招呼，席间照顾得“无微不至”，真是“很有face”。P.S.工作日11:30开始营业。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">推荐菜式: 片皮鸭、萝卜酥、榴梿酥、鲍汁鹅掌。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">6：稻香酒家</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">地址：天河区马场路36号太阳新天地购物中心7楼708号</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">电话：38326088</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥66</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:23 环境:21 服务:23</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">餐厅简介: 一个“一直会去的店”。一进门就是“很高级”“很华丽”的感觉。菜“比较有特色”，而且“个个都不错”。点心“出名精致”同“好味”，让“品尝成了一种享受”。价钱“不算便宜”，但是“物有所值”。服务“态度好得不得了”。因此，光顾“次数比较多”。惟一不足的就是人“太多”，“次次都要等位”，而且等的时间“比较长”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">推荐菜式:蛋挞、皮蛋粥、虾饺、XO酱萝卜糕、香柠蛋散。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">海珠店地址电话：海珠区滨江东路81号半岛游艇俱乐部内 34296118</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">越秀店地址电话：越秀区东风西路163号之1号铺 81363839</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥108</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:21 环境:24 服务:20</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">餐厅简介: 菜肴口味“挺顺德的”。“特色”菜不少，就是味道“不太有特色”。点心“比较正宗”，做得“很精致”，口味当然也“值得一赞”。包间“很大”，“漂亮又干净”，而且有一些“可以看到江景”。服务很好，“每吃一道菜换一次盘子”。价格“不便宜”，“不属于普通家庭的消费层次”。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\"><strong style=\"list-style: none; margin: 0px; padding: 0px;\">7：广州蕉叶餐厅</strong></p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">天河店地址电话：天河区天河北路28号时代广场2楼 38910728</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">世贸店地址电话：越秀区环市东路371号世界贸易中心6楼 87763738</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">广视店地址电话：越秀区麓湖路8号广视宾馆1楼 83597499</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">价格人均：￥100</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">网友评价：口味:22 环境:21 服务:20</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">餐厅简介: 泰国菜做得很“地道”，“酸辣刺激”。冬荫功海鲜汤“一定要试”，招牌咖喱蟹吃剩下来的汁，还可以拿来“捞饭”。最叫人“喜欢”的是厨师、侍者“充满激情”的歌舞，令人“气血沸腾”。要是跟他们“对上眼”，还会被“热情”地“强拉”出去一起“跳舞”呢。</p><p style=\"list-style: none; margin-top: 0px; margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: tahoma, &#39;microsoft yahei&#39;, 微软雅黑; line-height: 30px; white-space: normal;\">推荐菜式: 猪颈肉、冬荫功汤、咖喱皇炒蟹、榴梿薄饼、椰青海鲜焗饭、椰汁糕。</p><p><br/></p>', '青蛙呱呱', '1503630708', '133', '/uploads/20170824/604bd9ea749430f392934b1848de1392.jpg', '0', '8');
INSERT INTO `tp_article` VALUES ('3', '水下婚纱照必须要会游泳吗 ', '很多新人都想拍一组水下婚纱照，但是却不会游泳，那么水下婚纱照必须要会游泳吗？不会游泳怎么拍水下婚纱照呢？一起来看看。', '婚嫁,婚纱', '<p>水下婚纱照必须要会游泳吗?不会游泳怎么拍水下婚纱照?下文为大家整理了一些水下婚纱照的相关资料，希望可以帮到您哦!</p><p><img src=\"/ueditor/php/upload/image/20170824/1503571787.jpg\" title=\"1503571787.jpg\" alt=\"55_161010145122_1.jpg\"/></p><p>一、水下婚纱照必须要会游泳吗</p><p>一些熟悉水性的人在拍摄水中婚纱照是非常轻松的，他们可以自由的摆造型，还可以在水中表现各种表情。但是不熟悉水性的人拍摄水中婚纱照的时候就会觉得特别的难受。当然作为摄影楼的顾客，我们怎么会让您觉得难受了，所以一般的摄影楼会在摄影棚内搭建一个玻璃水柜或者是找一个游泳池来进行拍摄。这种拍摄的方式不仅能够让新人的个性尽情释放还能够给人一种惊艳的感觉。在水中拍摄婚纱的时候，新人们在水中的互动时，摄影师们会帮新人们抓住最美的瞬间，而且，如今许多的照片都是要经过后期发热修改，让你在水中更加的自然美丽。水中的世界是无穷的，在水中拍摄一套婚纱照，是非常唯美的，它的意义不同于陆地上任何拍摄场景，人们在陆地上是可以自由的呼吸的，但是水里不能，所以我们要特别的小心。</p><p>二、不会游泳怎么拍水下婚纱照</p><p>1.练习睁眼</p><p>一般人在没有载蛙镜的情况下，在水中双眼可以说是闭的比什么都来的紧，所以想要在水中拍出自然睁眼的照片，就不能忽略新人的体能极限、水中睁眼的持续力(也可以说是意志力)。执行拍摄前可建议新人先在家中的洗手台练习一阵子，相信对“在水中睁开眼睛”这件事可以有一些些突破唷。</p><p><br/></p>', '小叶', '1503571789', '40', '/uploads/20170824/41c3f21cd55067d2b23e4a020426e8a3.jpg', '1', '1');
INSERT INTO `tp_article` VALUES ('6', '吃泡面有什么坏处', '泡面虽然方便,冲泡容易,口味也可以,但您知道吃泡面有什么坏处吗?它潜藏着巨大的有害健康的危险因子!经医学临床报告,吃一包泡面就需要肝脏解毒32天。', '美食,聚餐', '<p>据调查发现泡面油包大多含有铅、砷、铜等重金属。其中“统一老坛酸菜牛肉面”酱包的含铜及</p><p>铅量最高，分别达1.73ppm(百万分之一)和0.222ppm。看wed114结婚网小编为大家详解吃泡</p><p>面有什么坏处？专家则指出，尽管食品里难免存在些有毒重金属，然而只要超过一定浓度，都</p><p>会干扰正常的生理功能，严重时还会导致基因突变而造成癌症。</p><p><img src=\"/ueditor/php/upload/image/20170824/1503571377.jpg\" title=\"1503571377.jpg\" alt=\"10511R148-0.jpg\"/></p><p>吃泡面有什么坏处</p><p>如果一定要吃方便面，那在购买的时候也要多多注意。方便面是经过油炸后干燥密封包装而</p><p>成。尽管现在很多方便面都号称不是油炸的，但多少都会含有食用油，因此，放置的时间一</p><p>长，方便面之中的油脂就会被空气氧化分解，生成有毒的醛类过氧化物。吃了这种油已变质的</p><p>方便面，会给你带来意想不到的麻烦，比如引起头晕、头痛、发热、呕吐、腹泻等中毒现象。</p><p>另外，方便面的包装破裂、封闭不严、存放时间过长，也有被细菌、毒物污染的可能。因此，</p><p>方便面的卫生不容忽视。</p><p>虽然台湾并没有对泡面的油包订出重金属剂量的标准，也无法定位是否超标。但是这样的一则</p><p>消息，犹如炸弹般在“泡面圈”里轰然炸开。平时爱吃泡面和不得不吃泡面的朋友们格外关心了</p><p>起来。</p><p><img src=\"/ueditor/php/upload/image/20170824/1503571411.jpg\" title=\"1503571411.jpg\" alt=\"10511U438-1.jpg\"/></p><p>当然，在百忙的生活中，总有那么几个时刻没空吃饭，以泡面代替充饥。既然如此，那么怎样</p><p>吃泡面才能最大限度的减少健康隐患呢?</p><p>吃泡面有什么坏处</p><p>1.方便面应该煮着吃</p><p>很多方便面表面都有蜡层，对身体不好，吃之前最好用温水泡一泡，再倒出水。之后方便面最</p><p>好还是煮着吃，因为煮过的面条更容易吸收水分，有利于肠胃的消化，不容易让人感觉到腹胀</p><p>等不良反应。</p><p><br/></p>', '大眼', '1503571952', '13', '/uploads/20170824/53122a64363dccb04ab803c2f66c8bf0.jpg', '1', '8');
INSERT INTO `tp_article` VALUES ('10', '1', '', '1,2,3', '<p>123</p>', '123', '1503560800', '0', '', '1', '1');
INSERT INTO `tp_article` VALUES ('11', '中元节前后结婚吉日一览表', '鬼节一般是在秋凉的时候，虽然处处都在祭奠死去的亡灵，但是在国家大事和焦点事件和传统习俗之间，有很多年轻人都会以“大事”为先,那2017年中元节可以结婚吗？一起来看一看。', '婚嫁吉日,结婚习俗', '<p>很多小情侣只有中元节这几天放假，有时间操办婚礼，可有担心这个是鬼节，办婚礼不吉利，</p><p>那么2017年中元节可以结婚吗?一起来看看吧。</p><p><img src=\"/ueditor/php/upload/image/20170824/1503571105.jpg\" title=\"1503571105.jpg\" alt=\"57_170823171633_1.jpg\"/></p><p>一、2017年中元节可以结婚吗</p><p>从老黄历上来看，2017年七月半中元节鬼节可以结婚。 2017年中元节是几月几号：2017年</p><p>09月05日 星期二 (丁酉年(鸡年)七月十五) 七月十五丁酉年 【鸡年】戊申月 乙未日 宜：嫁</p><p>娶、祭祀、祈福、斋醮、作灶 忌：动土、破土</p><p>一般来说死者最大，七月是祭祀的月份，很多人都沉浸在追思先人、悼念亲人的哀痛气氛中，</p><p>婚嫁之类的大喜事在7月操办确实有点不合时宜，既是对死者的不敬，也可能和当地的风俗习</p><p>惯相悖。所以各位准新人可以另外选一个黄道吉日，既合适宜又暖人心。</p><p>二、中元节结婚好吗</p><p>鬼节一般是在秋凉的时候，虽然处处都在祭奠死去的亡灵，但是在国家大事和焦点事件和传统</p><p>习俗之间，有很多年轻人都会以“大事”为先，认为这样才有纪念意义。比如众多新人在2008年</p><p>的北京奥运会集体领证结婚就是一个典型的例子。甚至在鬼节结婚的准新人要比七夕情人节还</p><p>要多。</p><p>意即该年没有立春的日子，详情可参考该年通胜或询问一些从事玄学风水的师傅;因若在这年</p><p>结婚，夫妻之间会较多争拗，难有小孩或易生婚外情一生多不幸。</p><p>一年内，家里最好不要办两次婚礼，而一对新人更不应在结婚前一个月单独去参加别人的婚</p><p>宴。婚礼的前一个月或后一个月，均不宜探病问丧。在结婚的过程中，有不少传统留下来的禁</p><p>忌，大家不妨参考一下，不用过份迷信。</p><p><br/></p>', '小叶', '1503571108', '2', '/uploads/20170824/0b16f77451f56b9ecd2005646deb514d.jpg', '1', '1');
INSERT INTO `tp_article` VALUES ('13', '3', '3', '3', '<p>3</p>', '3', '1503571982', '0', '', '1', '3');
INSERT INTO `tp_article` VALUES ('14', '4', '4', '4', '<p>4</p>', '4', '1503572030', '0', '', '1', '1');
INSERT INTO `tp_article` VALUES ('12', '2', '2', '2', '<p>2</p>', '2', '1503571888', '1', '', '0', '8');

-- ----------------------------
-- Table structure for tp_cate
-- ----------------------------
DROP TABLE IF EXISTS `tp_cate`;
CREATE TABLE `tp_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catename` varchar(20) NOT NULL COMMENT '栏目名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_cate
-- ----------------------------
INSERT INTO `tp_cate` VALUES ('1', '婚嫁');
INSERT INTO `tp_cate` VALUES ('2', '美容');
INSERT INTO `tp_cate` VALUES ('3', '服饰');
INSERT INTO `tp_cate` VALUES ('5', '娱乐');
INSERT INTO `tp_cate` VALUES ('6', '健康');
INSERT INTO `tp_cate` VALUES ('7', '美食');
INSERT INTO `tp_cate` VALUES ('8', '生活');
INSERT INTO `tp_cate` VALUES ('9', '图库');
INSERT INTO `tp_cate` VALUES ('10', '专题');

-- ----------------------------
-- Table structure for tp_links
-- ----------------------------
DROP TABLE IF EXISTS `tp_links`;
CREATE TABLE `tp_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL,
  `desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_links
-- ----------------------------
INSERT INTO `tp_links` VALUES ('5', '百度', 'https://www.baidu.com', '百度');
INSERT INTO `tp_links` VALUES ('2', '淘宝', 'https://www.taobao.com', '买买买');
INSERT INTO `tp_links` VALUES ('3', 'QQ', 'https://www.qq.com', 'QQ');
INSERT INTO `tp_links` VALUES ('4', '京东', 'https://www.jd.com', '京东');
INSERT INTO `tp_links` VALUES ('6', 'blog', 'http://blog.linpeikun.xyz', 'WEB、Blog');
INSERT INTO `tp_links` VALUES ('7', '1', '1', '1');
INSERT INTO `tp_links` VALUES ('9', '2', '2', '2');

-- ----------------------------
-- Table structure for tp_tags
-- ----------------------------
DROP TABLE IF EXISTS `tp_tags`;
CREATE TABLE `tp_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tp_tags
-- ----------------------------
INSERT INTO `tp_tags` VALUES ('1', '奇闻趣事');
INSERT INTO `tp_tags` VALUES ('2', '生活妙招');
INSERT INTO `tp_tags` VALUES ('3', '星座');
INSERT INTO `tp_tags` VALUES ('5', '亲子');
INSERT INTO `tp_tags` VALUES ('6', '汽车');
INSERT INTO `tp_tags` VALUES ('7', '宠物百科');
INSERT INTO `tp_tags` VALUES ('8', '家居');
