/*
Navicat MySQL Data Transfer

Source Server         : zzh
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : user_manager

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-25 21:01:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `data_user`
-- ----------------------------
DROP TABLE IF EXISTS `data_user`;
CREATE TABLE `data_user` (
  `user_id` bigint(32) NOT NULL COMMENT '32用户主键',
  `nick_name` varchar(32) NOT NULL COMMENT '32用户昵称',
  `user_name` char(12) NOT NULL COMMENT '12登录用户名',
  `password` char(16) NOT NULL COMMENT '16登录密码',
  `role_name` varchar(32) DEFAULT NULL COMMENT '32角色名称',
  `role_code` varchar(32) DEFAULT NULL COMMENT '32角色编码',
  `certify_identity` tinyint(1) NOT NULL COMMENT '1是否通过身份证明',
  `mobile_phone` bigint(11) DEFAULT NULL COMMENT '11手机',
  `telephone` bigint(8) DEFAULT NULL COMMENT '8电话',
  `job` varchar(64) DEFAULT NULL COMMENT '64职务',
  `job_unit` varchar(64) DEFAULT NULL COMMENT '64工作单位',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户列表';

-- ----------------------------
-- Records of data_user
-- ----------------------------
