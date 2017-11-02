/*
Navicat MySQL Data Transfer

Source Server         : FROM
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-02 18:13:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_gain
-- ----------------------------
DROP TABLE IF EXISTS `t_gain`;
CREATE TABLE `t_gain` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gnickname` varchar(100) NOT NULL,
  `gemail` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gain
-- ----------------------------
INSERT INTO `t_gain` VALUES ('1', 'lovelone', '123@qq.com', '13265358199', '黑龙江茅房村茅坑街厕所1号');
