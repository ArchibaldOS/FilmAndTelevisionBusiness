/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : sys_manage

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-09-01 09:45:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `adminID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminUsername` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for groupinfo
-- ----------------------------
DROP TABLE IF EXISTS `groupinfo`;
CREATE TABLE `groupinfo` (
  `groupID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `groupName` varchar(50) DEFAULT NULL,
  `groupStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`groupID`),
  UNIQUE KEY `groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupinfo
-- ----------------------------

-- ----------------------------
-- Table structure for groupmenuinfo
-- ----------------------------
DROP TABLE IF EXISTS `groupmenuinfo`;
CREATE TABLE `groupmenuinfo` (
  `groupMenuID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gro_groupID` int(11) DEFAULT NULL,
  `men_menuID` int(11) DEFAULT NULL,
  PRIMARY KEY (`groupMenuID`),
  UNIQUE KEY `groupMenuID` (`groupMenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupmenuinfo
-- ----------------------------

-- ----------------------------
-- Table structure for menuinfo
-- ----------------------------
DROP TABLE IF EXISTS `menuinfo`;
CREATE TABLE `menuinfo` (
  `menuID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menuName` varchar(50) DEFAULT NULL,
  `menuURL` varchar(255) DEFAULT NULL,
  `fatherMenuName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menuID`),
  UNIQUE KEY `menuID` (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menuinfo
-- ----------------------------

-- ----------------------------
-- Table structure for screeninginfo
-- ----------------------------
DROP TABLE IF EXISTS `screeninginfo`;
CREATE TABLE `screeninginfo` (
  `screeningNumber` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filmName` varchar(30) NOT NULL,
  `cinemaName` varchar(20) NOT NULL,
  `hallName` varchar(20) NOT NULL,
  `saleTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `releaseTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ticketNumber` int(11) NOT NULL,
  `unsoldTicketNumber` int(11) NOT NULL,
  `soldTicketNumber` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`screeningNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of screeninginfo
-- ----------------------------
INSERT INTO `screeninginfo` VALUES ('1', '战狼2', '紫荆影厅', '2号厅', '2017-09-04 18:09:01', '2017-08-27 16:38:06', '50', '40', '10', '20');

-- ----------------------------
-- Table structure for structinfo
-- ----------------------------
DROP TABLE IF EXISTS `structinfo`;
CREATE TABLE `structinfo` (
  `departmentID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cinemaName` varchar(30) NOT NULL,
  `departmentName` varchar(50) NOT NULL,
  `leader` varchar(50) DEFAULT NULL,
  `higherDepartmentID` int(11) DEFAULT NULL,
  `isTop` int(1) NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of structinfo
-- ----------------------------
INSERT INTO `structinfo` VALUES ('3', '紫荆影院', '科学部', '刘', '3', '0');
INSERT INTO `structinfo` VALUES ('4', '紫荆影院', '科学技术部', '刘', '3', '0');
INSERT INTO `structinfo` VALUES ('5', '紫荆影院', 'bububu部', 'Lisa', null, '0');

-- ----------------------------
-- Table structure for usergroupinfo
-- ----------------------------
DROP TABLE IF EXISTS `usergroupinfo`;
CREATE TABLE `usergroupinfo` (
  `userGroupID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `groupID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`userGroupID`),
  UNIQUE KEY `userGroupID` (`userGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usergroupinfo
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `leader` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('7', '后', '22', null, null, 'male', null, null, null, '厨师', '厨房', '捏捏');
INSERT INTO `userinfo` VALUES ('9', 'nihaop', null, null, null, 'male', null, null, null, '厨师', '厨房', '捏捏');
INSERT INTO `userinfo` VALUES ('17', 'sam', null, null, null, 'male', null, null, null, 'maid', 'smadnasf', 'mnfaif');
INSERT INTO `userinfo` VALUES ('18', 'sam', null, null, null, 'male', null, null, null, 'maid', 'smadnasf', 'mnfaif');
INSERT INTO `userinfo` VALUES ('19', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('20', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('21', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('22', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('23', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('24', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('25', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('26', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `userinfo` VALUES ('27', null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for vipdata
-- ----------------------------
DROP TABLE IF EXISTS `vipdata`;
CREATE TABLE `vipdata` (
  `VipID` int(11) NOT NULL AUTO_INCREMENT,
  `VipName` varchar(20) DEFAULT NULL,
  `VipUsername` varchar(20) NOT NULL,
  `VipPassword` varchar(20) NOT NULL,
  `VipTelephone` varchar(11) NOT NULL,
  `VipRank` varchar(5) DEFAULT NULL,
  `VipTotal` int(11) DEFAULT NULL,
  `VipBalance` int(11) DEFAULT NULL,
  `VipGender` varchar(5) DEFAULT NULL,
  `VipBirthday` date DEFAULT NULL,
  `VipLastLogin` date DEFAULT NULL,
  `VipRegisterDate` date NOT NULL,
  PRIMARY KEY (`VipID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of vipdata
-- ----------------------------
INSERT INTO `vipdata` VALUES ('3', '模块', 'dz333', '123456', '15069535662', '钻石会员', null, '100000', '男', null, null, '2017-08-15');
INSERT INTO `vipdata` VALUES ('4', '撒', 'dz444', '1234', '13214343245', '黄金会员', null, '2000', '男', null, null, '2017-08-02');
INSERT INTO `vipdata` VALUES ('5', null, '1234', '1234', '13212345567', '钻石会员', null, '100000', null, null, null, '2017-08-24');
INSERT INTO `vipdata` VALUES ('6', '流量', '12345', '12345', '13244444444', '普通会员', null, '1', '男', null, null, '2017-08-24');
INSERT INTO `vipdata` VALUES ('7', '12312', '12312312312', '123123', '让12421312', '钻石会员', null, '100000', '男', null, null, '2017-08-26');
INSERT INTO `vipdata` VALUES ('8', '123123', '123', '123123213', '123123', '黄金会员', null, '2000', '男', null, null, '2017-08-27');
INSERT INTO `vipdata` VALUES ('9', '412421', '1232', '12321312', '12312', '钻石会员', null, '100000', '男', null, null, '2017-08-27');
INSERT INTO `vipdata` VALUES ('10', '312321', '123123124', '12312312421', '12421', '黄金会员', null, '2000', '男', null, null, '2017-08-27');
INSERT INTO `vipdata` VALUES ('11', '123121', '123123124', '123123', '123123', '普通会员', null, '1', '男', null, null, '2017-08-27');
SET FOREIGN_KEY_CHECKS=1;
