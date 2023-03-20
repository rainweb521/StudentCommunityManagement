/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost
 Source Database       : webDemo

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : utf-8

 Date: 04/21/2019 22:21:07 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `admin`
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('admin', 'admin');
COMMIT;

-- ----------------------------
--  Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `time` varchar(20) NOT NULL DEFAULT '',
  `credit` int(11) NOT NULL,
  `belong` varchar(100) NOT NULL DEFAULT '',
  `place` varchar(30) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL DEFAULT '',
  `selected` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `course`
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('2', '油画', '2015/2016(2)', '4', '山水画社', '广知楼103', '21', '书法基础A班：每周六下午15:30~17:00（1.5个周学时），共开设10周；           书法基础B班：每周六晚18:30~20:00（1.5个周学时），共开设10周；           书法提高班：每周日15:00~17:00（2个周学时），共开设10周； ', '21'), ('3', '读书交流会', '2015/2016(2)', '2', '书山有路书社', '图书馆二楼', '20', '本课程突破传统面试技巧培训讲授式、零散型、非延续、少反馈的缺点，采用体验式培训的方式，重实战，多模拟，发挥人力资源管理专业优势，提供真实案例，给予专业点评，再辅以课程延续性、可及时反馈的优势，为学员在大学生活中常面临的社团面试及求职面试等提供有效指导。本课程将基于面试技巧、礼仪等方面的基本理论，结合大量课堂情境模拟练习及案例分析，帮助学员提高自身面试技能和礼仪修养，从容应对各种面试。', '16'), ('6', 'test', '2013/2014(2)', '3', 'test', 'test', '20', '11', '0');
COMMIT;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `sex` varchar(2) NOT NULL DEFAULT '',
  `year` varchar(4) NOT NULL DEFAULT '',
  `major` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `student`
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('1', '2222', '小雨', '女', '2013', '软件工程'), ('201309550104', '1234', '陈曦曦', '女', '2013', '软件工程');
COMMIT;

-- ----------------------------
--  Table structure for `study`
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `s_id` varchar(20) NOT NULL DEFAULT '',
  `s_name` varchar(20) NOT NULL DEFAULT '',
  `s_major` varchar(100) NOT NULL DEFAULT '',
  `c_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL DEFAULT '',
  `c_belong` varchar(100) NOT NULL DEFAULT '',
  `c_credit` int(11) NOT NULL,
  `c_time` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `study`
-- ----------------------------
BEGIN;
INSERT INTO `study` VALUES ('4', '1', '小雨', '软件工程', '3', '读书交流会', '书山有路书社', '2', '2015/2016(2)'), ('5', '1', '小雨', '软件工程', '2', '油画', '山水画社', '4', '2015/2016(2)');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
