/*
Navicat MySQL Data Transfer

Source Server         : zdb
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : etherpad

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2016-12-03 14:39:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `commentId` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `score` int(11) default NULL,
  `timestamp` varchar(255) default NULL,
  `commenterId` varchar(255) default NULL,
  `authorId` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pad
-- ----------------------------
DROP TABLE IF EXISTS `pad`;
CREATE TABLE `pad` (
  `padID` varchar(255) default NULL,
  `padName` varchar(255) default NULL,
  `pid` int(11) NOT NULL auto_increment,
  `padgroupid` varchar(255) default NULL,
  `padgroupname` varchar(255) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) default '0',
  `password` varchar(255) default NULL,
  `groupnumber` int(11) default NULL,
  `usermapper` int(255) default '0',
  `authorid` varchar(255) default NULL,
  `usergroupid` varchar(255) default NULL,
  `usergrouppadname` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup` (
  `groupnum` int(11) default NULL,
  `groupid` varchar(255) default NULL,
  `groupname` varchar(255) default NULL,
  `grouppadname` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
