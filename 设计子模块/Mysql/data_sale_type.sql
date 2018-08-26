/*
Navicat MySQL Data Transfer

Source Server         : zzh
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : shop_manager

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-25 21:04:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `data_sale_type`
-- ----------------------------
DROP TABLE IF EXISTS `data_sale_type`;
CREATE TABLE `data_sale_type` (
  `sale_type_id` bigint(32) NOT NULL COMMENT '32在售品类主键',
  `shop_id` bigint(32) NOT NULL COMMENT '32商家主键冗余',
  `ware_family_id` bigint(32) NOT NULL COMMENT '32商品家族主键冗余',
  `ware_family_name` varchar(16) NOT NULL COMMENT '16商品家族名称冗余',
  `ware_type_id` bigint(32) NOT NULL COMMENT '32商品类型主键冗余',
  `ware_type_name` varchar(16) NOT NULL COMMENT '16商品类型名称冗余',
  PRIMARY KEY (`sale_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店内在售品类表';

-- ----------------------------
-- Records of data_sale_type
-- ----------------------------

-- ----------------------------
-- Table structure for `data_shop`
-- ----------------------------
DROP TABLE IF EXISTS `data_shop`;
CREATE TABLE `data_shop` (
  `shop_id` bigint(32) NOT NULL COMMENT '32商店主键',
  `shop_name` varchar(32) NOT NULL COMMENT '32商店名称',
  `shop_type` varchar(16) NOT NULL COMMENT '16商店类型（旗舰店[在售品牌唯一:需要品牌认证]、专营店[在售品类唯一]、厂家直销[需要厂家认证]、个体户...）',
  `shop_business_id` bigint(32) NOT NULL COMMENT '32商点归属用户主键冗余',
  `shop_business_name` varchar(32) NOT NULL COMMENT '32商店归属用户user名称冗余',
  `shop_describe` varchar(128) DEFAULT NULL COMMENT '128商店描述',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商店列表';

-- ----------------------------
-- Records of data_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `data_single_sale`
-- ----------------------------
DROP TABLE IF EXISTS `data_single_sale`;
CREATE TABLE `data_single_sale` (
  `single_sale_id` bigint(32) NOT NULL COMMENT '32在售单品主键',
  `sale_type_id` bigint(32) NOT NULL COMMENT '32在售品类主键冗余',
  `single_ware_id` bigint(32) NOT NULL COMMENT '32单一商品主键冗余',
  `single_ware_name` varchar(64) NOT NULL COMMENT '64单一商品名称冗余',
  PRIMARY KEY (`single_sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='售类内在售单品表';

-- ----------------------------
-- Records of data_single_sale
-- ----------------------------
