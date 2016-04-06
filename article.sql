/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : node

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-04-06 17:05:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(9000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('310', 'ac', 'ac');
INSERT INTO `article` VALUES ('311', 'c', 'c');
INSERT INTO `article` VALUES ('312', 'a', 'a');
INSERT INTO `article` VALUES ('313', 'b', 'b');
INSERT INTO `article` VALUES ('314', 'c', 'c');
INSERT INTO `article` VALUES ('315', 'adc', 'ddc');
INSERT INTO `article` VALUES ('316', 'a', 'a');
