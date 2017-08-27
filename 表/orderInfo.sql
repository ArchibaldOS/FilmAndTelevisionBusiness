/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : sys_manage

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-08-27 16:38:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `orderNumber` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `filmName` varchar(30) NOT NULL,
  `cinemaName` varchar(20) NOT NULL,
  `hallName` varchar(20) NOT NULL,
  `rowNumber` int(11) NOT NULL,
  `columnNumber` int(11) NOT NULL,
  `saleTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `releaseTime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ticketNumber` int(11) NOT NULL,
  `unsoldTicketNumber` int(11) NOT NULL,
  `soldTicketNumber` int(11) NOT NULL,
  `price` float NOT NULL,
  `payMethod` varchar(30) NOT NULL,
  `orderState` int(11) NOT NULL,
  PRIMARY KEY (`orderNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('1', '123', '战狼2', '紫荆影厅', '2号厅', '2', '2', '2017-08-31 16:38:01', '2017-08-27 16:38:06', '50', '40', '10', '20', '支付宝', '1');
SET FOREIGN_KEY_CHECKS=1;
