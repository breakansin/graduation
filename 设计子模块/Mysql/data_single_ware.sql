/*
Navicat MySQL Data Transfer

Source Server         : zzh
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : ware_manager

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-25 21:03:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `data_single_ware`
-- ----------------------------
DROP TABLE IF EXISTS `data_single_ware`;
CREATE TABLE `data_single_ware` (
  `single_ware_id` bigint(32) NOT NULL COMMENT '商品主键',
  `ware_type_id` bigint(32) NOT NULL COMMENT '商品类型主键冗余',
  `single_ware_describe` varchar(128) DEFAULT NULL COMMENT '商品详细描述',
  `single_ware_name` varchar(64) NOT NULL COMMENT '商品名称',
  `single_ware_code` varchar(32) DEFAULT NULL COMMENT '商品编码',
  `single_ware_price` double(12,0) NOT NULL COMMENT '商品单价（人民币：元）',
  `single_ware_long` double(8,0) DEFAULT NULL COMMENT '长（米）',
  `single_ware_width` double(8,0) DEFAULT NULL COMMENT '宽（米）',
  `single_ware_height` double(8,0) DEFAULT NULL COMMENT '高（米）',
  `single_ware_acreage` double(8,0) DEFAULT NULL COMMENT '面积（平方米）',
  `single_ware_volunm` double(8,0) DEFAULT NULL COMMENT '体积（立方米）',
  `single_ware_weight` double(8,0) DEFAULT NULL COMMENT '重量（千克）',
  PRIMARY KEY (`single_ware_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单一商品表';

-- ----------------------------
-- Records of data_single_ware
-- ----------------------------

-- ----------------------------
-- Table structure for `data_ware_family`
-- ----------------------------
DROP TABLE IF EXISTS `data_ware_family`;
CREATE TABLE `data_ware_family` (
  `ware_family_id` bigint(32) NOT NULL COMMENT '商品家族主键',
  `ware_family_name` varchar(16) NOT NULL COMMENT '家族名称',
  `ware_family_describe` varchar(32) DEFAULT NULL COMMENT '家族描述',
  PRIMARY KEY (`ware_family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品家族列表';

-- ----------------------------
-- Records of data_ware_family
-- ----------------------------

-- ----------------------------
-- Table structure for `data_ware_type`
-- ----------------------------
DROP TABLE IF EXISTS `data_ware_type`;
CREATE TABLE `data_ware_type` (
  `ware_type_id` bigint(32) NOT NULL COMMENT '商品类型主键',
  `ware_type_name` varchar(16) NOT NULL COMMENT '商品类型名称',
  `ware_family_id` bigint(32) NOT NULL COMMENT '商品家族主键冗余',
  `ware_type_describe` varchar(64) DEFAULT NULL COMMENT '类型描述',
  PRIMARY KEY (`ware_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品类型表';

-- ----------------------------
-- Records of data_ware_type
-- ----------------------------
