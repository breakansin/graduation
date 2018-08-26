/*
Navicat MySQL Data Transfer

Source Server         : zzh
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : order_manager

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-25 21:04:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `data_expense`
-- ----------------------------
DROP TABLE IF EXISTS `data_expense`;
CREATE TABLE `data_expense` (
  `expense_id` bigint(32) NOT NULL COMMENT '费用主键',
  `order_id` bigint(32) NOT NULL COMMENT '订单主键冗余',
  `expense_amount` double(12,0) NOT NULL COMMENT '费用总金额',
  `single_ware_id` bigint(32) NOT NULL COMMENT '商品单项主键冗余',
  `single_ware_quality` double(14,0) NOT NULL COMMENT '商品单项数量',
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='费用列表';

-- ----------------------------
-- Records of data_expense
-- ----------------------------

-- ----------------------------
-- Table structure for `data_order`
-- ----------------------------
DROP TABLE IF EXISTS `data_order`;
CREATE TABLE `data_order` (
  `order_id` bigint(32) NOT NULL COMMENT '订单号',
  `order_customer_id` bigint(32) NOT NULL COMMENT '订单归属人user主键冗余',
  `order_customer_name` varchar(32) NOT NULL COMMENT '订单归属人user名称冗余',
  `order_business_id` bigint(32) NOT NULL COMMENT '订单来源商家user主键冗余',
  `order_business_name` varchar(32) NOT NULL COMMENT '订单来源商家user名称冗余',
  `order_origin_shop_id` bigint(32) NOT NULL COMMENT '订单来源商店主键冗余',
  `order_origin_shop_name` varchar(32) NOT NULL COMMENT '订单来源商店名称冗余',
  `order_amount` double(14,0) NOT NULL COMMENT '订单总金额',
  `receiver_name` varchar(32) NOT NULL COMMENT '32收货人名称',
  `receiver_sex` varchar(4) NOT NULL COMMENT '4收货人性别',
  `receiver_mobile` bigint(11) NOT NULL COMMENT '11收货人手机',
  `receiver_tel` bigint(8) DEFAULT NULL COMMENT '8收货人电话',
  `receiver_province` varchar(16) NOT NULL COMMENT '16省份',
  `receiver_city` varchar(32) NOT NULL COMMENT '32市',
  `receiver_district` varchar(32) NOT NULL COMMENT '32区县',
  `receiver_street` varchar(64) NOT NULL COMMENT '64街道门牌号',
  `receiver_postcode` bigint(8) NOT NULL COMMENT '8邮编',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单列表';

-- ----------------------------
-- Records of data_order
-- ----------------------------
