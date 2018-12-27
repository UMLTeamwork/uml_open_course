/*
Navicat MySQL Data Transfer

Source Server         : 118.89.151.135_3306
Source Server Version : 50560
Source Host           : 118.89.151.135:3306
Source Database       : uml_open_course_db

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-12-24 03:38:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `uml_teaching_plan`
-- ----------------------------
DROP TABLE IF EXISTS `uml_teaching_plan`;
CREATE TABLE `uml_teaching_plan` (
  `planId` int(11) NOT NULL AUTO_INCREMENT,
  `planName` varchar(100) NOT NULL,
  `planURL` varchar(200) NOT NULL,
  `enable` enum('false','true') NOT NULL DEFAULT 'false',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`planId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uml_teaching_plan
-- ----------------------------
INSERT INTO `uml_teaching_plan` VALUES ('1', '面向对象分析与设计--授课计划', 'resource/面向对象分析与设计--授课计划.pdf', 'true', '2018-12-24 03:25:32');
