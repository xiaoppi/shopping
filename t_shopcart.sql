/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-01 17:47:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_shopcart
-- ----------------------------
DROP TABLE IF EXISTS `t_shopcart`;
CREATE TABLE `t_shopcart` (
  `cartid` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `imgUrl` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `count` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `cartTime` datetime NOT NULL,
  `buyTime` datetime DEFAULT NULL,
  `proid` int(11) NOT NULL,
  `statusCode` int(11) NOT NULL,
  `commentStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shopcart
-- ----------------------------
INSERT INTO `t_shopcart` VALUES ('00000000001', '/images/maojin.png', '柔软毛巾', '13.00', '3', '123@qq.com', 'nickname', '2017-10-27 17:04:30', '2017-10-30 16:33:27', '2', '1', '1');
INSERT INTO `t_shopcart` VALUES ('00000000002', '/images/zhentou.png', '舒适枕头', '55.00', '1', '123@qq.com', 'nickname', '2017-10-30 15:28:34', '2017-10-19 16:33:32', '1', '1', '1');
INSERT INTO `t_shopcart` VALUES ('00000000007', '/images/maojin.png', '柔软毛巾', '13.00', '8', '123@qq.com', 'nickname', '2017-10-30 16:18:23', '2017-10-31 16:33:35', '2', '1', '1');
INSERT INTO `t_shopcart` VALUES ('00000000008', '/images/maojin.png', '柔软毛巾', '13.00', '8', '123@qq.com', 'nickname', '2017-10-30 16:19:19', '2017-10-28 16:33:39', '2', '0', null);
INSERT INTO `t_shopcart` VALUES ('00000000010', '/images/baozhen.png', '抱枕', '25.00', '1', '123@qq.com', 'nickname', '2017-10-30 16:39:56', '2017-10-31 16:38:30', '3', '1', '0');
INSERT INTO `t_shopcart` VALUES ('00000000009', '/images/baozhen.png', '抱枕', '25.00', '1', '123@qq.com', 'nickname', '2017-10-30 16:39:55', '2017-11-01 16:23:23', '3', '1', null);
INSERT INTO `t_shopcart` VALUES ('00000000011', '/images/baozhen.png', '抱枕', '25.00', '1', '123@qq.com', 'nickname', '2017-10-30 16:39:56', null, '3', '0', null);
INSERT INTO `t_shopcart` VALUES ('00000000012', '/images/baozhen.png', '抱枕', '25.00', '5', '123@qq.com', 'nickname', '2017-10-30 16:40:00', null, '3', '0', null);
INSERT INTO `t_shopcart` VALUES ('00000000013', '/images/maojin.png', '柔软毛巾', '13.00', '2', '123@qq.com', 'nickname', '2017-10-31 14:22:38', null, '2', '0', null);
INSERT INTO `t_shopcart` VALUES ('00000000014', '/images/zhentou.png', '舒适枕头', '55.00', '3', '123@qq.com', 'nickname', '2017-10-31 14:25:17', null, '1', '0', null);
INSERT INTO `t_shopcart` VALUES ('00000000015', '/images/zhentou.png', '舒适枕头', '55.00', '7', '123@qq.com', 'nickname', '2017-11-01 17:31:54', null, '1', '0', null);
INSERT INTO `t_shopcart` VALUES ('00000000016', '/images/baozhen.png', '抱枕', '25.00', '1', '123@qq.com', 'nickname', '2017-11-01 17:32:58', null, '3', '0', null);
