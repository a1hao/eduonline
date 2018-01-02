/*
Navicat MySQL Data Transfer

Source Server         : neusoft
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : zhonghekechengdb

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-01-02 09:47:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_littletype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_littletype`;
CREATE TABLE `tb_littletype` (
  `ltid` int(8) NOT NULL AUTO_INCREMENT,
  `ltname` varchar(255) NOT NULL,
  `tid` int(8) NOT NULL,
  PRIMARY KEY (`ltid`),
  KEY `tid` (`tid`),
  CONSTRAINT `tid` FOREIGN KEY (`tid`) REFERENCES `tb_type` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_littletype
-- ----------------------------
INSERT INTO `tb_littletype` VALUES ('1', 'Photoshop', '1');
INSERT INTO `tb_littletype` VALUES ('2', 'After Effect', '1');
INSERT INTO `tb_littletype` VALUES ('3', 'Premiere', '1');
INSERT INTO `tb_littletype` VALUES ('4', '日语', '2');
INSERT INTO `tb_littletype` VALUES ('5', '韩语', '2');
INSERT INTO `tb_littletype` VALUES ('6', '法语', '2');
INSERT INTO `tb_littletype` VALUES ('7', '基础心里学', '3');
INSERT INTO `tb_littletype` VALUES ('8', '发展与教育心里学', '3');
INSERT INTO `tb_littletype` VALUES ('9', '应用心里学', '3');
INSERT INTO `tb_littletype` VALUES ('10', '初中数学', '4');
INSERT INTO `tb_littletype` VALUES ('11', '高中数学', '4');
INSERT INTO `tb_littletype` VALUES ('12', '高等数学', '4');
INSERT INTO `tb_littletype` VALUES ('13', '硬件设计', '7');
INSERT INTO `tb_littletype` VALUES ('14', '软件设计', '7');
INSERT INTO `tb_littletype` VALUES ('15', '初中英语', '5');
INSERT INTO `tb_littletype` VALUES ('16', '高中英语', '5');
INSERT INTO `tb_littletype` VALUES ('17', '大学英语', '5');
INSERT INTO `tb_littletype` VALUES ('18', '专业英语', '5');
INSERT INTO `tb_littletype` VALUES ('19', '初中语文', '6');
INSERT INTO `tb_littletype` VALUES ('20', '小学语文', '6');
INSERT INTO `tb_littletype` VALUES ('21', '大学语文', '6');
INSERT INTO `tb_littletype` VALUES ('22', '高中语文', '6');

-- ----------------------------
-- Table structure for `tb_pingjia`
-- ----------------------------
DROP TABLE IF EXISTS `tb_pingjia`;
CREATE TABLE `tb_pingjia` (
  `pid` int(8) NOT NULL AUTO_INCREMENT,
  `id` int(8) NOT NULL,
  `shibian` int(8) NOT NULL,
  `pingjia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pingjia
-- ----------------------------
INSERT INTO `tb_pingjia` VALUES ('1', '2', '3', '作者的观点很明确');
INSERT INTO `tb_pingjia` VALUES ('2', '1', '2', '真的真的很不错');
INSERT INTO `tb_pingjia` VALUES ('3', '2', '5', '这是个试试');
INSERT INTO `tb_pingjia` VALUES ('4', '1', '1', 'test');
INSERT INTO `tb_pingjia` VALUES ('5', '1', '1', 'test1');
INSERT INTO `tb_pingjia` VALUES ('6', '1', '1', '特色t');
INSERT INTO `tb_pingjia` VALUES ('7', '1', '7', '很不错');
INSERT INTO `tb_pingjia` VALUES ('8', '0', '27', '111');
INSERT INTO `tb_pingjia` VALUES ('9', '0', '27', 'qqq');
INSERT INTO `tb_pingjia` VALUES ('10', '0', '27', 'qwqeqweq');
INSERT INTO `tb_pingjia` VALUES ('11', '1', '26', 'wqwqe');
INSERT INTO `tb_pingjia` VALUES ('12', '0', '27', 'qweq');
INSERT INTO `tb_pingjia` VALUES ('13', '0', '26', 'qwqw');
INSERT INTO `tb_pingjia` VALUES ('14', '3', '28', '帅帅');
INSERT INTO `tb_pingjia` VALUES ('15', '1', '3', 'sffddf');
INSERT INTO `tb_pingjia` VALUES ('16', '4', '29', '很不错\r\n');
INSERT INTO `tb_pingjia` VALUES ('17', '4', '26', '阿迪斯f');
INSERT INTO `tb_pingjia` VALUES ('18', '4', '26', 'sdsf');
INSERT INTO `tb_pingjia` VALUES ('19', '4', '1', '123');
INSERT INTO `tb_pingjia` VALUES ('20', '4', '10', 'asda');
INSERT INTO `tb_pingjia` VALUES ('21', '1', '10', '啊手动阀手动阀手动阀手动阀撒旦');
INSERT INTO `tb_pingjia` VALUES ('22', '4', '3', '请问是大家是否');
INSERT INTO `tb_pingjia` VALUES ('23', '6', '1', '评论');
INSERT INTO `tb_pingjia` VALUES ('24', '1', '3', 'adads\r\n');

-- ----------------------------
-- Table structure for `tb_shiping`
-- ----------------------------
DROP TABLE IF EXISTS `tb_shiping`;
CREATE TABLE `tb_shiping` (
  `shibian` int(8) NOT NULL AUTO_INCREMENT,
  `texttitle` varchar(18) NOT NULL,
  `text` varchar(255) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `picture` varchar(25) DEFAULT NULL,
  `tid` int(8) NOT NULL,
  `ok` int(25) NOT NULL DEFAULT '0',
  `members` int(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`shibian`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shiping
-- ----------------------------
INSERT INTO `tb_shiping` VALUES ('1', 'ps入门教程', '您是否曾幻想着？将自己手机里的app设计成自己喜欢的样子？掌握此技能，加入本课程吧', '1.mp4', 'ps1.jpg', '1', '488', '1');
INSERT INTO `tb_shiping` VALUES ('2', '手机UI设计基础', '您是否曾幻想着？将自己手机里的app设计成自己喜欢的样子？掌握此技能，加入本课程吧', '1.mp4', '手机UI设计.png', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('3', 'PS入门基础-魔幻调色', '7天带领您领略PS修图的魅力，从零开始入门基础，相信学习了本课程定能燃起你学习设计的兴趣', '1.mp4', 'ps入门.png', '1', '311', '0');
INSERT INTO `tb_shiping` VALUES ('4', 'Pr从入门到精通', '磨刀不误砍工柴，这是你学习高大上的特效的基础，滴水穿石，相信你能成功', '1.mp4', 'AE特效制作.jpg', '1', '0', '0');
INSERT INTO `tb_shiping` VALUES ('5', 'AE特效制作', '你是否曾惊叹于好莱坞令人叹为观止的特效，是否想一探它是怎么诞生的？加入此课程吧', '1.mp4', 'AE特效制作.jpg', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('6', '日语五十音图入门', '喜欢动漫？喜欢日剧？苦于日语不会？加入此课程吧，此课程是你迈向日语大神之路的基础', '1.mp4', '日语五十音图入门.png', '2', '655', '1');
INSERT INTO `tb_shiping` VALUES ('7', '韩语入门教学', '喜欢动漫？喜欢日剧？苦于日语不会？加入此课程吧，此课程是你迈向日语大神之路的基础', '1.mp4', '韩语1.jpg', '2', '0', '0');
INSERT INTO `tb_shiping` VALUES ('8', '法语基础入门', '法语是世界上最美的语言，本课程带你领略到最美语言的魅力', '1.mp4', '法语零基础入门.jpg', '2', '124', '1');
INSERT INTO `tb_shiping` VALUES ('9', '从零开始学心理', '11', '1.mp4', '11.png', '3', '0', '1');
INSERT INTO `tb_shiping` VALUES ('10', '认知心理学入门', '掌握学习心理学，Day Day Up，做个学习的王者', '1.mp4', '普通心理学.jpg', '3', '0', '0');
INSERT INTO `tb_shiping` VALUES ('11', '发展与教育心理学的研究', '11', '1.mp4', '11.png', '3', '98', '1');
INSERT INTO `tb_shiping` VALUES ('12', '线性代数', '11', '1.mp4', '1111.png', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('13', '概率与概率论', '11', '1.mp4', '1111.png', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('14', '微积分', '11', '1.mp4', '1111.png', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('15', '计算机基本组成原理', '11', '1.mp4', '1111.png', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('16', '嵌入式工程开发', '11', '1.mp4', '1111.png', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('17', ' 30天突破专业英语四级', '还在为英语四级发愁？还在为临近的考试发慌？没关系，给我30天，还你一个美丽的答卷', '1.mp4', '英语四级.jpg', '5', '0', '0');
INSERT INTO `tb_shiping` VALUES ('18', '高中英语阅读理解提分攻略', '11', '1.mp4', '1111.png', '5', '0', '1');
INSERT INTO `tb_shiping` VALUES ('19', '专业六级英语听力以及写作', '11', '1.mp4', '1111.png', '5', '0', '1');
INSERT INTO `tb_shiping` VALUES ('20', '初中语文阅读提分攻略', '11', '1.mp4', '1111.png', '6', '0', '1');
INSERT INTO `tb_shiping` VALUES ('21', '小学语文满分作文攻略', '11', '1.mp4', '1111.png', '6', '0', '1');
INSERT INTO `tb_shiping` VALUES ('22', '大学语言论文写作攻略', '11', '1.mp4', '1111.png', '6', '0', '1');
INSERT INTO `tb_shiping` VALUES ('23', 'Java程序设计基础', '相当一个程序员却苦于语言学得不好，不精？\r\n                    万丈高楼平地起，打好基础是关键，加入本课程吧', '1.mp4', 'java程序设计基础.png', '7', '0', '0');
INSERT INTO `tb_shiping` VALUES ('24', '学习心理学', '掌握学习心理学，Day Day Up，做个学习的王者', '1.mp4', '学习心理学.png', '3', '0', '1');
INSERT INTO `tb_shiping` VALUES ('25', '初级日语教程', '学完了五十音图不知道接下来学习什么好？那快来初级日语学习吧，专为正在迷茫的你设计', '1.mp4', '初级日本语.jpg', '2', '0', '0');
INSERT INTO `tb_shiping` VALUES ('26', '动漫日语教程', '无', '1.mp4', '日语1.jpg', '2', '0', '1');
INSERT INTO `tb_shiping` VALUES ('27', '日语零基础入门到中级', '无', '1.mp4', '日语2.jpg', '2', '0', '1');
INSERT INTO `tb_shiping` VALUES ('28', '带你迈出法语学习第一步', '无', '1.mp4', '法语1.jpg', '2', '0', '1');
INSERT INTO `tb_shiping` VALUES ('29', '韩语TOPIK初级冲刺班', '无', '1.mp4', '韩语1.jpg', '2', '0', '1');
INSERT INTO `tb_shiping` VALUES ('30', '韩语学习就那么简单', '无', '1.mp4', '韩语2.jpg', '2', '0', '1');
INSERT INTO `tb_shiping` VALUES ('31', 'Java基础编程', 'java1.jpg', '1.mp4', 'java1.jpg', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('32', 'Java语言基础与OPP入门', '无', '1.mp4', 'java2.jpg', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('33', '计算机组成原理', '无', '1.mp4', '计算机1.jpg', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('34', '嵌入式系统开发', '无', '1.mp4', '嵌入1.jpg', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('35', 'C语言基础课程', '无', '1.mp4', 'c1.jpg', '7', '0', '1');
INSERT INTO `tb_shiping` VALUES ('36', '暗色调人像PS教程', '无', '1.mp4', 'ps1.jpg', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('37', 'pr零基础教程', '无', '1.mp4', 'pr.jpg', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('38', '室内环境人像ps调色教程', '无', '1.mp4', 'ps2.jpg', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('39', 'e3d制作时光穿梭隧道', '无', '1.mp4', 'ae1.jpg', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('40', '“终结者”制作教程', '无', '1.mp4', 'ae2.jpg', '1', '0', '1');
INSERT INTO `tb_shiping` VALUES ('41', '初中数学教程', '无', '1.MP4', '初中数学.jpg', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('42', '概率与概率论', '无', '1.mp4', '概率论.jpg', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('43', '大学数学线性代数教程', '无', '1.MP4', '线性代数.jpg', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('44', '高中数学教程', '无', '1.MP4', '高中数学.png', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('45', '大学数学微积分教程', '无', '1.MP4', '微积分.jpg', '4', '0', '1');
INSERT INTO `tb_shiping` VALUES ('46', '基础心理学教程', '11', '1.MP4', '基础心理学.jpg', '3', '0', '1');
INSERT INTO `tb_shiping` VALUES ('47', '普通心理学研究课程', '11', '1.MP4', '普通心理学.jpg', '3', '0', '1');
INSERT INTO `tb_shiping` VALUES ('48', '小学英语教程', '11', '1.MP4', '小学英语.jpg', '5', '0', '1');
INSERT INTO `tb_shiping` VALUES ('49', '初中英语教程', '11', '1.MP4', '初中英语.jpg', '5', '0', '1');
INSERT INTO `tb_shiping` VALUES ('50', 'CET-4英语四级备考教程', '11', '1.MP4', '英语四级备考.jpg', '5', '0', '1');
INSERT INTO `tb_shiping` VALUES ('51', '英语四六级语法教程', '11', '1.MP4', '英语四六级语法.jpg', '5', '0', '1');
INSERT INTO `tb_shiping` VALUES ('52', 'CET-6英语六级备考教程', '11', '1.MP4', '英语六级备考.jpg', '5', '0', '1');

-- ----------------------------
-- Table structure for `tb_shoucang`
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoucang`;
CREATE TABLE `tb_shoucang` (
  `scid` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `shibian` int(8) DEFAULT NULL,
  PRIMARY KEY (`scid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shoucang
-- ----------------------------
INSERT INTO `tb_shoucang` VALUES ('1', '2', '3');
INSERT INTO `tb_shoucang` VALUES ('15', 'admin', '27');
INSERT INTO `tb_shoucang` VALUES ('16', 'admin', '24');

-- ----------------------------
-- Table structure for `tb_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `tid` int(8) NOT NULL,
  `tname` varchar(8) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', '设计学');
INSERT INTO `tb_type` VALUES ('2', '语言学');
INSERT INTO `tb_type` VALUES ('3', '心理学');
INSERT INTO `tb_type` VALUES ('4', '数学');
INSERT INTO `tb_type` VALUES ('5', '英语');
INSERT INTO `tb_type` VALUES ('6', '语文');
INSERT INTO `tb_type` VALUES ('7', '计算机');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) NOT NULL,
  `password` varchar(18) NOT NULL,
  `ncname` varchar(18) DEFAULT NULL,
  `isvip` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin', '管理员', '是');
INSERT INTO `tb_user` VALUES ('2', '林声威', '123', '普通用户', '是');
INSERT INTO `tb_user` VALUES ('3', 'xueba', 'shuaiqi', '傻逼', null);
INSERT INTO `tb_user` VALUES ('4', 'zhangsan', '111', '张三', '是');
INSERT INTO `tb_user` VALUES ('5', '曹人', 'c123', '操', '是');
INSERT INTO `tb_user` VALUES ('6', 'test', 'test1', 'test', '是');
INSERT INTO `tb_user` VALUES ('7', 'lsw1', '123', '123', '是');
