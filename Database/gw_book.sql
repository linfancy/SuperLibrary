/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50128
Source Host           : localhost:3306
Source Database       : gw_library

Target Server Type    : MYSQL
Target Server Version : 50128
File Encoding         : 65001

Date: 2013-10-25 09:21:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gw_book`
-- ----------------------------
DROP TABLE IF EXISTS `gw_book`;
CREATE TABLE `gw_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `callNumber` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gw_book
-- ----------------------------
INSERT INTO `gw_book` VALUES ('1', 'PHP设计模式', '萨莱', '清华大学 ', 'http://book.douban.com/subject/4865086/', '978-7-302-22843-1', 'TP312PH 126', 'http://img5.douban.com/mpic/s6180749.jpg', null);
INSERT INTO `gw_book` VALUES ('2', 'PHP Web 2.0开发实战', '泽瓦斯', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3229992/', '978-7-115-18731-4', 'TP312PH 105', 'http://img3.douban.com/mpic/s9114674.jpg', null);
INSERT INTO `gw_book` VALUES ('9', 'PHP和MySQL Web开发（原书第四版）', 'Luke Welling / Laura Thomson ', '机械工业出版社', 'http://book.douban.com/subject/3549421/', '978-7-111-26281-7', 'TP312PH 105', 'http://img3.douban.com/mpic/s3773304.jpg', null);
INSERT INTO `gw_book` VALUES ('10', ' 细说php', '高洛峰', '电子工艺出版社', 'http://book.douban.com/subject/4090200/', '978-7-121-09441-5', null, 'http://img4.douban.com/mpic/s6080118.jpg', null);
INSERT INTO `gw_book` VALUES ('11', 'Java编程思想', '[美]Bruce Eckel ', '机械工业出版社', 'http://book.douban.com/subject/2130190/', '978-7-111-21382-6', null, 'http://img3.douban.com/mpic/s2553047.jpg', null);
INSERT INTO `gw_book` VALUES ('12', '深入Java虚拟机', '（美）文纳斯', '机械工业出版社', 'http://book.douban.com/subject/1138768/', '978-7-111-12805-2', null, 'http://img4.douban.com/mpic/s9845378.jpg', null);
INSERT INTO `gw_book` VALUES ('13', '疯狂Android讲义', ' 李刚 ', '电子工业', 'http://book.douban.com/subject/6515839/', '978-7-121-13576-7', null, 'http://img5.douban.com/mpic/s6641009.jpg', null);
INSERT INTO `gw_book` VALUES ('14', '深入理解Android', '邓凡平 ', '机械工业出版社', 'http://book.douban.com/subject/6802440/', '978-7-111-35762-9', null, 'http://img3.douban.com/mpic/s11171603.jpg', null);
INSERT INTO `gw_book` VALUES ('15', 'C程序设计语言', '（美）Brian W. Kernighan / （美）Dennis M. Ritchie ', '机械工业出版社', 'http://book.douban.com/subject/1139336/', ' 978-7-111-12806-9', null, 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('16', 'Windows程序设计', '(美)Jeff Prosise ', '清华大学出版社', 'http://book.douban.com/subject/2115192/', '978-7-302-15042-8', null, 'http://img3.douban.com/mpic/s24223223.jpg', null);
INSERT INTO `gw_book` VALUES ('17', '深入解析MFC', 'George Shepherd Scot Wingo(美) ', '中国电力出版社', 'http://book.douban.com/subject/1237128/', '978-7-508-31800-4', null, 'http://img3.douban.com/mpic/s9846070.jpg', null);
INSERT INTO `gw_book` VALUES ('18', 'C++ Primer', ' Stanley B. Lippman / Josée Lajoie / Barbara E. Moo ', 'Addison-Wesley Professional', 'http://book.douban.com/subject/1415354/', '978-0-201-72148-5', null, 'http://img3.douban.com/mpic/s4463651.jpg', null);
INSERT INTO `gw_book` VALUES ('19', 'C++标准程序库', '[德] Nicolai M. Josuttis ', '华中科技大学出版社', 'http://book.douban.com/subject/1110941/', '978-7-560-92782-4', null, 'http://img5.douban.com/mpic/s1092079.jpg', null);
INSERT INTO `gw_book` VALUES ('20', 'Python核心编程（第二版）', '[美]Wesley J. Chun（陳仲才） ', '人民邮电出版社', 'http://book.douban.com/subject/3112503/', '978-7-115-17850-3', null, 'http://img3.douban.com/mpic/s3140466.jpg', null);
INSERT INTO `gw_book` VALUES ('21', 'Python语言入门', '[美] Mark Lutz / David Ascber ', '中国电力出版社', 'http://book.douban.com/subject/1239501/', ' 978-7-508-30580-6', null, 'http://img3.douban.com/mpic/s1318070.jpg', null);
INSERT INTO `gw_book` VALUES ('22', '可爱的Python', '哲思社区 ', '电子工业出版社', 'http://book.douban.com/subject/3884108/', '978-7-121-08514-7', null, 'http://img3.douban.com/mpic/s3901817.jpg', null);
INSERT INTO `gw_book` VALUES ('23', 'Linux/Unix设计思想', '甘卡兹 ', '人民邮电', 'http://book.douban.com/subject/7564417/', '978-7-115-26692-7', null, 'http://img3.douban.com/mpic/s9022362.jpg', null);
INSERT INTO `gw_book` VALUES ('24', '鸟哥的Linux私房菜.基础学习篇（第三版）', '鸟哥 ', '人民邮电出版社', 'http://book.douban.com/subject/4889838/', '978-7-115-22626-6', null, 'http://img3.douban.com/mpic/s4399937.jpg', null);
INSERT INTO `gw_book` VALUES ('25', 'TCP/IP详解 卷1：协议', ' W.Richard Stevens ', '机械工业出版社', 'http://book.douban.com/subject/1088054/', '978-7-111-07566-0', null, 'http://img3.douban.com/mpic/s1543906.jpg', null);
INSERT INTO `gw_book` VALUES ('26', 'TCP/IP详解 卷2：实现', '史蒂文斯 ', ' 机械工业出版社', 'http://book.douban.com/subject/1087767/', '978-7-111-07567-7', null, 'http://img3.douban.com/mpic/s2414170.jpg', null);
INSERT INTO `gw_book` VALUES ('42', 'C++习题与解答', '李代平', '冶金工业出版社 ', 'http://book.douban.com/subject/1624674/', '7-5024-3282-5', 'TP312C++ 551-2', 'http://img3.douban.com/mpic/s23685793.jpg', null);
INSERT INTO `gw_book` VALUES ('43', '出现频率最高的100种典型题型精解精练', '余雪勇', '清华大学 ', 'http://book.douban.com/subject/2974607/', '978-7-302-16678-8', 'TP312C-44 36', 'http://img3.douban.com/mpic/s5864817.jpg', null);
INSERT INTO `gw_book` VALUES ('44', '数据结构课程设计案例精编', '李建学', '清华大学 ', 'http://book.douban.com/subject/2013616/', '978-7-89486-274-7', 'TP311.12 182', 'http://img3.douban.com/mpic/s5752742.jpg', null);
INSERT INTO `gw_book` VALUES ('45', '精通SQL', '高守传', '人民邮电出版社 ', 'http://book.douban.com/subject/1086439/', '7-115-09210-9', 'TP392 607', 'http://img3.douban.com/mpic/s1072965.jpg', null);
INSERT INTO `gw_book` VALUES ('46', '电子电路基础', '刘宝玲', '机械工业出版社 ', 'http://book.douban.com/subject/1721028/', '7-111-03381-7', 'TN7 17', 'http://img3.douban.com/mpic/s25780803.jpg', null);
INSERT INTO `gw_book` VALUES ('47', 'JavaScript网页特效范例宝典', '明日科技', '人民邮电 ', 'http://book.douban.com/subject/2208573/', '978-7-89488-678-1', 'TP312JA 910', 'http://img3.douban.com/mpic/s9168755.jpg', null);
INSERT INTO `gw_book` VALUES ('48', 'PHP+Ajax Web 2.0编程技术与项目开发大全', '叶新伟', null, 'http://book.douban.com/subject/3109224/', '978-7-89485-753-8', 'TP312PH 96', 'http://img3.douban.com/mpic/s6510705.jpg', null);
INSERT INTO `gw_book` VALUES ('49', 'JavaScript精彩网页特效实例精粹', '张涛', '人民邮电 ', 'http://book.douban.com/subject/2280546/', '978-7-89488-747-4', 'TP312JA 984', 'http://img5.douban.com/mpic/s10426769.jpg', null);
INSERT INTO `gw_book` VALUES ('50', 'PHP深度分析', '沙菲克', null, 'http://book.douban.com/subject/4212867/', '978-7-5084-6989-8', 'TP312PH 117', 'http://img3.douban.com/mpic/s4147005.jpg', null);
INSERT INTO `gw_book` VALUES ('51', '深入PHP', '赞德斯彻', ' 人民邮电出版社 ', 'http://book.douban.com/subject/4746407/', '978-7-115-22578-8', 'TP312PH 128', 'http://img3.douban.com/mpic/s4261122.jpg', null);
INSERT INTO `gw_book` VALUES ('52', '正则表达式必知必会', '福尔塔', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2269648/', '978-7-115-16474-2', 'TP301.2 12', 'http://img3.douban.com/mpic/s2794811.jpg', null);
INSERT INTO `gw_book` VALUES ('53', 'C++程序设计与应用', '周仲宁', '清华大学出版社 ', 'http://book.douban.com/subject/1247309/', '7-5053-7829-5', 'TP312C# 23', 'http://img3.douban.com/mpic/s25045940.jpg', null);
INSERT INTO `gw_book` VALUES ('54', 'JavaScript实例自学手册', '吴雪', null, 'http://book.douban.com/subject/2981955/', '978-7-89485-546-6', 'TP312JA 1012', 'http://img3.douban.com/mpic/s10383927.jpg', null);
INSERT INTO `gw_book` VALUES ('55', '英语词汇宝典', '尤克强', '清华大学出版社 ', 'http://book.douban.com/subject/1727024/', '7-302-07118-7', 'H313.1 331', 'http://img3.douban.com/mpic/s24572874.jpg', null);
INSERT INTO `gw_book` VALUES ('56', '口笔译高频词汇词典', '王斌华', '武汉大学出版社 ', 'http://book.douban.com/subject/4297128/', '978-7-307-07445-3', 'H313 997', 'http://img3.douban.com/mpic/s4341952.jpg', null);
INSERT INTO `gw_book` VALUES ('57', '电子电路基础', '刘宝玲', ' 清华大学出版社 ', 'http://book.douban.com/subject/3171563/', '7-04-005204-0', 'TN7 60-2', 'http://img3.douban.com/mpic/s5923554.jpg', null);
INSERT INTO `gw_book` VALUES ('58', '电子技术基础', '康华光,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'TN1-44 7', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('59', '计算机软件技术基础', '李淑芬', ' 机械工业出版社 ', 'http://book.douban.com/subject/1052241/', '7-309-01004-3', 'TP31 318', 'http://img3.douban.com/mpic/s1074361.jpg', null);
INSERT INTO `gw_book` VALUES ('60', 'C语言详解', '汉利', '人民邮电 ', 'http://book.douban.com/subject/2304405/', '978-7-115-16427-8', 'TP312C 700', 'http://img3.douban.com/mpic/s8886953.jpg', null);
INSERT INTO `gw_book` VALUES ('61', 'CSS入门经典', '巴特利特', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2022572/', '978-7-115-15750-8', 'TP393.092 1634', 'http://img3.douban.com/mpic/s5816254.jpg', null);
INSERT INTO `gw_book` VALUES ('62', 'CSS & DHTML动态网页教程', '四海工作室', '巴蜀书社 ', 'http://book.douban.com/subject/1240826/', '7-03-010150-2', 'TP393.092 448', 'http://img3.douban.com/mpic/s9762690.jpg', null);
INSERT INTO `gw_book` VALUES ('63', 'C++程序设计基础案例教程', '于永彦', null, 'http://book.douban.com/subject/3518107/', '978-7-301-14510-4', 'TP312C++ 983', 'http://img3.douban.com/mpic/s5988413.jpg', null);
INSERT INTO `gw_book` VALUES ('64', 'C++面向对象程序设计', '萨维茨基', '北京航空航天大学出版社 ', 'http://book.douban.com/subject/1032629/', '7-81012-867-1', 'TP312C++ 199', 'http://img3.douban.com/mpic/s1023534.jpg', null);
INSERT INTO `gw_book` VALUES ('65', 'PHP 6与MySQL 5基础教程', '厄尔曼', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3269865/', '978-7-115-18854-0', 'TP312 408', 'http://img5.douban.com/mpic/s3408029.jpg', null);
INSERT INTO `gw_book` VALUES ('66', 'PHP网络编程技术与实例', '曹衍龙', '机械工业出版社 ', 'http://book.douban.com/subject/20370984/', '7-89488-014-0', 'TP312PH 60', 'http://img3.douban.com/mpic/s25137367.jpg', null);
INSERT INTO `gw_book` VALUES ('67', 'C++语言习题与解析', '李春葆', '清华大学出版社 ', 'http://book.douban.com/subject/1913358/', '7-302-13313-1', 'TP312C++ 784', 'http://img3.douban.com/mpic/s10065214.jpg', null);
INSERT INTO `gw_book` VALUES ('68', 'JavaScript完全自学宝典', '陈衍卿', null, 'http://book.douban.com/subject/10742073/', '978-7-89474-006-9', 'TP312JA 1010', 'http://img3.douban.com/mpic/s9116935.jpg', null);
INSERT INTO `gw_book` VALUES ('69', '精通Java手机游戏与应用程序设计', '陈立伟', ' 中国青年出版社 ', 'http://book.douban.com/subject/1653474/', '7-900162-55-0', 'TP312JA 566', 'http://img3.douban.com/mpic/s1526941.jpg', null);
INSERT INTO `gw_book` VALUES ('70', 'SQL Server 2005中文版基础教程', '黄开枝', null, 'http://book.douban.com/subject/4835756/', '978-7-89486-478-9', 'TP311.138SQ 303', 'http://img3.douban.com/mpic/s6161827.jpg', null);
INSERT INTO `gw_book` VALUES ('71', 'PHP开发典型模块大全', '邹天思', ' 人民邮电 ', 'http://book.douban.com/subject/4835721/', '978-7-89479-997-5', 'TP312PH 129', 'http://img3.douban.com/mpic/s4399181.jpg', null);
INSERT INTO `gw_book` VALUES ('72', 'MFC 编程技巧与范例详解', '曾凡锋', '清华大学出版社 ', 'http://book.douban.com/subject/3264493/', '978-7-89474-172-1', 'TP312C 792', 'http://img3.douban.com/mpic/s5952165.jpg', null);
INSERT INTO `gw_book` VALUES ('73', 'PHP+MySQL经典案例剖析', '陈军', ' 人民邮电 ', 'http://book.douban.com/subject/2338470/', '978-7-89486-695-0', 'TP312PH 84', 'http://img3.douban.com/mpic/s5772862.jpg', null);
INSERT INTO `gw_book` VALUES ('74', '通信原理', '钟晓玲', '国防工业出版社 ', 'http://book.douban.com/subject/1933520/', '7-118-00348-4', 'TN911 67-3', 'http://img4.douban.com/mpic/s24223188.jpg', null);
INSERT INTO `gw_book` VALUES ('75', 'Java开发技术大全', '刘新', '清华大学出版社 ', 'http://book.douban.com/subject/3507767/', '978-7-89474-346-6', 'TP312JA 1142', 'http://img3.douban.com/mpic/s5992012.jpg', null);
INSERT INTO `gw_book` VALUES ('76', 'jQuery JavaScript与CSS开发入门经典', '约克', null, 'http://book.douban.com/subject/5330278/', '978-7-302-23303-9', 'TP312JA 1399', 'http://img3.douban.com/mpic/s6235221.jpg', null);
INSERT INTO `gw_book` VALUES ('77', 'MySQL必知必会', '福塔', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3354490/', '978-7-115-19112-0', 'TP311.138SQ 392', 'http://img3.douban.com/mpic/s5968156.jpg', null);
INSERT INTO `gw_book` VALUES ('78', '游戏编程All in One', '苏译,', '重庆大学出版社 ', 'http://book.douban.com/subject/1706699/', '7-900676-26-0', 'TP311.5 268', 'http://img3.douban.com/mpic/s5646486.jpg', null);
INSERT INTO `gw_book` VALUES ('79', '精通SQL Server 2008', '李', null, 'http://book.douban.com/subject/4908226/', '978-7-302-22640-6', 'TP311.138SQ 472', 'http://img3.douban.com/mpic/s6191577.jpg', null);
INSERT INTO `gw_book` VALUES ('80', 'SQL Server 2008中文版从入门到精通', '崔群法', null, 'http://book.douban.com/subject/3578160/', '978-7-121-08225-2', 'TP311.138SQ 407', 'http://img4.douban.com/mpic/s9350548.jpg', null);
INSERT INTO `gw_book` VALUES ('81', 'PHP内容管理系统', '陈红飞', null, 'http://book.douban.com/subject/3339178/', '978-7-121-07658-9', 'TP312PH 110', 'http://img3.douban.com/mpic/s3407744.jpg', null);
INSERT INTO `gw_book` VALUES ('82', '游戏编程数学和物理基础', '斯塔勒', ' 清华大学 ', 'http://book.douban.com/subject/2111771/', '978-7-89482-420-2', 'TP301.6 109', 'http://img3.douban.com/mpic/s5819437.jpg', null);
INSERT INTO `gw_book` VALUES ('83', 'Android编程典型实例与项目开发', '吴亚峰', null, 'http://book.douban.com/subject/6863195/', '978-7-121-14496-7', 'TN929.53 176', 'http://img3.douban.com/mpic/s8477782.jpg', null);
INSERT INTO `gw_book` VALUES ('84', 'Google Android SDK开发实战演练', '何孟翰', '王世江 ', 'http://book.douban.com/subject/10517158/', '978-7-115-27334-5', 'TN929.53 246', 'http://img3.douban.com/mpic/s8883467.jpg', null);
INSERT INTO `gw_book` VALUES ('85', 'jQuery Mobile快速入门', '布劳利克', '人民邮电 ', 'http://book.douban.com/subject/10593496/', '978-7-115-27718-3', 'TN929.53 242', 'http://img3.douban.com/mpic/s10345963.jpg', null);
INSERT INTO `gw_book` VALUES ('86', '中国哲学概论', '李景林', '北京大学出版社 ', 'http://book.douban.com/subject/1621683/', '7-301-08210-X', 'B2 94', 'http://img3.douban.com/mpic/s5679724.jpg', null);
INSERT INTO `gw_book` VALUES ('87', '犀利开发', '朱印宏', '清华大学出版社 ', 'http://book.douban.com/subject/5063431/', '978-7-89444-068-6', 'TP312JA 1366', 'http://img3.douban.com/mpic/s6229096.jpg', null);
INSERT INTO `gw_book` VALUES ('88', 'Android应用开发范例精解', '高彩丽', null, 'http://book.douban.com/subject/10534310/', '978-7-302-27600-5', 'TN929.53 204', 'http://img3.douban.com/mpic/s10346732.jpg', null);
INSERT INTO `gw_book` VALUES ('89', '数据结构', '马利克,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139426/', '7-313-00101-0', 'TP312C 12', 'http://img3.douban.com/mpic/s1106991.jpg', null);
INSERT INTO `gw_book` VALUES ('90', 'Struts 2技术详解', '闫术卓', null, 'http://book.douban.com/subject/5353188/', '978-7-89485-749-1', 'TP311.56 734', 'http://img3.douban.com/mpic/s6245894.jpg', null);
INSERT INTO `gw_book` VALUES ('91', '精通Java EE', '叶健毅', null, 'http://book.douban.com/subject/3352876/', '978-7-89488-867-9', 'TP312JA 980', 'http://img3.douban.com/mpic/s10403223.jpg', null);
INSERT INTO `gw_book` VALUES ('92', 'JSP项目开发全程实录', '周桓', '清华大学出版社 ', 'http://book.douban.com/subject/5398924/', '978-7-89486-924-1', 'TP312JA 1009', 'http://img3.douban.com/mpic/s6261397.jpg', null);
INSERT INTO `gw_book` VALUES ('93', 'JSP数据库系统开发案例精选', '王国辉', '人民邮电出版社 ', 'http://book.douban.com/subject/1801278/', '7-89488-078-7', 'TP393.092 1198', 'http://img3.douban.com/mpic/s24436676.jpg', null);
INSERT INTO `gw_book` VALUES ('94', '基于Eclipse环境的企业应用开发', '万辉', null, 'http://book.douban.com/subject/3248818/', '978-7-302-18417-1', 'TP311.56 732', 'http://img3.douban.com/mpic/s5944011.jpg', null);
INSERT INTO `gw_book` VALUES ('95', 'Adobe Premier 5.x实例教程', '胡晓冰', '清华大学出版社 ', 'http://book.douban.com/subject/1250410/', '7-302-04184-9', 'TP391.41 382', 'http://img3.douban.com/mpic/s25026597.jpg', null);
INSERT INTO `gw_book` VALUES ('96', 'Photoshop CS2中文版四库全书', '雷波', '电子工业 ', 'http://book.douban.com/subject/2115854/', '978-7-89485-218-2', 'TP391.41 3465', 'http://img5.douban.com/mpic/s10117779.jpg', null);
INSERT INTO `gw_book` VALUES ('97', '围城内外', '熊哲宏', '世界知识出版社 ', 'http://book.douban.com/subject/3723130/', '7-5012-0403-9', 'I207.352 4', 'http://img4.douban.com/mpic/s7060138.jpg', null);
INSERT INTO `gw_book` VALUES ('98', 'CSS实战手册', '麦克法兰', ' 电子工业出版社 ', 'http://book.douban.com/subject/2208550/', '978-7-121-04647-6', 'TP393.092 1831', 'http://img3.douban.com/mpic/s2715766.jpg', null);
INSERT INTO `gw_book` VALUES ('99', '美工神话CSS网站布局与美化', '聂小燕', '人民邮电出版社 ', 'http://book.douban.com/subject/2193691/', '978-7-115-16272-4', 'TP393.092 1751', 'http://img3.douban.com/mpic/s9158871.jpg', null);
INSERT INTO `gw_book` VALUES ('100', 'Java开发之道', '张振坤', ' 电子工业出版社 ', 'http://book.douban.com/subject/4888652/', '978-7-89464-820-4', 'TP312JA 1447', 'http://img3.douban.com/mpic/s4393493.jpg', null);
INSERT INTO `gw_book` VALUES ('101', '设计基础指南', '克劳斯', ' 上海人民美术出版社 ', 'http://book.douban.com/subject/2977179/', '978-7-5322-5230-5', 'J506 55', 'http://img3.douban.com/mpic/s24455767.jpg', null);
INSERT INTO `gw_book` VALUES ('102', '平面设计师创意指南', '奥达赫,', ' 上海人民美术出版社 ', 'http://book.douban.com/subject/1491818/', '7-5322-4678-7', 'J524 51', 'http://img3.douban.com/mpic/s9101107.jpg', null);
INSERT INTO `gw_book` VALUES ('103', '超越LOGO设计', '艾雷', '人民邮电出版社 ', 'http://book.douban.com/subject/5341100/', '978-7-115-23705-7', 'J506 77', 'http://img3.douban.com/mpic/s4527663.jpg', null);
INSERT INTO `gw_book` VALUES ('104', '刘心武揭秘红楼梦', '刘心武,', '东方出版社 ', 'http://book.douban.com/subject/1418173/', '7-5060-1841-1', 'I207.411 56', 'http://img3.douban.com/mpic/s1430805.jpg', null);
INSERT INTO `gw_book` VALUES ('105', '汇编语言', '王爽', '清华大学出版社 ', 'http://book.douban.com/subject/3037562/', '7-81043-043-2', 'TP313 50', 'http://img3.douban.com/mpic/s3094691.jpg', null);
INSERT INTO `gw_book` VALUES ('106', '爱上单片机', '杜洋', null, 'http://book.douban.com/subject/4772521/', '978-7-89479-913-5', 'TP368.1 762', 'http://img4.douban.com/mpic/s6151658.jpg', null);
INSERT INTO `gw_book` VALUES ('107', 'C++习题与解答', '李代平', '冶金工业出版社 ', 'http://book.douban.com/subject/1624674/', '7-5024-3282-5', 'TP312C++ 551-2', 'http://img3.douban.com/mpic/s23685793.jpg', null);
INSERT INTO `gw_book` VALUES ('108', '出现频率最高的100种典型题型精解精练', '余雪勇', '清华大学 ', 'http://book.douban.com/subject/2974607/', '978-7-302-16678-8', 'TP312C-44 36', 'http://img3.douban.com/mpic/s5864817.jpg', null);
INSERT INTO `gw_book` VALUES ('109', '数据结构课程设计案例精编', '李建学', '清华大学 ', 'http://book.douban.com/subject/2013616/', '978-7-89486-274-7', 'TP311.12 182', 'http://img3.douban.com/mpic/s5752742.jpg', null);
INSERT INTO `gw_book` VALUES ('110', '精通SQL', '高守传', '人民邮电出版社 ', 'http://book.douban.com/subject/1086439/', '7-115-09210-9', 'TP392 607', 'http://img3.douban.com/mpic/s1072965.jpg', null);
INSERT INTO `gw_book` VALUES ('111', 'PHP Web 2.0开发实战', '泽瓦斯', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3229992/', '978-7-115-18731-4', 'TP312PH 105', 'http://img3.douban.com/mpic/s9114674.jpg', null);
INSERT INTO `gw_book` VALUES ('112', '电子电路基础', '刘宝玲', ' 清华大学出版社 ', 'http://book.douban.com/subject/3171563/', '7-04-005204-0', 'TN7 60-2', 'http://img3.douban.com/mpic/s5923554.jpg', null);
INSERT INTO `gw_book` VALUES ('113', '电子技术基础', '康华光,', '机械工业出版社 ', 'http://book.douban.com/subject/1721028/', '7-111-03381-7', 'TN1-44 7', 'http://img3.douban.com/mpic/s25780803.jpg', null);
INSERT INTO `gw_book` VALUES ('114', 'JavaScript网页特效范例宝典', '明日科技', '人民邮电 ', 'http://book.douban.com/subject/2208573/', '978-7-89488-678-1', 'TP312JA 910', 'http://img3.douban.com/mpic/s9168755.jpg', null);
INSERT INTO `gw_book` VALUES ('115', 'PHP+Ajax Web 2.0编程技术与项目开发大全', '叶新伟', null, 'http://book.douban.com/subject/3109224/', '978-7-89485-753-8', 'TP312PH 96', 'http://img3.douban.com/mpic/s6510705.jpg', null);
INSERT INTO `gw_book` VALUES ('116', 'JavaScript精彩网页特效实例精粹', '张涛', '人民邮电 ', 'http://book.douban.com/subject/2280546/', '978-7-89488-747-4', 'TP312JA 984', 'http://img5.douban.com/mpic/s10426769.jpg', null);
INSERT INTO `gw_book` VALUES ('117', 'PHP深度分析', '沙菲克', null, 'http://book.douban.com/subject/4212867/', '978-7-5084-6989-8', 'TP312PH 117', 'http://img3.douban.com/mpic/s4147005.jpg', null);
INSERT INTO `gw_book` VALUES ('118', 'PHP设计模式', '萨莱', '清华大学 ', 'http://book.douban.com/subject/4865086/', '978-7-302-22843-1', 'TP312PH 126', 'http://img5.douban.com/mpic/s6180749.jpg', null);
INSERT INTO `gw_book` VALUES ('119', '深入PHP', '赞德斯彻', ' 人民邮电出版社 ', 'http://book.douban.com/subject/4746407/', '978-7-115-22578-8', 'TP312PH 128', 'http://img3.douban.com/mpic/s4261122.jpg', null);
INSERT INTO `gw_book` VALUES ('120', '正则表达式必知必会', '福尔塔', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2269648/', '978-7-115-16474-2', 'TP301.2 12', 'http://img3.douban.com/mpic/s2794811.jpg', null);
INSERT INTO `gw_book` VALUES ('121', 'C++程序设计与应用', '周仲宁', '清华大学出版社 ', 'http://book.douban.com/subject/1247309/', '7-5053-7829-5', 'TP312C# 23', 'http://img3.douban.com/mpic/s25045940.jpg', null);
INSERT INTO `gw_book` VALUES ('122', 'JavaScript实例自学手册', '吴雪', null, 'http://book.douban.com/subject/2981955/', '978-7-89485-546-6', 'TP312JA 1012', 'http://img3.douban.com/mpic/s10383927.jpg', null);
INSERT INTO `gw_book` VALUES ('123', '英语词汇宝典', '尤克强', '清华大学出版社 ', 'http://book.douban.com/subject/1727024/', '7-302-07118-7', 'H313.1 331', 'http://img3.douban.com/mpic/s24572874.jpg', null);
INSERT INTO `gw_book` VALUES ('124', '口笔译高频词汇词典', '王斌华', '武汉大学出版社 ', 'http://book.douban.com/subject/4297128/', '978-7-307-07445-3', 'H313 997', 'http://img3.douban.com/mpic/s4341952.jpg', null);
INSERT INTO `gw_book` VALUES ('125', '计算机软件技术基础', '李淑芬', ' 机械工业出版社 ', 'http://book.douban.com/subject/1052241/', '7-309-01004-3', 'TP31 318', 'http://img3.douban.com/mpic/s1074361.jpg', null);
INSERT INTO `gw_book` VALUES ('126', 'C语言详解', '汉利', '人民邮电 ', 'http://book.douban.com/subject/2304405/', '978-7-115-16427-8', 'TP312C 700', 'http://img3.douban.com/mpic/s8886953.jpg', null);
INSERT INTO `gw_book` VALUES ('127', 'CSS入门经典', '巴特利特', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2022572/', '978-7-115-15750-8', 'TP393.092 1634', 'http://img3.douban.com/mpic/s5816254.jpg', null);
INSERT INTO `gw_book` VALUES ('128', 'CSS & DHTML动态网页教程', '四海工作室', '巴蜀书社 ', 'http://book.douban.com/subject/1240826/', '7-03-010150-2', 'TP393.092 448', 'http://img3.douban.com/mpic/s9762690.jpg', null);
INSERT INTO `gw_book` VALUES ('129', 'C++程序设计基础案例教程', '于永彦', null, 'http://book.douban.com/subject/3518107/', '978-7-301-14510-4', 'TP312C++ 983', 'http://img3.douban.com/mpic/s5988413.jpg', null);
INSERT INTO `gw_book` VALUES ('130', 'C++面向对象程序设计', '萨维茨基', '北京航空航天大学出版社 ', 'http://book.douban.com/subject/1032629/', '7-81012-867-1', 'TP312C++ 199', 'http://img3.douban.com/mpic/s1023534.jpg', null);
INSERT INTO `gw_book` VALUES ('131', 'PHP 6与MySQL 5基础教程', '厄尔曼', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3269865/', '978-7-115-18854-0', 'TP312 408', 'http://img5.douban.com/mpic/s3408029.jpg', null);
INSERT INTO `gw_book` VALUES ('132', 'PHP网络编程技术与实例', '曹衍龙', '机械工业出版社 ', 'http://book.douban.com/subject/20370984/', '7-89488-014-0', 'TP312PH 60', 'http://img3.douban.com/mpic/s25137367.jpg', null);
INSERT INTO `gw_book` VALUES ('133', 'C++语言习题与解析', '李春葆', '清华大学出版社 ', 'http://book.douban.com/subject/1913358/', '7-302-13313-1', 'TP312C++ 784', 'http://img3.douban.com/mpic/s10065214.jpg', null);
INSERT INTO `gw_book` VALUES ('134', '数据结构', '马利克,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139426/', '7-313-00101-0', 'TP312C 12', 'http://img3.douban.com/mpic/s1106991.jpg', null);
INSERT INTO `gw_book` VALUES ('135', 'JavaScript完全自学宝典', '陈衍卿', null, 'http://book.douban.com/subject/10742073/', '978-7-89474-006-9', 'TP312JA 1010', 'http://img3.douban.com/mpic/s9116935.jpg', null);
INSERT INTO `gw_book` VALUES ('136', '数据结构', '刘大有', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139426/', '7-313-00101-0', 'TP312C 12', 'http://img3.douban.com/mpic/s1106991.jpg', null);
INSERT INTO `gw_book` VALUES ('137', '精通Java手机游戏与应用程序设计', '陈立伟', ' 中国青年出版社 ', 'http://book.douban.com/subject/1653474/', '7-900162-55-0', 'TP312JA 566', 'http://img3.douban.com/mpic/s1526941.jpg', null);
INSERT INTO `gw_book` VALUES ('138', 'SQL Server 2005中文版基础教程', '黄开枝', null, 'http://book.douban.com/subject/4835756/', '978-7-89486-478-9', 'TP311.138SQ 303', 'http://img3.douban.com/mpic/s6161827.jpg', null);
INSERT INTO `gw_book` VALUES ('139', 'PHP开发典型模块大全', '邹天思', ' 人民邮电 ', 'http://book.douban.com/subject/4835721/', '978-7-89479-997-5', 'TP312PH 129', 'http://img3.douban.com/mpic/s4399181.jpg', null);
INSERT INTO `gw_book` VALUES ('140', 'MFC 编程技巧与范例详解', '曾凡锋', '清华大学出版社 ', 'http://book.douban.com/subject/3264493/', '978-7-89474-172-1', 'TP312C 792', 'http://img3.douban.com/mpic/s5952165.jpg', null);
INSERT INTO `gw_book` VALUES ('141', 'PHP+MySQL经典案例剖析', '陈军', ' 人民邮电 ', 'http://book.douban.com/subject/2338470/', '978-7-89486-695-0', 'TP312PH 84', 'http://img3.douban.com/mpic/s5772862.jpg', null);
INSERT INTO `gw_book` VALUES ('142', '通信原理', '钟晓玲', '国防工业出版社 ', 'http://book.douban.com/subject/1933520/', '7-118-00348-4', 'TN911 67-3', 'http://img4.douban.com/mpic/s24223188.jpg', null);
INSERT INTO `gw_book` VALUES ('143', 'Java开发技术大全', '刘新', '清华大学出版社 ', 'http://book.douban.com/subject/3507767/', '978-7-89474-346-6', 'TP312JA 1142', 'http://img3.douban.com/mpic/s5992012.jpg', null);
INSERT INTO `gw_book` VALUES ('144', 'jQuery JavaScript与CSS开发入门经典', '约克', null, 'http://book.douban.com/subject/5330278/', '978-7-302-23303-9', 'TP312JA 1399', 'http://img3.douban.com/mpic/s6235221.jpg', null);
INSERT INTO `gw_book` VALUES ('145', 'MySQL必知必会', '福塔', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3354490/', '978-7-115-19112-0', 'TP311.138SQ 392', 'http://img3.douban.com/mpic/s5968156.jpg', null);
INSERT INTO `gw_book` VALUES ('146', '游戏编程All in One', '苏译,', '重庆大学出版社 ', 'http://book.douban.com/subject/1706699/', '7-900676-26-0', 'TP311.5 268', 'http://img3.douban.com/mpic/s5646486.jpg', null);
INSERT INTO `gw_book` VALUES ('147', '精通SQL Server 2008', '李', null, 'http://book.douban.com/subject/4908226/', '978-7-302-22640-6', 'TP311.138SQ 472', 'http://img3.douban.com/mpic/s6191577.jpg', null);
INSERT INTO `gw_book` VALUES ('148', 'SQL Server 2008中文版从入门到精通', '崔群法', null, 'http://book.douban.com/subject/3578160/', '978-7-121-08225-2', 'TP311.138SQ 407', 'http://img4.douban.com/mpic/s9350548.jpg', null);
INSERT INTO `gw_book` VALUES ('149', 'PHP内容管理系统', '陈红飞', null, 'http://book.douban.com/subject/3339178/', '978-7-121-07658-9', 'TP312PH 110', 'http://img3.douban.com/mpic/s3407744.jpg', null);
INSERT INTO `gw_book` VALUES ('150', '游戏编程数学和物理基础', '斯塔勒', ' 清华大学 ', 'http://book.douban.com/subject/2111771/', '978-7-89482-420-2', 'TP301.6 109', 'http://img3.douban.com/mpic/s5819437.jpg', null);
INSERT INTO `gw_book` VALUES ('151', 'Android编程典型实例与项目开发', '吴亚峰', null, 'http://book.douban.com/subject/6863195/', '978-7-121-14496-7', 'TN929.53 176', 'http://img3.douban.com/mpic/s8477782.jpg', null);
INSERT INTO `gw_book` VALUES ('152', 'Google Android SDK开发实战演练', '何孟翰', '王世江 ', 'http://book.douban.com/subject/10517158/', '978-7-115-27334-5', 'TN929.53 246', 'http://img3.douban.com/mpic/s8883467.jpg', null);
INSERT INTO `gw_book` VALUES ('153', 'jQuery Mobile快速入门', '布劳利克', '人民邮电 ', 'http://book.douban.com/subject/10593496/', '978-7-115-27718-3', 'TN929.53 242', 'http://img3.douban.com/mpic/s10345963.jpg', null);
INSERT INTO `gw_book` VALUES ('154', '中国哲学概论', '李景林', '北京大学出版社 ', 'http://book.douban.com/subject/1621683/', '7-301-08210-X', 'B2 94', 'http://img3.douban.com/mpic/s5679724.jpg', null);
INSERT INTO `gw_book` VALUES ('155', '犀利开发', '朱印宏', '清华大学出版社 ', 'http://book.douban.com/subject/5063431/', '978-7-89444-068-6', 'TP312JA 1366', 'http://img3.douban.com/mpic/s6229096.jpg', null);
INSERT INTO `gw_book` VALUES ('156', 'Android应用开发范例精解', '高彩丽', null, 'http://book.douban.com/subject/10534310/', '978-7-302-27600-5', 'TN929.53 204', 'http://img3.douban.com/mpic/s10346732.jpg', null);
INSERT INTO `gw_book` VALUES ('157', '中国文学史', '郑振铎,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'K825.6 12', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('158', '资治通鉴', '司马光', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'K204.3 5', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('159', '左传', '左丘明', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'K225.04 3', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('160', '清稗类钞', '徐珂', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'K295.8 9/V.161', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('161', '历代小说选', '吴组缃', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'I242 3/V.1-1', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('162', 'Effective C++', '迈耶斯', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'TN911&middot;V1', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('163', '清史资料', '中国社会科学院历史研究所清史研究室', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'K249.7 2/V.2', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('164', '算法', '塞奇威克,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'TP312 289', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('165', '了不起的盖茨比', '菲茨杰拉尔德', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'H319.4 414', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('166', '一九八四', '奥威尔', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'I247.7 191/1984', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('167', '堂吉诃德', '塞万提斯,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'I551.4 1-2/V.1', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('168', 'C++程序设计', '谭浩强,', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139336/', '', 'TP312C++ 1', 'http://img3.douban.com/mpic/s1106934.jpg', null);
INSERT INTO `gw_book` VALUES ('169', '数据结构与算法', '普赖斯', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139426/', '7-313-00101-0', 'TP312C 12', 'http://img3.douban.com/mpic/s1106991.jpg', null);
INSERT INTO `gw_book` VALUES ('170', 'PHP开发典型模块大全', '潘凯华', ' 人民邮电 ', 'http://book.douban.com/subject/4835721/', '978-7-89479-997-5', 'TP312PH 129', 'http://img3.douban.com/mpic/s4399181.jpg', null);
INSERT INTO `gw_book` VALUES ('171', 'Struts 2技术详解', '闫术卓', null, 'http://book.douban.com/subject/5353188/', '978-7-89485-749-1', 'TP311.56 734', 'http://img3.douban.com/mpic/s6245894.jpg', null);
INSERT INTO `gw_book` VALUES ('172', '精通Java EE', '叶健毅', null, 'http://book.douban.com/subject/3352876/', '978-7-89488-867-9', 'TP312JA 980', 'http://img3.douban.com/mpic/s10403223.jpg', null);
INSERT INTO `gw_book` VALUES ('173', 'JSP项目开发全程实录', '周桓', '清华大学出版社 ', 'http://book.douban.com/subject/5398924/', '978-7-89486-924-1', 'TP312JA 1009', 'http://img3.douban.com/mpic/s6261397.jpg', null);
INSERT INTO `gw_book` VALUES ('174', 'JSP数据库系统开发案例精选', '王国辉', '人民邮电出版社 ', 'http://book.douban.com/subject/1801278/', '7-89488-078-7', 'TP393.092 1198', 'http://img3.douban.com/mpic/s24436676.jpg', null);
INSERT INTO `gw_book` VALUES ('175', '基于Eclipse环境的企业应用开发', '万辉', null, 'http://book.douban.com/subject/3248818/', '978-7-302-18417-1', 'TP311.56 732', 'http://img3.douban.com/mpic/s5944011.jpg', null);
INSERT INTO `gw_book` VALUES ('176', 'Adobe Premier 5.x实例教程', '胡晓冰', '清华大学出版社 ', 'http://book.douban.com/subject/1250410/', '7-302-04184-9', 'TP391.41 382', 'http://img3.douban.com/mpic/s25026597.jpg', null);
INSERT INTO `gw_book` VALUES ('177', 'Photoshop CS2中文版四库全书', '雷波', '电子工业 ', 'http://book.douban.com/subject/2115854/', '978-7-89485-218-2', 'TP391.41 3465', 'http://img5.douban.com/mpic/s10117779.jpg', null);
INSERT INTO `gw_book` VALUES ('178', '围城内外', '熊哲宏', '世界知识出版社 ', 'http://book.douban.com/subject/3723130/', '7-5012-0403-9', 'I207.352 4', 'http://img4.douban.com/mpic/s7060138.jpg', null);
INSERT INTO `gw_book` VALUES ('179', 'CSS实战手册', '麦克法兰', ' 电子工业出版社 ', 'http://book.douban.com/subject/2208550/', '978-7-121-04647-6', 'TP393.092 1831', 'http://img3.douban.com/mpic/s2715766.jpg', null);
INSERT INTO `gw_book` VALUES ('180', '美工神话CSS网站布局与美化', '聂小燕', '人民邮电出版社 ', 'http://book.douban.com/subject/2193691/', '978-7-115-16272-4', 'TP393.092 1751', 'http://img3.douban.com/mpic/s9158871.jpg', null);
INSERT INTO `gw_book` VALUES ('181', 'CSS入门经典', '约克', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2022572/', '978-7-115-15750-8', 'TP393.092 1634', 'http://img3.douban.com/mpic/s5816254.jpg', null);
INSERT INTO `gw_book` VALUES ('182', 'Java开发之道', '张振坤', ' 电子工业出版社 ', 'http://book.douban.com/subject/4888652/', '978-7-89464-820-4', 'TP312JA 1447', 'http://img3.douban.com/mpic/s4393493.jpg', null);
INSERT INTO `gw_book` VALUES ('183', '设计基础指南', '克劳斯', ' 上海人民美术出版社 ', 'http://book.douban.com/subject/2977179/', '978-7-5322-5230-5', 'J506 55', 'http://img3.douban.com/mpic/s24455767.jpg', null);
INSERT INTO `gw_book` VALUES ('184', '平面设计师创意指南', '奥达赫,', ' 上海人民美术出版社 ', 'http://book.douban.com/subject/1491818/', '7-5322-4678-7', 'J524 51', 'http://img3.douban.com/mpic/s9101107.jpg', null);
INSERT INTO `gw_book` VALUES ('185', '超越LOGO设计', '艾雷', '人民邮电出版社 ', 'http://book.douban.com/subject/5341100/', '978-7-115-23705-7', 'J506 77', 'http://img3.douban.com/mpic/s4527663.jpg', null);
INSERT INTO `gw_book` VALUES ('186', '刘心武揭秘红楼梦', '刘心武,', '东方出版社 ', 'http://book.douban.com/subject/1418173/', '7-5060-1841-1', 'I207.411 56', 'http://img3.douban.com/mpic/s1430805.jpg', null);
INSERT INTO `gw_book` VALUES ('187', '汇编语言', '王爽', '清华大学出版社 ', 'http://book.douban.com/subject/3037562/', '7-81043-043-2', 'TP313 50', 'http://img3.douban.com/mpic/s3094691.jpg', null);
INSERT INTO `gw_book` VALUES ('188', '爱上单片机', '杜洋', null, 'http://book.douban.com/subject/4772521/', '978-7-89479-913-5', 'TP368.1 762', 'http://img4.douban.com/mpic/s6151658.jpg', null);
INSERT INTO `gw_book` VALUES ('189', '明清词研究史', '陈水云,', '武汉大学出版社 ', 'http://book.douban.com/subject/1974067/', '7-307-05113-3', 'I207.23 82', 'http://img4.douban.com/mpic/s5788968.jpg', null);
INSERT INTO `gw_book` VALUES ('190', 'Michael Jackson :', 'Taraborrelli, J. Randy.', ' 中国对外翻译出版公司 ', 'http://book.douban.com/subject/4167565/', '978-7-5001-2477-1', 'K837.125.76=6 2', 'http://img3.douban.com/mpic/s4049593.jpg', null);
INSERT INTO `gw_book` VALUES ('191', '从零开始', '孙海侠', '清华大学 ', 'http://book.douban.com/subject/1446895/', '7-5431-0000-2', 'K825.4 23', 'http://img3.douban.com/mpic/s5667127.jpg', null);
INSERT INTO `gw_book` VALUES ('192', '辛德勒名单', '基尼利', ' 上海译文出版社 ', 'http://book.douban.com/subject/3633809/', '978-7-5327-4719-1', 'I611.5 3-2', 'http://img3.douban.com/mpic/s3694297.jpg', null);
INSERT INTO `gw_book` VALUES ('193', '李煜', '檀作文,', '岳麓书社 ', 'http://book.douban.com/subject/1704176/', '7-80665-603-0', 'I222.8 18', 'http://img3.douban.com/mpic/s26038276.jpg', null);
INSERT INTO `gw_book` VALUES ('194', '纳兰词典评', '苏樱,', '陕西师范大学出版社 ', 'http://book.douban.com/subject/3073062/', '978-7-5613-4130-8', 'I207.23 125', 'http://img3.douban.com/mpic/s3101430.jpg', null);
INSERT INTO `gw_book` VALUES ('195', '爱上咖啡', '林莹', ' 中央编译 ', 'http://book.douban.com/subject/4155864/', '978-7-5117-0024-7', 'TS273 8', 'http://img5.douban.com/mpic/s4477889.jpg', null);
INSERT INTO `gw_book` VALUES ('196', '网页设计与制作教程', '熊前兴', '机械工业出版社 ', 'http://book.douban.com/subject/1124733/', '7-111-08832-8', 'TP393.092 332', 'http://img3.douban.com/mpic/s10049015.jpg', null);
INSERT INTO `gw_book` VALUES ('197', 'C++类和数据结构', '蔡尔兹', '张杰良 ', 'http://book.douban.com/subject/3527751/', '978-7-302-19179-7', 'TP312C++ 976', 'http://img4.douban.com/mpic/s5979478.jpg', null);
INSERT INTO `gw_book` VALUES ('198', '敬畏历史', '虞云国,', '复旦大学出版社 ', 'http://book.douban.com/subject/6265783/', '978-7-309-08088-9', 'I267.1 1157', 'http://img3.douban.com/mpic/s8840856.jpg', null);
INSERT INTO `gw_book` VALUES ('199', '古文观止鉴赏辞典', '傅德岷', null, 'http://book.douban.com/subject/3180913/', '978-7-80708-449-5', 'I207.62 28', 'http://img5.douban.com/mpic/s5925159.jpg', null);
INSERT INTO `gw_book` VALUES ('200', 'PHP网络开发实用工程案例', '叶子青', null, 'http://book.douban.com/subject/3062538/', '978-7-89479-041-5', 'TP312PH 97', 'http://img4.douban.com/mpic/s5892888.jpg', null);
INSERT INTO `gw_book` VALUES ('201', '蕙风词话', '况周颐', '人民文學出版社 ', 'http://book.douban.com/subject/1028577/', '7-02-002665-6', 'I207.23 67', 'http://img3.douban.com/mpic/s1192382.jpg', null);
INSERT INTO `gw_book` VALUES ('202', 'Visual C++ 6.0入门与提高', '徐晓刚', '清华大学出版社 ', 'http://book.douban.com/subject/1033784/', '7-302-03508-3', 'TP312C++ 184', 'http://img3.douban.com/mpic/s1075625.jpg', null);
INSERT INTO `gw_book` VALUES ('203', '图解天文学', '宣焕灿', '南京大学 ', 'http://book.douban.com/subject/4703844/', '978-7-305-06722-8', 'P1 15', 'http://img3.douban.com/mpic/s4398655.jpg', null);
INSERT INTO `gw_book` VALUES ('204', '从哈勃看宇宙', '彼特森,', ' 海南出版社 ', 'http://book.douban.com/subject/1082579/', '7-5443-0710-7', 'P159-49 8', 'http://img4.douban.com/mpic/s9852678.jpg', null);
INSERT INTO `gw_book` VALUES ('205', 'PHP+MySQL完全学习手册', '黄桂金', null, 'http://book.douban.com/subject/3076825/', '978-7-89486-838-1', 'TP312PH 88', 'http://img3.douban.com/mpic/s3215554.jpg', null);
INSERT INTO `gw_book` VALUES ('206', 'JavaScript完全自学手册', '胡添', '北京科海电子出版社 ', 'http://book.douban.com/subject/4748826/', '978-7-89482-800-2', 'TP312JA-62 12', 'http://img3.douban.com/mpic/s6157073.jpg', null);
INSERT INTO `gw_book` VALUES ('207', 'MFC程序开发参考大全', '宋坤', '人民邮电 ', 'http://book.douban.com/subject/2246582/', '978-7-89488-648-4', 'TP312C 699', 'http://img3.douban.com/mpic/s9029864.jpg', null);
INSERT INTO `gw_book` VALUES ('208', 'C# 3.0学习指南', '利伯蒂', '张晨 ', 'http://book.douban.com/subject/4199511/', '978-7-115-21619-9', 'TP312C# 336', 'http://img3.douban.com/mpic/s4687293.jpg', null);
INSERT INTO `gw_book` VALUES ('209', 'Visual C++实效编程百例', '肖宏伟', '人民邮电出版社 ', 'http://book.douban.com/subject/1175855/', '7-89497-423-4', 'TP312C++ 322-2', 'http://img5.douban.com/mpic/s9996309.jpg', null);
INSERT INTO `gw_book` VALUES ('210', '务虚笔记', '史铁生,', '工人出版社 ', 'http://book.douban.com/subject/3803178/', '978-7-5008-4355-9', 'I247.59 164', 'http://img3.douban.com/mpic/s4600402.jpg', null);
INSERT INTO `gw_book` VALUES ('211', 'Visual C++程序设计', '徐晓梅', '科学出版社 ', 'http://book.douban.com/subject/1288706/', '7-03-004690-0', 'TP312C++ 91', 'http://img3.douban.com/mpic/s1327600.jpg', null);
INSERT INTO `gw_book` VALUES ('212', 'Visual C++程序设计与应用教程', '马石安', '清华大学出版社 ', 'http://book.douban.com/subject/2254028/', '978-7-302-15502-7', 'TP312C++ 868', 'http://img3.douban.com/mpic/s5774067.jpg', null);
INSERT INTO `gw_book` VALUES ('213', 'PHP网络编程从入门到精通', '陈营辉', null, 'http://book.douban.com/subject/11026297/', '978-7-89486-517-5', 'TP312PH 71', 'http://img3.douban.com/mpic/s11336750.jpg', null);
INSERT INTO `gw_book` VALUES ('214', '现代密码学基础', '章照止', '北京邮电大学出版社 ', 'http://book.douban.com/subject/1165391/', '7-5635-0651-9', 'TN918.1 20', 'http://img3.douban.com/mpic/s2779761.jpg', null);
INSERT INTO `gw_book` VALUES ('215', 'Visual C++面向对象编程教程', '王育坚', '清华大学出版社 ', 'http://book.douban.com/subject/1246355/', '7-302-06914-X', 'TP312C++ 475', 'http://img3.douban.com/mpic/s2398813.jpg', null);
INSERT INTO `gw_book` VALUES ('216', '精通Windows API', '范文庆', null, 'http://book.douban.com/subject/3522848/', '978-7-89479-382-9', 'TP316.7 319', 'http://img3.douban.com/mpic/s4053927.jpg', null);
INSERT INTO `gw_book` VALUES ('217', 'C++探秘', '里希纳', ' 人民邮电出版社 ', 'http://book.douban.com/subject/5402705/', '978-7-115-24227-3', 'TP312C++ 1134', 'http://img3.douban.com/mpic/s4569607.jpg', null);
INSERT INTO `gw_book` VALUES ('218', 'Visual C++网络通信开发入门与编程实践', '李媛媛', null, 'http://book.douban.com/subject/3349420/', '978-7-89464-041-3', 'TP312C++ 1006', 'http://img3.douban.com/mpic/s4130020.jpg', null);
INSERT INTO `gw_book` VALUES ('219', 'Java程序设计自学手册', '王国辉', ' 机械工业出版社 ', 'http://book.douban.com/subject/6529833/', '978-7-89488-937-9', 'TP312JA 1036', 'http://img3.douban.com/mpic/s6520557.jpg', null);
INSERT INTO `gw_book` VALUES ('220', 'Visual C++2010开发权威指南', '尹成', '人民邮电出版社 ', 'http://book.douban.com/subject/4916426/', '978-7-89443-130-1', 'TP312C++ 1102', 'http://img3.douban.com/mpic/s4421554.jpg', null);
INSERT INTO `gw_book` VALUES ('221', 'Java编程方法学', '王舜燕', ' 机械工业出版社 ', 'http://book.douban.com/subject/2130190/', '978-7-900705-13-6', 'TP312JA 1092', 'http://img3.douban.com/mpic/s2553047.jpg', null);
INSERT INTO `gw_book` VALUES ('222', 'Eclipse编程技术与实例', '叶达峰', '人民邮电出版社 ', 'http://book.douban.com/subject/1454731/', '7-89497-915-5', 'TP311.56 545', 'http://img3.douban.com/mpic/s10008294.jpg', null);
INSERT INTO `gw_book` VALUES ('223', 'PHP网络编程技术与实践', '程伟', '机械工业出版社 ', 'http://book.douban.com/subject/20370984/', '978-7-89474-062-5', 'TP312PH 85', 'http://img3.douban.com/mpic/s25137367.jpg', null);
INSERT INTO `gw_book` VALUES ('224', 'Java从入门到精通', '李钟尉', null, 'http://book.douban.com/subject/5448324/', '7-5053-3655-X', 'TP312JA 14', 'http://img4.douban.com/mpic/s25756128.jpg', null);
INSERT INTO `gw_book` VALUES ('225', 'JavaScript全程指南', '郭伟伟', ' 机械工业 ', 'http://book.douban.com/subject/2228378/', '978-7-89485-591-6', 'TP312JA 1014', 'http://img3.douban.com/mpic/s5860151.jpg', null);
INSERT INTO `gw_book` VALUES ('226', 'Java技术应用', '董云铮', null, 'http://book.douban.com/subject/3597699/', '978-7-111-26208-4', 'TP312JA 1154', 'http://img3.douban.com/mpic/s5999560.jpg', null);
INSERT INTO `gw_book` VALUES ('227', 'Java编程技术全接触', '孙一林', null, 'http://book.douban.com/subject/3108819/', '978-7-302-17585-8', 'TP312JA 1022', 'http://img3.douban.com/mpic/s5907871.jpg', null);
INSERT INTO `gw_book` VALUES ('228', '高等数学习题全解指南', '同济大学应用数学系', '高等教育出版社 ', 'http://book.douban.com/subject/2112349/', '978-7-04-020745-3', 'O13 9-117/V.1', 'http://img4.douban.com/mpic/s26014838.jpg', null);
INSERT INTO `gw_book` VALUES ('229', 'Java Swing图形界面开发与案例详解', '王鹏', null, 'http://book.douban.com/subject/3393915/', '978-7-302-18904-6', 'TP312JA 1102', 'http://img5.douban.com/mpic/s5971429.jpg', null);
INSERT INTO `gw_book` VALUES ('230', 'Visual C++权威剖析', '辛长安', null, 'http://book.douban.com/subject/3077217/', '978-7-89486-892-3', 'TP312C++ 304-2', 'http://img3.douban.com/mpic/s5898481.jpg', null);
INSERT INTO `gw_book` VALUES ('231', '21天学通JavaScript', '杨贵', null, 'http://book.douban.com/subject/3413842/', '978-7-89464-068-0', 'TP312JA 1228', 'http://img3.douban.com/mpic/s5976007.jpg', null);
INSERT INTO `gw_book` VALUES ('232', 'C++程序设计语言题解', '范德伍尔杜', ' 机械工业出版社 ', 'http://book.douban.com/subject/1231977/', '7-111-11184-2', 'TP312C++ 393-2', 'http://img3.douban.com/mpic/s1365542.jpg', null);
INSERT INTO `gw_book` VALUES ('233', 'jQuery基础教程', '查弗', ' 人民邮电出版社 ', 'http://book.douban.com/subject/3082293/', '978-7-115-18110-7', 'TP312JA 1067', 'http://img3.douban.com/mpic/s3103223.jpg', null);
INSERT INTO `gw_book` VALUES ('234', 'Visual C++高级编程', '张力,', null, 'http://book.douban.com/subject/4142501/', '7-111-06063-6', 'TP312C++ 141', 'http://img4.douban.com/mpic/s25756338.jpg', null);
INSERT INTO `gw_book` VALUES ('235', '精通JS脚本之jQuery框架', '王伟平', null, 'http://book.douban.com/subject/5996026/', '978-7-89472-398-7', 'TP312JA 1427', 'http://img3.douban.com/mpic/s6293727.jpg', null);
INSERT INTO `gw_book` VALUES ('236', 'Visual C++案例开发', '林青松', '中国水利水电出版社 ', 'http://book.douban.com/subject/1226453/', '7-5084-2498-0', 'TP312C++ 580', 'http://img3.douban.com/mpic/s9946111.jpg', null);
INSERT INTO `gw_book` VALUES ('237', 'C++高级编程', '索尔特,', ' 人民邮电出版社 ', 'http://book.douban.com/subject/1788421/', '7-5053-2228-1', 'TP312C++ 26', 'http://img3.douban.com/mpic/s4436543.jpg', null);
INSERT INTO `gw_book` VALUES ('238', '清词丛论', '叶嘉莹,', '北京大学出版社 ', 'http://book.douban.com/subject/3074778/', '978-7-301-13273-9', 'I207.23 108', 'http://img3.douban.com/mpic/s3090200.jpg', null);
INSERT INTO `gw_book` VALUES ('239', 'Visual C++ 6.0完全自学宝典', '朱洪波', null, 'http://book.douban.com/subject/3171658/', '978-7-89474-007-6', 'TP312C++ 915', 'http://img3.douban.com/mpic/s5923500.jpg', null);
INSERT INTO `gw_book` VALUES ('240', 'Visual C++ 6.0编程案例精解', '张宏军', '电子工业出版社 ', 'http://book.douban.com/subject/1225632/', '7-121-00743-6', 'TP312C++ 618', 'http://img3.douban.com/mpic/s9943934.jpg', null);
INSERT INTO `gw_book` VALUES ('241', 'Visual C++网络通信编程实用案例精选', '丁展', null, 'http://book.douban.com/subject/1244135/', '7-115-12164-8', 'TP312C++ 522', 'http://img3.douban.com/mpic/s1221121.jpg', null);
INSERT INTO `gw_book` VALUES ('242', 'Java语言程序设计', '梁,', null, 'http://book.douban.com/subject/4142611/', '7-111-05583-7', 'TP312JA-61 1', 'http://img3.douban.com/pics/book-default-medium.gif', null);
INSERT INTO `gw_book` VALUES ('243', 'PHP必须知道的300个问题', '潘凯华', null, 'http://book.douban.com/subject/10519266/', '978-7-302-27204-5', 'TP312PH-44 1', 'http://img3.douban.com/mpic/s8938095.jpg', null);
INSERT INTO `gw_book` VALUES ('244', 'Visual C++游戏开发技术与实例', '丁展', '人民邮电出版社 ', 'http://book.douban.com/subject/1226151/', '7-89497-625-3', 'TP312C++ 644', 'http://img4.douban.com/mpic/s1968288.jpg', null);
INSERT INTO `gw_book` VALUES ('245', 'C++算法', '塞奇威克,', ' 清华大学出版社 ', 'http://book.douban.com/subject/1138527/', '7-302-07251-5', 'TP312C++ 525/V.1', 'http://img3.douban.com/mpic/s5931211.jpg', null);
INSERT INTO `gw_book` VALUES ('246', 'MFC Windows应用程序设计', '任哲', '清华大学出版社 ', 'http://book.douban.com/subject/1174325/', '7-302-08544-7', 'TP312 337-2', 'http://img3.douban.com/mpic/s1300134.jpg', null);
INSERT INTO `gw_book` VALUES ('247', '谁道人间秋已尽', '王国维,', '人民文学出版社 ', 'http://book.douban.com/subject/4269108/', '978-7-02-007772-4', 'I207.23 123', 'http://img3.douban.com/mpic/s4161951.jpg', null);
INSERT INTO `gw_book` VALUES ('248', 'Gone with the wind /', 'Mitchell, Margaret,', '北京-外语教学与研究出版社 ', 'http://book.douban.com/subject/2136101/', '7-5600-0784-8', 'H319.4 413/V.1', 'http://img4.douban.com/mpic/s3633418.jpg', null);
INSERT INTO `gw_book` VALUES ('249', 'Visual C++开发经典模式与实例', '张学志', '中国铁道 ', 'http://book.douban.com/subject/3001747/', '978-7-900230-93-5', 'TP312C++ 884', 'http://img3.douban.com/mpic/s8497782.jpg', null);
INSERT INTO `gw_book` VALUES ('250', '计算机算法与实践教程', '徐保民', '北京交大 ', 'http://book.douban.com/subject/2193532/', '978-7-81123-149-6', 'TP301.6 117', 'http://img3.douban.com/mpic/s8955710.jpg', null);
INSERT INTO `gw_book` VALUES ('251', '人间最美纳兰词', '梦江南', '商务国际 ', 'http://book.douban.com/subject/6527553/', '978-7-80103-765-7', 'I207.23 164', 'http://img5.douban.com/mpic/s6849249.jpg', null);
INSERT INTO `gw_book` VALUES ('252', '精通Windows程序设计', '朱娜敏', null, 'http://book.douban.com/subject/3795792/', '978-7-89479-555-7', 'TP312C++ 955', 'http://img3.douban.com/pics/book-default-medium.gif', null);
INSERT INTO `gw_book` VALUES ('253', 'Java高级编程', '斯佩尔', ' 机械工业出版社 ', 'http://book.douban.com/subject/2130190/', '7-5053-4064-6', 'TP312JA 36', 'http://img3.douban.com/mpic/s2553047.jpg', null);
INSERT INTO `gw_book` VALUES ('254', 'HTML与CSS入门经典', '奥利弗', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2023146/', '978-7-115-15625-9', 'TP312HT 43', 'http://img5.douban.com/mpic/s4487809.jpg', null);
INSERT INTO `gw_book` VALUES ('255', '天书夜读', '谭文', null, 'http://book.douban.com/subject/3246500/', '978-7-121-07339-7', 'TP313 186', 'http://img4.douban.com/mpic/s5951018.jpg', null);
INSERT INTO `gw_book` VALUES ('256', 'PHP+MySQL专家编程', '库廖索', null, 'http://book.douban.com/subject/7564886/', '978-7-302-26963-2', 'TP312PH 156', 'http://img5.douban.com/mpic/s7656629.jpg', null);
INSERT INTO `gw_book` VALUES ('257', '精通Windows Sockets网络开发', '孙海民', '人民邮电出版社 ', 'http://book.douban.com/subject/3093896/', '978-7-115-17911-1', 'TP312C++ 922', 'http://img3.douban.com/mpic/s25504125.jpg', null);
INSERT INTO `gw_book` VALUES ('258', 'ACM程序设计竞赛基础教程', '俞经善', ' 清华大学 ', 'http://book.douban.com/subject/5339665/', '978-7-302-23492-0', 'TP311.1 143', 'http://img3.douban.com/mpic/s24557656.jpg', null);
INSERT INTO `gw_book` VALUES ('259', '百年孤独', '加西亚·马克斯', ' 中国文联出版公司 ', 'http://book.douban.com/subject/1784589/', '7-5059-2082-0', 'I775.4 4-2', 'http://img3.douban.com/mpic/s1888651.jpg', null);
INSERT INTO `gw_book` VALUES ('260', '汇编语言与计算机系统组成', '李心广', null, 'http://book.douban.com/subject/3867912/', '978-7-111-26868-0', 'TP313 187', 'http://img3.douban.com/mpic/s6046957.jpg', null);
INSERT INTO `gw_book` VALUES ('261', '文心雕龍札記', '黄侃,', '中华书局 ', 'http://book.douban.com/subject/1815511/', '7-101-04808-0', 'I206.2 170', 'http://img3.douban.com/mpic/s1682141.jpg', null);
INSERT INTO `gw_book` VALUES ('262', '去中国的小船', '村上春树,', ' 上海译文出版社 ', 'http://book.douban.com/subject/1047447/', '7-5327-2888-9', 'I313.4 247', 'http://img3.douban.com/mpic/s1621881.jpg', null);
INSERT INTO `gw_book` VALUES ('263', '思科网络实验室CCNA实验指南', '梁广民', ' 电子工业 ', 'http://book.douban.com/subject/3800185/', '978-7-121-08763-9', 'TP393-33 12', 'http://img4.douban.com/mpic/s6033408.jpg', null);
INSERT INTO `gw_book` VALUES ('264', 'Linux培训教程', '何明', '中国水利水电出版社 ', 'http://book.douban.com/subject/1241783/', '7-5084-0309-6', 'TP316.81 47', 'http://img3.douban.com/mpic/s25072067.jpg', null);
INSERT INTO `gw_book` VALUES ('265', '数据结构与面向对象程序设计', '迈因,', null, 'http://book.douban.com/subject/2171958/', '978-7-302-15264-4', 'TP311.12 189', 'http://img3.douban.com/mpic/s5833297.jpg', null);
INSERT INTO `gw_book` VALUES ('266', 'Linux 网络编程', '张斌', '清华大学出版社 ', 'http://book.douban.com/subject/1539313/', '7-302-01098-6', 'TP316.81 221', 'http://img3.douban.com/mpic/s24991195.jpg', null);
INSERT INTO `gw_book` VALUES ('267', 'PHP经典实例', '休斯,', ' 中国电力出版社 ', 'http://book.douban.com/subject/1508353/', '7-5083-1290-2', 'TP312PH 50', 'http://img4.douban.com/mpic/s9807808.jpg', null);
INSERT INTO `gw_book` VALUES ('268', 'Ubuntu Linux从入门到精通', '郝铃', null, 'http://book.douban.com/subject/4909372/', '978-7-121-11205-8', 'TP316.81 512', 'http://img4.douban.com/mpic/s4480988.jpg', null);
INSERT INTO `gw_book` VALUES ('269', 'ACM程序设计', '曾棕根', '中国铁道 ', 'http://book.douban.com/subject/2314690/', '978-7-113-07651-1', 'TP311 69', 'http://img4.douban.com/mpic/s9219428.jpg', null);
INSERT INTO `gw_book` VALUES ('270', 'Visual C++编程篇', '<BR>', '中国铁道出版社 ', 'http://book.douban.com/subject/1011186/', '7-89496-318-6', 'TP3 434/V.7', 'http://img3.douban.com/mpic/s1062066.jpg', null);
INSERT INTO `gw_book` VALUES ('271', 'PHP5+MySQL网站开发基础与应用', '翁烨晖', null, 'http://book.douban.com/subject/3260705/', '978-7-302-18429-4', 'TP312PH 107', 'http://img5.douban.com/mpic/s5950909.jpg', null);
INSERT INTO `gw_book` VALUES ('272', 'DirectX游戏开发终极指南', '谢罗德', ' 清华大学 ', 'http://book.douban.com/subject/2111771/', '978-7-89474-069-4', 'TP311.5 355', 'http://img3.douban.com/mpic/s5819437.jpg', null);
INSERT INTO `gw_book` VALUES ('273', 'Web数据挖掘', '刘兵', '电子工业出版社 ', 'http://book.douban.com/subject/1216773/', '7-5053-9472-X', 'TP274 128', 'http://img3.douban.com/mpic/s1159015.jpg', null);
INSERT INTO `gw_book` VALUES ('274', 'PHP5应用实例详解', '王志刚', null, 'http://book.douban.com/subject/5253770/', '978-7-121-11433-5', 'TP312PH 133', 'http://img4.douban.com/mpic/s6213938.jpg', null);
INSERT INTO `gw_book` VALUES ('275', 'Essential C++中文版', 'Lippman', ' 华中科技大学出版社 ', 'http://book.douban.com/subject/1215826/', '7-5609-2511-1', 'TP312 353', 'http://img3.douban.com/mpic/s2502373.jpg', null);
INSERT INTO `gw_book` VALUES ('276', 'Linux内核完全注释', '赵炯', '机械工业出版社 ', 'http://book.douban.com/subject/1231236/', '7-111-14968-8', 'TP316.81 295', 'http://img4.douban.com/mpic/s8955528.jpg', null);
INSERT INTO `gw_book` VALUES ('277', 'Google Android SDK开发范例大全', '余志龙', '人民邮电出版社 ', 'http://book.douban.com/subject/3788013/', '978-7-89479-647-9', 'TN929.53 79', 'http://img3.douban.com/mpic/s3830632.jpg', null);
INSERT INTO `gw_book` VALUES ('278', 'Visual C++数据库编程技术与实例', '沈炜', '人民邮电出版社 ', 'http://book.douban.com/subject/1239739/', '7-89497-622-9', 'TP312C++ 590', 'http://img5.douban.com/mpic/s9943419.jpg', null);
INSERT INTO `gw_book` VALUES ('279', 'Linux内核修炼之道', '任桥伟', '人民邮电出版社 ', 'http://book.douban.com/subject/4895627/', '978-7-115-22585-6', 'TP316.89 148', 'http://img3.douban.com/mpic/s4412222.jpg', null);
INSERT INTO `gw_book` VALUES ('280', 'ACM国际大学生程序设计竞赛题解', '赵端阳', ' 电子工业 ', 'http://book.douban.com/subject/5063220/', '978-7-121-11171-6', 'TP311.1 133/V.2', 'http://img3.douban.com/mpic/s6209596.jpg', null);
INSERT INTO `gw_book` VALUES ('281', 'C++ Templates中文版', '范德沃尔德', ' 人民邮电出版社 ', 'http://book.douban.com/subject/1144020/', '7-115-11809-4', 'TP312C++ 490', 'http://img3.douban.com/mpic/s9853542.jpg', null);
INSERT INTO `gw_book` VALUES ('282', 'Visual C++数据库系统开发完全手册', '王瑞', '人民邮电出版社 ', 'http://book.douban.com/subject/1801296/', '7-89488-031-0', 'TP312C++-62 3', 'http://img3.douban.com/mpic/s24605540.jpg', null);
INSERT INTO `gw_book` VALUES ('283', 'Android内核剖析', '柯元旦,', '电子工业 ', 'http://book.douban.com/subject/6811238/', '978-7-121-14398-4', 'TN929.53 149', 'http://img3.douban.com/mpic/s6937206.jpg', null);
INSERT INTO `gw_book` VALUES ('284', 'Linux Shell脚本攻略', '拉克什曼', ' 人民邮电 ', 'http://book.douban.com/subject/6889456/', '978-7-115-26472-5', 'TP316.81 552', 'http://img3.douban.com/mpic/s22702207.jpg', null);
INSERT INTO `gw_book` VALUES ('285', '开发自己的搜索引擎', '邱哲', '人民邮电出版社 ', 'http://book.douban.com/subject/1988137/', '978-7-115-13837-8', 'TP393.09 223', 'http://img5.douban.com/mpic/s10383849.jpg', null);
INSERT INTO `gw_book` VALUES ('286', 'Android底层接口与驱动开发技术详解', '陈强', null, 'http://book.douban.com/subject/10862423/', '978-7-113-14793-8', 'TN929.53 256', 'http://img4.douban.com/mpic/s11083898.jpg', null);
INSERT INTO `gw_book` VALUES ('287', 'Photoshop设计与制作实例教程', '卢正明', ' 广西美术 ', 'http://book.douban.com/subject/3125171/', '7-900064-54-0', 'TP391.41 1051', 'http://img3.douban.com/mpic/s5912282.jpg', null);
INSERT INTO `gw_book` VALUES ('288', '算法设计与分析', '吕国英', ' 机械工业出版社 ', 'http://book.douban.com/subject/1139426/', '7-5020-0762-8', 'TP312 293', 'http://img3.douban.com/mpic/s1106991.jpg', null);
INSERT INTO `gw_book` VALUES ('289', '现代C++程序设计', '约翰斯顿', '清华大学出版社 ', 'http://book.douban.com/subject/1434840/', '7-302-10805-6', 'TP312C++ 716', 'http://img5.douban.com/mpic/s5675769.jpg', null);
INSERT INTO `gw_book` VALUES ('290', '二级C++语言程序设计考题精解与考场模拟', '廖德钦', '人民邮电出版社 ', 'http://book.douban.com/subject/1225342/', '7-89497-642-3', 'TP312C 449', 'http://img3.douban.com/mpic/s1965081.jpg', null);
INSERT INTO `gw_book` VALUES ('291', 'JavaScript开发技术大全', '梁冰', ' 电子工业出版社 ', 'http://book.douban.com/subject/10733304/', '978-7-89479-073-6', 'TP312JA 1087', 'http://img3.douban.com/mpic/s26757197.jpg', null);
INSERT INTO `gw_book` VALUES ('292', '徐志摩评传', '宋益乔', '第1版 (2005年7月1日) ', 'http://book.douban.com/subject/1487114/', '7-5087-0525-4', 'K825.6 379', 'http://img3.douban.com/mpic/s10108841.jpg', null);
INSERT INTO `gw_book` VALUES ('293', 'Photoshop艺术大师', '雷波', '中国电力出版社发行部 ', 'http://book.douban.com/subject/1837136/', '7-900201-19-X', 'TP391.41 3014/V.1', 'http://img3.douban.com/mpic/s5658953.jpg', null);
INSERT INTO `gw_book` VALUES ('294', '现代商务礼仪规范与实务', '王爱英', '北京大学出版社 ', 'http://book.douban.com/subject/3613500/', '978-7-301-14940-9', 'F718 80', 'http://img3.douban.com/mpic/s6000134.jpg', null);
INSERT INTO `gw_book` VALUES ('295', '电路与电子技术基础', '王金矿', '中山大学出版社 ', 'http://book.douban.com/subject/1583927/', '7-306-02329-2', 'TM13 165', 'http://img3.douban.com/mpic/s9914502.jpg', null);
INSERT INTO `gw_book` VALUES ('296', '吉他自学三月通', '刘传', '蓝天出版社 ', 'http://book.douban.com/subject/1091323/', '7-80158-071-0', 'J623.26 20', 'http://img3.douban.com/mpic/s1364004.jpg', null);
INSERT INTO `gw_book` VALUES ('297', 'MATLAB基础与应用', '张平', '7-81124 ', 'http://book.douban.com/subject/2174938/', '978-7-81124-112-9', 'TP312MA 123', 'http://img3.douban.com/mpic/s5833467.jpg', null);
INSERT INTO `gw_book` VALUES ('298', 'MATLAB函数速查手册', '邓薇', '人民邮电出版社 ', 'http://book.douban.com/subject/3208676/', '978-7-115-18492-4', 'TP312MA 130', 'http://img3.douban.com/mpic/s9289854.jpg', null);
INSERT INTO `gw_book` VALUES ('299', '商务礼仪', '杨亦', '中南大学出版社(中南工业大学) ', 'http://book.douban.com/subject/1640053/', '7-81020-842-X', 'F718 9', 'http://img3.douban.com/mpic/s3399317.jpg', null);
INSERT INTO `gw_book` VALUES ('300', 'MATLAB教程及实训', '曹弋', null, 'http://book.douban.com/subject/3075764/', '9787111237051', '', 'http://img3.douban.com/mpic/s5898024.jpg', null);
INSERT INTO `gw_book` VALUES ('301', 'Java项目开发与毕业设计指导', '朱福喜', null, 'http://book.douban.com/subject/3124896/', '978-7-89486-977-7', 'TP312JA 1064', 'http://img3.douban.com/mpic/s5913065.jpg', null);
INSERT INTO `gw_book` VALUES ('302', 'PHP和MySQL Web开发', '(澳) Luke Welling, Laura Thomson著', ' 机械工业出版社 ', 'http://book.douban.com/subject/1340507/', '7-89492-480-6', 'TP312PH 57', 'http://img3.douban.com/mpic/s1627655.jpg', null);
INSERT INTO `gw_book` VALUES ('303', 'HTML与CSS入门经典', '(美) Dick Oliver, Michael Morrison著', ' 人民邮电出版社 ', 'http://book.douban.com/subject/2023146/', '978-7-115-15625-9', 'TP312HT 43', 'http://img5.douban.com/mpic/s4487809.jpg', null);
INSERT INTO `gw_book` VALUES ('304', 'Java从入门到实践', '刘升华等编著', null, 'http://book.douban.com/subject/11026297/', '978-7-89474-631-3', 'TP312JA 1214', 'http://img3.douban.com/mpic/s11336750.jpg', null);
