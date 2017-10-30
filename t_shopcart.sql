/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-27 18:08:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_shopcart
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcart`;
CREATE TABLE `t_shopcart` (
  `cartid` int(11) NOT NULL,
  `imgUrl` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `count` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `cartTime` datetime NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcart
-- ----------------------------
INSERT INTO `t_shopcart` VALUES ('1', '/images/maojin.png', '柔软毛巾', '13.00', '3', '123@qq.com', 'nickname', '2017-10-27 17:04:30', '2');
