/*
Navicat MySQL Data Transfer

Source Server         : etao
Source Server Version : 50163
Source Host           : 121.43.98.168:3306
Source Database       : cmg

Target Server Type    : MYSQL
Target Server Version : 50163
File Encoding         : 65001

Date: 2016-05-16 21:24:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称',
  `images` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `vice_images` varchar(255) DEFAULT NULL COMMENT '副宝贝主图',
  `deal_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '搜索页面展示价格',
  `buy_num` smallint(6) DEFAULT '1' COMMENT '每单需拍件数',
  `show_price` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '搜索页面展示价格',
  `post_fee` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '快递费：0-包邮；其它为快递费',
  `need_receive` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要签收',
  `deliveries` varchar(255) DEFAULT NULL COMMENT '发包裹的快递公司名称',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000026714 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1000026712', '测试评价', 'qWWDTM9S7pDdk1227vvTc3-qwW1eiwkD.jpg', '461LvhWjPQW1reeRlsRn2e1Wc-SEFXAz.jpg', '100.00', '1', '100.00', '0.00', '0', '', '1463301394', '1463301394');
INSERT INTO `commodity` VALUES ('1000026713', '1', '02iJ6H9byFRttdpGVgWVpO91W6khHIuH.jpg', '7c3MXrYupgrxnRu8mdETt5baLUeu9yi6.jpg', '100.00', '1', '100.00', '0.00', '0', '', '1463401995', '1463401995');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL COMMENT '任务名称',
  `order_type` smallint(1) DEFAULT '1' COMMENT '刷单类型：1-普通好评任务；2-指定关键词好评任务；3-指定图片好评任务。',
  `period` smallint(2) NOT NULL DEFAULT '2' COMMENT '放单周期',
  `interval` smallint(4) NOT NULL DEFAULT '0' COMMENT '放单间隔',
  `limited_day` tinyint(2) NOT NULL DEFAULT '15' COMMENT '同一买家限制购买天数',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `task_id` int(11) NOT NULL COMMENT '任务ID',
  `search_keyword` varchar(255) DEFAULT NULL COMMENT '搜索关键字',
  `appraise_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '好评关键字，类型为2时使用',
  `appraise_model` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格，类型为3时使用',
  `appraise_images` varchar(255) DEFAULT NULL COMMENT '图片，类型为3时使用',
  `commision` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `service_fee` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '服务费',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本单总费用',
  `limited_city` varchar(512) DEFAULT NULL COMMENT '限制城市',
  `order_count` smallint(6) DEFAULT NULL COMMENT '订单数量',
  `release_count` smallint(4) NOT NULL DEFAULT '0' COMMENT '已放单数',
  `accept_count` smallint(6) NOT NULL DEFAULT '0' COMMENT '接单数量',
  `status` smallint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `started_at` int(11) NOT NULL DEFAULT '0' COMMENT '开始放单时间',
  `release_at` int(11) NOT NULL DEFAULT '0' COMMENT '释放时间',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000037055 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1000037054', '', '1', '6', '10', '15', '0', '1000031365', '1,1,1', null, null, null, '6.50', '1.40', '107.90', '', '1', '0', '0', '5', '1463402006', '0', '1463402004', '1463402573');

-- ----------------------------
-- Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `mobile` varchar(21) NOT NULL COMMENT '手机号码',
  `layer` smallint(6) NOT NULL DEFAULT '1' COMMENT '等级，从1开始',
  `swamms` decimal(8,2) NOT NULL DEFAULT '0.00',
  `id_num` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `id_photo` varchar(255) DEFAULT NULL COMMENT '身份证照片',
  `bank_name` varchar(64) DEFAULT NULL COMMENT '银行名称',
  `open_bank` varchar(64) DEFAULT NULL COMMENT '银行开户行',
  `bank_card` varchar(64) DEFAULT NULL COMMENT '银行卡卡号',
  `city` varchar(32) DEFAULT NULL COMMENT '所在城市',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', 'VZukIb9jy_jBQ1XnN8_PPfBkpLOSLgZ3.jpg', '13322332233', '1', '5.30', null, null, '中国银行', '中山东路支行', '0000', '');
INSERT INTO `profile` VALUES ('13311', null, '10000000000', '1', '2.90', null, null, '中国银行', '56456456', '5645645', null);
INSERT INTO `profile` VALUES ('13312', null, '18888888888', '1', '100.20', null, null, '中国银行', '456456', '456465', null);
INSERT INTO `profile` VALUES ('13313', null, '22222222222', '1', '-4.00', '36622662266', '74umIw58chEP29cfaHHLuYjAvWg-l4fS.jpg', '中信银行', '江西', '3123123123', '');
INSERT INTO `profile` VALUES ('13314', null, '33333333333', '1', '0.00', '72727', '4LttbBss3FA6oBRH6_Dw84PKny6em7B7.jpg', '中国工商银行', '杭州', '54545445', '');
INSERT INTO `profile` VALUES ('13315', null, '44444444444', '1', '1000.00', null, null, '中国工商银行', '中国工商银行', '0000', null);
INSERT INTO `profile` VALUES ('13316', null, '55555555555', '1', '0.00', null, null, '中国银行', '5646545', '456465', null);
INSERT INTO `profile` VALUES ('13317', null, '66666666666', '1', '0.00', null, null, '中国民生银行', '123123', '123123', null);

-- ----------------------------
-- Table structure for `sub_order`
-- ----------------------------
DROP TABLE IF EXISTS `sub_order`;
CREATE TABLE `sub_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '放单编号',
  `task_type` tinyint(2) NOT NULL COMMENT '任务类型',
  `order_type` tinyint(2) NOT NULL COMMENT '放单类型',
  `count` int(4) DEFAULT '1' COMMENT '放单数量',
  `commision` decimal(6,2) NOT NULL DEFAULT '0.00' COMMENT '佣金',
  `commodity_name` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `commodity_price` decimal(8,2) DEFAULT '0.00' COMMENT '商品价格',
  `buy_num` tinyint(2) NOT NULL DEFAULT '1' COMMENT '需购数量',
  `limited_day` int(2) NOT NULL DEFAULT '15' COMMENT '买家限制天数',
  `buyer_region` varchar(255) DEFAULT NULL COMMENT '要求买家城市',
  `seller_user_id` int(11) NOT NULL COMMENT '卖家用户编号',
  `created_at` int(11) DEFAULT NULL COMMENT '操作时间',
  `release_at` int(11) DEFAULT NULL COMMENT '释放时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sub_order
-- ----------------------------
INSERT INTO `sub_order` VALUES ('72200', '1000037054', '11', '1', '0', '6.50', '1', '100.00', '1', '15', '不限', '13312', '1463402004', '1463402004');

-- ----------------------------
-- Table structure for `sys_account`
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` smallint(2) NOT NULL COMMENT '动作',
  `count` decimal(8,2) DEFAULT '0.00' COMMENT '数额',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `user_id` int(11) NOT NULL COMMENT '用户',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单编号',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000159890 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_account
-- ----------------------------
INSERT INTO `sys_account` VALUES ('1000159888', '1', '107.90', '放单押金，任务编号[1000037054]。', '13312', '0', '1463402006', '1463402006');
INSERT INTO `sys_account` VALUES ('1000159889', '4', '107.90', '卖家停止任务[13312]。', '13312', '1000037054', '1463402573', '1463402573');

-- ----------------------------
-- Table structure for `task`
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '归属用户',
  `task_type` tinyint(2) NOT NULL DEFAULT '11' COMMENT '任务类型',
  `seller_id` int(11) NOT NULL COMMENT '归属店铺',
  `main_commodity` int(11) DEFAULT '0' COMMENT '任务主商品',
  `vice_commodity` int(11) DEFAULT '0' COMMENT '任务副商品',
  `search_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '搜索关键字',
  `sort_type` smallint(1) DEFAULT '1' COMMENT '排序方式：1-销量；2-综合；3-综合直通车',
  `saled_num` smallint(6) DEFAULT NULL COMMENT '已售件数，搜索页显示',
  `price_region` varchar(32) DEFAULT NULL COMMENT '价格区间，搜索页显示',
  `buyer_ex_region` varchar(255) DEFAULT NULL COMMENT '买家地区限制',
  `buyer_age_region` varchar(32) DEFAULT NULL COMMENT '买家年龄区间',
  `buyer_is_zuan` smallint(1) DEFAULT '0' COMMENT '仅限钻级别的买号',
  `buyer_is_huabei` smallint(1) DEFAULT '0' COMMENT '仅限开通花呗的买号',
  `order_sign` varchar(255) DEFAULT NULL COMMENT '订单留言',
  `remark` varchar(255) DEFAULT NULL COMMENT '任务备注',
  `total_order` smallint(6) DEFAULT '0' COMMENT '总单数',
  `status` tinyint(2) DEFAULT '0' COMMENT '任务状态',
  `created_at` int(11) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000031366 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('1000031365', '13312', '11', '1000001795', '1000026713', '0', null, '1', null, null, '', null, '0', '0', null, '', '1', '4', '1463401978', '1463402004');
