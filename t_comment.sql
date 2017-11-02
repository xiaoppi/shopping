/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-02 18:13:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `commentTime` datetime NOT NULL,
  `did` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', '柔软的毛巾', '服务很好', '947917797@qq.con', 'nick', '2017-10-27 15:45:47', '2');
INSERT INTO `t_comment` VALUES ('2', '毛巾', '很实惠', '1234@qq.com', 'ccc', '2017-10-27 15:48:23', '2');
INSERT INTO `t_comment` VALUES ('3', '抱枕', '态度差', '123@qq.com', 'nick', '2017-10-27 15:49:00', '3');
INSERT INTO `t_comment` VALUES ('4', '柔软毛巾', 'qweqwe', '123@qq.com', 'nickname', '2017-11-01 15:42:39', '2');
INSERT INTO `t_comment` VALUES ('5', '舒适枕头', 'qweqwe', '123@qq.com', 'nickname', '2017-11-01 15:47:55', '1');
INSERT INTO `t_comment` VALUES ('6', '柔软毛巾', 'wowowowow', '123@qq.com', 'nickname', '2017-11-01 16:06:16', '2');
INSERT INTO `t_comment` VALUES ('7', '舒适枕头', 'wqeqweqwe', '123@qq.com', 'nickname', '2017-11-01 16:06:52', '1');
INSERT INTO `t_comment` VALUES ('8', '柔软毛巾', 'qwqeqwe', '123@qq.com', 'nickname', '2017-11-01 16:08:48', '2');
INSERT INTO `t_comment` VALUES ('9', '柔软毛巾', 'qweqweqweqwe', '1234@qq.com', 'qie', '2017-11-02 15:04:44', '2');
INSERT INTO `t_comment` VALUES ('10', '大大的枕头', '456456456', '1234@qq.com', 'qie', '2017-11-02 15:19:30', '4');
