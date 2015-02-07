/*
Navicat MySQL Data Transfer

Source Server         : 本地 MySQL
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : cateyes

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-02-07 19:49:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `adminAccount` varchar(255) NOT NULL COMMENT '管理员帐号',
  `adminPass` varchar(255) NOT NULL COMMENT '管理员密码',
  `adminName` varchar(255) NOT NULL COMMENT '管理员名',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'unicornkid', '65105854', 'KID');

-- ----------------------------
-- Table structure for cat
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `catId` varchar(255) NOT NULL COMMENT '分类编号',
  `catName` varchar(255) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('animal_a01_Cat', '猫');
INSERT INTO `cat` VALUES ('animal_a02_Dog', '狗');
INSERT INTO `cat` VALUES ('animal_a03_Rabbit', '兔');
INSERT INTO `cat` VALUES ('animal_a04_Mouse', '鼠');
INSERT INTO `cat` VALUES ('animal_a05_Lion', '狮');
INSERT INTO `cat` VALUES ('animal_a06_Tiger', '虎');
INSERT INTO `cat` VALUES ('animal_a07_Leopard', '豹');
INSERT INTO `cat` VALUES ('animal_a08_Wolf', '狼');
INSERT INTO `cat` VALUES ('animal_a09_Fox', '狐狸');
INSERT INTO `cat` VALUES ('animal_a10_Bear', '熊');
INSERT INTO `cat` VALUES ('animal_a11_Panda', '熊猫');
INSERT INTO `cat` VALUES ('animal_a12_Horse', '马');
INSERT INTO `cat` VALUES ('animal_a13_Deer', '鹿');
INSERT INTO `cat` VALUES ('animal_a14_Elephant', '象');
INSERT INTO `cat` VALUES ('animal_a15_Pig', '猪');
INSERT INTO `cat` VALUES ('animal_a16_Primate', '灵长类');
INSERT INTO `cat` VALUES ('animal_b01_Frog', '蛙');
INSERT INTO `cat` VALUES ('animal_b02_Tortoise', '龟');
INSERT INTO `cat` VALUES ('animal_b03_Chameleon', '变色龙');
INSERT INTO `cat` VALUES ('animal_c01_Birdie', '小鸟类');
INSERT INTO `cat` VALUES ('animal_c02_Eagle', '鹰');
INSERT INTO `cat` VALUES ('animal_c03_Penguin', '企鹅');
INSERT INTO `cat` VALUES ('animal_c04_Poultry', '家禽类');
INSERT INTO `cat` VALUES ('animal_d01_Fish', '鱼类');
INSERT INTO `cat` VALUES ('animal_d02_Dolphin', '海豚');
INSERT INTO `cat` VALUES ('animal_d03_Whale', '鲸');
INSERT INTO `cat` VALUES ('animal_d04_LeafySeaDragons\r\n', '叶海龙');
INSERT INTO `cat` VALUES ('animal_d05_MarineMammal', '海洋哺乳类');
INSERT INTO `cat` VALUES ('animal_d06_MarineCrustacean', '海洋甲壳类');
INSERT INTO `cat` VALUES ('animal_d07_MarineMollusc', '海洋软体类');
INSERT INTO `cat` VALUES ('animal_e01_Butterfly', '蝴蝶');

-- ----------------------------
-- Table structure for pic
-- ----------------------------
DROP TABLE IF EXISTS `pic`;
CREATE TABLE `pic` (
  `picId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `picWidth` smallint(5) unsigned DEFAULT NULL COMMENT '图片宽度',
  `picHeight` smallint(5) unsigned DEFAULT NULL COMMENT '图片高度',
  `picDesc` varchar(255) DEFAULT NULL COMMENT '图片描述',
  `picPublishDateTime` datetime DEFAULT NULL COMMENT '图片发布的日期时间',
  `catId` varchar(255) DEFAULT NULL COMMENT '分类编号',
  `picStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '图片状态\r\n1：正常\r\n2：不显示（默认）',
  PRIMARY KEY (`picId`),
  KEY `index_catId` (`catId`) USING BTREE,
  CONSTRAINT `pic_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `cat` (`catId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic
-- ----------------------------
INSERT INTO `pic` VALUES ('1', '683', '1024', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('2', '1024', '768', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('3', '1920', '1200', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('4', '1024', '692', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('5', '800', '800', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('6', '1024', '683', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('7', '500', '753', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('8', '554', '554', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('9', '1024', '768', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('10', '1024', '768', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('11', '604', '403', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('12', '697', '571', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('13', '1920', '1200', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('14', '1000', '1000', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('15', '580', '879', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('16', '600', '401', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('17', '1024', '829', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('18', '800', '640', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('19', '900', '600', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('20', '580', '385', '', '2014-03-12 16:35:56', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('21', '1024', '731', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('22', '1600', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('23', '1024', '768', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('24', '1920', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('25', '1600', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('26', '1600', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('27', '1366', '1024', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('28', '550', '369', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('29', '1920', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('30', '1920', '1440', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('31', '1024', '768', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('32', '730', '1094', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('33', '600', '758', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('34', '1600', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('35', '1920', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('36', '1680', '1260', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('37', '1600', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('38', '1920', '1200', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('39', '500', '330', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('40', '1024', '768', '', '2014-03-12 17:20:43', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('41', '650', '650', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('42', '1920', '1200', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('43', '1000', '750', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('44', '1920', '1200', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('45', '660', '574', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('46', '500', '331', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('47', '1920', '1200', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('48', '1920', '1200', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('49', '1600', '1050', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('50', '1024', '768', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('51', '640', '428', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('52', '1920', '1200', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('53', '1024', '683', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('54', '1024', '768', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('55', '800', '600', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('56', '990', '999', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('57', '1024', '1024', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('58', '1024', '777', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('59', '2560', '1600', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('60', '576', '648', '', '2014-03-12 17:31:54', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('61', '640', '424', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('62', '1024', '954', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('63', '1920', '1200', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('64', '1098', '1280', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('65', '640', '889', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('66', '1920', '1200', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('67', '720', '1152', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('68', '681', '1024', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('69', '500', '342', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('70', '1024', '1024', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('71', '700', '1003', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('72', '640', '640', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('73', '1200', '811', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('74', '500', '357', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('75', '1024', '819', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('76', '500', '333', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('77', '1920', '1440', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('78', '510', '509', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('79', '1280', '960', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('80', '1280', '800', '', '2014-03-12 17:53:24', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('81', '933', '1024', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('82', '750', '562', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('83', '640', '836', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('84', '1280', '850', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('85', '852', '1280', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('86', '440', '1900', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('87', '1280', '960', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('88', '700', '1051', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('89', '1920', '1200', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('90', '669', '1000', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('91', '1600', '1200', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('92', '1920', '1200', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('93', '1920', '1200', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('94', '1280', '1024', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('95', '800', '600', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('96', '800', '600', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('97', '440', '2200', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('98', '1248', '1038', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('99', '1600', '1200', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('100', '800', '600', '', '2014-03-12 17:54:44', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('101', '1024', '768', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('102', '417', '500', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('103', '1360', '768', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('104', '1920', '1200', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('105', '1920', '1440', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('106', '580', '580', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('107', '900', '598', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('108', '580', '580', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('109', '580', '760', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('110', '580', '810', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('111', '700', '696', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('112', '580', '773', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('113', '854', '1280', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('114', '1920', '1200', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('115', '590', '449', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('116', '1600', '1200', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('117', '900', '1200', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('118', '458', '460', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('119', '600', '847', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('120', '900', '600', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('121', '580', '385', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('122', '600', '450', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('123', '580', '773', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('124', '580', '385', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('125', '750', '1130', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('126', '426', '640', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('127', '631', '640', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('128', '800', '800', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('129', '800', '1200', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('130', '600', '399', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('131', '722', '960', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('132', '580', '506', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('133', '700', '1005', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('134', '618', '829', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('135', '1024', '1024', '', '2014-03-12 18:16:19', 'animal_a01_Cat', '1');
INSERT INTO `pic` VALUES ('136', '1920', '1080', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('137', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('138', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('139', '1024', '680', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('140', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('141', '1600', '1200', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('142', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('143', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('144', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('145', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('146', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('147', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('148', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('149', '1600', '1200', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('150', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('151', '1280', '1024', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('152', '800', '600', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('153', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('154', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('155', '1024', '768', '', '2014-03-12 18:19:04', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('156', '1024', '768', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('157', '1024', '768', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('158', '1600', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('159', '1024', '768', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('160', '1173', '1038', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('161', '1024', '766', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('162', '1024', '768', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('163', '1600', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('164', '1024', '768', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('165', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('166', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('167', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('168', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('169', '1152', '864', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('170', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('171', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('172', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('173', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('174', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('175', '1920', '1200', '', '2014-03-12 18:20:22', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('176', '800', '600', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('177', '800', '600', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('178', '900', '600', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('179', '1024', '677', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('180', '797', '599', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('181', '580', '580', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('182', '421', '468', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('183', '800', '578', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('184', '1920', '1200', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('185', '1024', '687', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('186', '960', '720', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('187', '580', '542', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('188', '1600', '1200', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('189', '800', '600', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('190', '1024', '768', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('191', '1024', '768', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('192', '1920', '1200', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('193', '600', '502', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('194', '1600', '1200', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('195', '450', '560', '', '2014-03-12 19:35:50', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('196', '407', '612', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('197', '1920', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('198', '1600', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('199', '580', '580', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('200', '640', '480', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('201', '640', '480', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('202', '1024', '768', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('203', '1600', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('204', '1280', '1387', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('205', '721', '471', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('206', '1600', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('207', '580', '873', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('208', '1680', '1050', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('209', '1920', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('210', '1920', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('211', '1600', '1200', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('212', '683', '1024', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('213', '1024', '768', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('214', '995', '1280', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('215', '612', '612', '', '2014-03-12 19:38:02', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('216', '800', '600', '', '2014-03-12 19:38:55', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('217', '1600', '1200', '', '2014-03-12 19:38:55', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('218', '1280', '960', '', '2014-03-12 19:38:55', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('219', '1051', '822', '', '2014-03-12 19:38:55', 'animal_a02_Dog', '1');
INSERT INTO `pic` VALUES ('220', '1440', '900', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('221', '1000', '953', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('222', '1024', '685', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('223', '1024', '683', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('224', '1025', '683', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('225', '1025', '683', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('226', '1024', '681', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('227', '1680', '1050', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('228', '1000', '667', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('229', '652', '512', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('230', '600', '481', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('231', '1920', '1200', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('232', '1024', '683', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('233', '1694', '1129', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('234', '1600', '1066', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('235', '1440', '900', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('236', '2048', '1536', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('237', '1440', '900', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('238', '1024', '651', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('239', '1680', '1050', '', '2014-03-12 19:40:38', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('240', '677', '1024', '', '2014-03-12 19:46:01', 'animal_a04_Mouse', '1');
INSERT INTO `pic` VALUES ('241', '940', '652', '', '2014-03-12 19:46:01', 'animal_a05_Lion', '1');
INSERT INTO `pic` VALUES ('242', '2704', '4064', '', '2014-03-12 19:46:01', 'animal_a06_Tiger', '1');
INSERT INTO `pic` VALUES ('243', '1600', '1200', '', '2014-03-12 19:46:01', 'animal_a07_Leopard', '1');
INSERT INTO `pic` VALUES ('244', '1024', '768', '', '2014-03-12 19:46:01', 'animal_a08_Wolf', '1');
INSERT INTO `pic` VALUES ('245', '1920', '1440', '', '2014-03-12 19:46:01', 'animal_a09_Fox', '1');
INSERT INTO `pic` VALUES ('246', '540', '374', '', '2014-03-12 19:46:01', 'animal_a10_Bear', '1');
INSERT INTO `pic` VALUES ('247', '768', '510', '', '2014-03-12 19:46:01', 'animal_a11_Panda', '1');
INSERT INTO `pic` VALUES ('248', '1600', '1200', '', '2014-03-12 19:46:01', 'animal_a12_Horse', '1');
INSERT INTO `pic` VALUES ('249', '634', '422', '', '2014-03-12 19:46:01', 'animal_a13_Deer', '1');
INSERT INTO `pic` VALUES ('250', '1490', '2249', '', '2014-03-12 19:46:01', 'animal_a14_Elephant', '1');
INSERT INTO `pic` VALUES ('251', '1024', '768', '', '2014-03-12 19:46:01', 'animal_a15_Pig', '1');
INSERT INTO `pic` VALUES ('252', '1600', '1200', '', '2014-03-12 19:46:01', 'animal_a16_Primate', '1');
INSERT INTO `pic` VALUES ('253', '1024', '674', '', '2014-03-12 19:46:01', 'animal_b01_Frog', '1');
INSERT INTO `pic` VALUES ('254', '2260', '1502', '', '2014-03-12 19:46:01', 'animal_b02_Tortoise', '1');
INSERT INTO `pic` VALUES ('255', '1024', '677', '', '2014-03-12 19:46:01', 'animal_b03_Chameleon', '1');
INSERT INTO `pic` VALUES ('256', '800', '595', '', '2014-03-12 19:46:01', 'animal_c01_Birdie', '1');
INSERT INTO `pic` VALUES ('257', '850', '567', '', '2014-03-12 19:46:01', 'animal_c02_Eagle', '1');
INSERT INTO `pic` VALUES ('258', '1600', '1200', '', '2014-03-12 19:46:01', 'animal_c03_Penguin', '1');
INSERT INTO `pic` VALUES ('259', '1680', '1050', '', '2014-03-12 19:46:01', 'animal_c04_Poultry', '1');
INSERT INTO `pic` VALUES ('260', '640', '474', '', '2014-03-12 19:47:08', 'animal_d01_Fish', '1');
INSERT INTO `pic` VALUES ('261', '3168', '2112', '', '2014-03-12 19:47:08', 'animal_d02_Dolphin', '1');
INSERT INTO `pic` VALUES ('262', '2950', '2094', '', '2014-03-12 19:47:08', 'animal_d03_Whale', '1');
INSERT INTO `pic` VALUES ('263', '500', '333', '', '2014-03-12 19:47:08', 'animal_d04_LeafySeaDragons\r\n', '1');
INSERT INTO `pic` VALUES ('264', '1440', '900', '', '2014-03-12 19:47:08', 'animal_d05_MarineMammal', '1');
INSERT INTO `pic` VALUES ('265', '2560', '1440', '', '2014-03-12 19:47:08', 'animal_d07_MarineMollusc', '1');
INSERT INTO `pic` VALUES ('266', '1000', '650', '', '2014-03-12 19:47:08', 'animal_e01_Butterfly', '1');
INSERT INTO `pic` VALUES ('267', '1024', '686', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('268', '1680', '1050', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('269', '1920', '1200', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('270', '640', '431', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('271', '1920', '1200', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('272', '1680', '1050', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('273', '700', '573', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('274', '1440', '900', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('275', '1680', '1050', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('276', '1440', '900', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('277', '1024', '723', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('278', '1600', '1200', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('279', '1920', '1200', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('280', '1024', '755', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('281', '1024', '818', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('282', '1680', '1050', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('283', '440', '959', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('284', '1440', '900', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('285', '1440', '900', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('286', '600', '511', '', '2014-03-12 19:48:53', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('287', '1920', '1200', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('288', '1769', '964', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('289', '1200', '800', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('290', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('291', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('292', '900', '600', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('293', '1024', '650', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('294', '500', '375', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('295', '1400', '933', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('296', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('297', '1920', '1080', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('298', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('299', '1024', '682', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('300', '1920', '1200', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('301', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('302', '1920', '1200', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('303', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('304', '412', '314', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('305', '1440', '900', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');
INSERT INTO `pic` VALUES ('306', '1024', '683', '', '2014-03-12 19:50:46', 'animal_a03_Rabbit', '1');

-- ----------------------------
-- Table structure for useract_selectcat
-- ----------------------------
DROP TABLE IF EXISTS `useract_selectcat`;
CREATE TABLE `useract_selectcat` (
  `userActId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户行为编号',
  `userIPAddress` varchar(255) DEFAULT NULL COMMENT '用户IP地址',
  `catId` varchar(255) DEFAULT NULL COMMENT '分类编号（不参照分类表）',
  `selectDateTime` datetime NOT NULL COMMENT '选择分类的时间',
  `isMore` tinyint(4) DEFAULT NULL COMMENT '是否是加载更多图片时的分类请求\r\n1：是\r\n0：不是',
  PRIMARY KEY (`userActId`)
) ENGINE=InnoDB AUTO_INCREMENT=1640 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useract_selectcat
-- ----------------------------
INSERT INTO `useract_selectcat` VALUES ('1', '127.0.0.1', 'new', '2014-03-12 16:32:46', '0');
INSERT INTO `useract_selectcat` VALUES ('2', '127.0.0.1', 'new', '2014-03-12 16:36:17', '0');
INSERT INTO `useract_selectcat` VALUES ('3', '127.0.0.1', 'new', '2014-03-12 16:36:49', '0');
INSERT INTO `useract_selectcat` VALUES ('4', '127.0.0.1', 'animal_a03_Rabbit', '2014-03-12 16:36:57', '0');
INSERT INTO `useract_selectcat` VALUES ('5', '127.0.0.1', 'new', '2014-03-12 16:47:06', '0');
INSERT INTO `useract_selectcat` VALUES ('6', '127.0.0.1', 'new', '2014-03-12 17:55:10', '0');
INSERT INTO `useract_selectcat` VALUES ('7', '127.0.0.1', 'new', '2014-03-12 17:56:16', '0');
INSERT INTO `useract_selectcat` VALUES ('8', '127.0.0.1', 'new', '2014-03-12 18:00:23', '0');
INSERT INTO `useract_selectcat` VALUES ('9', '127.0.0.1', 'new', '2014-03-12 18:00:29', '0');
INSERT INTO `useract_selectcat` VALUES ('10', '127.0.0.1', 'new', '2014-03-12 18:03:01', '0');
INSERT INTO `useract_selectcat` VALUES ('11', '127.0.0.1', 'new', '2014-03-12 18:03:07', '1');
INSERT INTO `useract_selectcat` VALUES ('12', '127.0.0.1', 'new', '2014-03-12 18:03:08', '1');
INSERT INTO `useract_selectcat` VALUES ('13', '127.0.0.1', 'new', '2014-03-12 18:03:17', '1');
INSERT INTO `useract_selectcat` VALUES ('14', '127.0.0.1', 'new', '2014-03-12 18:03:19', '1');
INSERT INTO `useract_selectcat` VALUES ('15', '127.0.0.1', 'new', '2014-03-12 18:03:20', '1');
INSERT INTO `useract_selectcat` VALUES ('16', '127.0.0.1', 'new', '2014-03-12 18:03:25', '1');
INSERT INTO `useract_selectcat` VALUES ('17', '127.0.0.1', 'new', '2014-03-12 18:03:28', '0');
INSERT INTO `useract_selectcat` VALUES ('18', '127.0.0.1', 'new', '2014-03-12 18:03:31', '1');
INSERT INTO `useract_selectcat` VALUES ('19', '127.0.0.1', 'new', '2014-03-12 18:03:32', '1');
INSERT INTO `useract_selectcat` VALUES ('20', '127.0.0.1', 'new', '2014-03-12 18:03:32', '1');
INSERT INTO `useract_selectcat` VALUES ('21', '127.0.0.1', 'new', '2014-03-12 18:03:32', '1');
INSERT INTO `useract_selectcat` VALUES ('22', '127.0.0.1', 'new', '2014-03-12 18:04:01', '0');
INSERT INTO `useract_selectcat` VALUES ('23', '127.0.0.1', 'new', '2014-03-12 18:04:04', '1');
INSERT INTO `useract_selectcat` VALUES ('24', '127.0.0.1', 'new', '2014-03-12 18:04:05', '1');
INSERT INTO `useract_selectcat` VALUES ('25', '127.0.0.1', 'new', '2014-03-12 18:04:27', '1');
INSERT INTO `useract_selectcat` VALUES ('26', '127.0.0.1', 'new', '2014-03-12 18:11:17', '0');
INSERT INTO `useract_selectcat` VALUES ('27', '127.0.0.1', 'new', '2014-03-12 18:11:18', '1');
INSERT INTO `useract_selectcat` VALUES ('28', '127.0.0.1', 'new', '2014-03-12 18:11:19', '1');
INSERT INTO `useract_selectcat` VALUES ('29', '127.0.0.1', 'new', '2014-03-12 18:11:19', '1');
INSERT INTO `useract_selectcat` VALUES ('30', '127.0.0.1', 'new', '2014-03-12 18:11:19', '1');
INSERT INTO `useract_selectcat` VALUES ('31', '127.0.0.1', 'new', '2014-03-12 18:11:19', '1');
INSERT INTO `useract_selectcat` VALUES ('32', '127.0.0.1', 'new', '2014-03-12 18:11:19', '1');
INSERT INTO `useract_selectcat` VALUES ('33', '127.0.0.1', 'new', '2014-03-12 18:11:20', '1');
INSERT INTO `useract_selectcat` VALUES ('34', '127.0.0.1', 'new', '2014-03-12 18:11:20', '1');
INSERT INTO `useract_selectcat` VALUES ('35', '127.0.0.1', 'new', '2014-03-12 18:11:20', '1');
INSERT INTO `useract_selectcat` VALUES ('36', '127.0.0.1', 'new', '2014-03-12 18:11:20', '1');
INSERT INTO `useract_selectcat` VALUES ('37', '127.0.0.1', 'new', '2014-03-12 18:11:20', '1');
INSERT INTO `useract_selectcat` VALUES ('38', '127.0.0.1', 'new', '2014-03-12 18:11:20', '1');
INSERT INTO `useract_selectcat` VALUES ('39', '127.0.0.1', 'new', '2014-03-12 18:11:24', '0');
INSERT INTO `useract_selectcat` VALUES ('40', '127.0.0.1', 'new', '2014-03-12 18:14:09', '0');
INSERT INTO `useract_selectcat` VALUES ('41', '127.0.0.1', 'new', '2014-03-12 18:14:26', '1');
INSERT INTO `useract_selectcat` VALUES ('42', '127.0.0.1', 'new', '2014-03-12 19:41:01', '0');
INSERT INTO `useract_selectcat` VALUES ('43', '127.0.0.1', 'new', '2014-03-12 19:41:04', '1');
INSERT INTO `useract_selectcat` VALUES ('44', '127.0.0.1', 'new', '2014-03-12 19:41:04', '0');
INSERT INTO `useract_selectcat` VALUES ('45', '127.0.0.1', 'new', '2014-03-12 19:41:06', '1');
INSERT INTO `useract_selectcat` VALUES ('46', '127.0.0.1', 'new', '2014-03-12 19:41:06', '1');
INSERT INTO `useract_selectcat` VALUES ('47', '127.0.0.1', 'new', '2014-03-12 19:41:06', '1');
INSERT INTO `useract_selectcat` VALUES ('48', '127.0.0.1', 'new', '2014-03-12 19:41:06', '1');
INSERT INTO `useract_selectcat` VALUES ('49', '127.0.0.1', 'new', '2014-03-12 19:41:06', '1');
INSERT INTO `useract_selectcat` VALUES ('50', '127.0.0.1', 'new', '2014-03-12 19:41:26', '1');
INSERT INTO `useract_selectcat` VALUES ('51', '127.0.0.1', 'new', '2014-03-12 19:41:27', '1');
INSERT INTO `useract_selectcat` VALUES ('52', '127.0.0.1', 'new', '2014-03-12 19:41:28', '1');
INSERT INTO `useract_selectcat` VALUES ('53', '127.0.0.1', 'new', '2014-03-12 19:41:28', '1');
INSERT INTO `useract_selectcat` VALUES ('54', '127.0.0.1', 'new', '2014-03-12 19:41:30', '1');
INSERT INTO `useract_selectcat` VALUES ('55', '127.0.0.1', 'new', '2014-03-12 19:50:55', '0');
INSERT INTO `useract_selectcat` VALUES ('56', '127.0.0.1', 'new', '2014-03-12 19:50:59', '1');
INSERT INTO `useract_selectcat` VALUES ('57', '127.0.0.1', 'new', '2014-03-12 19:51:00', '1');
INSERT INTO `useract_selectcat` VALUES ('58', '127.0.0.1', 'new', '2014-03-12 19:51:00', '1');
INSERT INTO `useract_selectcat` VALUES ('59', '127.0.0.1', 'new', '2014-03-12 19:51:01', '1');
INSERT INTO `useract_selectcat` VALUES ('60', '127.0.0.1', 'new', '2014-03-12 19:51:02', '1');
INSERT INTO `useract_selectcat` VALUES ('61', '127.0.0.1', 'new', '2014-03-12 19:51:02', '1');
INSERT INTO `useract_selectcat` VALUES ('62', '127.0.0.1', 'new', '2014-03-12 19:51:03', '1');
INSERT INTO `useract_selectcat` VALUES ('63', '127.0.0.1', 'new', '2014-03-12 19:51:26', '0');
INSERT INTO `useract_selectcat` VALUES ('64', '127.0.0.1', 'new', '2014-03-12 19:51:41', '1');
INSERT INTO `useract_selectcat` VALUES ('65', '127.0.0.1', 'new', '2014-03-12 19:51:41', '1');
INSERT INTO `useract_selectcat` VALUES ('66', '127.0.0.1', 'new', '2014-03-12 19:51:42', '1');
INSERT INTO `useract_selectcat` VALUES ('67', '127.0.0.1', 'new', '2014-03-12 19:51:42', '1');
INSERT INTO `useract_selectcat` VALUES ('68', '127.0.0.1', 'new', '2014-03-12 19:51:43', '1');
INSERT INTO `useract_selectcat` VALUES ('69', '127.0.0.1', 'new', '2014-03-12 19:51:44', '1');
INSERT INTO `useract_selectcat` VALUES ('70', '127.0.0.1', 'new', '2014-03-12 19:51:44', '1');
INSERT INTO `useract_selectcat` VALUES ('71', '127.0.0.1', 'new', '2014-03-12 19:51:45', '1');
INSERT INTO `useract_selectcat` VALUES ('72', '127.0.0.1', 'animal_a02_Dog', '2014-03-12 19:52:29', '0');
INSERT INTO `useract_selectcat` VALUES ('73', '127.0.0.1', 'animal_a02_Dog', '2014-03-12 19:52:39', '1');
INSERT INTO `useract_selectcat` VALUES ('74', '115.29.4.9', 'new', '2014-03-12 22:35:22', '0');
INSERT INTO `useract_selectcat` VALUES ('75', '115.29.4.9', 'new', '2014-03-12 22:35:34', '0');
INSERT INTO `useract_selectcat` VALUES ('76', '219.233.14.104', 'new', '2014-03-12 22:36:11', '0');
INSERT INTO `useract_selectcat` VALUES ('77', '219.233.14.104', 'new', '2014-03-12 22:37:53', '1');
INSERT INTO `useract_selectcat` VALUES ('78', '219.233.14.104', 'new', '2014-03-12 22:37:58', '1');
INSERT INTO `useract_selectcat` VALUES ('79', '219.233.14.104', 'new', '2014-03-12 22:37:59', '1');
INSERT INTO `useract_selectcat` VALUES ('80', '219.233.14.104', 'new', '2014-03-12 22:37:59', '1');
INSERT INTO `useract_selectcat` VALUES ('81', '219.233.14.104', 'new', '2014-03-12 22:47:59', '0');
INSERT INTO `useract_selectcat` VALUES ('82', '219.233.14.104', 'new', '2014-03-12 22:48:21', '0');
INSERT INTO `useract_selectcat` VALUES ('83', '219.233.14.104', 'new', '2014-03-12 23:05:49', '0');
INSERT INTO `useract_selectcat` VALUES ('84', '219.233.14.104', 'new', '2014-03-12 23:05:55', '1');
INSERT INTO `useract_selectcat` VALUES ('85', '219.233.14.104', 'new', '2014-03-12 23:05:56', '1');
INSERT INTO `useract_selectcat` VALUES ('86', '219.233.14.104', 'new', '2014-03-12 23:05:58', '1');
INSERT INTO `useract_selectcat` VALUES ('87', '219.233.14.104', 'new', '2014-03-13 18:45:06', '0');
INSERT INTO `useract_selectcat` VALUES ('88', '106.120.160.109', 'new', '2014-03-14 01:09:27', '0');
INSERT INTO `useract_selectcat` VALUES ('89', '101.199.108.59', 'new', '2014-03-14 01:12:56', '0');
INSERT INTO `useract_selectcat` VALUES ('90', '111.206.36.10', 'new', '2014-03-15 04:20:07', '0');
INSERT INTO `useract_selectcat` VALUES ('91', '219.233.14.104', 'new', '2014-03-15 11:29:25', '0');
INSERT INTO `useract_selectcat` VALUES ('92', '219.233.14.104', 'new', '2014-03-15 11:29:50', '1');
INSERT INTO `useract_selectcat` VALUES ('93', '219.233.14.104', 'new', '2014-03-15 11:29:54', '1');
INSERT INTO `useract_selectcat` VALUES ('94', '219.233.14.104', 'new', '2014-03-15 11:37:10', '0');
INSERT INTO `useract_selectcat` VALUES ('95', '219.233.14.104', 'new', '2014-03-15 11:37:10', '0');
INSERT INTO `useract_selectcat` VALUES ('96', '219.233.14.104', 'new', '2014-03-15 11:37:12', '1');
INSERT INTO `useract_selectcat` VALUES ('97', '219.233.14.104', 'new', '2014-03-15 11:37:13', '1');
INSERT INTO `useract_selectcat` VALUES ('98', '219.233.14.104', 'new', '2014-03-15 11:37:13', '1');
INSERT INTO `useract_selectcat` VALUES ('99', '219.233.14.104', 'new', '2014-03-15 11:37:17', '1');
INSERT INTO `useract_selectcat` VALUES ('100', '211.94.161.81', 'new', '2014-03-15 11:47:32', '0');
INSERT INTO `useract_selectcat` VALUES ('101', '98.126.145.98', 'new', '2014-03-15 12:28:48', '0');
INSERT INTO `useract_selectcat` VALUES ('102', '219.233.14.104', 'new', '2014-03-15 15:27:51', '0');
INSERT INTO `useract_selectcat` VALUES ('103', '66.249.79.253', 'new', '2014-03-16 00:19:41', '0');
INSERT INTO `useract_selectcat` VALUES ('104', '211.94.161.81', 'new', '2014-03-16 03:04:40', '0');
INSERT INTO `useract_selectcat` VALUES ('105', '123.125.71.12', 'new', '2014-03-16 08:54:20', '0');
INSERT INTO `useract_selectcat` VALUES ('106', '111.206.36.133', 'new', '2014-03-16 09:59:31', '0');
INSERT INTO `useract_selectcat` VALUES ('107', '219.233.14.104', 'new', '2014-03-16 10:54:18', '0');
INSERT INTO `useract_selectcat` VALUES ('108', '219.233.14.104', 'new', '2014-03-16 10:54:22', '0');
INSERT INTO `useract_selectcat` VALUES ('109', '220.181.51.79', 'new', '2014-03-16 13:34:35', '0');
INSERT INTO `useract_selectcat` VALUES ('110', '111.206.36.14', 'new', '2014-03-17 10:34:30', '0');
INSERT INTO `useract_selectcat` VALUES ('111', '106.120.160.109', 'new', '2014-03-17 13:08:48', '0');
INSERT INTO `useract_selectcat` VALUES ('112', '101.199.108.120', 'new', '2014-03-17 13:10:25', '0');
INSERT INTO `useract_selectcat` VALUES ('113', '101.199.108.50', 'new', '2014-03-18 15:39:30', '0');
INSERT INTO `useract_selectcat` VALUES ('114', '101.199.108.120', 'new', '2014-03-18 15:39:39', '0');
INSERT INTO `useract_selectcat` VALUES ('115', '123.125.71.76', 'new', '2014-03-19 02:16:22', '0');
INSERT INTO `useract_selectcat` VALUES ('116', '220.181.108.140', 'new', '2014-03-19 07:16:20', '0');
INSERT INTO `useract_selectcat` VALUES ('117', '123.125.71.99', 'new', '2014-03-19 09:10:35', '0');
INSERT INTO `useract_selectcat` VALUES ('118', '220.181.108.185', 'new', '2014-03-19 09:19:46', '0');
INSERT INTO `useract_selectcat` VALUES ('119', '123.125.71.89', 'new', '2014-03-19 10:13:56', '0');
INSERT INTO `useract_selectcat` VALUES ('120', '220.181.108.141', 'new', '2014-03-19 10:15:55', '0');
INSERT INTO `useract_selectcat` VALUES ('121', '123.125.71.87', 'new', '2014-03-19 12:00:12', '0');
INSERT INTO `useract_selectcat` VALUES ('122', '123.125.71.92', 'new', '2014-03-19 13:25:25', '0');
INSERT INTO `useract_selectcat` VALUES ('123', '114.61.107.135', 'new', '2014-03-19 20:24:16', '0');
INSERT INTO `useract_selectcat` VALUES ('124', '114.61.107.135', 'new', '2014-03-19 20:28:35', '0');
INSERT INTO `useract_selectcat` VALUES ('125', '14.17.34.190', 'new', '2014-03-19 20:28:41', '0');
INSERT INTO `useract_selectcat` VALUES ('126', '211.161.247.53', 'new', '2014-03-19 20:28:47', '0');
INSERT INTO `useract_selectcat` VALUES ('127', '114.61.107.135', 'new', '2014-03-19 20:40:08', '0');
INSERT INTO `useract_selectcat` VALUES ('128', '114.61.107.135', 'new', '2014-03-19 20:41:50', '0');
INSERT INTO `useract_selectcat` VALUES ('129', '114.61.107.135', 'new', '2014-03-19 20:43:28', '1');
INSERT INTO `useract_selectcat` VALUES ('130', '220.181.51.77', 'new', '2014-03-19 21:44:45', '0');
INSERT INTO `useract_selectcat` VALUES ('131', '61.135.190.102', 'new', '2014-03-20 00:08:43', '0');
INSERT INTO `useract_selectcat` VALUES ('132', '123.125.71.82', 'new', '2014-03-20 01:35:21', '0');
INSERT INTO `useract_selectcat` VALUES ('133', '123.125.71.95', 'new', '2014-03-20 07:19:56', '0');
INSERT INTO `useract_selectcat` VALUES ('134', '220.181.108.171', 'new', '2014-03-20 07:22:00', '0');
INSERT INTO `useract_selectcat` VALUES ('135', '123.125.71.100', 'new', '2014-03-20 10:16:40', '0');
INSERT INTO `useract_selectcat` VALUES ('136', '111.206.36.11', 'new', '2014-03-20 11:06:57', '0');
INSERT INTO `useract_selectcat` VALUES ('137', '123.125.71.94', 'new', '2014-03-20 17:20:38', '0');
INSERT INTO `useract_selectcat` VALUES ('138', '123.125.71.111', 'new', '2014-03-20 18:19:58', '0');
INSERT INTO `useract_selectcat` VALUES ('139', '123.125.71.114', 'new', '2014-03-20 19:16:23', '0');
INSERT INTO `useract_selectcat` VALUES ('140', '123.125.71.69', 'new', '2014-03-21 03:28:25', '0');
INSERT INTO `useract_selectcat` VALUES ('141', '220.181.108.158', 'new', '2014-03-21 03:29:19', '0');
INSERT INTO `useract_selectcat` VALUES ('142', '220.181.108.141', 'new', '2014-03-21 04:16:58', '0');
INSERT INTO `useract_selectcat` VALUES ('143', '123.125.71.70', 'new', '2014-03-21 04:17:13', '0');
INSERT INTO `useract_selectcat` VALUES ('144', '123.125.71.78', 'new', '2014-03-21 05:27:09', '0');
INSERT INTO `useract_selectcat` VALUES ('145', '220.181.108.172', 'new', '2014-03-21 05:28:10', '0');
INSERT INTO `useract_selectcat` VALUES ('146', '123.125.71.92', 'new', '2014-03-21 06:19:34', '0');
INSERT INTO `useract_selectcat` VALUES ('147', '220.181.108.167', 'new', '2014-03-21 06:28:20', '0');
INSERT INTO `useract_selectcat` VALUES ('148', '123.125.71.87', 'new', '2014-03-21 07:34:57', '0');
INSERT INTO `useract_selectcat` VALUES ('149', '220.181.108.167', 'new', '2014-03-21 07:35:57', '0');
INSERT INTO `useract_selectcat` VALUES ('150', '123.125.71.78', 'new', '2014-03-21 08:19:19', '0');
INSERT INTO `useract_selectcat` VALUES ('151', '220.181.108.172', 'new', '2014-03-21 08:21:30', '0');
INSERT INTO `useract_selectcat` VALUES ('152', '123.125.71.80', 'new', '2014-03-21 10:11:17', '0');
INSERT INTO `useract_selectcat` VALUES ('153', '220.181.108.157', 'new', '2014-03-21 10:16:53', '0');
INSERT INTO `useract_selectcat` VALUES ('154', '106.120.160.109', 'new', '2014-03-21 11:00:09', '0');
INSERT INTO `useract_selectcat` VALUES ('155', '220.181.132.196', 'new', '2014-03-21 11:01:26', '0');
INSERT INTO `useract_selectcat` VALUES ('156', '114.61.107.135', 'new', '2014-03-21 11:15:43', '0');
INSERT INTO `useract_selectcat` VALUES ('157', '114.61.107.135', 'new', '2014-03-21 11:15:54', '0');
INSERT INTO `useract_selectcat` VALUES ('158', '220.181.108.157', 'new', '2014-03-21 12:25:41', '0');
INSERT INTO `useract_selectcat` VALUES ('159', '123.125.71.80', 'new', '2014-03-21 12:27:42', '0');
INSERT INTO `useract_selectcat` VALUES ('160', '123.125.71.115', 'new', '2014-03-21 13:25:43', '0');
INSERT INTO `useract_selectcat` VALUES ('161', '220.181.108.143', 'new', '2014-03-21 13:29:47', '0');
INSERT INTO `useract_selectcat` VALUES ('162', '123.125.71.103', 'new', '2014-03-21 17:14:24', '0');
INSERT INTO `useract_selectcat` VALUES ('163', '220.181.108.147', 'new', '2014-03-21 17:16:14', '0');
INSERT INTO `useract_selectcat` VALUES ('164', '123.125.71.114', 'new', '2014-03-21 19:26:21', '0');
INSERT INTO `useract_selectcat` VALUES ('165', '220.181.108.184', 'new', '2014-03-21 19:26:58', '0');
INSERT INTO `useract_selectcat` VALUES ('166', '220.181.108.150', 'new', '2014-03-21 21:51:02', '0');
INSERT INTO `useract_selectcat` VALUES ('167', '66.249.65.215', 'new', '2014-03-22 00:19:44', '0');
INSERT INTO `useract_selectcat` VALUES ('168', '220.181.108.169', 'new', '2014-03-22 01:40:36', '0');
INSERT INTO `useract_selectcat` VALUES ('169', '123.125.71.73', 'new', '2014-03-22 01:44:00', '0');
INSERT INTO `useract_selectcat` VALUES ('170', '123.125.71.115', 'new', '2014-03-22 02:52:12', '0');
INSERT INTO `useract_selectcat` VALUES ('171', '220.181.108.161', 'new', '2014-03-22 02:52:46', '0');
INSERT INTO `useract_selectcat` VALUES ('172', '123.125.71.90', 'new', '2014-03-22 03:41:58', '0');
INSERT INTO `useract_selectcat` VALUES ('173', '220.181.108.148', 'new', '2014-03-22 03:42:45', '0');
INSERT INTO `useract_selectcat` VALUES ('174', '220.181.108.166', 'new', '2014-03-22 04:33:35', '0');
INSERT INTO `useract_selectcat` VALUES ('175', '123.125.71.95', 'new', '2014-03-22 04:35:18', '0');
INSERT INTO `useract_selectcat` VALUES ('176', '220.181.108.154', 'new', '2014-03-22 06:43:40', '0');
INSERT INTO `useract_selectcat` VALUES ('177', '123.125.71.72', 'new', '2014-03-22 06:44:19', '0');
INSERT INTO `useract_selectcat` VALUES ('178', '220.181.108.153', 'new', '2014-03-22 07:33:29', '0');
INSERT INTO `useract_selectcat` VALUES ('179', '123.125.71.90', 'new', '2014-03-22 07:36:15', '0');
INSERT INTO `useract_selectcat` VALUES ('180', '220.181.108.165', 'new', '2014-03-22 09:14:00', '0');
INSERT INTO `useract_selectcat` VALUES ('181', '123.125.71.108', 'new', '2014-03-22 09:15:19', '0');
INSERT INTO `useract_selectcat` VALUES ('182', '106.186.29.86', 'new', '2014-03-22 12:59:37', '0');
INSERT INTO `useract_selectcat` VALUES ('183', '123.125.71.100', 'new', '2014-03-22 17:17:18', '0');
INSERT INTO `useract_selectcat` VALUES ('184', '220.181.108.180', 'new', '2014-03-22 17:23:00', '0');
INSERT INTO `useract_selectcat` VALUES ('185', '123.125.71.112', 'new', '2014-03-22 19:23:56', '0');
INSERT INTO `useract_selectcat` VALUES ('186', '220.181.108.187', 'new', '2014-03-22 19:24:56', '0');
INSERT INTO `useract_selectcat` VALUES ('187', '220.181.108.172', 'new', '2014-03-22 20:36:59', '0');
INSERT INTO `useract_selectcat` VALUES ('188', '123.125.71.73', 'new', '2014-03-22 20:43:20', '0');
INSERT INTO `useract_selectcat` VALUES ('189', '220.181.108.175', 'new', '2014-03-22 22:25:22', '0');
INSERT INTO `useract_selectcat` VALUES ('190', '220.181.108.170', 'new', '2014-03-22 23:28:11', '0');
INSERT INTO `useract_selectcat` VALUES ('191', '220.181.108.149', 'new', '2014-03-23 01:48:56', '0');
INSERT INTO `useract_selectcat` VALUES ('192', '61.146.178.187', 'new', '2014-03-23 01:51:53', '0');
INSERT INTO `useract_selectcat` VALUES ('193', '123.125.71.105', 'new', '2014-03-23 01:51:58', '0');
INSERT INTO `useract_selectcat` VALUES ('194', '123.125.71.87', 'new', '2014-03-23 02:46:35', '0');
INSERT INTO `useract_selectcat` VALUES ('195', '220.181.108.176', 'new', '2014-03-23 02:49:02', '0');
INSERT INTO `useract_selectcat` VALUES ('196', '123.125.71.106', 'new', '2014-03-23 04:41:30', '0');
INSERT INTO `useract_selectcat` VALUES ('197', '220.181.108.166', 'new', '2014-03-23 04:42:09', '0');
INSERT INTO `useract_selectcat` VALUES ('198', '123.125.71.70', 'new', '2014-03-23 07:26:42', '0');
INSERT INTO `useract_selectcat` VALUES ('199', '220.181.108.160', 'new', '2014-03-23 07:28:33', '0');
INSERT INTO `useract_selectcat` VALUES ('200', '220.181.108.144', 'new', '2014-03-23 08:27:38', '0');
INSERT INTO `useract_selectcat` VALUES ('201', '123.125.71.115', 'new', '2014-03-23 08:28:42', '0');
INSERT INTO `useract_selectcat` VALUES ('202', '106.120.160.109', 'new', '2014-03-23 10:30:15', '0');
INSERT INTO `useract_selectcat` VALUES ('203', '101.199.108.50', 'new', '2014-03-23 10:30:40', '0');
INSERT INTO `useract_selectcat` VALUES ('204', '123.125.71.73', 'new', '2014-03-23 15:38:09', '0');
INSERT INTO `useract_selectcat` VALUES ('205', '220.181.108.148', 'new', '2014-03-23 15:38:56', '0');
INSERT INTO `useract_selectcat` VALUES ('206', '220.181.108.140', 'new', '2014-03-23 16:24:09', '0');
INSERT INTO `useract_selectcat` VALUES ('207', '123.125.71.105', 'new', '2014-03-23 16:24:57', '0');
INSERT INTO `useract_selectcat` VALUES ('208', '220.181.108.144', 'new', '2014-03-23 18:23:45', '0');
INSERT INTO `useract_selectcat` VALUES ('209', '123.125.71.88', 'new', '2014-03-23 18:24:08', '0');
INSERT INTO `useract_selectcat` VALUES ('210', '220.181.108.182', 'new', '2014-03-24 03:39:05', '0');
INSERT INTO `useract_selectcat` VALUES ('211', '123.125.71.114', 'new', '2014-03-24 03:42:59', '0');
INSERT INTO `useract_selectcat` VALUES ('212', '180.153.236.119', 'new', '2014-03-24 05:10:42', '0');
INSERT INTO `useract_selectcat` VALUES ('213', '114.61.110.238', 'new', '2014-03-24 06:17:21', '0');
INSERT INTO `useract_selectcat` VALUES ('214', '114.61.110.238', 'new', '2014-03-24 06:17:28', '0');
INSERT INTO `useract_selectcat` VALUES ('215', '61.55.185.116', 'new', '2014-03-24 08:21:09', '0');
INSERT INTO `useract_selectcat` VALUES ('216', '123.125.71.104', 'new', '2014-03-24 08:45:58', '0');
INSERT INTO `useract_selectcat` VALUES ('217', '220.181.108.170', 'new', '2014-03-24 08:46:39', '0');
INSERT INTO `useract_selectcat` VALUES ('218', '220.181.108.179', 'new', '2014-03-24 09:46:11', '0');
INSERT INTO `useract_selectcat` VALUES ('219', '123.125.71.71', 'new', '2014-03-24 14:27:10', '0');
INSERT INTO `useract_selectcat` VALUES ('220', '220.181.108.158', 'new', '2014-03-24 14:27:29', '0');
INSERT INTO `useract_selectcat` VALUES ('221', '220.181.108.175', 'new', '2014-03-24 15:19:30', '0');
INSERT INTO `useract_selectcat` VALUES ('222', '220.181.108.181', 'new', '2014-03-24 17:16:16', '0');
INSERT INTO `useract_selectcat` VALUES ('223', '123.125.71.117', 'new', '2014-03-24 17:22:05', '0');
INSERT INTO `useract_selectcat` VALUES ('224', '220.181.108.160', 'new', '2014-03-24 19:34:02', '0');
INSERT INTO `useract_selectcat` VALUES ('225', '66.249.64.131', 'new', '2014-03-25 00:19:47', '0');
INSERT INTO `useract_selectcat` VALUES ('226', '220.181.108.140', 'new', '2014-03-25 04:28:51', '0');
INSERT INTO `useract_selectcat` VALUES ('227', '220.181.108.173', 'new', '2014-03-25 05:34:18', '0');
INSERT INTO `useract_selectcat` VALUES ('228', '220.181.108.156', 'new', '2014-03-25 06:24:48', '0');
INSERT INTO `useract_selectcat` VALUES ('229', '123.125.71.89', 'new', '2014-03-25 06:28:35', '0');
INSERT INTO `useract_selectcat` VALUES ('230', '123.125.71.86', 'new', '2014-03-25 07:14:39', '0');
INSERT INTO `useract_selectcat` VALUES ('231', '220.181.108.183', 'new', '2014-03-25 07:16:28', '0');
INSERT INTO `useract_selectcat` VALUES ('232', '123.125.71.99', 'new', '2014-03-25 08:16:19', '0');
INSERT INTO `useract_selectcat` VALUES ('233', '220.181.108.145', 'new', '2014-03-25 08:17:13', '0');
INSERT INTO `useract_selectcat` VALUES ('234', '111.206.36.7', 'new', '2014-03-25 10:20:13', '0');
INSERT INTO `useract_selectcat` VALUES ('235', '220.181.108.152', 'new', '2014-03-25 10:22:30', '0');
INSERT INTO `useract_selectcat` VALUES ('236', '220.181.108.161', 'new', '2014-03-25 12:47:18', '0');
INSERT INTO `useract_selectcat` VALUES ('237', '220.181.108.177', 'new', '2014-03-25 14:46:27', '0');
INSERT INTO `useract_selectcat` VALUES ('238', '220.181.108.181', 'new', '2014-03-25 19:35:46', '0');
INSERT INTO `useract_selectcat` VALUES ('239', '220.181.108.182', 'new', '2014-03-25 20:37:57', '0');
INSERT INTO `useract_selectcat` VALUES ('240', '220.181.108.140', 'new', '2014-03-26 00:32:35', '0');
INSERT INTO `useract_selectcat` VALUES ('241', '220.181.108.179', 'new', '2014-03-26 01:59:53', '0');
INSERT INTO `useract_selectcat` VALUES ('242', '123.125.71.85', 'new', '2014-03-26 02:01:49', '0');
INSERT INTO `useract_selectcat` VALUES ('243', '220.181.108.177', 'new', '2014-03-26 03:26:00', '0');
INSERT INTO `useract_selectcat` VALUES ('244', '220.181.108.186', 'new', '2014-03-26 05:40:05', '0');
INSERT INTO `useract_selectcat` VALUES ('245', '101.226.167.195', 'new', '2014-03-26 06:18:22', '0');
INSERT INTO `useract_selectcat` VALUES ('246', '188.226.189.197', 'new', '2014-03-26 07:43:16', '0');
INSERT INTO `useract_selectcat` VALUES ('247', '218.207.150.62', 'new', '2014-03-26 08:06:39', '0');
INSERT INTO `useract_selectcat` VALUES ('248', '220.181.108.176', 'new', '2014-03-26 08:21:35', '0');
INSERT INTO `useract_selectcat` VALUES ('249', '95.85.23.206', 'new', '2014-03-26 09:21:18', '0');
INSERT INTO `useract_selectcat` VALUES ('250', '220.181.108.182', 'new', '2014-03-26 13:30:37', '0');
INSERT INTO `useract_selectcat` VALUES ('251', '114.61.110.238', 'new', '2014-03-26 13:56:19', '0');
INSERT INTO `useract_selectcat` VALUES ('252', '220.181.108.155', 'new', '2014-03-26 14:38:03', '0');
INSERT INTO `useract_selectcat` VALUES ('253', '220.181.108.158', 'new', '2014-03-26 20:16:38', '0');
INSERT INTO `useract_selectcat` VALUES ('254', '123.125.71.39', 'new', '2014-03-27 02:39:40', '0');
INSERT INTO `useract_selectcat` VALUES ('255', '220.181.108.142', 'new', '2014-03-27 10:42:40', '0');
INSERT INTO `useract_selectcat` VALUES ('256', '222.67.30.244', 'new', '2014-03-27 13:37:27', '0');
INSERT INTO `useract_selectcat` VALUES ('257', '222.67.30.244', 'new', '2014-03-27 13:37:52', '1');
INSERT INTO `useract_selectcat` VALUES ('258', '222.67.30.244', 'new', '2014-03-27 13:37:56', '1');
INSERT INTO `useract_selectcat` VALUES ('259', '220.181.108.177', 'new', '2014-03-27 14:43:23', '0');
INSERT INTO `useract_selectcat` VALUES ('260', '220.181.108.182', 'new', '2014-03-27 15:52:27', '0');
INSERT INTO `useract_selectcat` VALUES ('261', '220.181.108.160', 'new', '2014-03-27 22:20:39', '0');
INSERT INTO `useract_selectcat` VALUES ('262', '66.249.79.253', 'new', '2014-03-28 00:19:49', '0');
INSERT INTO `useract_selectcat` VALUES ('263', '162.210.196.130', 'new', '2014-03-28 03:19:08', '0');
INSERT INTO `useract_selectcat` VALUES ('264', '220.181.108.152', 'new', '2014-03-28 10:34:17', '0');
INSERT INTO `useract_selectcat` VALUES ('265', '220.181.108.157', 'new', '2014-03-29 06:41:43', '0');
INSERT INTO `useract_selectcat` VALUES ('266', '123.125.71.80', 'new', '2014-03-29 06:45:48', '0');
INSERT INTO `useract_selectcat` VALUES ('267', '106.120.160.109', 'new', '2014-03-29 10:19:15', '0');
INSERT INTO `useract_selectcat` VALUES ('268', '220.181.132.15', 'new', '2014-03-29 10:19:59', '0');
INSERT INTO `useract_selectcat` VALUES ('269', '220.181.108.183', 'new', '2014-03-29 10:53:18', '0');
INSERT INTO `useract_selectcat` VALUES ('270', '220.181.108.167', 'new', '2014-03-29 12:45:21', '0');
INSERT INTO `useract_selectcat` VALUES ('271', '123.125.71.71', 'new', '2014-03-29 12:46:00', '0');
INSERT INTO `useract_selectcat` VALUES ('272', '111.206.36.136', 'new', '2014-03-29 15:39:45', '0');
INSERT INTO `useract_selectcat` VALUES ('273', '188.226.129.162', 'new', '2014-03-29 17:18:16', '0');
INSERT INTO `useract_selectcat` VALUES ('274', '182.118.22.215', 'new', '2014-03-29 17:26:34', '0');
INSERT INTO `useract_selectcat` VALUES ('275', '5.10.83.62', 'new', '2014-03-29 23:21:06', '0');
INSERT INTO `useract_selectcat` VALUES ('276', '123.125.71.71', 'new', '2014-03-30 08:58:50', '0');
INSERT INTO `useract_selectcat` VALUES ('277', '220.181.108.178', 'new', '2014-03-30 08:59:53', '0');
INSERT INTO `useract_selectcat` VALUES ('278', '220.181.108.79', 'new', '2014-03-30 14:51:04', '0');
INSERT INTO `useract_selectcat` VALUES ('279', '66.249.79.253', 'new', '2014-03-31 00:19:51', '0');
INSERT INTO `useract_selectcat` VALUES ('280', '108.59.8.80', 'new', '2014-03-31 02:58:54', '0');
INSERT INTO `useract_selectcat` VALUES ('281', '106.120.160.109', 'new', '2014-03-31 08:47:04', '0');
INSERT INTO `useract_selectcat` VALUES ('282', '101.199.112.50', 'new', '2014-03-31 08:47:42', '0');
INSERT INTO `useract_selectcat` VALUES ('283', '37.9.53.109', 'new', '2014-03-31 21:20:03', '0');
INSERT INTO `useract_selectcat` VALUES ('284', '220.181.108.187', 'new', '2014-03-31 21:40:20', '0');
INSERT INTO `useract_selectcat` VALUES ('285', '222.67.30.244', 'new', '2014-03-31 23:59:40', '0');
INSERT INTO `useract_selectcat` VALUES ('286', '101.226.33.208', 'new', '2014-04-01 01:36:50', '0');
INSERT INTO `useract_selectcat` VALUES ('287', '119.147.146.189', 'new', '2014-04-01 02:48:41', '0');
INSERT INTO `useract_selectcat` VALUES ('288', '220.181.108.175', 'new', '2014-04-01 03:41:16', '0');
INSERT INTO `useract_selectcat` VALUES ('289', '123.125.71.79', 'new', '2014-04-01 03:43:33', '0');
INSERT INTO `useract_selectcat` VALUES ('290', '220.181.108.186', 'new', '2014-04-01 16:21:28', '0');
INSERT INTO `useract_selectcat` VALUES ('291', '123.125.71.109', 'new', '2014-04-01 16:21:38', '0');
INSERT INTO `useract_selectcat` VALUES ('292', '220.181.108.179', 'new', '2014-04-01 22:45:15', '0');
INSERT INTO `useract_selectcat` VALUES ('293', '220.181.108.178', 'new', '2014-04-02 01:44:41', '0');
INSERT INTO `useract_selectcat` VALUES ('294', '220.181.108.151', 'new', '2014-04-02 04:43:21', '0');
INSERT INTO `useract_selectcat` VALUES ('295', '123.125.71.101', 'new', '2014-04-02 04:44:48', '0');
INSERT INTO `useract_selectcat` VALUES ('296', '106.120.160.109', 'new', '2014-04-02 09:52:44', '0');
INSERT INTO `useract_selectcat` VALUES ('297', '101.199.108.53', 'new', '2014-04-02 09:53:32', '0');
INSERT INTO `useract_selectcat` VALUES ('298', '111.206.36.18', 'new', '2014-04-02 10:25:01', '0');
INSERT INTO `useract_selectcat` VALUES ('299', '114.61.110.178', 'new', '2014-04-02 15:33:21', '0');
INSERT INTO `useract_selectcat` VALUES ('300', '119.147.146.194', 'new', '2014-04-02 15:33:32', '0');
INSERT INTO `useract_selectcat` VALUES ('301', '119.147.146.194', 'new', '2014-04-02 15:33:34', '0');
INSERT INTO `useract_selectcat` VALUES ('302', '66.249.65.253', 'new', '2014-04-03 00:23:30', '0');
INSERT INTO `useract_selectcat` VALUES ('303', '119.147.146.193', 'new', '2014-04-03 01:07:37', '0');
INSERT INTO `useract_selectcat` VALUES ('304', '112.65.193.16', 'new', '2014-04-03 01:37:22', '0');
INSERT INTO `useract_selectcat` VALUES ('305', '101.226.168.238', 'new', '2014-04-03 03:14:57', '0');
INSERT INTO `useract_selectcat` VALUES ('306', '111.206.36.145', 'new', '2014-04-03 10:21:43', '0');
INSERT INTO `useract_selectcat` VALUES ('307', '211.94.161.81', 'new', '2014-04-03 13:22:54', '0');
INSERT INTO `useract_selectcat` VALUES ('308', '123.125.71.116', 'new', '2014-04-03 19:52:18', '0');
INSERT INTO `useract_selectcat` VALUES ('309', '220.181.108.165', 'new', '2014-04-03 19:55:54', '0');
INSERT INTO `useract_selectcat` VALUES ('310', '123.125.71.89', 'new', '2014-04-03 20:17:16', '0');
INSERT INTO `useract_selectcat` VALUES ('311', '220.181.108.156', 'new', '2014-04-03 20:17:24', '0');
INSERT INTO `useract_selectcat` VALUES ('312', '157.55.32.98', 'new', '2014-04-04 00:57:11', '0');
INSERT INTO `useract_selectcat` VALUES ('313', '123.125.71.108', 'new', '2014-04-04 03:58:38', '0');
INSERT INTO `useract_selectcat` VALUES ('314', '220.181.108.159', 'new', '2014-04-04 04:35:38', '0');
INSERT INTO `useract_selectcat` VALUES ('315', '106.120.160.109', 'new', '2014-04-04 12:08:13', '0');
INSERT INTO `useract_selectcat` VALUES ('316', '101.199.108.57', 'new', '2014-04-04 12:09:19', '0');
INSERT INTO `useract_selectcat` VALUES ('317', '220.181.108.76', 'new', '2014-04-04 15:06:15', '0');
INSERT INTO `useract_selectcat` VALUES ('318', '220.181.51.77', 'new', '2014-04-04 16:38:00', '0');
INSERT INTO `useract_selectcat` VALUES ('319', '111.206.36.147', 'new', '2014-04-04 17:31:31', '0');
INSERT INTO `useract_selectcat` VALUES ('320', '66.249.68.23', 'new', '2014-04-04 20:56:45', '0');
INSERT INTO `useract_selectcat` VALUES ('321', '180.153.206.17', 'new', '2014-04-05 02:08:27', '0');
INSERT INTO `useract_selectcat` VALUES ('322', '119.147.146.189', 'new', '2014-04-05 03:33:49', '0');
INSERT INTO `useract_selectcat` VALUES ('323', '183.60.243.191', 'new', '2014-04-05 04:53:31', '0');
INSERT INTO `useract_selectcat` VALUES ('324', '123.125.71.72', 'new', '2014-04-05 06:48:25', '0');
INSERT INTO `useract_selectcat` VALUES ('325', '220.181.108.180', 'new', '2014-04-05 06:51:43', '0');
INSERT INTO `useract_selectcat` VALUES ('326', '220.181.108.149', 'new', '2014-04-06 01:44:20', '0');
INSERT INTO `useract_selectcat` VALUES ('327', '220.181.108.140', 'new', '2014-04-06 06:45:41', '0');
INSERT INTO `useract_selectcat` VALUES ('328', '106.120.160.109', 'new', '2014-04-06 09:09:42', '0');
INSERT INTO `useract_selectcat` VALUES ('329', '220.181.132.191', 'new', '2014-04-06 09:10:04', '0');
INSERT INTO `useract_selectcat` VALUES ('330', '220.181.108.173', 'new', '2014-04-06 16:22:55', '0');
INSERT INTO `useract_selectcat` VALUES ('331', '180.153.214.188', 'new', '2014-04-07 01:13:34', '0');
INSERT INTO `useract_selectcat` VALUES ('332', '220.181.108.183', 'new', '2014-04-07 02:58:52', '0');
INSERT INTO `useract_selectcat` VALUES ('333', '220.181.108.140', 'new', '2014-04-07 11:52:07', '0');
INSERT INTO `useract_selectcat` VALUES ('334', '114.61.110.178', 'new', '2014-04-07 23:53:15', '0');
INSERT INTO `useract_selectcat` VALUES ('335', '114.61.110.178', 'new', '2014-04-07 23:53:25', '0');
INSERT INTO `useract_selectcat` VALUES ('336', '220.181.108.160', 'new', '2014-04-08 07:39:14', '0');
INSERT INTO `useract_selectcat` VALUES ('337', '106.120.160.109', 'new', '2014-04-08 11:07:01', '0');
INSERT INTO `useract_selectcat` VALUES ('338', '220.181.132.16', 'new', '2014-04-08 11:07:49', '0');
INSERT INTO `useract_selectcat` VALUES ('339', '117.21.191.233', 'new', '2014-04-08 16:29:52', '0');
INSERT INTO `useract_selectcat` VALUES ('340', '123.125.71.104', 'new', '2014-04-08 17:13:33', '0');
INSERT INTO `useract_selectcat` VALUES ('341', '220.181.108.152', 'new', '2014-04-08 17:38:45', '0');
INSERT INTO `useract_selectcat` VALUES ('342', '220.181.108.153', 'new', '2014-04-08 22:45:28', '0');
INSERT INTO `useract_selectcat` VALUES ('343', '199.192.207.146', 'new', '2014-04-08 23:55:04', '0');
INSERT INTO `useract_selectcat` VALUES ('344', '220.181.108.144', 'new', '2014-04-09 00:24:17', '0');
INSERT INTO `useract_selectcat` VALUES ('345', '119.147.146.189', 'new', '2014-04-09 03:18:44', '0');
INSERT INTO `useract_selectcat` VALUES ('346', '220.181.108.157', 'new', '2014-04-09 05:56:19', '0');
INSERT INTO `useract_selectcat` VALUES ('347', '157.56.93.95', 'new', '2014-04-09 05:58:14', '0');
INSERT INTO `useract_selectcat` VALUES ('348', '220.181.108.172', 'new', '2014-04-09 15:32:06', '0');
INSERT INTO `useract_selectcat` VALUES ('349', '123.125.71.72', 'new', '2014-04-09 15:37:02', '0');
INSERT INTO `useract_selectcat` VALUES ('350', '220.181.108.141', 'new', '2014-04-09 16:50:15', '0');
INSERT INTO `useract_selectcat` VALUES ('351', '220.181.108.179', 'new', '2014-04-09 17:40:53', '0');
INSERT INTO `useract_selectcat` VALUES ('352', '217.69.133.169', 'new', '2014-04-09 20:10:16', '0');
INSERT INTO `useract_selectcat` VALUES ('353', '111.206.36.143', 'new', '2014-04-09 23:50:02', '0');
INSERT INTO `useract_selectcat` VALUES ('354', '220.181.108.141', 'new', '2014-04-10 01:53:58', '0');
INSERT INTO `useract_selectcat` VALUES ('355', '220.181.108.176', 'new', '2014-04-10 02:49:05', '0');
INSERT INTO `useract_selectcat` VALUES ('356', '217.69.135.247', 'new', '2014-04-10 06:45:40', '0');
INSERT INTO `useract_selectcat` VALUES ('357', '106.120.160.109', 'new', '2014-04-10 07:54:31', '0');
INSERT INTO `useract_selectcat` VALUES ('358', '220.181.132.200', 'new', '2014-04-10 08:09:02', '0');
INSERT INTO `useract_selectcat` VALUES ('359', '220.181.108.167', 'new', '2014-04-10 09:36:36', '0');
INSERT INTO `useract_selectcat` VALUES ('360', '220.181.108.148', 'new', '2014-04-10 10:49:42', '0');
INSERT INTO `useract_selectcat` VALUES ('361', '220.181.125.200', 'new', '2014-04-10 13:50:34', '0');
INSERT INTO `useract_selectcat` VALUES ('362', '219.151.34.18', 'new', '2014-04-10 19:29:02', '0');
INSERT INTO `useract_selectcat` VALUES ('363', '111.206.36.146', 'new', '2014-04-10 21:29:56', '0');
INSERT INTO `useract_selectcat` VALUES ('364', '211.94.161.81', 'new', '2014-04-11 01:13:07', '0');
INSERT INTO `useract_selectcat` VALUES ('365', '123.125.71.100', 'new', '2014-04-11 04:40:17', '0');
INSERT INTO `useract_selectcat` VALUES ('366', '220.181.108.183', 'new', '2014-04-11 04:42:27', '0');
INSERT INTO `useract_selectcat` VALUES ('367', '123.125.71.114', 'new', '2014-04-11 12:44:26', '0');
INSERT INTO `useract_selectcat` VALUES ('368', '220.181.108.168', 'new', '2014-04-11 12:51:49', '0');
INSERT INTO `useract_selectcat` VALUES ('369', '220.181.108.177', 'new', '2014-04-11 16:35:10', '0');
INSERT INTO `useract_selectcat` VALUES ('370', '111.206.36.15', 'new', '2014-04-11 17:31:44', '0');
INSERT INTO `useract_selectcat` VALUES ('371', '221.7.51.158', 'new', '2014-04-11 19:50:09', '0');
INSERT INTO `useract_selectcat` VALUES ('372', '199.192.207.146', 'new', '2014-04-11 21:29:20', '0');
INSERT INTO `useract_selectcat` VALUES ('373', '123.125.71.115', 'new', '2014-04-11 22:39:30', '0');
INSERT INTO `useract_selectcat` VALUES ('374', '119.147.146.189', 'new', '2014-04-12 01:47:03', '0');
INSERT INTO `useract_selectcat` VALUES ('375', '157.55.35.75', 'new', '2014-04-12 01:50:40', '0');
INSERT INTO `useract_selectcat` VALUES ('376', '157.55.35.75', 'new', '2014-04-12 02:10:43', '0');
INSERT INTO `useract_selectcat` VALUES ('377', '101.226.168.205', 'new', '2014-04-12 04:09:06', '0');
INSERT INTO `useract_selectcat` VALUES ('378', '219.151.34.28', 'new', '2014-04-12 04:11:13', '0');
INSERT INTO `useract_selectcat` VALUES ('379', '220.181.108.182', 'new', '2014-04-12 06:33:11', '0');
INSERT INTO `useract_selectcat` VALUES ('380', '123.125.71.94', 'new', '2014-04-12 06:36:42', '0');
INSERT INTO `useract_selectcat` VALUES ('381', '220.181.108.161', 'new', '2014-04-12 08:54:04', '0');
INSERT INTO `useract_selectcat` VALUES ('382', '218.202.155.78', 'new', '2014-04-12 12:31:16', '0');
INSERT INTO `useract_selectcat` VALUES ('383', '157.55.34.100', 'new', '2014-04-12 12:59:09', '0');
INSERT INTO `useract_selectcat` VALUES ('384', '118.228.30.248', 'new', '2014-04-12 16:03:44', '0');
INSERT INTO `useract_selectcat` VALUES ('385', '220.181.108.139', 'new', '2014-04-12 16:47:03', '0');
INSERT INTO `useract_selectcat` VALUES ('386', '123.125.71.105', 'new', '2014-04-12 16:48:51', '0');
INSERT INTO `useract_selectcat` VALUES ('387', '157.56.93.73', 'new', '2014-04-13 00:37:18', '0');
INSERT INTO `useract_selectcat` VALUES ('388', '219.151.34.17', 'new', '2014-04-13 05:04:50', '0');
INSERT INTO `useract_selectcat` VALUES ('389', '123.125.71.88', 'new', '2014-04-13 08:33:53', '0');
INSERT INTO `useract_selectcat` VALUES ('390', '123.125.71.107', 'new', '2014-04-13 09:38:16', '0');
INSERT INTO `useract_selectcat` VALUES ('391', '220.181.108.175', 'new', '2014-04-13 09:39:22', '0');
INSERT INTO `useract_selectcat` VALUES ('392', '157.55.32.96', 'new', '2014-04-13 11:09:04', '0');
INSERT INTO `useract_selectcat` VALUES ('393', '123.125.71.97', 'new', '2014-04-13 11:36:48', '0');
INSERT INTO `useract_selectcat` VALUES ('394', '220.181.108.139', 'new', '2014-04-13 11:45:02', '0');
INSERT INTO `useract_selectcat` VALUES ('395', '202.101.75.53', 'new', '2014-04-13 13:19:48', '0');
INSERT INTO `useract_selectcat` VALUES ('396', '114.61.113.223', 'new', '2014-04-13 13:57:04', '0');
INSERT INTO `useract_selectcat` VALUES ('397', '123.125.71.73', 'new', '2014-04-13 16:19:36', '0');
INSERT INTO `useract_selectcat` VALUES ('398', '123.125.71.92', 'new', '2014-04-13 17:21:17', '0');
INSERT INTO `useract_selectcat` VALUES ('399', '219.151.34.17', 'new', '2014-04-13 22:28:27', '0');
INSERT INTO `useract_selectcat` VALUES ('400', '157.55.33.25', 'new', '2014-04-13 23:24:40', '0');
INSERT INTO `useract_selectcat` VALUES ('401', '60.29.111.126', 'new', '2014-04-14 07:04:12', '0');
INSERT INTO `useract_selectcat` VALUES ('402', '106.120.160.109', 'new', '2014-04-14 08:11:55', '0');
INSERT INTO `useract_selectcat` VALUES ('403', '101.199.108.57', 'new', '2014-04-14 08:13:51', '0');
INSERT INTO `useract_selectcat` VALUES ('404', '157.55.33.21', 'new', '2014-04-14 11:38:15', '0');
INSERT INTO `useract_selectcat` VALUES ('405', '66.249.74.121', 'new', '2014-04-14 13:44:02', '0');
INSERT INTO `useract_selectcat` VALUES ('406', '162.210.196.130', 'new', '2014-04-14 21:27:21', '0');
INSERT INTO `useract_selectcat` VALUES ('407', '211.94.161.81', 'new', '2014-04-14 21:43:53', '0');
INSERT INTO `useract_selectcat` VALUES ('408', '220.181.108.146', 'new', '2014-04-14 21:45:25', '0');
INSERT INTO `useract_selectcat` VALUES ('409', '123.125.71.109', 'new', '2014-04-14 21:45:58', '0');
INSERT INTO `useract_selectcat` VALUES ('410', '157.55.34.74', 'new', '2014-04-14 23:55:28', '0');
INSERT INTO `useract_selectcat` VALUES ('411', '123.125.71.106', 'new', '2014-04-15 01:48:36', '0');
INSERT INTO `useract_selectcat` VALUES ('412', '220.181.108.186', 'new', '2014-04-15 01:50:59', '0');
INSERT INTO `useract_selectcat` VALUES ('413', '119.147.146.189', 'new', '2014-04-15 04:55:41', '0');
INSERT INTO `useract_selectcat` VALUES ('414', '202.101.75.53', 'new', '2014-04-15 06:01:49', '0');
INSERT INTO `useract_selectcat` VALUES ('415', '123.125.71.117', 'new', '2014-04-15 07:37:41', '0');
INSERT INTO `useract_selectcat` VALUES ('416', '61.190.92.83', 'new', '2014-04-15 08:51:47', '0');
INSERT INTO `useract_selectcat` VALUES ('417', '157.55.34.176', 'new', '2014-04-15 11:48:55', '0');
INSERT INTO `useract_selectcat` VALUES ('418', '111.206.36.14', 'new', '2014-04-15 12:37:33', '0');
INSERT INTO `useract_selectcat` VALUES ('419', '61.190.92.83', 'new', '2014-04-15 14:20:41', '0');
INSERT INTO `useract_selectcat` VALUES ('420', '106.120.160.109', 'new', '2014-04-15 15:00:09', '0');
INSERT INTO `useract_selectcat` VALUES ('421', '123.125.71.76', 'new', '2014-04-15 19:22:22', '0');
INSERT INTO `useract_selectcat` VALUES ('422', '220.181.108.141', 'new', '2014-04-15 19:23:47', '0');
INSERT INTO `useract_selectcat` VALUES ('423', '101.199.108.53', 'new', '2014-04-15 19:33:41', '0');
INSERT INTO `useract_selectcat` VALUES ('424', '220.181.108.145', 'new', '2014-04-15 22:35:57', '0');
INSERT INTO `useract_selectcat` VALUES ('425', '220.181.51.79', 'new', '2014-04-15 22:49:29', '0');
INSERT INTO `useract_selectcat` VALUES ('426', '157.55.33.33', 'new', '2014-04-16 01:24:22', '0');
INSERT INTO `useract_selectcat` VALUES ('427', '157.56.93.72', 'new', '2014-04-16 10:39:39', '0');
INSERT INTO `useract_selectcat` VALUES ('428', '118.228.30.248', 'new', '2014-04-16 16:49:39', '0');
INSERT INTO `useract_selectcat` VALUES ('429', '114.61.113.223', 'new', '2014-04-17 00:19:14', '0');
INSERT INTO `useract_selectcat` VALUES ('430', '219.143.225.20', 'new', '2014-04-17 01:45:57', '0');
INSERT INTO `useract_selectcat` VALUES ('431', '123.125.71.73', 'new', '2014-04-17 03:48:10', '0');
INSERT INTO `useract_selectcat` VALUES ('432', '220.181.108.149', 'new', '2014-04-17 03:48:43', '0');
INSERT INTO `useract_selectcat` VALUES ('433', '220.181.108.154', 'new', '2014-04-17 04:44:10', '0');
INSERT INTO `useract_selectcat` VALUES ('434', '123.125.71.89', 'new', '2014-04-17 04:44:20', '0');
INSERT INTO `useract_selectcat` VALUES ('435', '123.125.71.108', 'new', '2014-04-17 04:55:24', '0');
INSERT INTO `useract_selectcat` VALUES ('436', '220.181.108.147', 'new', '2014-04-17 04:55:31', '0');
INSERT INTO `useract_selectcat` VALUES ('437', '66.249.68.23', 'new', '2014-04-17 05:48:13', '0');
INSERT INTO `useract_selectcat` VALUES ('438', '123.125.71.87', 'new', '2014-04-17 06:15:41', '0');
INSERT INTO `useract_selectcat` VALUES ('439', '220.181.108.170', 'new', '2014-04-17 06:16:08', '0');
INSERT INTO `useract_selectcat` VALUES ('440', '95.134.52.76', 'new', '2014-04-17 07:33:20', '0');
INSERT INTO `useract_selectcat` VALUES ('441', '114.61.113.223', 'new', '2014-04-17 11:05:12', '0');
INSERT INTO `useract_selectcat` VALUES ('442', '116.228.53.169', 'new', '2014-04-17 13:19:08', '0');
INSERT INTO `useract_selectcat` VALUES ('443', '116.228.53.169', 'new', '2014-04-17 13:19:37', '1');
INSERT INTO `useract_selectcat` VALUES ('444', '116.228.53.169', 'new', '2014-04-17 13:20:46', '1');
INSERT INTO `useract_selectcat` VALUES ('445', '116.228.53.169', 'new', '2014-04-17 13:20:48', '1');
INSERT INTO `useract_selectcat` VALUES ('446', '220.181.108.152', 'new', '2014-04-17 13:42:49', '0');
INSERT INTO `useract_selectcat` VALUES ('447', '123.125.71.77', 'new', '2014-04-17 13:44:51', '0');
INSERT INTO `useract_selectcat` VALUES ('448', '116.228.53.169', 'new', '2014-04-17 14:27:33', '0');
INSERT INTO `useract_selectcat` VALUES ('449', '116.228.53.169', 'new', '2014-04-17 14:27:40', '0');
INSERT INTO `useract_selectcat` VALUES ('450', '116.228.53.169', 'new', '2014-04-17 14:28:08', '1');
INSERT INTO `useract_selectcat` VALUES ('451', '116.228.53.169', 'new', '2014-04-17 14:28:09', '1');
INSERT INTO `useract_selectcat` VALUES ('452', '116.228.53.169', 'new', '2014-04-17 14:28:09', '1');
INSERT INTO `useract_selectcat` VALUES ('453', '116.228.53.169', 'new', '2014-04-17 14:28:09', '1');
INSERT INTO `useract_selectcat` VALUES ('454', '116.228.53.169', 'new', '2014-04-17 14:28:10', '1');
INSERT INTO `useract_selectcat` VALUES ('455', '116.228.53.169', 'new', '2014-04-17 14:28:10', '1');
INSERT INTO `useract_selectcat` VALUES ('456', '116.228.53.169', 'new', '2014-04-17 14:28:10', '1');
INSERT INTO `useract_selectcat` VALUES ('457', '116.228.53.169', 'new', '2014-04-17 14:28:10', '1');
INSERT INTO `useract_selectcat` VALUES ('458', '116.228.53.169', 'new', '2014-04-17 14:28:10', '1');
INSERT INTO `useract_selectcat` VALUES ('459', '116.228.53.169', 'new', '2014-04-17 14:28:11', '1');
INSERT INTO `useract_selectcat` VALUES ('460', '116.228.53.169', 'new', '2014-04-17 14:28:11', '1');
INSERT INTO `useract_selectcat` VALUES ('461', '116.228.53.169', 'new', '2014-04-17 14:28:11', '1');
INSERT INTO `useract_selectcat` VALUES ('462', '116.228.53.169', 'new', '2014-04-17 14:28:11', '1');
INSERT INTO `useract_selectcat` VALUES ('463', '116.228.53.169', 'new', '2014-04-17 14:28:17', '1');
INSERT INTO `useract_selectcat` VALUES ('464', '116.228.53.169', 'new', '2014-04-17 14:28:17', '1');
INSERT INTO `useract_selectcat` VALUES ('465', '116.228.53.169', 'new', '2014-04-17 14:28:18', '1');
INSERT INTO `useract_selectcat` VALUES ('466', '116.228.53.169', 'new', '2014-04-17 14:28:18', '1');
INSERT INTO `useract_selectcat` VALUES ('467', '116.228.53.169', 'new', '2014-04-17 14:28:18', '1');
INSERT INTO `useract_selectcat` VALUES ('468', '116.228.53.169', 'new', '2014-04-17 14:28:19', '1');
INSERT INTO `useract_selectcat` VALUES ('469', '116.228.53.169', 'new', '2014-04-17 14:28:19', '1');
INSERT INTO `useract_selectcat` VALUES ('470', '116.228.53.169', 'new', '2014-04-17 14:28:19', '1');
INSERT INTO `useract_selectcat` VALUES ('471', '116.228.53.169', 'new', '2014-04-17 14:28:19', '1');
INSERT INTO `useract_selectcat` VALUES ('472', '116.228.53.169', 'new', '2014-04-17 14:28:20', '1');
INSERT INTO `useract_selectcat` VALUES ('473', '116.228.53.169', 'new', '2014-04-17 14:28:20', '1');
INSERT INTO `useract_selectcat` VALUES ('474', '116.228.53.169', 'new', '2014-04-17 14:28:24', '1');
INSERT INTO `useract_selectcat` VALUES ('475', '116.228.53.169', 'new', '2014-04-17 14:28:39', '1');
INSERT INTO `useract_selectcat` VALUES ('476', '116.228.53.169', 'animal_c02_Eagle', '2014-04-17 14:29:56', '0');
INSERT INTO `useract_selectcat` VALUES ('477', '116.228.53.169', 'animal_c02_Eagle', '2014-04-17 14:29:57', '0');
INSERT INTO `useract_selectcat` VALUES ('478', '123.125.71.92', 'new', '2014-04-17 18:34:43', '0');
INSERT INTO `useract_selectcat` VALUES ('479', '220.181.108.151', 'new', '2014-04-17 18:39:44', '0');
INSERT INTO `useract_selectcat` VALUES ('480', '220.181.108.166', 'new', '2014-04-17 20:41:01', '0');
INSERT INTO `useract_selectcat` VALUES ('481', '123.125.71.91', 'new', '2014-04-17 20:44:57', '0');
INSERT INTO `useract_selectcat` VALUES ('482', '62.212.73.211', 'new', '2014-04-17 21:15:09', '0');
INSERT INTO `useract_selectcat` VALUES ('483', '157.55.33.106', 'new', '2014-04-17 21:35:10', '0');
INSERT INTO `useract_selectcat` VALUES ('484', '157.55.33.106', 'new', '2014-04-17 21:35:13', '0');
INSERT INTO `useract_selectcat` VALUES ('485', '106.120.160.109', 'new', '2014-04-17 22:13:13', '0');
INSERT INTO `useract_selectcat` VALUES ('486', '101.199.108.53', 'new', '2014-04-17 22:14:12', '0');
INSERT INTO `useract_selectcat` VALUES ('487', '207.241.229.243', 'new', '2014-04-18 00:10:35', '0');
INSERT INTO `useract_selectcat` VALUES ('488', '220.181.108.79', 'new', '2014-04-18 00:37:59', '0');
INSERT INTO `useract_selectcat` VALUES ('489', '123.125.71.116', 'new', '2014-04-18 00:42:12', '0');
INSERT INTO `useract_selectcat` VALUES ('490', '220.181.108.161', 'new', '2014-04-18 05:43:53', '0');
INSERT INTO `useract_selectcat` VALUES ('491', '123.125.71.109', 'new', '2014-04-18 05:43:55', '0');
INSERT INTO `useract_selectcat` VALUES ('492', '218.64.5.158', 'new', '2014-04-18 13:00:39', '0');
INSERT INTO `useract_selectcat` VALUES ('493', '220.181.51.79', 'new', '2014-04-18 16:01:19', '0');
INSERT INTO `useract_selectcat` VALUES ('494', '69.84.207.246', 'new', '2014-04-18 19:01:29', '0');
INSERT INTO `useract_selectcat` VALUES ('495', '218.64.5.158', 'new', '2014-04-18 19:19:37', '0');
INSERT INTO `useract_selectcat` VALUES ('496', '157.56.93.154', 'new', '2014-04-18 21:07:58', '0');
INSERT INTO `useract_selectcat` VALUES ('497', '106.120.160.109', 'new', '2014-04-19 00:44:43', '0');
INSERT INTO `useract_selectcat` VALUES ('498', '101.199.112.51', 'new', '2014-04-19 00:45:50', '0');
INSERT INTO `useract_selectcat` VALUES ('499', '157.56.229.189', 'new', '2014-04-19 06:00:12', '0');
INSERT INTO `useract_selectcat` VALUES ('500', '114.112.90.54', 'new', '2014-04-19 08:26:48', '0');
INSERT INTO `useract_selectcat` VALUES ('501', '182.118.41.156', 'new', '2014-04-19 10:32:39', '0');
INSERT INTO `useract_selectcat` VALUES ('502', '218.64.5.158', 'new', '2014-04-19 11:26:23', '0');
INSERT INTO `useract_selectcat` VALUES ('503', '123.125.71.88', 'new', '2014-04-19 11:42:43', '0');
INSERT INTO `useract_selectcat` VALUES ('504', '220.181.108.168', 'new', '2014-04-19 11:44:54', '0');
INSERT INTO `useract_selectcat` VALUES ('505', '123.125.71.95', 'new', '2014-04-19 14:45:36', '0');
INSERT INTO `useract_selectcat` VALUES ('506', '220.181.108.176', 'new', '2014-04-19 14:57:21', '0');
INSERT INTO `useract_selectcat` VALUES ('507', '118.228.30.248', 'new', '2014-04-19 15:44:14', '0');
INSERT INTO `useract_selectcat` VALUES ('508', '157.55.33.100', 'new', '2014-04-19 18:27:29', '0');
INSERT INTO `useract_selectcat` VALUES ('509', '115.239.212.144', 'new', '2014-04-19 19:23:21', '0');
INSERT INTO `useract_selectcat` VALUES ('510', '65.55.24.237', 'new', '2014-04-20 05:14:16', '0');
INSERT INTO `useract_selectcat` VALUES ('511', '123.125.71.87', 'new', '2014-04-20 11:52:34', '0');
INSERT INTO `useract_selectcat` VALUES ('512', '220.181.108.175', 'new', '2014-04-20 11:54:53', '0');
INSERT INTO `useract_selectcat` VALUES ('513', '123.125.71.84', 'new', '2014-04-20 13:25:04', '0');
INSERT INTO `useract_selectcat` VALUES ('514', '220.181.108.183', 'new', '2014-04-20 13:25:50', '0');
INSERT INTO `useract_selectcat` VALUES ('515', '219.151.34.20', 'new', '2014-04-20 13:31:55', '0');
INSERT INTO `useract_selectcat` VALUES ('516', '157.56.229.184', 'new', '2014-04-20 16:54:21', '0');
INSERT INTO `useract_selectcat` VALUES ('517', '220.181.108.184', 'new', '2014-04-20 18:44:53', '0');
INSERT INTO `useract_selectcat` VALUES ('518', '123.125.71.95', 'new', '2014-04-20 19:22:17', '0');
INSERT INTO `useract_selectcat` VALUES ('519', '220.181.108.161', 'new', '2014-04-20 19:22:37', '0');
INSERT INTO `useract_selectcat` VALUES ('520', '123.125.71.113', 'new', '2014-04-20 22:01:36', '0');
INSERT INTO `useract_selectcat` VALUES ('521', '218.202.155.78', 'new', '2014-04-20 22:07:25', '0');
INSERT INTO `useract_selectcat` VALUES ('522', '220.181.108.152', 'new', '2014-04-20 22:09:03', '0');
INSERT INTO `useract_selectcat` VALUES ('523', '61.135.190.220', 'new', '2014-04-20 22:21:22', '0');
INSERT INTO `useract_selectcat` VALUES ('524', '123.125.71.105', 'new', '2014-04-21 02:02:38', '0');
INSERT INTO `useract_selectcat` VALUES ('525', '157.56.92.160', 'new', '2014-04-21 04:33:57', '0');
INSERT INTO `useract_selectcat` VALUES ('526', '199.58.86.211', 'new', '2014-04-21 04:48:32', '0');
INSERT INTO `useract_selectcat` VALUES ('527', '123.125.71.74', 'new', '2014-04-21 07:27:29', '0');
INSERT INTO `useract_selectcat` VALUES ('528', '123.125.71.100', 'new', '2014-04-21 10:48:43', '0');
INSERT INTO `useract_selectcat` VALUES ('529', '220.181.108.184', 'new', '2014-04-21 10:49:08', '0');
INSERT INTO `useract_selectcat` VALUES ('530', '123.125.71.72', 'new', '2014-04-21 12:34:15', '0');
INSERT INTO `useract_selectcat` VALUES ('531', '220.181.108.147', 'new', '2014-04-21 12:36:47', '0');
INSERT INTO `useract_selectcat` VALUES ('532', '220.181.108.159', 'new', '2014-04-21 14:52:08', '0');
INSERT INTO `useract_selectcat` VALUES ('533', '123.125.71.108', 'new', '2014-04-21 14:52:20', '0');
INSERT INTO `useract_selectcat` VALUES ('534', '114.61.112.3', 'new', '2014-04-21 15:43:49', '0');
INSERT INTO `useract_selectcat` VALUES ('535', '157.55.33.22', 'new', '2014-04-21 15:58:59', '0');
INSERT INTO `useract_selectcat` VALUES ('536', '157.55.32.77', 'new', '2014-04-21 16:09:53', '0');
INSERT INTO `useract_selectcat` VALUES ('537', '119.147.146.189', 'new', '2014-04-21 19:56:29', '0');
INSERT INTO `useract_selectcat` VALUES ('538', '112.64.235.90', 'new', '2014-04-21 20:26:19', '0');
INSERT INTO `useract_selectcat` VALUES ('539', '106.120.160.109', 'new', '2014-04-21 21:18:52', '0');
INSERT INTO `useract_selectcat` VALUES ('540', '101.199.108.120', 'new', '2014-04-21 21:19:33', '0');
INSERT INTO `useract_selectcat` VALUES ('541', '123.125.71.116', 'new', '2014-04-22 00:18:37', '0');
INSERT INTO `useract_selectcat` VALUES ('542', '220.181.108.175', 'new', '2014-04-22 00:21:12', '0');
INSERT INTO `useract_selectcat` VALUES ('543', '157.56.93.148', 'new', '2014-04-22 04:12:39', '0');
INSERT INTO `useract_selectcat` VALUES ('544', '123.125.71.26', 'new', '2014-04-22 15:14:14', '0');
INSERT INTO `useract_selectcat` VALUES ('545', '157.55.32.55', 'new', '2014-04-22 15:32:01', '0');
INSERT INTO `useract_selectcat` VALUES ('546', '202.121.55.245', 'new', '2014-04-22 16:27:43', '0');
INSERT INTO `useract_selectcat` VALUES ('547', '202.121.55.245', 'animal_a01_Cat', '2014-04-22 16:28:22', '0');
INSERT INTO `useract_selectcat` VALUES ('548', '202.121.55.245', 'animal_a01_Cat', '2014-04-22 16:28:28', '1');
INSERT INTO `useract_selectcat` VALUES ('549', '202.121.55.245', 'animal_a01_Cat', '2014-04-22 16:28:33', '1');
INSERT INTO `useract_selectcat` VALUES ('550', '202.121.55.245', 'animal_a02_Dog', '2014-04-22 16:28:46', '0');
INSERT INTO `useract_selectcat` VALUES ('551', '202.121.55.245', 'animal_a02_Dog', '2014-04-22 16:29:08', '1');
INSERT INTO `useract_selectcat` VALUES ('552', '202.101.75.53', 'new', '2014-04-22 17:19:24', '0');
INSERT INTO `useract_selectcat` VALUES ('553', '114.61.112.3', 'new', '2014-04-22 19:23:29', '0');
INSERT INTO `useract_selectcat` VALUES ('554', '114.61.112.3', 'new', '2014-04-22 19:23:33', '0');
INSERT INTO `useract_selectcat` VALUES ('555', '217.69.133.169', 'new', '2014-04-22 23:16:41', '0');
INSERT INTO `useract_selectcat` VALUES ('556', '157.55.32.187', 'new', '2014-04-22 23:33:29', '0');
INSERT INTO `useract_selectcat` VALUES ('557', '123.125.71.97', 'new', '2014-04-23 00:21:24', '0');
INSERT INTO `useract_selectcat` VALUES ('558', '220.181.108.170', 'new', '2014-04-23 00:23:21', '0');
INSERT INTO `useract_selectcat` VALUES ('559', '220.181.108.186', 'new', '2014-04-23 03:42:51', '0');
INSERT INTO `useract_selectcat` VALUES ('560', '123.125.71.111', 'new', '2014-04-23 03:43:18', '0');
INSERT INTO `useract_selectcat` VALUES ('561', '220.181.108.161', 'new', '2014-04-23 04:13:17', '0');
INSERT INTO `useract_selectcat` VALUES ('562', '123.125.71.103', 'new', '2014-04-23 04:14:04', '0');
INSERT INTO `useract_selectcat` VALUES ('563', '123.125.71.108', 'new', '2014-04-23 06:37:34', '0');
INSERT INTO `useract_selectcat` VALUES ('564', '220.181.108.185', 'new', '2014-04-23 06:38:49', '0');
INSERT INTO `useract_selectcat` VALUES ('565', '218.64.5.158', 'new', '2014-04-23 07:21:54', '0');
INSERT INTO `useract_selectcat` VALUES ('566', '220.181.108.139', 'new', '2014-04-23 08:53:39', '0');
INSERT INTO `useract_selectcat` VALUES ('567', '123.125.71.113', 'new', '2014-04-23 08:57:41', '0');
INSERT INTO `useract_selectcat` VALUES ('568', '116.236.224.34', 'new', '2014-04-23 09:42:46', '0');
INSERT INTO `useract_selectcat` VALUES ('569', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('570', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('571', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('572', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('573', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('574', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('575', '116.236.224.34', 'new', '2014-04-23 09:45:15', '1');
INSERT INTO `useract_selectcat` VALUES ('576', '116.236.224.34', 'new', '2014-04-23 09:45:16', '1');
INSERT INTO `useract_selectcat` VALUES ('577', '116.236.224.34', 'new', '2014-04-23 09:45:16', '1');
INSERT INTO `useract_selectcat` VALUES ('578', '116.236.224.34', 'new', '2014-04-23 09:45:20', '1');
INSERT INTO `useract_selectcat` VALUES ('579', '116.236.224.34', 'new', '2014-04-23 09:45:20', '1');
INSERT INTO `useract_selectcat` VALUES ('580', '116.236.224.34', 'new', '2014-04-23 09:45:21', '1');
INSERT INTO `useract_selectcat` VALUES ('581', '116.236.224.34', 'new', '2014-04-23 09:45:21', '1');
INSERT INTO `useract_selectcat` VALUES ('582', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('583', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('584', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('585', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('586', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('587', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('588', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('589', '116.236.224.34', 'new', '2014-04-23 09:45:22', '1');
INSERT INTO `useract_selectcat` VALUES ('590', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('591', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('592', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('593', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('594', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('595', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('596', '116.236.224.34', 'new', '2014-04-23 09:45:23', '1');
INSERT INTO `useract_selectcat` VALUES ('597', '116.236.224.34', 'new', '2014-04-23 09:45:24', '1');
INSERT INTO `useract_selectcat` VALUES ('598', '116.236.224.34', 'new', '2014-04-23 09:45:24', '1');
INSERT INTO `useract_selectcat` VALUES ('599', '116.236.224.34', 'new', '2014-04-23 09:45:24', '1');
INSERT INTO `useract_selectcat` VALUES ('600', '116.236.224.34', 'new', '2014-04-23 09:45:24', '1');
INSERT INTO `useract_selectcat` VALUES ('601', '116.236.224.34', 'new', '2014-04-23 09:45:24', '1');
INSERT INTO `useract_selectcat` VALUES ('602', '116.236.224.34', 'new', '2014-04-23 09:45:33', '1');
INSERT INTO `useract_selectcat` VALUES ('603', '116.236.224.34', 'new', '2014-04-23 09:45:34', '1');
INSERT INTO `useract_selectcat` VALUES ('604', '116.236.224.34', 'new', '2014-04-23 09:45:34', '1');
INSERT INTO `useract_selectcat` VALUES ('605', '116.236.224.34', 'new', '2014-04-23 09:45:35', '1');
INSERT INTO `useract_selectcat` VALUES ('606', '116.236.224.34', 'new', '2014-04-23 09:45:36', '1');
INSERT INTO `useract_selectcat` VALUES ('607', '116.236.224.34', 'new', '2014-04-23 09:45:37', '1');
INSERT INTO `useract_selectcat` VALUES ('608', '116.236.224.34', 'new', '2014-04-23 09:45:37', '1');
INSERT INTO `useract_selectcat` VALUES ('609', '116.236.224.34', 'new', '2014-04-23 09:45:37', '1');
INSERT INTO `useract_selectcat` VALUES ('610', '116.236.224.34', 'new', '2014-04-23 09:45:37', '1');
INSERT INTO `useract_selectcat` VALUES ('611', '116.236.224.34', 'new', '2014-04-23 09:45:37', '1');
INSERT INTO `useract_selectcat` VALUES ('612', '116.236.224.34', 'new', '2014-04-23 09:45:37', '1');
INSERT INTO `useract_selectcat` VALUES ('613', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('614', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('615', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('616', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('617', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('618', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('619', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('620', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('621', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('622', '116.236.224.34', 'new', '2014-04-23 09:45:38', '1');
INSERT INTO `useract_selectcat` VALUES ('623', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('624', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('625', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('626', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('627', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('628', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('629', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('630', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('631', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('632', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('633', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('634', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('635', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('636', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('637', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('638', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('639', '116.236.224.34', 'new', '2014-04-23 09:45:39', '1');
INSERT INTO `useract_selectcat` VALUES ('640', '118.228.30.248', 'new', '2014-04-23 11:02:20', '0');
INSERT INTO `useract_selectcat` VALUES ('641', '123.125.71.98', 'new', '2014-04-23 11:31:18', '0');
INSERT INTO `useract_selectcat` VALUES ('642', '157.55.33.15', 'new', '2014-04-23 11:33:09', '0');
INSERT INTO `useract_selectcat` VALUES ('643', '220.181.108.187', 'new', '2014-04-23 11:33:13', '0');
INSERT INTO `useract_selectcat` VALUES ('644', '123.125.71.96', 'new', '2014-04-23 12:25:42', '0');
INSERT INTO `useract_selectcat` VALUES ('645', '220.181.108.79', 'new', '2014-04-23 12:27:44', '0');
INSERT INTO `useract_selectcat` VALUES ('646', '123.125.71.78', 'new', '2014-04-23 15:24:48', '0');
INSERT INTO `useract_selectcat` VALUES ('647', '220.181.108.178', 'new', '2014-04-23 15:25:19', '0');
INSERT INTO `useract_selectcat` VALUES ('648', '106.120.160.109', 'new', '2014-04-23 22:00:45', '0');
INSERT INTO `useract_selectcat` VALUES ('649', '162.210.196.98', 'new', '2014-04-23 22:01:30', '0');
INSERT INTO `useract_selectcat` VALUES ('650', '220.181.132.19', 'new', '2014-04-23 22:01:39', '0');
INSERT INTO `useract_selectcat` VALUES ('651', '157.55.33.254', 'new', '2014-04-23 22:46:23', '0');
INSERT INTO `useract_selectcat` VALUES ('652', '220.174.208.184', 'new', '2014-04-24 00:38:09', '0');
INSERT INTO `useract_selectcat` VALUES ('653', '123.125.71.78', 'new', '2014-04-24 01:54:44', '0');
INSERT INTO `useract_selectcat` VALUES ('654', '220.181.108.150', 'new', '2014-04-24 01:57:08', '0');
INSERT INTO `useract_selectcat` VALUES ('655', '123.125.71.117', 'new', '2014-04-24 03:48:13', '0');
INSERT INTO `useract_selectcat` VALUES ('656', '220.181.108.155', 'new', '2014-04-24 03:49:01', '0');
INSERT INTO `useract_selectcat` VALUES ('657', '219.151.34.17', 'new', '2014-04-24 05:01:58', '0');
INSERT INTO `useract_selectcat` VALUES ('658', '157.55.35.80', 'new', '2014-04-24 10:36:26', '0');
INSERT INTO `useract_selectcat` VALUES ('659', '157.55.35.80', 'new', '2014-04-24 10:36:28', '0');
INSERT INTO `useract_selectcat` VALUES ('660', '123.125.71.79', 'new', '2014-04-24 11:29:33', '0');
INSERT INTO `useract_selectcat` VALUES ('661', '220.181.108.187', 'new', '2014-04-24 11:30:49', '0');
INSERT INTO `useract_selectcat` VALUES ('662', '220.181.108.167', 'new', '2014-04-24 16:42:52', '0');
INSERT INTO `useract_selectcat` VALUES ('663', '123.125.71.90', 'new', '2014-04-24 16:43:16', '0');
INSERT INTO `useract_selectcat` VALUES ('664', '175.51.113.5', 'new', '2014-04-24 17:00:09', '0');
INSERT INTO `useract_selectcat` VALUES ('665', '101.226.66.178', 'new', '2014-04-24 20:35:43', '0');
INSERT INTO `useract_selectcat` VALUES ('666', '157.55.35.44', 'new', '2014-04-24 22:36:30', '0');
INSERT INTO `useract_selectcat` VALUES ('667', '119.147.146.189', 'new', '2014-04-24 22:53:52', '0');
INSERT INTO `useract_selectcat` VALUES ('668', '218.202.155.78', 'new', '2014-04-25 01:06:33', '0');
INSERT INTO `useract_selectcat` VALUES ('669', '123.125.71.78', 'new', '2014-04-25 02:59:04', '0');
INSERT INTO `useract_selectcat` VALUES ('670', '220.181.108.156', 'new', '2014-04-25 03:01:17', '0');
INSERT INTO `useract_selectcat` VALUES ('671', '123.125.71.102', 'new', '2014-04-25 07:26:40', '0');
INSERT INTO `useract_selectcat` VALUES ('672', '220.181.108.140', 'new', '2014-04-25 07:30:17', '0');
INSERT INTO `useract_selectcat` VALUES ('673', '220.181.125.200', 'new', '2014-04-25 07:57:39', '0');
INSERT INTO `useract_selectcat` VALUES ('674', '157.55.32.103', 'new', '2014-04-25 09:29:38', '0');
INSERT INTO `useract_selectcat` VALUES ('675', '180.153.236.194', 'new', '2014-04-25 12:03:41', '0');
INSERT INTO `useract_selectcat` VALUES ('676', '180.76.5.146', 'new', '2014-04-25 12:22:40', '0');
INSERT INTO `useract_selectcat` VALUES ('677', '220.174.208.184', 'new', '2014-04-25 17:29:59', '0');
INSERT INTO `useract_selectcat` VALUES ('678', '123.125.71.72', 'new', '2014-04-25 18:27:52', '0');
INSERT INTO `useract_selectcat` VALUES ('679', '220.181.108.171', 'new', '2014-04-25 18:29:51', '0');
INSERT INTO `useract_selectcat` VALUES ('680', '123.125.71.69', 'new', '2014-04-25 19:31:34', '0');
INSERT INTO `useract_selectcat` VALUES ('681', '220.181.108.150', 'new', '2014-04-25 19:32:56', '0');
INSERT INTO `useract_selectcat` VALUES ('682', '157.56.92.162', 'new', '2014-04-25 20:30:49', '0');
INSERT INTO `useract_selectcat` VALUES ('683', '220.181.108.85', 'new', '2014-04-25 21:02:17', '0');
INSERT INTO `useract_selectcat` VALUES ('684', '123.125.71.87', 'new', '2014-04-25 21:37:26', '0');
INSERT INTO `useract_selectcat` VALUES ('685', '220.181.108.181', 'new', '2014-04-25 21:38:30', '0');
INSERT INTO `useract_selectcat` VALUES ('686', '106.120.160.109', 'new', '2014-04-25 21:55:52', '0');
INSERT INTO `useract_selectcat` VALUES ('687', '220.181.132.196', 'new', '2014-04-25 21:57:06', '0');
INSERT INTO `useract_selectcat` VALUES ('688', '123.125.71.110', 'new', '2014-04-25 22:24:08', '0');
INSERT INTO `useract_selectcat` VALUES ('689', '220.181.108.187', 'new', '2014-04-25 22:24:54', '0');
INSERT INTO `useract_selectcat` VALUES ('690', '218.202.155.78', 'new', '2014-04-26 01:17:44', '0');
INSERT INTO `useract_selectcat` VALUES ('691', '123.125.71.107', 'new', '2014-04-26 02:28:18', '0');
INSERT INTO `useract_selectcat` VALUES ('692', '220.181.108.155', 'new', '2014-04-26 02:30:11', '0');
INSERT INTO `useract_selectcat` VALUES ('693', '220.181.51.74', 'new', '2014-04-26 04:57:50', '0');
INSERT INTO `useract_selectcat` VALUES ('694', '219.143.225.20', 'new', '2014-04-26 08:56:46', '0');
INSERT INTO `useract_selectcat` VALUES ('695', '157.55.32.188', 'new', '2014-04-26 09:18:59', '0');
INSERT INTO `useract_selectcat` VALUES ('696', '219.151.34.28', 'new', '2014-04-26 09:39:45', '0');
INSERT INTO `useract_selectcat` VALUES ('697', '123.125.71.102', 'new', '2014-04-26 10:42:06', '0');
INSERT INTO `useract_selectcat` VALUES ('698', '220.181.108.139', 'new', '2014-04-26 10:44:36', '0');
INSERT INTO `useract_selectcat` VALUES ('699', '123.125.71.114', 'new', '2014-04-26 11:18:00', '0');
INSERT INTO `useract_selectcat` VALUES ('700', '220.181.108.178', 'new', '2014-04-26 11:18:10', '0');
INSERT INTO `useract_selectcat` VALUES ('701', '218.207.150.62', 'new', '2014-04-26 17:19:47', '0');
INSERT INTO `useract_selectcat` VALUES ('702', '115.239.212.206', 'new', '2014-04-26 19:22:06', '0');
INSERT INTO `useract_selectcat` VALUES ('703', '157.55.33.22', 'new', '2014-04-26 21:03:23', '0');
INSERT INTO `useract_selectcat` VALUES ('704', '66.249.68.253', 'new', '2014-04-26 21:22:32', '0');
INSERT INTO `useract_selectcat` VALUES ('705', '220.181.108.162', 'new', '2014-04-27 00:17:55', '0');
INSERT INTO `useract_selectcat` VALUES ('706', '123.125.71.97', 'new', '2014-04-27 00:18:26', '0');
INSERT INTO `useract_selectcat` VALUES ('707', '123.125.71.91', 'new', '2014-04-27 07:40:47', '0');
INSERT INTO `useract_selectcat` VALUES ('708', '220.181.108.145', 'new', '2014-04-27 07:42:34', '0');
INSERT INTO `useract_selectcat` VALUES ('709', '157.55.32.110', 'new', '2014-04-27 08:38:06', '0');
INSERT INTO `useract_selectcat` VALUES ('710', '123.125.71.104', 'new', '2014-04-27 11:24:39', '0');
INSERT INTO `useract_selectcat` VALUES ('711', '220.181.108.171', 'new', '2014-04-27 11:26:27', '0');
INSERT INTO `useract_selectcat` VALUES ('712', '123.125.71.88', 'new', '2014-04-27 17:30:00', '0');
INSERT INTO `useract_selectcat` VALUES ('713', '220.181.108.180', 'new', '2014-04-27 17:33:16', '0');
INSERT INTO `useract_selectcat` VALUES ('714', '157.56.93.49', 'new', '2014-04-27 18:27:41', '0');
INSERT INTO `useract_selectcat` VALUES ('715', '106.120.160.109', 'new', '2014-04-27 20:14:15', '0');
INSERT INTO `useract_selectcat` VALUES ('716', '101.199.112.45', 'new', '2014-04-27 20:14:48', '0');
INSERT INTO `useract_selectcat` VALUES ('717', '123.125.71.107', 'new', '2014-04-27 22:18:52', '0');
INSERT INTO `useract_selectcat` VALUES ('718', '220.181.108.173', 'new', '2014-04-27 22:20:46', '0');
INSERT INTO `useract_selectcat` VALUES ('719', '202.101.75.53', 'new', '2014-04-27 22:54:43', '0');
INSERT INTO `useract_selectcat` VALUES ('720', '220.181.108.146', 'new', '2014-04-27 23:17:56', '0');
INSERT INTO `useract_selectcat` VALUES ('721', '123.125.71.83', 'new', '2014-04-27 23:18:24', '0');
INSERT INTO `useract_selectcat` VALUES ('722', '219.151.34.19', 'new', '2014-04-28 02:10:53', '0');
INSERT INTO `useract_selectcat` VALUES ('723', '221.7.51.158', 'new', '2014-04-28 03:24:21', '0');
INSERT INTO `useract_selectcat` VALUES ('724', '220.181.108.147', 'new', '2014-04-28 05:56:58', '0');
INSERT INTO `useract_selectcat` VALUES ('725', '123.125.71.109', 'new', '2014-04-28 05:57:58', '0');
INSERT INTO `useract_selectcat` VALUES ('726', '61.190.92.83', 'new', '2014-04-28 07:43:43', '0');
INSERT INTO `useract_selectcat` VALUES ('727', '101.226.65.106', 'new', '2014-04-28 09:51:53', '0');
INSERT INTO `useract_selectcat` VALUES ('728', '221.7.51.158', 'new', '2014-04-28 11:51:45', '0');
INSERT INTO `useract_selectcat` VALUES ('729', '157.55.32.221', 'new', '2014-04-28 18:51:53', '0');
INSERT INTO `useract_selectcat` VALUES ('730', '220.181.108.184', 'new', '2014-04-28 23:18:36', '0');
INSERT INTO `useract_selectcat` VALUES ('731', '123.125.71.74', 'new', '2014-04-28 23:19:05', '0');
INSERT INTO `useract_selectcat` VALUES ('732', '221.7.51.158', 'new', '2014-04-29 00:58:01', '0');
INSERT INTO `useract_selectcat` VALUES ('733', '65.55.52.119', 'new', '2014-04-29 05:33:04', '0');
INSERT INTO `useract_selectcat` VALUES ('734', '65.55.52.119', 'new', '2014-04-29 05:35:36', '0');
INSERT INTO `useract_selectcat` VALUES ('735', '65.55.52.119', 'new', '2014-04-29 06:38:25', '0');
INSERT INTO `useract_selectcat` VALUES ('736', '123.125.71.91', 'new', '2014-04-29 06:43:11', '0');
INSERT INTO `useract_selectcat` VALUES ('737', '220.181.108.144', 'new', '2014-04-29 06:48:13', '0');
INSERT INTO `useract_selectcat` VALUES ('738', '123.125.71.58', 'new', '2014-04-29 06:54:15', '0');
INSERT INTO `useract_selectcat` VALUES ('739', '123.125.71.88', 'new', '2014-04-29 11:23:41', '0');
INSERT INTO `useract_selectcat` VALUES ('740', '220.181.108.161', 'new', '2014-04-29 11:25:34', '0');
INSERT INTO `useract_selectcat` VALUES ('741', '58.245.27.222', 'new', '2014-04-29 14:01:20', '0');
INSERT INTO `useract_selectcat` VALUES ('742', '123.125.71.89', 'new', '2014-04-29 15:28:58', '0');
INSERT INTO `useract_selectcat` VALUES ('743', '220.181.108.161', 'new', '2014-04-29 15:31:46', '0');
INSERT INTO `useract_selectcat` VALUES ('744', '123.125.71.115', 'new', '2014-04-29 17:35:03', '0');
INSERT INTO `useract_selectcat` VALUES ('745', '220.181.108.79', 'new', '2014-04-29 17:38:47', '0');
INSERT INTO `useract_selectcat` VALUES ('746', '157.55.33.84', 'new', '2014-04-29 18:04:25', '0');
INSERT INTO `useract_selectcat` VALUES ('747', '123.125.71.108', 'new', '2014-04-29 20:18:38', '0');
INSERT INTO `useract_selectcat` VALUES ('748', '220.181.108.150', 'new', '2014-04-29 20:21:14', '0');
INSERT INTO `useract_selectcat` VALUES ('749', '106.120.160.109', 'new', '2014-04-29 20:41:10', '0');
INSERT INTO `useract_selectcat` VALUES ('750', '101.199.108.56', 'new', '2014-04-29 20:53:25', '0');
INSERT INTO `useract_selectcat` VALUES ('751', '183.69.47.151', 'new', '2014-04-29 22:26:28', '0');
INSERT INTO `useract_selectcat` VALUES ('752', '118.228.30.248', 'new', '2014-04-29 22:45:45', '0');
INSERT INTO `useract_selectcat` VALUES ('753', '119.147.146.189', 'new', '2014-04-29 23:07:07', '0');
INSERT INTO `useract_selectcat` VALUES ('754', '180.153.163.190', 'new', '2014-04-29 23:36:59', '0');
INSERT INTO `useract_selectcat` VALUES ('755', '199.58.86.209', 'new', '2014-04-30 01:18:51', '0');
INSERT INTO `useract_selectcat` VALUES ('756', '101.226.169.207', 'new', '2014-04-30 05:07:58', '0');
INSERT INTO `useract_selectcat` VALUES ('757', '157.55.33.252', 'new', '2014-04-30 07:24:05', '0');
INSERT INTO `useract_selectcat` VALUES ('758', '157.55.32.97', 'new', '2014-04-30 07:35:32', '0');
INSERT INTO `useract_selectcat` VALUES ('759', '157.55.33.253', 'new', '2014-04-30 08:38:48', '0');
INSERT INTO `useract_selectcat` VALUES ('760', '111.206.36.146', 'new', '2014-04-30 10:12:01', '0');
INSERT INTO `useract_selectcat` VALUES ('761', '218.24.109.126', 'new', '2014-04-30 12:02:29', '0');
INSERT INTO `useract_selectcat` VALUES ('762', '123.125.71.17', 'new', '2014-04-30 13:57:40', '0');
INSERT INTO `useract_selectcat` VALUES ('763', '123.125.71.116', 'new', '2014-04-30 14:39:00', '0');
INSERT INTO `useract_selectcat` VALUES ('764', '220.181.108.178', 'new', '2014-04-30 14:41:08', '0');
INSERT INTO `useract_selectcat` VALUES ('765', '123.125.71.80', 'new', '2014-04-30 19:35:49', '0');
INSERT INTO `useract_selectcat` VALUES ('766', '123.125.71.99', 'new', '2014-04-30 21:42:28', '0');
INSERT INTO `useract_selectcat` VALUES ('767', '123.125.71.103', 'new', '2014-04-30 22:24:42', '0');
INSERT INTO `useract_selectcat` VALUES ('768', '220.181.108.147', 'new', '2014-04-30 22:26:35', '0');
INSERT INTO `useract_selectcat` VALUES ('769', '157.56.93.40', 'new', '2014-04-30 23:21:42', '0');
INSERT INTO `useract_selectcat` VALUES ('770', '220.181.51.80', 'new', '2014-04-30 23:35:06', '0');
INSERT INTO `useract_selectcat` VALUES ('771', '218.26.99.188', 'new', '2014-05-01 05:00:25', '0');
INSERT INTO `useract_selectcat` VALUES ('772', '123.125.71.112', 'new', '2014-05-01 08:26:44', '0');
INSERT INTO `useract_selectcat` VALUES ('773', '220.181.108.187', 'new', '2014-05-01 08:28:41', '0');
INSERT INTO `useract_selectcat` VALUES ('774', '157.55.35.48', 'new', '2014-05-01 11:02:58', '0');
INSERT INTO `useract_selectcat` VALUES ('775', '66.249.64.126', 'new', '2014-05-01 15:06:46', '0');
INSERT INTO `useract_selectcat` VALUES ('776', '123.125.71.72', 'new', '2014-05-01 17:33:07', '0');
INSERT INTO `useract_selectcat` VALUES ('777', '219.151.34.28', 'new', '2014-05-01 17:49:15', '0');
INSERT INTO `useract_selectcat` VALUES ('778', '66.249.73.178', 'new', '2014-05-01 22:19:48', '0');
INSERT INTO `useract_selectcat` VALUES ('779', '123.125.71.98', 'new', '2014-05-01 23:22:06', '0');
INSERT INTO `useract_selectcat` VALUES ('780', '220.181.108.186', 'new', '2014-05-01 23:22:18', '0');
INSERT INTO `useract_selectcat` VALUES ('781', '106.120.160.109', 'new', '2014-05-02 02:57:19', '0');
INSERT INTO `useract_selectcat` VALUES ('782', '101.199.108.50', 'new', '2014-05-02 02:57:44', '0');
INSERT INTO `useract_selectcat` VALUES ('783', '219.151.34.21', 'new', '2014-05-02 04:57:46', '0');
INSERT INTO `useract_selectcat` VALUES ('784', '58.213.117.184', 'new', '2014-05-02 06:38:36', '0');
INSERT INTO `useract_selectcat` VALUES ('785', '157.55.33.79', 'new', '2014-05-02 08:28:55', '0');
INSERT INTO `useract_selectcat` VALUES ('786', '123.125.71.94', 'new', '2014-05-02 14:38:33', '0');
INSERT INTO `useract_selectcat` VALUES ('787', '220.181.108.186', 'new', '2014-05-02 14:42:16', '0');
INSERT INTO `useract_selectcat` VALUES ('788', '65.55.52.114', 'new', '2014-05-02 15:45:27', '0');
INSERT INTO `useract_selectcat` VALUES ('789', '123.125.71.75', 'new', '2014-05-02 23:38:40', '0');
INSERT INTO `useract_selectcat` VALUES ('790', '220.181.108.154', 'new', '2014-05-02 23:40:56', '0');
INSERT INTO `useract_selectcat` VALUES ('791', '123.125.71.111', 'new', '2014-05-03 02:39:40', '0');
INSERT INTO `useract_selectcat` VALUES ('792', '220.181.108.152', 'new', '2014-05-03 02:41:42', '0');
INSERT INTO `useract_selectcat` VALUES ('793', '123.125.71.95', 'new', '2014-05-03 03:42:22', '0');
INSERT INTO `useract_selectcat` VALUES ('794', '220.181.108.176', 'new', '2014-05-03 03:45:18', '0');
INSERT INTO `useract_selectcat` VALUES ('795', '219.143.225.20', 'new', '2014-05-03 03:48:08', '0');
INSERT INTO `useract_selectcat` VALUES ('796', '46.165.197.142', 'new', '2014-05-03 04:15:32', '0');
INSERT INTO `useract_selectcat` VALUES ('797', '157.56.93.96', 'new', '2014-05-03 05:41:25', '0');
INSERT INTO `useract_selectcat` VALUES ('798', '157.56.93.96', 'new', '2014-05-03 05:41:27', '0');
INSERT INTO `useract_selectcat` VALUES ('799', '157.56.93.96', 'new', '2014-05-03 06:44:27', '0');
INSERT INTO `useract_selectcat` VALUES ('800', '218.207.150.62', 'new', '2014-05-03 08:16:25', '0');
INSERT INTO `useract_selectcat` VALUES ('801', '123.125.71.109', 'new', '2014-05-03 10:18:26', '0');
INSERT INTO `useract_selectcat` VALUES ('802', '220.181.108.140', 'new', '2014-05-03 10:22:01', '0');
INSERT INTO `useract_selectcat` VALUES ('803', '106.120.160.109', 'new', '2014-05-03 14:51:03', '0');
INSERT INTO `useract_selectcat` VALUES ('804', '101.199.108.51', 'new', '2014-05-03 14:51:36', '0');
INSERT INTO `useract_selectcat` VALUES ('805', '115.239.212.15', 'new', '2014-05-03 17:45:23', '0');
INSERT INTO `useract_selectcat` VALUES ('806', '119.147.146.192', 'new', '2014-05-03 20:07:41', '0');
INSERT INTO `useract_selectcat` VALUES ('807', '157.55.33.103', 'new', '2014-05-03 20:08:16', '0');
INSERT INTO `useract_selectcat` VALUES ('808', '112.64.235.90', 'new', '2014-05-03 20:37:28', '0');
INSERT INTO `useract_selectcat` VALUES ('809', '123.125.71.79', 'new', '2014-05-04 00:23:10', '0');
INSERT INTO `useract_selectcat` VALUES ('810', '220.181.108.184', 'new', '2014-05-04 00:24:54', '0');
INSERT INTO `useract_selectcat` VALUES ('811', '221.7.51.158', 'new', '2014-05-04 01:00:13', '0');
INSERT INTO `useract_selectcat` VALUES ('812', '210.36.5.222', 'new', '2014-05-04 05:10:28', '0');
INSERT INTO `useract_selectcat` VALUES ('813', '157.55.32.142', 'new', '2014-05-04 09:00:32', '0');
INSERT INTO `useract_selectcat` VALUES ('814', '210.36.5.222', 'new', '2014-05-04 09:04:38', '0');
INSERT INTO `useract_selectcat` VALUES ('815', '219.143.225.20', 'new', '2014-05-04 17:51:18', '0');
INSERT INTO `useract_selectcat` VALUES ('816', '61.135.190.220', 'new', '2014-05-04 21:01:02', '0');
INSERT INTO `useract_selectcat` VALUES ('817', '220.181.108.160', 'new', '2014-05-04 23:18:18', '0');
INSERT INTO `useract_selectcat` VALUES ('818', '123.125.71.70', 'new', '2014-05-04 23:20:36', '0');
INSERT INTO `useract_selectcat` VALUES ('819', '123.125.71.89', 'new', '2014-05-05 14:40:55', '0');
INSERT INTO `useract_selectcat` VALUES ('820', '220.181.108.145', 'new', '2014-05-05 14:42:39', '0');
INSERT INTO `useract_selectcat` VALUES ('821', '157.55.32.62', 'new', '2014-05-05 21:20:05', '0');
INSERT INTO `useract_selectcat` VALUES ('822', '106.120.160.109', 'new', '2014-05-05 21:53:21', '0');
INSERT INTO `useract_selectcat` VALUES ('823', '101.199.112.54', 'new', '2014-05-05 21:53:51', '0');
INSERT INTO `useract_selectcat` VALUES ('824', '123.125.71.23', 'new', '2014-05-05 23:29:37', '0');
INSERT INTO `useract_selectcat` VALUES ('825', '60.29.111.126', 'new', '2014-05-05 23:48:26', '0');
INSERT INTO `useract_selectcat` VALUES ('826', '157.55.32.96', 'new', '2014-05-06 06:10:58', '0');
INSERT INTO `useract_selectcat` VALUES ('827', '58.245.27.222', 'new', '2014-05-06 13:54:38', '0');
INSERT INTO `useract_selectcat` VALUES ('828', '123.125.71.76', 'new', '2014-05-06 14:40:20', '0');
INSERT INTO `useract_selectcat` VALUES ('829', '220.181.108.166', 'new', '2014-05-06 14:40:31', '0');
INSERT INTO `useract_selectcat` VALUES ('830', '157.55.32.153', 'new', '2014-05-06 19:21:01', '0');
INSERT INTO `useract_selectcat` VALUES ('831', '119.147.146.192', 'new', '2014-05-06 21:41:26', '0');
INSERT INTO `useract_selectcat` VALUES ('832', '101.226.65.107', 'new', '2014-05-06 22:11:22', '0');
INSERT INTO `useract_selectcat` VALUES ('833', '106.120.160.109', 'new', '2014-05-06 23:08:16', '0');
INSERT INTO `useract_selectcat` VALUES ('834', '220.181.132.191', 'new', '2014-05-06 23:09:18', '0');
INSERT INTO `useract_selectcat` VALUES ('835', '157.55.35.84', 'new', '2014-05-07 06:09:13', '0');
INSERT INTO `useract_selectcat` VALUES ('836', '123.125.71.86', 'new', '2014-05-07 07:30:15', '0');
INSERT INTO `useract_selectcat` VALUES ('837', '220.181.108.151', 'new', '2014-05-07 07:31:32', '0');
INSERT INTO `useract_selectcat` VALUES ('838', '123.125.71.103', 'new', '2014-05-07 07:57:00', '0');
INSERT INTO `useract_selectcat` VALUES ('839', '220.181.108.168', 'new', '2014-05-07 07:57:09', '0');
INSERT INTO `useract_selectcat` VALUES ('840', '114.61.105.202', 'new', '2014-05-09 05:28:52', '0');
INSERT INTO `useract_selectcat` VALUES ('841', '114.61.105.202', 'new', '2014-05-09 05:28:53', '0');
INSERT INTO `useract_selectcat` VALUES ('842', '119.147.146.189', 'new', '2014-05-09 05:28:54', '0');
INSERT INTO `useract_selectcat` VALUES ('843', '114.61.105.202', 'new', '2014-05-09 05:56:31', '0');
INSERT INTO `useract_selectcat` VALUES ('844', '114.61.105.202', 'new', '2014-05-09 05:56:32', '0');
INSERT INTO `useract_selectcat` VALUES ('845', '114.61.105.202', 'new', '2014-05-09 06:08:32', '0');
INSERT INTO `useract_selectcat` VALUES ('846', '114.61.105.202', 'new', '2014-05-09 06:08:33', '0');
INSERT INTO `useract_selectcat` VALUES ('847', '114.61.113.26', 'new', '2014-05-13 21:24:20', '0');
INSERT INTO `useract_selectcat` VALUES ('848', '114.61.113.26', 'new', '2014-05-13 21:24:20', '0');
INSERT INTO `useract_selectcat` VALUES ('849', '119.147.146.193', 'new', '2014-05-13 21:24:28', '0');
INSERT INTO `useract_selectcat` VALUES ('850', '119.147.146.193', 'new', '2014-11-30 22:42:18', '0');
INSERT INTO `useract_selectcat` VALUES ('851', '118.134.138.10', 'new', '2014-11-30 22:42:18', '0');
INSERT INTO `useract_selectcat` VALUES ('852', '118.134.138.10', 'new', '2014-11-30 22:42:30', '1');
INSERT INTO `useract_selectcat` VALUES ('853', '118.134.138.10', 'new', '2014-11-30 22:42:40', '0');
INSERT INTO `useract_selectcat` VALUES ('854', '118.134.138.10', 'new', '2014-11-30 22:44:03', '1');
INSERT INTO `useract_selectcat` VALUES ('855', '118.134.138.10', 'new', '2014-11-30 22:45:05', '1');
INSERT INTO `useract_selectcat` VALUES ('856', '118.134.138.10', 'new', '2014-11-30 22:50:02', '0');
INSERT INTO `useract_selectcat` VALUES ('857', '118.134.138.10', 'new', '2014-11-30 22:52:21', '1');
INSERT INTO `useract_selectcat` VALUES ('858', '118.134.138.10', 'new', '2014-11-30 22:52:23', '1');
INSERT INTO `useract_selectcat` VALUES ('859', '118.134.138.10', 'new', '2014-11-30 22:52:26', '1');
INSERT INTO `useract_selectcat` VALUES ('860', '118.134.138.10', 'new', '2014-11-30 23:02:36', '0');
INSERT INTO `useract_selectcat` VALUES ('861', '123.125.71.107', 'new', '2014-11-30 23:36:51', '0');
INSERT INTO `useract_selectcat` VALUES ('862', '220.181.108.174', 'new', '2014-11-30 23:37:02', '0');
INSERT INTO `useract_selectcat` VALUES ('863', '61.160.213.110', 'new', '2014-11-30 23:41:03', '0');
INSERT INTO `useract_selectcat` VALUES ('864', '118.134.138.10', 'new', '2014-11-30 23:51:28', '1');
INSERT INTO `useract_selectcat` VALUES ('865', '118.134.138.10', 'new', '2014-11-30 23:51:29', '1');
INSERT INTO `useract_selectcat` VALUES ('866', '118.134.138.10', 'new', '2014-11-30 23:51:29', '1');
INSERT INTO `useract_selectcat` VALUES ('867', '118.134.138.10', 'new', '2014-11-30 23:51:30', '1');
INSERT INTO `useract_selectcat` VALUES ('868', '207.46.13.71', 'new', '2014-12-01 00:15:16', '0');
INSERT INTO `useract_selectcat` VALUES ('869', '123.125.71.87', 'new', '2014-12-01 00:52:50', '0');
INSERT INTO `useract_selectcat` VALUES ('870', '220.181.108.147', 'new', '2014-12-01 00:53:16', '0');
INSERT INTO `useract_selectcat` VALUES ('871', '186.251.148.150', 'new', '2014-12-01 01:00:25', '0');
INSERT INTO `useract_selectcat` VALUES ('872', '123.125.71.101', 'new', '2014-12-01 01:47:13', '0');
INSERT INTO `useract_selectcat` VALUES ('873', '220.181.108.153', 'new', '2014-12-01 01:47:26', '0');
INSERT INTO `useract_selectcat` VALUES ('874', '123.125.71.112', 'new', '2014-12-01 02:42:41', '0');
INSERT INTO `useract_selectcat` VALUES ('875', '220.181.108.141', 'new', '2014-12-01 02:42:57', '0');
INSERT INTO `useract_selectcat` VALUES ('876', '61.135.190.224', 'new', '2014-12-01 02:59:20', '0');
INSERT INTO `useract_selectcat` VALUES ('877', '123.125.71.90', 'new', '2014-12-01 03:46:21', '0');
INSERT INTO `useract_selectcat` VALUES ('878', '220.181.108.148', 'new', '2014-12-01 03:46:28', '0');
INSERT INTO `useract_selectcat` VALUES ('879', '123.125.71.110', 'new', '2014-12-01 04:43:14', '0');
INSERT INTO `useract_selectcat` VALUES ('880', '220.181.108.185', 'new', '2014-12-01 04:43:25', '0');
INSERT INTO `useract_selectcat` VALUES ('881', '123.125.71.101', 'new', '2014-12-01 05:43:55', '0');
INSERT INTO `useract_selectcat` VALUES ('882', '220.181.108.161', 'new', '2014-12-01 05:44:10', '0');
INSERT INTO `useract_selectcat` VALUES ('883', '201.33.62.37', 'new', '2014-12-01 06:19:07', '0');
INSERT INTO `useract_selectcat` VALUES ('884', '123.125.71.117', 'new', '2014-12-01 06:45:54', '0');
INSERT INTO `useract_selectcat` VALUES ('885', '220.181.108.146', 'new', '2014-12-01 06:46:02', '0');
INSERT INTO `useract_selectcat` VALUES ('886', '191.243.38.6', 'new', '2014-12-01 07:07:36', '0');
INSERT INTO `useract_selectcat` VALUES ('887', '123.125.71.71', 'new', '2014-12-01 07:43:17', '0');
INSERT INTO `useract_selectcat` VALUES ('888', '220.181.108.185', 'new', '2014-12-01 07:43:33', '0');
INSERT INTO `useract_selectcat` VALUES ('889', '123.125.71.103', 'new', '2014-12-01 08:47:45', '0');
INSERT INTO `useract_selectcat` VALUES ('890', '220.181.108.146', 'new', '2014-12-01 08:48:00', '0');
INSERT INTO `useract_selectcat` VALUES ('891', '123.125.71.110', 'new', '2014-12-01 09:40:00', '0');
INSERT INTO `useract_selectcat` VALUES ('892', '220.181.108.161', 'new', '2014-12-01 09:40:12', '0');
INSERT INTO `useract_selectcat` VALUES ('893', '178.255.215.70', 'new', '2014-12-01 09:47:29', '0');
INSERT INTO `useract_selectcat` VALUES ('894', '182.254.151.226', 'new', '2014-12-01 10:12:29', '0');
INSERT INTO `useract_selectcat` VALUES ('895', '123.125.71.78', 'new', '2014-12-01 10:38:30', '0');
INSERT INTO `useract_selectcat` VALUES ('896', '220.181.108.154', 'new', '2014-12-01 10:38:34', '0');
INSERT INTO `useract_selectcat` VALUES ('897', '182.254.136.121', 'new', '2014-12-01 11:14:26', '0');
INSERT INTO `useract_selectcat` VALUES ('898', '123.125.71.107', 'new', '2014-12-01 11:38:29', '0');
INSERT INTO `useract_selectcat` VALUES ('899', '220.181.108.151', 'new', '2014-12-01 11:38:43', '0');
INSERT INTO `useract_selectcat` VALUES ('900', '66.249.74.219', 'new', '2014-12-01 12:30:11', '0');
INSERT INTO `useract_selectcat` VALUES ('901', '192.99.107.226', 'new', '2014-12-01 13:29:48', '0');
INSERT INTO `useract_selectcat` VALUES ('902', '123.125.71.111', 'new', '2014-12-01 13:42:33', '0');
INSERT INTO `useract_selectcat` VALUES ('903', '220.181.108.152', 'new', '2014-12-01 13:42:43', '0');
INSERT INTO `useract_selectcat` VALUES ('904', '220.181.108.154', 'new', '2014-12-01 14:51:21', '0');
INSERT INTO `useract_selectcat` VALUES ('905', '123.125.71.84', 'new', '2014-12-01 14:51:22', '0');
INSERT INTO `useract_selectcat` VALUES ('906', '207.46.13.71', 'new', '2014-12-01 15:25:55', '0');
INSERT INTO `useract_selectcat` VALUES ('907', '123.125.71.100', 'new', '2014-12-01 15:47:38', '0');
INSERT INTO `useract_selectcat` VALUES ('908', '220.181.108.162', 'new', '2014-12-01 15:47:46', '0');
INSERT INTO `useract_selectcat` VALUES ('909', '123.125.71.103', 'new', '2014-12-01 16:44:53', '0');
INSERT INTO `useract_selectcat` VALUES ('910', '220.181.108.159', 'new', '2014-12-01 16:45:08', '0');
INSERT INTO `useract_selectcat` VALUES ('911', '123.125.71.97', 'new', '2014-12-01 17:46:26', '0');
INSERT INTO `useract_selectcat` VALUES ('912', '220.181.108.148', 'new', '2014-12-01 17:46:36', '0');
INSERT INTO `useract_selectcat` VALUES ('913', '183.136.190.62', 'new', '2014-12-01 17:48:45', '0');
INSERT INTO `useract_selectcat` VALUES ('914', '123.125.71.96', 'new', '2014-12-01 18:47:26', '0');
INSERT INTO `useract_selectcat` VALUES ('915', '220.181.108.172', 'new', '2014-12-01 18:47:38', '0');
INSERT INTO `useract_selectcat` VALUES ('916', '183.136.190.40', 'new', '2014-12-01 19:13:06', '0');
INSERT INTO `useract_selectcat` VALUES ('917', '123.125.71.112', 'new', '2014-12-01 19:43:22', '0');
INSERT INTO `useract_selectcat` VALUES ('918', '220.181.108.154', 'new', '2014-12-01 19:43:34', '0');
INSERT INTO `useract_selectcat` VALUES ('919', '123.125.71.114', 'new', '2014-12-01 19:53:22', '0');
INSERT INTO `useract_selectcat` VALUES ('920', '207.46.13.71', 'new', '2014-12-01 20:09:34', '0');
INSERT INTO `useract_selectcat` VALUES ('921', '123.125.71.79', 'new', '2014-12-01 20:46:35', '0');
INSERT INTO `useract_selectcat` VALUES ('922', '220.181.108.150', 'new', '2014-12-01 20:46:41', '0');
INSERT INTO `useract_selectcat` VALUES ('923', '183.136.190.62', 'new', '2014-12-01 20:47:09', '0');
INSERT INTO `useract_selectcat` VALUES ('924', '66.249.74.210', 'new', '2014-12-01 21:21:02', '0');
INSERT INTO `useract_selectcat` VALUES ('925', '66.249.74.220', 'new', '2014-12-01 21:21:52', '0');
INSERT INTO `useract_selectcat` VALUES ('926', '101.226.167.249', 'new', '2014-12-01 21:30:24', '0');
INSERT INTO `useract_selectcat` VALUES ('927', '123.125.71.105', 'new', '2014-12-01 21:40:09', '0');
INSERT INTO `useract_selectcat` VALUES ('928', '220.181.108.185', 'new', '2014-12-01 21:40:22', '0');
INSERT INTO `useract_selectcat` VALUES ('929', '61.135.190.100', 'new', '2014-12-01 22:03:39', '0');
INSERT INTO `useract_selectcat` VALUES ('930', '66.249.74.222', 'new', '2014-12-01 22:18:19', '0');
INSERT INTO `useract_selectcat` VALUES ('931', '220.181.108.141', 'new', '2014-12-01 22:40:16', '0');
INSERT INTO `useract_selectcat` VALUES ('932', '123.125.71.92', 'new', '2014-12-01 22:40:57', '0');
INSERT INTO `useract_selectcat` VALUES ('933', '123.125.71.115', 'new', '2014-12-02 00:58:30', '0');
INSERT INTO `useract_selectcat` VALUES ('934', '220.181.108.179', 'new', '2014-12-02 00:58:56', '0');
INSERT INTO `useract_selectcat` VALUES ('935', '61.160.247.181', 'new', '2014-12-02 01:48:31', '0');
INSERT INTO `useract_selectcat` VALUES ('936', '191.7.84.78', 'new', '2014-12-02 01:52:33', '0');
INSERT INTO `useract_selectcat` VALUES ('937', '123.125.71.107', 'new', '2014-12-02 01:53:28', '0');
INSERT INTO `useract_selectcat` VALUES ('938', '220.181.108.177', 'new', '2014-12-02 01:53:35', '0');
INSERT INTO `useract_selectcat` VALUES ('939', '183.136.190.62', 'new', '2014-12-02 02:35:24', '0');
INSERT INTO `useract_selectcat` VALUES ('940', '220.181.108.155', 'new', '2014-12-02 02:47:28', '0');
INSERT INTO `useract_selectcat` VALUES ('941', '123.125.71.78', 'new', '2014-12-02 02:47:48', '0');
INSERT INTO `useract_selectcat` VALUES ('942', '177.67.98.81', 'new', '2014-12-02 03:19:59', '0');
INSERT INTO `useract_selectcat` VALUES ('943', '123.125.71.89', 'new', '2014-12-02 03:45:27', '0');
INSERT INTO `useract_selectcat` VALUES ('944', '220.181.108.178', 'new', '2014-12-02 03:45:32', '0');
INSERT INTO `useract_selectcat` VALUES ('945', '180.76.6.54', 'new', '2014-12-02 03:46:46', '0');
INSERT INTO `useract_selectcat` VALUES ('946', '220.181.51.81', 'new', '2014-12-02 05:14:50', '0');
INSERT INTO `useract_selectcat` VALUES ('947', '220.181.51.82', 'new', '2014-12-02 05:14:51', '0');
INSERT INTO `useract_selectcat` VALUES ('948', '199.58.86.211', 'new', '2014-12-02 05:48:12', '0');
INSERT INTO `useract_selectcat` VALUES ('949', '218.59.238.92', 'new', '2014-12-02 06:21:16', '0');
INSERT INTO `useract_selectcat` VALUES ('950', '218.59.238.92', 'new', '2014-12-02 06:21:27', '0');
INSERT INTO `useract_selectcat` VALUES ('951', '218.59.238.92', 'new', '2014-12-02 06:23:27', '0');
INSERT INTO `useract_selectcat` VALUES ('952', '123.125.71.109', 'new', '2014-12-02 06:48:25', '0');
INSERT INTO `useract_selectcat` VALUES ('953', '220.181.108.149', 'new', '2014-12-02 06:48:37', '0');
INSERT INTO `useract_selectcat` VALUES ('954', '182.254.208.62', 'new', '2014-12-02 07:31:32', '0');
INSERT INTO `useract_selectcat` VALUES ('955', '183.136.190.40', 'new', '2014-12-02 08:11:57', '0');
INSERT INTO `useract_selectcat` VALUES ('956', '123.125.71.89', 'new', '2014-12-02 08:42:02', '0');
INSERT INTO `useract_selectcat` VALUES ('957', '220.181.108.156', 'new', '2014-12-02 08:42:12', '0');
INSERT INTO `useract_selectcat` VALUES ('958', '123.125.71.111', 'new', '2014-12-02 09:42:50', '0');
INSERT INTO `useract_selectcat` VALUES ('959', '220.181.108.146', 'new', '2014-12-02 09:43:10', '0');
INSERT INTO `useract_selectcat` VALUES ('960', '202.121.55.246', 'new', '2014-12-02 10:26:16', '0');
INSERT INTO `useract_selectcat` VALUES ('961', '202.121.55.246', 'new', '2014-12-02 10:26:36', '1');
INSERT INTO `useract_selectcat` VALUES ('962', '202.121.55.246', 'new', '2014-12-02 10:26:38', '1');
INSERT INTO `useract_selectcat` VALUES ('963', '202.121.55.246', 'new', '2014-12-02 10:26:44', '1');
INSERT INTO `useract_selectcat` VALUES ('964', '202.121.55.246', 'new', '2014-12-02 10:27:19', '1');
INSERT INTO `useract_selectcat` VALUES ('965', '202.121.55.246', 'new', '2014-12-02 10:27:28', '1');
INSERT INTO `useract_selectcat` VALUES ('966', '202.121.55.246', 'animal_a01_Cat', '2014-12-02 10:27:35', '0');
INSERT INTO `useract_selectcat` VALUES ('967', '202.121.55.246', 'animal_a01_Cat', '2014-12-02 10:28:16', '1');
INSERT INTO `useract_selectcat` VALUES ('968', '202.121.55.246', 'animal_a01_Cat', '2014-12-02 10:29:03', '1');
INSERT INTO `useract_selectcat` VALUES ('969', '202.121.55.246', 'animal_a02_Dog', '2014-12-02 10:31:02', '0');
INSERT INTO `useract_selectcat` VALUES ('970', '202.121.55.246', 'new', '2014-12-02 10:32:35', '0');
INSERT INTO `useract_selectcat` VALUES ('971', '202.121.55.246', 'new', '2014-12-02 10:32:49', '1');
INSERT INTO `useract_selectcat` VALUES ('972', '202.121.55.246', 'new', '2014-12-02 10:33:12', '0');
INSERT INTO `useract_selectcat` VALUES ('973', '202.121.55.246', 'new', '2014-12-02 10:34:26', '1');
INSERT INTO `useract_selectcat` VALUES ('974', '202.121.55.246', 'new', '2014-12-02 10:34:58', '1');
INSERT INTO `useract_selectcat` VALUES ('975', '202.121.55.246', 'new', '2014-12-02 10:35:00', '1');
INSERT INTO `useract_selectcat` VALUES ('976', '202.121.55.246', 'new', '2014-12-02 10:35:03', '1');
INSERT INTO `useract_selectcat` VALUES ('977', '202.121.55.246', 'new', '2014-12-02 10:35:13', '1');
INSERT INTO `useract_selectcat` VALUES ('978', '202.121.55.246', 'new', '2014-12-02 10:35:16', '1');
INSERT INTO `useract_selectcat` VALUES ('979', '123.125.71.108', 'new', '2014-12-02 10:39:22', '0');
INSERT INTO `useract_selectcat` VALUES ('980', '220.181.108.146', 'new', '2014-12-02 10:39:36', '0');
INSERT INTO `useract_selectcat` VALUES ('981', '182.254.152.151', 'new', '2014-12-02 10:51:55', '0');
INSERT INTO `useract_selectcat` VALUES ('982', '91.250.15.69', 'new', '2014-12-02 10:57:20', '0');
INSERT INTO `useract_selectcat` VALUES ('983', '91.250.15.69', 'new', '2014-12-02 10:57:26', '0');
INSERT INTO `useract_selectcat` VALUES ('984', '91.250.15.69', 'new', '2014-12-02 10:57:27', '0');
INSERT INTO `useract_selectcat` VALUES ('985', '91.250.15.69', 'new', '2014-12-02 10:57:28', '0');
INSERT INTO `useract_selectcat` VALUES ('986', '202.121.55.246', 'new', '2014-12-02 11:18:46', '1');
INSERT INTO `useract_selectcat` VALUES ('987', '123.125.71.102', 'new', '2014-12-02 11:39:11', '0');
INSERT INTO `useract_selectcat` VALUES ('988', '220.181.108.168', 'new', '2014-12-02 11:39:26', '0');
INSERT INTO `useract_selectcat` VALUES ('989', '187.102.51.99', 'new', '2014-12-02 12:04:24', '0');
INSERT INTO `useract_selectcat` VALUES ('990', '181.198.63.36', 'new', '2014-12-02 12:09:56', '0');
INSERT INTO `useract_selectcat` VALUES ('991', '183.136.190.62', 'new', '2014-12-02 12:10:15', '0');
INSERT INTO `useract_selectcat` VALUES ('992', '220.181.108.143', 'new', '2014-12-02 12:37:18', '0');
INSERT INTO `useract_selectcat` VALUES ('993', '123.125.71.115', 'new', '2014-12-02 12:37:35', '0');
INSERT INTO `useract_selectcat` VALUES ('994', '207.46.13.71', 'new', '2014-12-02 12:50:30', '0');
INSERT INTO `useract_selectcat` VALUES ('995', '179.96.251.12', 'new', '2014-12-02 13:20:03', '0');
INSERT INTO `useract_selectcat` VALUES ('996', '220.181.108.176', 'new', '2014-12-02 13:43:53', '0');
INSERT INTO `useract_selectcat` VALUES ('997', '123.125.71.103', 'new', '2014-12-02 13:44:41', '0');
INSERT INTO `useract_selectcat` VALUES ('998', '186.4.180.168', 'new', '2014-12-02 13:48:15', '0');
INSERT INTO `useract_selectcat` VALUES ('999', '218.30.103.220', 'new', '2014-12-02 14:19:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1000', '220.181.108.154', 'new', '2014-12-02 14:41:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1001', '123.125.71.84', 'new', '2014-12-02 14:42:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1002', '207.46.13.71', 'new', '2014-12-02 14:51:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1003', '61.135.190.102', 'new', '2014-12-02 15:38:03', '0');
INSERT INTO `useract_selectcat` VALUES ('1004', '207.46.13.71', 'new', '2014-12-02 15:39:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1005', '123.125.71.84', 'new', '2014-12-02 15:53:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1006', '220.181.108.162', 'new', '2014-12-02 15:54:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1007', '123.125.71.113', 'new', '2014-12-02 16:52:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1008', '220.181.108.184', 'new', '2014-12-02 16:52:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1009', '220.181.108.154', 'new', '2014-12-02 17:47:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1010', '123.125.71.108', 'new', '2014-12-02 17:47:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1011', '37.115.187.165', 'new', '2014-12-02 17:52:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1012', '61.160.247.181', 'new', '2014-12-02 18:35:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1013', '123.125.71.83', 'new', '2014-12-02 18:44:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1014', '220.181.108.181', 'new', '2014-12-02 18:44:14', '0');
INSERT INTO `useract_selectcat` VALUES ('1015', '123.125.71.112', 'new', '2014-12-02 20:41:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1016', '220.181.108.186', 'new', '2014-12-02 20:41:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1017', '123.125.71.101', 'new', '2014-12-02 21:46:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1018', '220.181.108.156', 'new', '2014-12-02 21:47:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1019', '60.169.75.178', 'new', '2014-12-02 22:27:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1020', '54.174.82.127', 'new', '2014-12-02 22:29:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1021', '123.125.71.90', 'new', '2014-12-02 22:39:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1022', '220.181.108.179', 'new', '2014-12-02 22:40:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1023', '123.125.71.101', 'new', '2014-12-03 01:08:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1024', '220.181.108.162', 'new', '2014-12-03 01:09:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1025', '198.20.70.114', 'new', '2014-12-03 01:35:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1026', '123.125.71.88', 'new', '2014-12-03 02:05:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1027', '220.181.108.140', 'new', '2014-12-03 02:06:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1028', '85.10.199.67', 'new', '2014-12-03 02:35:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1029', '222.186.128.50', 'new', '2014-12-03 03:16:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1030', '54.169.56.13', 'new', '2014-12-03 03:27:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1031', '220.181.108.173', 'new', '2014-12-03 03:34:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1032', '222.186.21.206', 'new', '2014-12-03 03:43:29', '0');
INSERT INTO `useract_selectcat` VALUES ('1033', '123.125.71.81', 'new', '2014-12-03 04:55:50', '0');
INSERT INTO `useract_selectcat` VALUES ('1034', '220.181.108.177', 'new', '2014-12-03 04:56:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1035', '187.72.79.150', 'new', '2014-12-03 05:14:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1036', '218.30.103.220', 'new', '2014-12-03 05:56:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1037', '123.125.71.85', 'new', '2014-12-03 05:56:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1038', '220.181.108.170', 'new', '2014-12-03 05:56:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1039', '123.125.71.103', 'new', '2014-12-03 06:55:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1040', '220.181.108.153', 'new', '2014-12-03 06:55:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1041', '123.125.71.117', 'new', '2014-12-03 07:47:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1042', '220.181.108.144', 'new', '2014-12-03 07:47:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1043', '66.249.66.81', 'new', '2014-12-03 07:48:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1044', '123.125.71.78', 'new', '2014-12-03 08:48:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1045', '220.181.108.156', 'new', '2014-12-03 08:48:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1046', '222.186.128.50', 'new', '2014-12-03 08:51:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1047', '180.153.236.182', 'new', '2014-12-03 08:57:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1048', '200.251.58.190', 'new', '2014-12-03 09:07:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1049', '123.125.71.70', 'new', '2014-12-03 09:48:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1050', '220.181.108.184', 'new', '2014-12-03 09:48:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1051', '207.46.13.71', 'new', '2014-12-03 09:55:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1052', '189.50.110.204', 'new', '2014-12-03 10:10:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1053', '183.136.190.62', 'new', '2014-12-03 10:24:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1054', '123.125.71.92', 'new', '2014-12-03 10:51:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1055', '220.181.108.156', 'new', '2014-12-03 10:51:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1056', '61.160.213.110', 'new', '2014-12-03 10:57:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1057', '123.125.71.116', 'new', '2014-12-03 11:57:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1058', '220.181.108.139', 'new', '2014-12-03 11:57:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1059', '123.125.71.98', 'new', '2014-12-03 12:42:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1060', '220.181.108.158', 'new', '2014-12-03 12:42:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1061', '183.136.190.62', 'new', '2014-12-03 13:05:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1062', '123.125.71.101', 'new', '2014-12-03 13:44:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1063', '220.181.108.180', 'new', '2014-12-03 13:45:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1064', '123.125.71.96', 'new', '2014-12-03 14:46:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1065', '220.181.108.186', 'new', '2014-12-03 14:46:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1066', '222.186.128.57', 'new', '2014-12-03 14:57:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1067', '46.118.152.221', 'new', '2014-12-03 15:46:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1068', '177.126.232.49', 'new', '2014-12-03 16:37:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1069', '123.125.71.106', 'new', '2014-12-03 16:45:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1070', '220.181.108.146', 'new', '2014-12-03 16:45:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1071', '66.249.66.85', 'new', '2014-12-03 17:37:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1072', '123.125.71.81', 'new', '2014-12-03 17:44:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1073', '220.181.108.152', 'new', '2014-12-03 17:44:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1074', '177.75.206.85', 'new', '2014-12-03 18:36:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1075', '123.125.71.76', 'new', '2014-12-03 18:45:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1076', '220.181.108.179', 'new', '2014-12-03 18:45:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1077', '66.249.66.84', 'new', '2014-12-03 19:35:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1078', '123.125.71.94', 'new', '2014-12-03 19:41:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1079', '220.181.108.158', 'new', '2014-12-03 19:41:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1080', '222.186.128.54', 'new', '2014-12-03 19:43:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1081', '182.118.20.207', 'new', '2014-12-03 20:12:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1082', '123.125.71.112', 'new', '2014-12-03 20:43:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1083', '220.181.108.141', 'new', '2014-12-03 20:43:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1084', '123.125.71.83', 'new', '2014-12-03 21:41:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1085', '220.181.108.156', 'new', '2014-12-03 21:41:29', '0');
INSERT INTO `useract_selectcat` VALUES ('1086', '190.2.75.118', 'new', '2014-12-03 22:18:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1087', '123.125.71.106', 'new', '2014-12-03 22:42:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1088', '220.181.108.166', 'new', '2014-12-03 22:43:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1089', '220.181.108.152', 'new', '2014-12-03 23:44:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1090', '123.125.71.71', 'new', '2014-12-03 23:44:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1091', '123.125.71.81', 'new', '2014-12-04 01:48:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1092', '220.181.108.143', 'new', '2014-12-04 01:49:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1093', '123.125.71.94', 'new', '2014-12-04 02:55:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1094', '220.181.108.176', 'new', '2014-12-04 02:55:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1095', '207.46.13.71', 'new', '2014-12-04 03:35:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1096', '123.125.71.102', 'new', '2014-12-04 03:57:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1097', '220.181.108.160', 'new', '2014-12-04 03:57:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1098', '60.169.75.139', 'new', '2014-12-04 04:14:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1099', '123.125.71.22', 'new', '2014-12-04 04:19:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1100', '187.45.97.20', 'new', '2014-12-04 04:41:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1101', '123.125.71.97', 'new', '2014-12-04 05:05:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1102', '220.181.108.173', 'new', '2014-12-04 05:05:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1103', '186.225.41.134', 'new', '2014-12-04 06:29:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1104', '123.125.71.108', 'new', '2014-12-04 06:42:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1105', '220.181.108.162', 'new', '2014-12-04 06:42:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1106', '207.46.13.71', 'new', '2014-12-04 06:53:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1107', '60.169.75.178', 'new', '2014-12-04 07:12:12', '0');
INSERT INTO `useract_selectcat` VALUES ('1108', '177.93.92.62', 'new', '2014-12-04 07:32:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1109', '123.125.71.94', 'new', '2014-12-04 07:40:12', '0');
INSERT INTO `useract_selectcat` VALUES ('1110', '220.181.108.183', 'new', '2014-12-04 07:40:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1111', '123.125.71.107', 'new', '2014-12-04 08:55:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1112', '220.181.108.167', 'new', '2014-12-04 08:56:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1113', '222.186.128.57', 'new', '2014-12-04 09:00:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1114', '222.186.128.57', 'new', '2014-12-04 09:30:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1115', '123.125.71.86', 'new', '2014-12-04 09:51:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1116', '220.181.108.139', 'new', '2014-12-04 09:52:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1117', '42.120.161.78', 'new', '2014-12-04 10:17:12', '0');
INSERT INTO `useract_selectcat` VALUES ('1118', '207.46.13.71', 'new', '2014-12-04 10:35:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1119', '123.125.71.110', 'new', '2014-12-04 11:38:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1120', '220.181.108.143', 'new', '2014-12-04 11:38:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1121', '123.125.71.96', 'new', '2014-12-04 12:39:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1122', '220.181.108.174', 'new', '2014-12-04 12:39:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1123', '183.136.190.62', 'new', '2014-12-04 12:41:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1124', '123.125.71.70', 'new', '2014-12-04 13:42:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1125', '220.181.108.172', 'new', '2014-12-04 13:42:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1126', '220.181.108.122', 'new', '2014-12-04 13:50:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1127', '123.125.71.86', 'new', '2014-12-04 14:47:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1128', '220.181.108.182', 'new', '2014-12-04 14:47:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1129', '186.227.151.250', 'new', '2014-12-04 14:52:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1130', '183.136.190.62', 'new', '2014-12-04 14:59:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1131', '123.125.71.96', 'new', '2014-12-04 15:42:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1132', '220.181.108.182', 'new', '2014-12-04 15:42:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1133', '186.225.216.2', 'new', '2014-12-04 16:18:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1134', '187.94.82.177', 'new', '2014-12-04 16:39:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1135', '123.125.71.103', 'new', '2014-12-04 16:44:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1136', '220.181.108.162', 'new', '2014-12-04 16:44:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1137', '193.174.89.19', 'new', '2014-12-04 17:12:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1138', '66.249.74.230', 'new', '2014-12-04 17:12:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1139', '123.125.71.103', 'new', '2014-12-04 17:41:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1140', '220.181.108.158', 'new', '2014-12-04 17:41:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1141', '123.125.71.89', 'new', '2014-12-04 18:39:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1142', '220.181.108.149', 'new', '2014-12-04 18:39:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1143', '222.186.128.53', 'new', '2014-12-04 19:13:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1144', '123.125.71.101', 'new', '2014-12-04 19:44:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1145', '220.181.108.166', 'new', '2014-12-04 19:44:50', '0');
INSERT INTO `useract_selectcat` VALUES ('1146', '110.75.186.231', 'new', '2014-12-04 20:20:10', '0');
INSERT INTO `useract_selectcat` VALUES ('1147', '110.75.186.231', 'new', '2014-12-04 20:20:14', '0');
INSERT INTO `useract_selectcat` VALUES ('1148', '110.75.186.231', 'new', '2014-12-04 20:20:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1149', '110.75.186.231', 'new', '2014-12-04 20:20:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1150', '110.75.186.231', 'new', '2014-12-04 20:20:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1151', '110.75.186.231', 'new', '2014-12-04 20:20:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1152', '110.75.186.231', 'new', '2014-12-04 20:20:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1153', '123.125.71.88', 'new', '2014-12-04 20:56:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1154', '220.181.108.148', 'new', '2014-12-04 20:56:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1155', '218.77.79.48', 'new', '2014-12-04 21:37:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1156', '222.186.128.53', 'new', '2014-12-04 21:38:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1157', '123.125.71.101', 'new', '2014-12-04 21:50:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1158', '220.181.108.159', 'new', '2014-12-04 21:50:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1159', '222.186.128.57', 'new', '2014-12-04 22:01:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1160', '187.1.34.161', 'new', '2014-12-04 22:31:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1161', '123.125.71.86', 'new', '2014-12-04 22:41:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1162', '220.181.108.186', 'new', '2014-12-04 22:41:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1163', '222.186.128.57', 'new', '2014-12-04 23:05:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1164', '207.46.13.71', 'new', '2014-12-04 23:25:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1165', '123.125.71.69', 'new', '2014-12-04 23:40:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1166', '220.181.108.152', 'new', '2014-12-04 23:40:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1167', '222.186.128.53', 'new', '2014-12-04 23:47:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1168', '123.125.71.95', 'new', '2014-12-05 00:53:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1169', '220.181.108.151', 'new', '2014-12-05 00:54:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1170', '123.125.71.109', 'new', '2014-12-05 01:52:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1171', '220.181.108.171', 'new', '2014-12-05 01:52:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1172', '110.75.186.231', 'new', '2014-12-05 01:55:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1173', '110.75.186.231', 'new', '2014-12-05 01:55:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1174', '110.75.186.231', 'new', '2014-12-05 01:55:10', '0');
INSERT INTO `useract_selectcat` VALUES ('1175', '110.75.186.231', 'new', '2014-12-05 01:55:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1176', '110.75.186.231', 'new', '2014-12-05 01:55:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1177', '110.75.186.231', 'new', '2014-12-05 01:55:29', '0');
INSERT INTO `useract_selectcat` VALUES ('1178', '110.75.186.231', 'new', '2014-12-05 01:55:29', '0');
INSERT INTO `useract_selectcat` VALUES ('1179', '110.75.186.231', 'new', '2014-12-05 01:55:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1180', '110.75.186.231', 'new', '2014-12-05 01:55:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1181', '110.75.186.231', 'new', '2014-12-05 01:55:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1182', '110.75.186.231', 'new', '2014-12-05 01:55:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1183', '110.75.186.231', 'new', '2014-12-05 01:55:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1184', '110.75.186.231', 'new', '2014-12-05 01:55:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1185', '110.75.186.231', 'new', '2014-12-05 01:55:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1186', '110.75.186.231', 'new', '2014-12-05 01:55:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1187', '110.75.186.231', 'new', '2014-12-05 01:55:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1188', '110.75.186.231', 'new', '2014-12-05 01:55:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1189', '110.75.186.231', 'new', '2014-12-05 01:55:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1190', '110.75.186.231', 'new', '2014-12-05 01:55:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1191', '110.75.186.231', 'new', '2014-12-05 01:55:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1192', '110.75.186.231', 'new', '2014-12-05 01:55:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1193', '110.75.186.231', 'new', '2014-12-05 01:55:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1194', '110.75.186.231', 'new', '2014-12-05 01:55:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1195', '110.75.186.231', 'new', '2014-12-05 01:55:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1196', '110.75.186.231', 'new', '2014-12-05 01:55:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1197', '110.75.186.231', 'new', '2014-12-05 01:55:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1198', '110.75.186.231', 'new', '2014-12-05 01:55:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1199', '110.75.186.231', 'new', '2014-12-05 01:55:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1200', '110.75.186.231', 'new', '2014-12-05 01:55:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1201', '110.75.186.231', 'new', '2014-12-05 01:55:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1202', '110.75.186.231', 'new', '2014-12-05 01:55:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1203', '110.75.186.231', 'new', '2014-12-05 01:55:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1204', '110.75.186.231', 'new', '2014-12-05 01:56:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1205', '218.59.238.92', 'new', '2014-12-05 02:05:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1206', '1.1.131.158', 'new', '2014-12-05 02:46:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1207', '123.125.71.106', 'new', '2014-12-05 02:51:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1208', '220.181.108.172', 'new', '2014-12-05 02:51:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1209', '189.91.128.70', 'new', '2014-12-05 03:16:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1210', '177.126.195.247', 'new', '2014-12-05 03:21:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1211', '222.186.128.53', 'new', '2014-12-05 03:50:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1212', '220.181.108.142', 'new', '2014-12-05 03:54:10', '0');
INSERT INTO `useract_selectcat` VALUES ('1213', '123.125.71.110', 'new', '2014-12-05 03:55:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1214', '37.77.49.95', 'new', '2014-12-05 04:49:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1215', '60.169.75.178', 'new', '2014-12-05 05:47:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1216', '115.159.67.175', 'new', '2014-12-05 05:53:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1217', '123.125.71.103', 'new', '2014-12-05 05:57:09', '0');
INSERT INTO `useract_selectcat` VALUES ('1218', '220.181.108.156', 'new', '2014-12-05 05:57:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1219', '222.186.128.53', 'new', '2014-12-05 06:03:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1220', '183.136.190.62', 'new', '2014-12-05 06:47:03', '0');
INSERT INTO `useract_selectcat` VALUES ('1221', '60.169.75.178', 'new', '2014-12-05 06:51:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1222', '183.136.190.62', 'new', '2014-12-05 07:02:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1223', '60.169.75.178', 'new', '2014-12-05 07:22:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1224', '115.159.64.163', 'new', '2014-12-05 07:26:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1225', '220.181.108.79', 'new', '2014-12-05 07:31:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1226', '123.125.71.115', 'new', '2014-12-05 07:37:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1227', '220.181.108.155', 'new', '2014-12-05 07:37:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1228', '222.186.128.57', 'new', '2014-12-05 07:55:09', '0');
INSERT INTO `useract_selectcat` VALUES ('1229', '220.181.108.178', 'new', '2014-12-05 08:42:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1230', '123.125.71.80', 'new', '2014-12-05 08:42:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1231', '60.169.75.178', 'new', '2014-12-05 08:47:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1232', '71.6.165.200', 'new', '2014-12-05 09:03:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1233', '123.125.71.71', 'new', '2014-12-05 09:41:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1234', '220.181.108.154', 'new', '2014-12-05 09:41:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1235', '91.237.112.214', 'new', '2014-12-05 09:50:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1236', '220.181.108.139', 'new', '2014-12-05 10:40:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1237', '123.125.71.77', 'new', '2014-12-05 10:40:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1238', '60.169.75.178', 'new', '2014-12-05 10:43:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1239', '220.181.108.166', 'new', '2014-12-05 11:38:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1240', '123.125.71.73', 'new', '2014-12-05 11:39:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1241', '185.4.227.194', 'new', '2014-12-05 11:53:50', '0');
INSERT INTO `useract_selectcat` VALUES ('1242', '171.13.14.5', 'new', '2014-12-05 11:57:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1243', '177.128.18.140', 'new', '2014-12-05 12:08:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1244', '123.125.71.89', 'new', '2014-12-05 12:39:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1245', '220.181.108.146', 'new', '2014-12-05 12:40:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1246', '222.186.128.53', 'new', '2014-12-05 13:43:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1247', '123.125.71.115', 'new', '2014-12-05 13:51:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1248', '220.181.108.152', 'new', '2014-12-05 13:51:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1249', '222.186.128.53', 'new', '2014-12-05 14:05:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1250', '177.87.208.161', 'new', '2014-12-05 14:08:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1251', '222.186.128.54', 'new', '2014-12-05 14:36:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1252', '222.186.128.57', 'new', '2014-12-05 15:19:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1253', '171.13.14.30', 'new', '2014-12-05 15:19:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1254', '123.125.71.110', 'new', '2014-12-05 15:50:12', '0');
INSERT INTO `useract_selectcat` VALUES ('1255', '220.181.108.158', 'new', '2014-12-05 15:50:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1256', '66.249.74.225', 'new', '2014-12-05 16:39:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1257', '123.125.71.117', 'new', '2014-12-05 16:42:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1258', '220.181.108.152', 'new', '2014-12-05 16:42:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1259', '222.186.128.57', 'new', '2014-12-05 16:45:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1260', '123.125.71.76', 'new', '2014-12-05 17:43:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1261', '220.181.108.143', 'new', '2014-12-05 17:43:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1262', '222.186.128.53', 'new', '2014-12-05 18:15:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1263', '66.249.74.226', 'new', '2014-12-05 18:23:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1264', '61.160.247.181', 'new', '2014-12-05 18:34:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1265', '220.181.108.184', 'new', '2014-12-05 18:41:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1266', '123.125.71.108', 'new', '2014-12-05 18:42:00', '0');
INSERT INTO `useract_selectcat` VALUES ('1267', '222.186.128.52', 'new', '2014-12-05 19:01:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1268', '94.198.242.85', 'new', '2014-12-05 19:03:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1269', '207.46.13.71', 'new', '2014-12-05 19:27:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1270', '123.125.71.79', 'new', '2014-12-05 19:37:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1271', '220.181.108.178', 'new', '2014-12-05 19:37:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1272', '177.84.192.14', 'new', '2014-12-05 20:03:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1273', '220.181.108.79', 'new', '2014-12-05 20:39:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1274', '123.125.71.100', 'new', '2014-12-05 20:39:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1275', '42.120.145.233', 'new', '2014-12-05 21:30:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1276', '123.125.71.105', 'new', '2014-12-05 21:37:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1277', '220.181.108.149', 'new', '2014-12-05 21:37:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1278', '218.30.103.220', 'new', '2014-12-05 22:03:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1279', '123.125.71.109', 'new', '2014-12-05 22:37:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1280', '220.181.108.181', 'new', '2014-12-05 22:37:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1281', '207.46.13.71', 'new', '2014-12-05 22:56:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1282', '182.254.152.151', 'new', '2014-12-05 23:32:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1283', '123.125.71.69', 'new', '2014-12-05 23:42:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1284', '220.181.108.150', 'new', '2014-12-05 23:42:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1285', '42.120.145.16', 'new', '2014-12-06 00:03:14', '0');
INSERT INTO `useract_selectcat` VALUES ('1286', '123.125.71.100', 'new', '2014-12-06 00:53:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1287', '220.181.108.173', 'new', '2014-12-06 00:53:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1288', '42.120.145.76', 'new', '2014-12-06 01:16:00', '0');
INSERT INTO `useract_selectcat` VALUES ('1289', '61.135.190.222', 'new', '2014-12-06 02:06:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1290', '66.240.236.119', 'new', '2014-12-06 02:28:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1291', '210.35.251.202', 'new', '2014-12-06 03:31:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1292', '123.125.71.100', 'new', '2014-12-06 03:46:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1293', '220.181.108.144', 'new', '2014-12-06 03:46:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1294', '162.243.251.175', 'new', '2014-12-06 04:39:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1295', '220.181.108.173', 'new', '2014-12-06 04:54:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1296', '123.125.71.88', 'new', '2014-12-06 04:55:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1297', '220.181.108.177', 'new', '2014-12-06 05:42:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1298', '123.125.71.102', 'new', '2014-12-06 05:42:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1299', '183.136.190.40', 'new', '2014-12-06 06:41:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1300', '179.97.95.217', 'new', '2014-12-06 06:41:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1301', '220.181.108.139', 'new', '2014-12-06 06:55:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1302', '123.125.71.78', 'new', '2014-12-06 06:56:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1303', '183.136.190.62', 'new', '2014-12-06 06:58:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1304', '220.181.108.146', 'new', '2014-12-06 07:46:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1305', '123.125.71.115', 'new', '2014-12-06 07:46:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1306', '222.186.128.57', 'new', '2014-12-06 08:02:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1307', '66.249.74.225', 'new', '2014-12-06 08:04:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1308', '123.125.71.110', 'new', '2014-12-06 09:00:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1309', '220.181.108.180', 'new', '2014-12-06 09:00:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1310', '220.181.108.175', 'new', '2014-12-06 09:41:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1311', '123.125.71.73', 'new', '2014-12-06 09:43:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1312', '182.118.22.141', 'new', '2014-12-06 09:51:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1313', '220.181.108.147', 'new', '2014-12-06 10:38:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1314', '123.125.71.91', 'new', '2014-12-06 10:38:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1315', '123.125.71.99', 'new', '2014-12-06 11:39:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1316', '220.181.108.187', 'new', '2014-12-06 11:39:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1317', '123.125.71.73', 'new', '2014-12-06 12:37:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1318', '220.181.108.141', 'new', '2014-12-06 12:37:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1319', '220.181.108.151', 'new', '2014-12-06 13:43:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1320', '123.125.71.71', 'new', '2014-12-06 13:44:00', '0');
INSERT INTO `useract_selectcat` VALUES ('1321', '164.40.153.130', 'new', '2014-12-06 14:44:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1322', '123.125.71.103', 'new', '2014-12-06 15:04:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1323', '220.181.108.172', 'new', '2014-12-06 15:07:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1324', '123.125.71.77', 'new', '2014-12-06 16:05:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1325', '220.181.108.152', 'new', '2014-12-06 16:06:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1326', '61.135.203.76', 'new', '2014-12-06 16:13:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1327', '42.120.145.101', 'new', '2014-12-06 16:51:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1328', '123.125.71.112', 'new', '2014-12-06 16:54:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1329', '220.181.108.162', 'new', '2014-12-06 16:55:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1330', '115.159.67.192', 'new', '2014-12-06 17:17:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1331', '179.97.95.217', 'new', '2014-12-06 17:35:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1332', '144.76.178.233', 'new', '2014-12-06 17:35:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1333', '144.76.178.233', 'new', '2014-12-06 17:35:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1334', '144.76.178.233', 'new', '2014-12-06 17:35:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1335', '201.46.57.194', 'new', '2014-12-06 17:46:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1336', '123.125.71.109', 'new', '2014-12-06 18:12:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1337', '220.181.108.144', 'new', '2014-12-06 18:13:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1338', '207.46.13.71', 'new', '2014-12-06 18:34:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1339', '222.186.128.52', 'new', '2014-12-06 18:58:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1340', '101.226.89.64', 'new', '2014-12-06 19:36:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1341', '123.125.71.69', 'new', '2014-12-06 19:41:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1342', '220.181.108.144', 'new', '2014-12-06 19:41:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1343', '115.159.66.194', 'new', '2014-12-06 19:56:54', '0');
INSERT INTO `useract_selectcat` VALUES ('1344', '201.33.54.214', 'new', '2014-12-06 19:59:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1345', '46.118.152.221', 'new', '2014-12-06 20:22:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1346', '42.120.145.230', 'new', '2014-12-06 20:24:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1347', '222.186.128.52', 'new', '2014-12-06 21:26:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1348', '123.125.71.101', 'new', '2014-12-06 21:39:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1349', '220.181.108.174', 'new', '2014-12-06 21:39:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1350', '222.186.128.53', 'new', '2014-12-06 22:42:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1351', '123.125.71.104', 'new', '2014-12-06 22:43:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1352', '220.181.108.182', 'new', '2014-12-06 22:43:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1353', '207.46.13.71', 'new', '2014-12-06 22:48:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1354', '88.199.20.2', 'new', '2014-12-06 23:01:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1355', '95.65.8.100', 'new', '2014-12-06 23:12:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1356', '123.125.71.69', 'new', '2014-12-07 00:48:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1357', '220.181.108.156', 'new', '2014-12-07 00:48:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1358', '118.134.138.10', 'new', '2014-12-15 01:44:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1359', '118.134.138.10', 'new', '2014-12-15 01:44:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1360', '119.147.146.189', 'new', '2014-12-15 01:44:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1361', '123.125.71.77', 'new', '2014-12-15 02:02:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1362', '220.181.108.171', 'new', '2014-12-15 02:02:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1363', '118.134.138.10', 'new', '2014-12-16 07:37:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1364', '118.134.138.10', 'new', '2014-12-16 07:37:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1365', '183.136.190.62', 'new', '2014-12-16 07:42:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1366', '123.125.71.103', 'new', '2014-12-16 07:43:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1367', '220.181.108.175', 'new', '2014-12-16 07:44:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1368', '66.249.74.214', 'new', '2014-12-16 07:54:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1369', '157.55.39.64', 'new', '2014-12-16 08:24:00', '0');
INSERT INTO `useract_selectcat` VALUES ('1370', '218.30.103.220', 'new', '2014-12-16 08:36:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1371', '202.121.55.245', 'new', '2014-12-16 08:37:03', '0');
INSERT INTO `useract_selectcat` VALUES ('1372', '202.121.55.245', 'new', '2014-12-16 08:37:41', '1');
INSERT INTO `useract_selectcat` VALUES ('1373', '66.249.74.219', 'new', '2014-12-16 08:38:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1374', '123.125.71.100', 'new', '2014-12-16 08:40:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1375', '220.181.108.182', 'new', '2014-12-16 08:41:09', '0');
INSERT INTO `useract_selectcat` VALUES ('1376', '61.160.213.110', 'new', '2014-12-16 08:49:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1377', '180.153.236.150', 'new', '2014-12-16 09:07:14', '0');
INSERT INTO `useract_selectcat` VALUES ('1378', '202.121.55.245', 'animal_a04_Mouse', '2014-12-16 09:36:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1379', '202.121.55.245', 'animal_a02_Dog', '2014-12-16 09:36:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1380', '202.121.55.245', 'animal_a01_Cat', '2014-12-16 09:37:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1381', '202.121.55.245', 'animal_a02_Dog', '2014-12-16 09:37:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1382', '202.121.55.245', 'animal_a02_Dog', '2014-12-16 09:37:39', '1');
INSERT INTO `useract_selectcat` VALUES ('1383', '202.121.55.245', 'new', '2014-12-16 09:37:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1384', '202.121.55.245', 'new', '2014-12-16 09:37:50', '1');
INSERT INTO `useract_selectcat` VALUES ('1385', '202.121.55.245', 'new', '2014-12-16 09:37:51', '1');
INSERT INTO `useract_selectcat` VALUES ('1386', '202.121.55.245', 'new', '2014-12-16 09:37:52', '1');
INSERT INTO `useract_selectcat` VALUES ('1387', '202.121.55.245', 'new', '2014-12-16 09:37:55', '1');
INSERT INTO `useract_selectcat` VALUES ('1388', '123.125.71.100', 'new', '2014-12-16 09:42:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1389', '220.181.108.160', 'new', '2014-12-16 09:42:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1390', '202.121.55.245', 'new', '2014-12-16 09:42:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1391', '202.121.55.245', 'new', '2014-12-16 09:44:39', '1');
INSERT INTO `useract_selectcat` VALUES ('1392', '202.121.55.245', 'new', '2014-12-16 09:44:40', '1');
INSERT INTO `useract_selectcat` VALUES ('1393', '202.121.55.245', 'new', '2014-12-16 09:44:42', '1');
INSERT INTO `useract_selectcat` VALUES ('1394', '202.121.55.245', 'animal_a03_Rabbit', '2014-12-16 09:45:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1395', '202.121.55.245', 'animal_a05_Lion', '2014-12-16 09:45:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1396', '202.121.55.245', 'animal_a02_Dog', '2014-12-16 09:45:32', '0');
INSERT INTO `useract_selectcat` VALUES ('1397', '202.121.55.245', 'new', '2014-12-16 09:45:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1398', '202.121.55.245', 'new', '2014-12-16 09:45:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1399', '202.121.55.245', 'new', '2014-12-16 09:49:35', '1');
INSERT INTO `useract_selectcat` VALUES ('1400', '202.121.55.245', 'new', '2014-12-16 09:53:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1401', '202.121.55.245', 'new', '2014-12-16 09:53:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1402', '202.121.55.245', 'new', '2014-12-16 09:53:24', '1');
INSERT INTO `useract_selectcat` VALUES ('1403', '202.121.55.245', 'new', '2014-12-16 09:53:25', '1');
INSERT INTO `useract_selectcat` VALUES ('1404', '202.121.55.245', 'new', '2014-12-16 09:53:25', '1');
INSERT INTO `useract_selectcat` VALUES ('1405', '202.121.55.245', 'new', '2014-12-16 09:54:17', '1');
INSERT INTO `useract_selectcat` VALUES ('1406', '202.121.55.245', 'new', '2014-12-16 09:54:17', '1');
INSERT INTO `useract_selectcat` VALUES ('1407', '202.121.55.245', 'new', '2014-12-16 09:54:23', '1');
INSERT INTO `useract_selectcat` VALUES ('1408', '212.159.73.13', 'new', '2014-12-16 09:55:12', '0');
INSERT INTO `useract_selectcat` VALUES ('1409', '118.134.138.10', 'new', '2014-12-21 15:25:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1410', '118.134.138.10', 'new', '2014-12-21 15:25:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1411', '220.181.108.140', 'new', '2014-12-21 15:39:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1412', '123.125.71.110', 'new', '2014-12-21 15:40:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1413', '118.134.138.10', 'new', '2014-12-21 15:54:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1414', '118.134.138.10', 'new', '2014-12-21 15:54:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1415', '118.134.138.10', 'new', '2014-12-21 15:55:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1416', '118.134.138.10', 'new', '2014-12-21 15:56:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1417', '202.121.55.246', 'new', '2014-12-22 15:17:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1418', '202.121.55.247', 'new', '2014-12-22 15:22:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1419', '220.181.108.187', 'new', '2014-12-22 15:36:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1420', '187.87.48.18', 'new', '2014-12-22 15:37:00', '0');
INSERT INTO `useract_selectcat` VALUES ('1421', '123.125.71.73', 'new', '2014-12-22 15:37:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1422', '123.125.71.84', 'new', '2014-12-22 16:41:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1423', '220.181.108.187', 'new', '2014-12-22 16:41:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1424', '123.125.71.76', 'new', '2014-12-22 17:40:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1425', '220.181.108.175', 'new', '2014-12-22 17:40:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1426', '198.52.110.95', 'new', '2014-12-22 18:04:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1427', '220.181.127.124', 'new', '2014-12-22 18:11:10', '0');
INSERT INTO `useract_selectcat` VALUES ('1428', '220.181.132.193', 'new', '2014-12-22 18:11:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1429', '123.125.71.77', 'new', '2014-12-22 18:39:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1430', '220.181.108.148', 'new', '2014-12-22 18:39:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1431', '180.153.236.168', 'new', '2014-12-22 18:59:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1432', '189.45.232.235', 'new', '2014-12-22 19:26:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1433', '157.55.39.64', 'new', '2014-12-22 19:27:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1434', '123.125.71.117', 'new', '2014-12-22 19:36:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1435', '220.181.108.171', 'new', '2014-12-22 19:36:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1436', '123.125.71.91', 'new', '2014-12-22 20:39:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1437', '220.181.108.155', 'new', '2014-12-22 20:39:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1438', '198.74.123.201', 'new', '2014-12-22 20:46:59', '0');
INSERT INTO `useract_selectcat` VALUES ('1439', '220.181.108.139', 'new', '2014-12-22 21:37:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1440', '179.96.247.65', 'new', '2014-12-22 21:37:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1441', '123.125.71.102', 'new', '2014-12-22 21:37:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1442', '115.159.66.205', 'new', '2014-12-22 21:51:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1443', '123.125.71.115', 'new', '2014-12-22 22:35:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1444', '220.181.108.181', 'new', '2014-12-22 22:36:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1445', '220.181.108.155', 'new', '2014-12-22 23:36:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1446', '123.125.71.96', 'new', '2014-12-22 23:37:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1447', '198.52.110.95', 'new', '2014-12-23 00:06:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1448', '191.243.9.206', 'new', '2014-12-23 00:09:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1449', '118.134.138.10', 'new', '2014-12-23 00:33:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1450', '118.134.138.10', 'new', '2014-12-23 00:37:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1451', '118.134.138.10', 'new', '2014-12-23 00:37:59', '1');
INSERT INTO `useract_selectcat` VALUES ('1452', '118.134.138.10', 'new', '2014-12-23 00:37:59', '1');
INSERT INTO `useract_selectcat` VALUES ('1453', '118.134.138.10', 'new', '2014-12-23 00:54:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1454', '157.55.39.64', 'new', '2014-12-23 01:18:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1455', '178.255.215.70', 'new', '2014-12-23 01:19:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1456', '220.181.108.186', 'new', '2014-12-23 01:55:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1457', '123.125.71.81', 'new', '2014-12-23 01:55:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1458', '198.148.116.133', 'new', '2014-12-23 02:38:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1459', '173.164.136.238', 'new', '2014-12-23 02:40:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1460', '220.181.108.158', 'new', '2014-12-23 02:58:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1461', '123.125.71.102', 'new', '2014-12-23 02:58:50', '0');
INSERT INTO `useract_selectcat` VALUES ('1462', '115.159.67.238', 'new', '2014-12-23 03:20:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1463', '66.249.73.181', 'new', '2014-12-23 03:43:10', '0');
INSERT INTO `useract_selectcat` VALUES ('1464', '157.55.39.64', 'new', '2014-12-23 03:44:50', '0');
INSERT INTO `useract_selectcat` VALUES ('1465', '131.100.34.48', 'new', '2014-12-23 03:50:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1466', '186.5.206.85', 'new', '2014-12-23 04:52:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1467', '123.125.71.23', 'new', '2014-12-23 05:23:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1468', '198.52.110.95', 'new', '2014-12-23 05:54:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1469', '177.75.16.63', 'new', '2014-12-23 06:15:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1470', '222.186.128.53', 'new', '2014-12-23 06:27:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1471', '220.181.108.139', 'new', '2014-12-23 06:37:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1472', '123.125.71.105', 'new', '2014-12-23 06:37:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1473', '66.249.73.234', 'new', '2014-12-23 07:35:10', '0');
INSERT INTO `useract_selectcat` VALUES ('1474', '123.125.71.102', 'new', '2014-12-23 07:38:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1475', '220.181.108.155', 'new', '2014-12-23 07:38:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1476', '180.153.198.247', 'new', '2014-12-23 07:47:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1477', '220.181.108.102', 'new', '2014-12-23 07:52:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1478', '200.237.144.36', 'new', '2014-12-23 08:15:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1479', '183.136.190.62', 'new', '2014-12-23 08:21:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1480', '123.125.71.84', 'new', '2014-12-23 08:39:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1481', '198.74.123.201', 'new', '2014-12-23 08:39:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1482', '220.181.108.165', 'new', '2014-12-23 08:39:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1483', '202.121.55.246', 'new', '2014-12-23 09:14:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1484', '202.121.55.246', 'new', '2014-12-23 09:26:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1485', '202.121.55.246', 'new', '2014-12-23 09:26:41', '1');
INSERT INTO `useract_selectcat` VALUES ('1486', '202.121.55.246', 'animal_d07_MarineMollusc', '2014-12-23 09:30:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1487', '202.121.55.246', 'new', '2014-12-23 09:30:46', '1');
INSERT INTO `useract_selectcat` VALUES ('1488', '202.121.55.246', 'animal_a11_Panda', '2014-12-23 09:30:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1489', '202.121.55.246', 'new', '2014-12-23 09:31:27', '1');
INSERT INTO `useract_selectcat` VALUES ('1490', '202.121.55.246', 'new', '2014-12-23 09:31:27', '1');
INSERT INTO `useract_selectcat` VALUES ('1491', '202.121.55.246', 'new', '2014-12-23 09:31:31', '1');
INSERT INTO `useract_selectcat` VALUES ('1492', '202.121.55.246', 'animal_a01_Cat', '2014-12-23 09:31:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1493', '202.121.55.246', 'new', '2014-12-23 09:34:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1494', '202.121.55.246', 'new', '2014-12-23 09:34:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1495', '202.121.55.246', 'new', '2014-12-23 09:34:29', '0');
INSERT INTO `useract_selectcat` VALUES ('1496', '220.181.108.79', 'new', '2014-12-23 09:37:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1497', '123.125.71.114', 'new', '2014-12-23 09:40:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1498', '186.194.31.210', 'new', '2014-12-23 10:26:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1499', '220.181.108.178', 'new', '2014-12-23 10:36:22', '0');
INSERT INTO `useract_selectcat` VALUES ('1500', '123.125.71.83', 'new', '2014-12-23 10:36:43', '0');
INSERT INTO `useract_selectcat` VALUES ('1501', '198.148.116.133', 'new', '2014-12-23 11:01:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1502', '220.181.108.147', 'new', '2014-12-23 11:38:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1503', '123.125.71.114', 'new', '2014-12-23 11:39:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1504', '180.153.198.233', 'new', '2014-12-23 11:53:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1505', '222.186.128.53', 'new', '2014-12-23 12:35:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1506', '220.181.108.183', 'new', '2014-12-23 12:39:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1507', '123.125.71.115', 'new', '2014-12-23 12:41:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1508', '66.249.73.218', 'new', '2014-12-23 13:02:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1509', '183.136.142.171', 'new', '2014-12-23 13:32:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1510', '123.125.71.85', 'new', '2014-12-23 13:43:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1511', '220.181.108.177', 'new', '2014-12-23 13:43:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1512', '123.125.71.99', 'new', '2015-02-06 06:07:37', '0');
INSERT INTO `useract_selectcat` VALUES ('1513', '220.181.108.171', 'new', '2015-02-06 06:07:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1514', '118.134.143.137', 'new', '2015-02-06 06:13:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1515', '118.134.143.137', 'new', '2015-02-06 06:16:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1516', '118.134.143.137', 'new', '2015-02-06 06:18:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1517', '118.134.143.137', 'new', '2015-02-06 06:22:19', '0');
INSERT INTO `useract_selectcat` VALUES ('1518', '118.134.143.137', 'new', '2015-02-06 06:22:21', '1');
INSERT INTO `useract_selectcat` VALUES ('1519', '118.134.143.137', 'new', '2015-02-06 06:22:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1520', '118.134.143.137', 'new', '2015-02-06 06:22:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1521', '118.134.143.137', 'new', '2015-02-06 06:25:03', '1');
INSERT INTO `useract_selectcat` VALUES ('1522', '118.134.143.137', 'new', '2015-02-06 06:25:05', '1');
INSERT INTO `useract_selectcat` VALUES ('1523', '118.134.143.137', 'new', '2015-02-06 06:25:06', '1');
INSERT INTO `useract_selectcat` VALUES ('1524', '118.134.143.137', 'new', '2015-02-06 06:25:06', '1');
INSERT INTO `useract_selectcat` VALUES ('1525', '118.134.143.137', 'new', '2015-02-06 06:25:06', '1');
INSERT INTO `useract_selectcat` VALUES ('1526', '118.134.143.137', 'new', '2015-02-06 06:25:07', '1');
INSERT INTO `useract_selectcat` VALUES ('1527', '118.134.143.137', 'new', '2015-02-06 06:25:16', '1');
INSERT INTO `useract_selectcat` VALUES ('1528', '118.134.143.137', 'new', '2015-02-06 06:25:19', '1');
INSERT INTO `useract_selectcat` VALUES ('1529', '118.134.143.137', 'new', '2015-02-06 06:26:19', '1');
INSERT INTO `useract_selectcat` VALUES ('1530', '118.134.143.137', 'new', '2015-02-06 06:26:20', '1');
INSERT INTO `useract_selectcat` VALUES ('1531', '118.134.143.137', 'new', '2015-02-06 06:26:24', '1');
INSERT INTO `useract_selectcat` VALUES ('1532', '118.134.143.137', 'new', '2015-02-06 06:26:24', '1');
INSERT INTO `useract_selectcat` VALUES ('1533', '118.134.143.137', 'new', '2015-02-06 06:28:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1534', '118.134.143.137', 'new', '2015-02-06 06:28:04', '1');
INSERT INTO `useract_selectcat` VALUES ('1535', '118.134.143.137', 'new', '2015-02-06 06:28:05', '1');
INSERT INTO `useract_selectcat` VALUES ('1536', '118.134.143.137', 'new', '2015-02-06 06:28:05', '1');
INSERT INTO `useract_selectcat` VALUES ('1537', '118.134.143.137', 'new', '2015-02-06 06:30:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1538', '118.134.143.137', 'new', '2015-02-06 06:30:05', '1');
INSERT INTO `useract_selectcat` VALUES ('1539', '118.134.143.137', 'new', '2015-02-06 06:30:11', '1');
INSERT INTO `useract_selectcat` VALUES ('1540', '123.125.71.87', 'new', '2015-02-06 07:12:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1541', '220.181.108.182', 'new', '2015-02-06 07:12:35', '0');
INSERT INTO `useract_selectcat` VALUES ('1542', '183.136.190.62', 'new', '2015-02-06 07:56:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1543', '177.75.141.138', 'new', '2015-02-06 08:18:05', '0');
INSERT INTO `useract_selectcat` VALUES ('1544', '123.125.71.87', 'new', '2015-02-06 08:28:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1545', '220.181.108.172', 'new', '2015-02-06 08:28:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1546', '123.125.71.110', 'new', '2015-02-06 09:20:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1547', '220.181.108.158', 'new', '2015-02-06 09:20:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1548', '61.160.213.110', 'new', '2015-02-06 10:00:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1549', '123.125.71.74', 'new', '2015-02-06 10:00:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1550', '220.181.108.160', 'new', '2015-02-06 10:01:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1551', '123.125.71.87', 'new', '2015-02-06 11:01:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1552', '220.181.108.155', 'new', '2015-02-06 11:01:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1553', '198.148.116.133', 'new', '2015-02-06 11:39:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1554', '123.125.71.70', 'new', '2015-02-06 11:55:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1555', '220.181.108.183', 'new', '2015-02-06 11:56:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1556', '123.125.71.80', 'new', '2015-02-06 12:57:00', '0');
INSERT INTO `useract_selectcat` VALUES ('1557', '220.181.108.178', 'new', '2015-02-06 12:57:16', '0');
INSERT INTO `useract_selectcat` VALUES ('1558', '186.195.109.84', 'new', '2015-02-06 13:03:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1559', '220.181.108.139', 'new', '2015-02-06 14:06:07', '0');
INSERT INTO `useract_selectcat` VALUES ('1560', '123.125.71.83', 'new', '2015-02-06 14:09:20', '0');
INSERT INTO `useract_selectcat` VALUES ('1561', '157.55.39.76', 'new', '2015-02-06 15:21:03', '0');
INSERT INTO `useract_selectcat` VALUES ('1562', '220.181.108.181', 'new', '2015-02-06 15:21:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1563', '123.125.71.103', 'new', '2015-02-06 15:22:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1564', '123.125.71.71', 'new', '2015-02-06 16:16:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1565', '220.181.108.155', 'new', '2015-02-06 16:17:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1566', '203.195.174.136', 'new', '2015-02-06 16:32:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1567', '123.125.71.112', 'new', '2015-02-06 17:01:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1568', '220.181.108.154', 'new', '2015-02-06 17:01:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1569', '157.55.39.76', 'new', '2015-02-06 17:36:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1570', '192.99.107.82', 'new', '2015-02-06 18:01:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1571', '123.125.71.110', 'new', '2015-02-06 18:13:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1572', '220.181.108.141', 'new', '2015-02-06 18:13:49', '0');
INSERT INTO `useract_selectcat` VALUES ('1573', '198.74.110.164', 'new', '2015-02-06 18:29:04', '0');
INSERT INTO `useract_selectcat` VALUES ('1574', '123.125.71.82', 'new', '2015-02-06 18:58:50', '0');
INSERT INTO `useract_selectcat` VALUES ('1575', '220.181.108.187', 'new', '2015-02-06 18:59:13', '0');
INSERT INTO `useract_selectcat` VALUES ('1576', '222.186.128.53', 'new', '2015-02-06 19:09:36', '0');
INSERT INTO `useract_selectcat` VALUES ('1577', '157.55.39.76', 'new', '2015-02-06 19:37:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1578', '123.125.71.114', 'new', '2015-02-06 20:01:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1579', '220.181.108.146', 'new', '2015-02-06 20:02:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1580', '185.4.227.194', 'new', '2015-02-06 20:30:25', '0');
INSERT INTO `useract_selectcat` VALUES ('1581', '198.74.110.164', 'new', '2015-02-06 20:46:47', '0');
INSERT INTO `useract_selectcat` VALUES ('1582', '61.160.213.110', 'new', '2015-02-06 21:53:41', '0');
INSERT INTO `useract_selectcat` VALUES ('1583', '123.125.71.108', 'new', '2015-02-06 21:58:42', '0');
INSERT INTO `useract_selectcat` VALUES ('1584', '220.181.108.187', 'new', '2015-02-06 21:59:02', '0');
INSERT INTO `useract_selectcat` VALUES ('1585', '183.60.243.240', 'new', '2015-02-06 22:11:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1586', '198.74.111.236', 'new', '2015-02-06 22:31:52', '0');
INSERT INTO `useract_selectcat` VALUES ('1587', '123.125.71.107', 'new', '2015-02-06 22:59:09', '0');
INSERT INTO `useract_selectcat` VALUES ('1588', '220.181.108.147', 'new', '2015-02-06 22:59:30', '0');
INSERT INTO `useract_selectcat` VALUES ('1589', '123.125.71.76', 'new', '2015-02-06 23:59:55', '0');
INSERT INTO `useract_selectcat` VALUES ('1590', '220.181.108.173', 'new', '2015-02-07 00:00:17', '0');
INSERT INTO `useract_selectcat` VALUES ('1591', '183.60.244.20', 'new', '2015-02-07 00:04:01', '0');
INSERT INTO `useract_selectcat` VALUES ('1592', '198.74.111.236', 'new', '2015-02-07 00:46:11', '0');
INSERT INTO `useract_selectcat` VALUES ('1593', '123.125.71.80', 'new', '2015-02-07 01:10:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1594', '220.181.108.148', 'new', '2015-02-07 01:10:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1595', '101.226.179.84', 'new', '2015-02-07 01:28:26', '0');
INSERT INTO `useract_selectcat` VALUES ('1596', '110.75.186.226', 'new', '2015-02-07 02:14:27', '0');
INSERT INTO `useract_selectcat` VALUES ('1597', '110.75.186.226', 'new', '2015-02-07 02:14:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1598', '110.75.186.226', 'new', '2015-02-07 02:14:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1599', '110.75.186.226', 'new', '2015-02-07 02:14:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1600', '110.75.186.226', 'new', '2015-02-07 02:14:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1601', '110.75.186.226', 'new', '2015-02-07 02:14:29', '0');
INSERT INTO `useract_selectcat` VALUES ('1602', '123.125.71.102', 'new', '2015-02-07 02:23:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1603', '220.181.108.175', 'new', '2015-02-07 02:23:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1604', '192.99.107.10', 'new', '2015-02-07 02:33:46', '0');
INSERT INTO `useract_selectcat` VALUES ('1605', '183.136.190.62', 'new', '2015-02-07 02:56:14', '0');
INSERT INTO `useract_selectcat` VALUES ('1606', '198.74.110.164', 'new', '2015-02-07 03:00:58', '0');
INSERT INTO `useract_selectcat` VALUES ('1607', '123.125.71.100', 'new', '2015-02-07 03:25:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1608', '220.181.108.167', 'new', '2015-02-07 03:26:31', '0');
INSERT INTO `useract_selectcat` VALUES ('1609', '123.125.71.81', 'new', '2015-02-07 04:10:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1610', '220.181.108.158', 'new', '2015-02-07 04:11:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1611', '110.75.186.211', 'new', '2015-02-07 04:37:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1612', '61.160.247.181', 'new', '2015-02-07 04:43:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1613', '222.186.128.53', 'new', '2015-02-07 04:48:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1614', '198.74.111.236', 'new', '2015-02-07 05:05:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1615', '123.125.71.72', 'new', '2015-02-07 06:14:18', '0');
INSERT INTO `useract_selectcat` VALUES ('1616', '220.181.108.146', 'new', '2015-02-07 06:14:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1617', '198.74.111.236', 'new', '2015-02-07 07:09:51', '0');
INSERT INTO `useract_selectcat` VALUES ('1618', '123.125.71.83', 'new', '2015-02-07 07:23:53', '0');
INSERT INTO `useract_selectcat` VALUES ('1619', '220.181.108.146', 'new', '2015-02-07 07:24:15', '0');
INSERT INTO `useract_selectcat` VALUES ('1620', '182.118.53.34', 'new', '2015-02-07 07:28:48', '0');
INSERT INTO `useract_selectcat` VALUES ('1621', '104.236.225.20', 'new', '2015-02-07 08:11:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1622', '61.160.247.181', 'new', '2015-02-07 08:32:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1623', '123.151.149.222', 'new', '2015-02-07 08:52:23', '0');
INSERT INTO `useract_selectcat` VALUES ('1624', '183.136.190.62', 'new', '2015-02-07 08:53:44', '0');
INSERT INTO `useract_selectcat` VALUES ('1625', '123.125.71.70', 'new', '2015-02-07 09:19:56', '0');
INSERT INTO `useract_selectcat` VALUES ('1626', '220.181.108.185', 'new', '2015-02-07 09:20:24', '0');
INSERT INTO `useract_selectcat` VALUES ('1627', '198.74.111.236', 'new', '2015-02-07 09:20:33', '0');
INSERT INTO `useract_selectcat` VALUES ('1628', '123.125.71.74', 'new', '2015-02-07 09:58:08', '0');
INSERT INTO `useract_selectcat` VALUES ('1629', '220.181.108.177', 'new', '2015-02-07 09:58:34', '0');
INSERT INTO `useract_selectcat` VALUES ('1630', '123.125.71.117', 'new', '2015-02-07 10:59:21', '0');
INSERT INTO `useract_selectcat` VALUES ('1631', '220.181.108.175', 'new', '2015-02-07 10:59:45', '0');
INSERT INTO `useract_selectcat` VALUES ('1632', '198.74.113.150', 'new', '2015-02-07 11:30:57', '0');
INSERT INTO `useract_selectcat` VALUES ('1633', '123.125.71.85', 'new', '2015-02-07 11:58:28', '0');
INSERT INTO `useract_selectcat` VALUES ('1634', '31.202.241.242', 'new', '2015-02-07 12:02:38', '0');
INSERT INTO `useract_selectcat` VALUES ('1635', '31.202.241.242', 'new', '2015-02-07 12:02:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1636', '31.202.241.242', 'new', '2015-02-07 12:02:39', '0');
INSERT INTO `useract_selectcat` VALUES ('1637', '31.202.241.242', 'new', '2015-02-07 12:02:40', '0');
INSERT INTO `useract_selectcat` VALUES ('1638', '189.50.144.37', 'new', '2015-02-07 12:04:06', '0');
INSERT INTO `useract_selectcat` VALUES ('1639', '220.181.108.173', 'new', '2015-02-07 12:13:39', '0');

-- ----------------------------
-- Procedure structure for addPic
-- ----------------------------
DROP PROCEDURE IF EXISTS `addPic`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `addPic`()
    SQL SECURITY INVOKER
BEGIN
		INSERT INTO Pic()
		VALUES();

		SELECT LAST_INSERT_ID() AS picId
		FROM Pic 
		LIMIT 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addUserAct_selectCat
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUserAct_selectCat`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `addUserAct_selectCat`(IN `in_userIPAddress` varchar(255),IN `in_catId` varchar(255),IN `in_isMore` tinyint)
    SQL SECURITY INVOKER
BEGIN
		INSERT INTO userAct_selectCat(
															userIPAddress,
															catId,
															selectDateTime,
															isMore
		)
		VALUES (
				in_userIPAddress,
				in_catId,
				NOW(),
				in_isMore
		);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for modifyPic
-- ----------------------------
DROP PROCEDURE IF EXISTS `modifyPic`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `modifyPic`(IN `in_picId` int,IN `in_picWidth` smallint,IN `in_picHeight` smallint,IN `in_picDesc` varchar(255),IN `in_picPublishDateTime` datetime,IN `in_catId` varchar(255))
    SQL SECURITY INVOKER
BEGIN
		UPDATE Pic
		SET picWidth = in_picWidth,
				picHeight = in_picHeight,
				picDesc = in_picDesc,
				picPublishDateTime = in_picPublishDateTime,
				catId = in_catId,
				picStatus = 1
		WHERE picId = in_picId;

		SELECT ROW_COUNT();
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectAdmin
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectAdmin`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `selectAdmin`(IN `in_adminAccount` varchar(255),IN `in_adminPass` varchar(255))
    SQL SECURITY INVOKER
BEGIN
		SELECT adminId,
					 adminName
		FROM Admin
		WHERE adminAccount = in_adminAccount
			AND adminPass = in_adminPass;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectCat
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectCat`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `selectCat`(IN `in_catId` varchar(255))
    SQL SECURITY INVOKER
BEGIN
		SELECT catId,
					 catName
		FROM cat
		WHERE catId = in_catId;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectCats
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectCats`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `selectCats`(IN `in_catId` varchar(255))
    SQL SECURITY INVOKER
BEGIN
		IF (in_catId = 'all') THEN
				SELECT catId,
							 catName
				FROM Cat;
		ELSE
				SELECT catId,
					     catName
				FROM Cat
				WHERE catId LIKE CONCAT(in_catId, '%');
		END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectMaxPublishDateTime
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectMaxPublishDateTime`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `selectMaxPublishDateTime`(IN `in_catId` varchar(255))
    SQL SECURITY INVOKER
BEGIN
		IF (in_catId IS NULL) THEN
				SELECT MAX(picPublishDateTime)
				FROM Pic
				WHERE picStatus = 1;
		ELSE
				SELECT MAX(picPublishDateTime)
				FROM Pic
				WHERE catId = in_catId
					AND picStatus = 1;
		END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectPic
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectPic`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `selectPic`(IN `in_picId` int)
    SQL SECURITY INVOKER
BEGIN
		DECLARE t_catId VARCHAR(255);  /* 临时记录分类编号 */
		DECLARE minPicId INT;  /* 本分类图片最小编号 */
		DECLARE maxPicId INT;  /* 本分类图片最大编号 */
		DECLARE prevPicId INT;  /* 上一个图片的编号 */
		DECLARE nextPicId INT;  /* 下一个图片的编号 */
		DECLARE nowDateTime DATETIME DEFAULT NOW();  /* 当前日期与时间 */


		/* 获取当前图片的分类 */
		SELECT catId INTO t_catId
		FROM Pic
		WHERE picId = in_picId;


		/* 获取本分类图片最小编号 */
		SELECT MIN(picId) INTO minPicId
		FROM Pic	
		WHERE catId = t_catId
			AND picPublishDateTime <= nowDateTime
			AND picStatus = 1;


		/* 获取本分类图片最大编号 */
		SELECT MAX(picId) INTO maxPicId
		FROM Pic	
		WHERE catId = t_catId
		AND picPublishDateTime <= nowDateTime
			AND picStatus = 1;
				

		/* 获取上一个图片的编号 */
		SELECT picId INTO prevPicId
		FROM Pic
		WHERE picId < in_picId
      AND catId = t_catId
			AND picPublishDateTime <= nowDateTime
			AND picStatus = 1
		ORDER BY picId DESC
		LIMIT 1;
		/* 如果上一个编号取不到（到头了），则设其为最大的编号*/
		IF (prevPicId IS NULL) THEN
				SET prevPicId = maxPicId;
		END IF;


		/* 获取下一个图片的编号 */
		SELECT picId INTO nextPicId
		FROM Pic
		WHERE picId > in_picId
      AND catId = t_catId
			AND picPublishDateTime <= nowDateTime
			AND picStatus = 1
		LIMIT 1;
		/* 如果下一个编号是取不到（到尾了），则设其为最小的的编号 */
		IF (nextPicId IS NULL) THEN
				SET nextPicId = minPicId;
		END IF;


		/* 获取所需数据 */
		SELECT picId,
					 prevPicId,
					 nextPicId
		FROM Pic
		WHERE picId = in_picId;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for selectPics
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectPics`;
DELIMITER ;;
CREATE DEFINER=`cateyes`@`%` PROCEDURE `selectPics`(IN `in_catId` varchar(255),  IN `in_picPublishDateTime` datetime, IN `in_picNum` smallint)
    SQL SECURITY INVOKER
BEGIN
		/* 分类为0时，取全部图片 */
		IF (in_catId = 'new') THEN
				SET @sql = CONCAT('SELECT picId,
																	picWidth,
																	picHeight,
																	picPublishDateTime
													 FROM Pic
													 WHERE picPublishDateTime < \'', in_picPublishDateTime, '\'
														 AND picStatus = 1		
													 ORDER BY picPublishDateTime DESC
													 LIMIT ', in_picNum);
		/* 按分类取图片 */
		ELSE
				SET @sql = CONCAT('SELECT picId,
																	picWidth,
																	picHeight,
																	picPublishDateTime
													 FROM Pic
													 WHERE picPublishDateTime < \'', in_picPublishDateTime, '\'
														 AND catId = \'', in_catId, '\'
													   AND picStatus = 1
													 ORDER BY picPublishDateTime DESC
													 LIMIT ', in_picNum);
		END IF;

		PREPARE stmt FROM @sql;
    EXECUTE stmt;

END
;;
DELIMITER ;
