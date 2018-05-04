/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : cqjj_hscs

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-04 16:18:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_collection_furniture
-- ----------------------------
DROP TABLE IF EXISTS `t_collection_furniture`;
CREATE TABLE `t_collection_furniture` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(50) DEFAULT NULL COMMENT '微信用户id',
  `furniture_id` varchar(250) DEFAULT NULL COMMENT '家具id',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏的家具';

-- ----------------------------
-- Records of t_collection_furniture
-- ----------------------------
INSERT INTO `t_collection_furniture` VALUES ('3e98f537afba4df79c0a5fbedf0ec4f0', '978610e7bcdf4c6294f1d174a9146996', '9397f040c8b0b9b08c79ea7db89b7dd7', '2018-04-10 15:09:15');
INSERT INTO `t_collection_furniture` VALUES ('c5561b502f7e4c9abc805fe64edf87d8', '978610e7bcdf4c6294f1d174a9146996', 'a66a13f3d544d930019758a48f8b36c1', '2018-04-10 15:13:07');
INSERT INTO `t_collection_furniture` VALUES ('df5f5a3c1cde4e5396ffb2399e6ae576', '978610e7bcdf4c6294f1d174a9146996', '175829e5d2a6aebc33862c8a890d1842', '2018-04-10 15:55:24');

-- ----------------------------
-- Table structure for t_collection_merchant
-- ----------------------------
DROP TABLE IF EXISTS `t_collection_merchant`;
CREATE TABLE `t_collection_merchant` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(50) DEFAULT NULL COMMENT '微信用户id',
  `merchant_id` varchar(250) DEFAULT NULL COMMENT '商户id',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏的家具';

-- ----------------------------
-- Records of t_collection_merchant
-- ----------------------------
INSERT INTO `t_collection_merchant` VALUES ('515d3f0be3f24833e7ad2fc84aea4759', '03a7fbdc3d444c85a00047d3ca604034', null, null, null, null, null, null, null, '0', '0');

-- ----------------------------
-- Table structure for t_furniture_recycle
-- ----------------------------
DROP TABLE IF EXISTS `t_furniture_recycle`;
CREATE TABLE `t_furniture_recycle` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(50) DEFAULT NULL COMMENT '发起用户',
  `title` varchar(200) DEFAULT NULL COMMENT '回收标题',
  `type_id` varchar(250) DEFAULT NULL COMMENT '家具类型',
  `price` varchar(250) DEFAULT NULL COMMENT '类型名称',
  `detail_info` varchar(500) DEFAULT NULL COMMENT '简要介绍',
  `head_img` varchar(200) DEFAULT NULL COMMENT '标题图',
  `contact` varchar(50) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(150) DEFAULT NULL COMMENT '联系地址',
  `is_show` varchar(2) DEFAULT NULL COMMENT '是否展示（0否，1是）',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`title`),
  KEY `real_name` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具回收信息展示';

-- ----------------------------
-- Records of t_furniture_recycle
-- ----------------------------
INSERT INTO `t_furniture_recycle` VALUES ('02b18410900823009f50450372ac86c1', '978610e7bcdf4c6294f1d174a9146996', '平安总队家具回收', '12c9476850c243f49cb221d985a7cc86', '500', '平安搬迁，家具不要了', 'http://p3npuv0x6.bkt.clouddn.com/20180329095518_e512c5.jpg', '雷爽', '18875045477', '重庆市渝中区', '1', '2018-03-29 11:31:14', null, null, '2018-03-29 11:31:27', null, null, '0', '0');
INSERT INTO `t_furniture_recycle` VALUES ('1c67a2866a0e6eead185658586cda4d7', '978610e7bcdf4c6294f1d174a9146996', '花盆出售', '7bc3602b55364dc5bed70461ade8d197', '50', '简易花盆，美观实用', 'http://p3npuv0x6.bkt.clouddn.com/20180329095727_d430be.jpg', '邹安科', '15608310268', '重庆日报家属院', '1', '2018-03-29 11:31:18', null, null, '2018-03-29 11:31:30', null, null, '0', '0');
INSERT INTO `t_furniture_recycle` VALUES ('650f7a1d773814a0f6871576b8e84726', '978610e7bcdf4c6294f1d174a9146996', '铁皮柜出售', '12c9476850c243f49cb221d985a7cc86', '100', '铁皮柜不要了', 'http://p3npuv0x6.bkt.clouddn.com/20180329095613_fb567e.jpg', '刘小兰', '13618263193', '重庆金子们大厦', '1', '2018-03-29 11:31:21', null, null, '2018-03-29 11:31:34', null, null, '0', '0');
INSERT INTO `t_furniture_recycle` VALUES ('667df7fe1d218af9050192cbcd389b4e', '5c9c40a753354b76866308181a090363', '沙发便宜出售', '12c9476850c243f49cb221d985a7cc86', '500', '是社会文化', 'http://p3npuv0x6.bkt.clouddn.com/20180331214959_53e2be.jpg', '雷爽', '18875045477', '重庆市渝中区解放西路', null, '2018-03-31 21:50:48', null, null, '2018-03-31 21:50:48', null, null, '0', '0');
INSERT INTO `t_furniture_recycle` VALUES ('b86c4b7e4577b2b56498a53cebf1fb57', '978610e7bcdf4c6294f1d174a9146996', '重庆网安总队隔断', '12c9476850c243f49cb221d985a7cc86', '1000', '办公室迁移，原有家具低价出售', 'http://p3npuv0x6.bkt.clouddn.com/20180329093510_d6ae76.jpg', '邹朝亮', '18523977614', '重庆金石大道', '1', '2018-03-29 11:31:23', null, null, '2018-03-29 11:31:37', null, null, '0', '0');

-- ----------------------------
-- Table structure for t_furniture_recycle_img
-- ----------------------------
DROP TABLE IF EXISTS `t_furniture_recycle_img`;
CREATE TABLE `t_furniture_recycle_img` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `recycle_id` varchar(50) DEFAULT NULL COMMENT '家具回收id',
  `url` varchar(250) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具回收图片';

-- ----------------------------
-- Records of t_furniture_recycle_img
-- ----------------------------
INSERT INTO `t_furniture_recycle_img` VALUES ('0645e0018dea6cbdff02f479e226306b', '465869bfda665afba8f32e612787b15d', 'http://p3npuv0x6.bkt.clouddn.com/20180410094457_94484b.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('35ec67a2c4dea33504595bd4a66cdef6', '667df7fe1d218af9050192cbcd389b4e', 'http://p3npuv0x6.bkt.clouddn.com/20180331214959_53e2be.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('7a3fcfbec37d350443da99a5b037350a', 'b86c4b7e4577b2b56498a53cebf1fb57', 'http://p3npuv0x6.bkt.clouddn.com/20180329093510_d6ae76.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('9c9dac166f1b41e79c9064014d13e235', '02b18410900823009f50450372ac86c1', 'http://p3npuv0x6.bkt.clouddn.com/20180329095518_e512c5.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('ba5efcbaaa6aa8a2c300803e0ea30921', 'e76b6c43eedfc2716298b132aaac7f8c', 'http://p3npuv0x6.bkt.clouddn.com/20180331111013_ae162d.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('ebb05ce0d719817cf69b1db12d6876c8', '650f7a1d773814a0f6871576b8e84726', 'http://p3npuv0x6.bkt.clouddn.com/20180329095613_fb567e.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('f0d08da4f9e099536eb6db9bb1193e21', '1c67a2866a0e6eead185658586cda4d7', 'http://p3npuv0x6.bkt.clouddn.com/20180329095727_d430be.jpg');
INSERT INTO `t_furniture_recycle_img` VALUES ('f4220f61a1b9f9e773c4b1d91e19a80b', '667df7fe1d218af9050192cbcd389b4e', 'http://p3npuv0x6.bkt.clouddn.com/20180331215007_7d75b8.jpg');

-- ----------------------------
-- Table structure for t_furniture_sale
-- ----------------------------
DROP TABLE IF EXISTS `t_furniture_sale`;
CREATE TABLE `t_furniture_sale` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(50) DEFAULT NULL COMMENT '发起用户（后台用户）',
  `title` varchar(200) DEFAULT NULL COMMENT '回收标题',
  `fn_name` varchar(50) DEFAULT NULL COMMENT '家具名称',
  `type_id` varchar(250) DEFAULT NULL COMMENT '家具类型',
  `price` varchar(250) DEFAULT NULL COMMENT '类型名称',
  `detail_info` varchar(500) DEFAULT NULL COMMENT '简要介绍',
  `head_img` varchar(200) DEFAULT NULL COMMENT '标题图',
  `is_new` varchar(2) DEFAULT NULL COMMENT '全新家具（1）， 二手家具（2）',
  `keyword1` varchar(50) DEFAULT NULL COMMENT '搜索关键字',
  `keyword2` varchar(50) DEFAULT NULL COMMENT '搜索关键字',
  `keyword3` varchar(50) DEFAULT NULL COMMENT '搜索关键字',
  `is_show` varchar(2) DEFAULT NULL COMMENT '是否展示（0否，1是）',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`title`),
  KEY `real_name` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具出售信息展示';

-- ----------------------------
-- Records of t_furniture_sale
-- ----------------------------
INSERT INTO `t_furniture_sale` VALUES ('08d28a2998d6f261917f96fa7b688c4a', '03a7fbdc3d444c85a00047d3ca604034', '实木办公桌', '办公桌', '12c9476850c243f49cb221d985a7cc86', '500', '下班睡吧睡吧', 'http://p3npuv0x6.bkt.clouddn.com/20180331113606_819897.jpg', '2', '办公桌', '实木', 'NULL', '1', '2018-03-31 11:36:18', null, null, '2018-03-31 21:58:24', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_sale` VALUES ('175829e5d2a6aebc33862c8a890d1842', '03a7fbdc3d444c85a00047d3ca604034', '绿萝出售', '绿萝', '6d6cd839436e446bac12f63bccd9ee45', '10', '意大利', 'http://p3npuv0x6.bkt.clouddn.com/20180331113814_33e489.jpg', '1', '大家大家好', '睡觉睡觉睡觉觉', '大家大家', '1', '2018-03-31 11:38:22', null, null, '2018-03-31 15:16:47', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_sale` VALUES ('5b6e51f22507575f1d3e1338477d3bc1', '03a7fbdc3d444c85a00047d3ca604034', '说的话还是', '手机傻逼逼', '12c9476850c243f49cb221d985a7cc86', '5000', '是男是女你睡吧我爸', 'http://p3npuv0x6.bkt.clouddn.com/20180424164827_eb8a21.jpg', '1', 'NULL', 'NULL', 'NULL', '1', '2018-04-24 16:48:30', null, null, '2018-04-26 15:21:19', null, null, '0', '0');
INSERT INTO `t_furniture_sale` VALUES ('9397f040c8b0b9b08c79ea7db89b7dd7', '03a7fbdc3d444c85a00047d3ca604034', '渝中区家具回收', '贴心', 'fc2c7ffd4065472999e6ad1f79c945c3', '150', '说说上班', 'http://p3npuv0x6.bkt.clouddn.com/20180331113525_55d5ef.jpg', '1', '铁床', '寝室', 'NULL', '1', '2018-03-31 11:35:38', null, null, '2018-03-31 11:35:38', null, null, '0', '0');
INSERT INTO `t_furniture_sale` VALUES ('a66a13f3d544d930019758a48f8b36c1', '03a7fbdc3d444c85a00047d3ca604034', '精美电脑', '电脑', '6d6cd839436e446bac12f63bccd9ee45', '500', '大家大家你的呢', 'http://p3npuv0x6.bkt.clouddn.com/20180331113717_ea2b78.jpg', '2', '电脑', '全新', 'NULL', '1', '2018-03-31 11:37:25', null, null, '2018-03-31 11:37:25', null, null, '0', '0');
INSERT INTO `t_furniture_sale` VALUES ('f8609076831e15e1a6c63a0dbd54dd6d', '03a7fbdc3d444c85a00047d3ca604034', '重庆家具回收', '办公椅子', '12c9476850c243f49cb221d985a7cc86', '500', '全新办公椅', 'http://p3npuv0x6.bkt.clouddn.com/20180330094952_09bf10.jpg', '1', '办公家具', '椅子', '低价', '1', '2018-03-30 09:50:30', null, null, '2018-03-31 10:19:04', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_furniture_sale_img
-- ----------------------------
DROP TABLE IF EXISTS `t_furniture_sale_img`;
CREATE TABLE `t_furniture_sale_img` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `sale_id` varchar(50) DEFAULT NULL COMMENT '家具回收id',
  `url` varchar(250) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具出售图片';

-- ----------------------------
-- Records of t_furniture_sale_img
-- ----------------------------
INSERT INTO `t_furniture_sale_img` VALUES ('06471a8e962d25995f11c2f938df949b', 'f8609076831e15e1a6c63a0dbd54dd6d', 'http://p3npuv0x6.bkt.clouddn.com/20180330094953_8ba02a.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('375a25961e4cbe937f07d157f718b1f7', '5b6e51f22507575f1d3e1338477d3bc1', 'http://p3npuv0x6.bkt.clouddn.com/20180424164827_eb8a21.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('386c560195c59ecc7184fc09f8ea8d28', 'f49722aaf7e7694122ffcf75434a6ec6', 'http://p3npuv0x6.bkt.clouddn.com/20180330144244_14e03b.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('3b9f815909f0bfd3bb13a48f9333e900', '08d28a2998d6f261917f96fa7b688c4a', 'http://p3npuv0x6.bkt.clouddn.com/20180331113606_819897.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('5004b4814468517b304e6602f78bb5df', '175829e5d2a6aebc33862c8a890d1842', 'http://p3npuv0x6.bkt.clouddn.com/20180331113814_33e489.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('8c62e3f23c5578d06658bbcf80c8ae63', 'a66a13f3d544d930019758a48f8b36c1', 'http://p3npuv0x6.bkt.clouddn.com/20180331113717_ea2b78.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('e572a91b4829a500e7c7b12dd02253c4', 'f8609076831e15e1a6c63a0dbd54dd6d', 'http://p3npuv0x6.bkt.clouddn.com/20180330094952_09bf10.jpg');
INSERT INTO `t_furniture_sale_img` VALUES ('fbe366be1d21863d500fdade87518d13', '9397f040c8b0b9b08c79ea7db89b7dd7', 'http://p3npuv0x6.bkt.clouddn.com/20180331113525_55d5ef.jpg');

-- ----------------------------
-- Table structure for t_furniture_type
-- ----------------------------
DROP TABLE IF EXISTS `t_furniture_type`;
CREATE TABLE `t_furniture_type` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `code` varchar(50) DEFAULT NULL COMMENT '分类编码',
  `way_group` varchar(250) DEFAULT NULL COMMENT '分类方式（1风格，2材料，3功能，4结构）',
  `name` varchar(250) DEFAULT NULL COMMENT '类型名称',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`code`),
  KEY `real_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具分类属性';

-- ----------------------------
-- Records of t_furniture_type
-- ----------------------------
INSERT INTO `t_furniture_type` VALUES ('0fa926cf08e746af892aae7f1cfd0ca0', 'jjlx_gn_sfjj', '1', '书房家具', '2018-03-31 11:15:52', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-31 11:15:52', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_type` VALUES ('12c9476850c243f49cb221d985a7cc86', 'jjlx_gn_bgjj', '3', '办公家具', '2018-03-04 17:45:51', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-04 17:45:51', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_type` VALUES ('6d6cd839436e446bac12f63bccd9ee45', 'jjlx_fg_qtjj', '1', '其他家具', '2018-03-31 11:16:11', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-31 11:16:22', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_type` VALUES ('748b1741302a49b08fac51bc25cf0527', 'jjlx_gn_bgjj', '1', '厨卫家具', '2018-03-31 11:15:30', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-31 11:15:30', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_type` VALUES ('7bc3602b55364dc5bed70461ade8d197', 'jjlx_gn_ktjj', '3', '客厅家具', '2018-03-04 17:42:30', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-04 17:46:17', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_furniture_type` VALUES ('fc2c7ffd4065472999e6ad1f79c945c3', 'jjlx_fg_wsjj', '1', '卧室家具', '2018-03-04 17:47:00', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-31 11:15:04', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_merchant
-- ----------------------------
DROP TABLE IF EXISTS `t_merchant`;
CREATE TABLE `t_merchant` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `sys_user_id` varchar(50) DEFAULT NULL COMMENT '系统用户id',
  `merchant_id` varchar(250) DEFAULT NULL COMMENT '商户号',
  `merchant_name` varchar(250) DEFAULT NULL COMMENT '商户名称（需与营业执照一致）',
  `merchant_credit_code` varchar(250) DEFAULT NULL COMMENT '商户注册号或统一社会信用代码',
  `merchant_business_license` varchar(250) DEFAULT NULL COMMENT '商户营业执照照片',
  `contact` varchar(250) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `address` varchar(200) DEFAULT NULL COMMENT '住址',
  `enabled` varchar(1) DEFAULT '1' COMMENT '1可用的 0不可用',
  `audit_state` varchar(1) DEFAULT NULL COMMENT '审核状态（1审核中，2审核失败，3审核成功）',
  `audit_refuse_reason` varchar(500) DEFAULT NULL COMMENT '审核拒绝理由',
  `last_login` datetime DEFAULT NULL COMMENT '最后登入时间',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`sys_user_id`),
  KEY `real_name` (`merchant_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具商户信息';

-- ----------------------------
-- Records of t_merchant
-- ----------------------------
INSERT INTO `t_merchant` VALUES ('1022283e1e253159e974e13c905e8e8a', '03a7fbdc3d444c85a00047d3ca604034', 'e674-c5bd-e4cb', '重庆鑫科办公家具回收经营', '123546987646sjshh', 'http://p3npuv0x6.bkt.clouddn.com/20180424144005_2434f0.jpg', '邹安科', '15608310268', '1352131305@qq.com', '渝中区南纪门街道解放西路金子门大厦', '1', '3', null, null, null, null, null, '2018-04-24 14:40:39', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_merchant_business_scope
-- ----------------------------
DROP TABLE IF EXISTS `t_merchant_business_scope`;
CREATE TABLE `t_merchant_business_scope` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `merchant_id` varchar(250) DEFAULT NULL COMMENT '商户id',
  `type_id` varchar(250) DEFAULT NULL COMMENT '类型id',
  PRIMARY KEY (`id`),
  KEY `real_name` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家具商户经营范围';

-- ----------------------------
-- Records of t_merchant_business_scope
-- ----------------------------
INSERT INTO `t_merchant_business_scope` VALUES ('615dffb5f5d032173c9bf95a92f2d728', '1022283e1e253159e974e13c905e8e8a', '7bc3602b55364dc5bed70461ade8d197');
INSERT INTO `t_merchant_business_scope` VALUES ('c014498bfc778ad701640226946f139d', '1022283e1e253159e974e13c905e8e8a', '12c9476850c243f49cb221d985a7cc86');
INSERT INTO `t_merchant_business_scope` VALUES ('c43c011d40508b63f7d28945618d00e4', '1022283e1e253159e974e13c905e8e8a', 'fc2c7ffd4065472999e6ad1f79c945c3');
INSERT INTO `t_merchant_business_scope` VALUES ('db662c94fbdc157e3f3422f9d7a76195', '1022283e1e253159e974e13c905e8e8a', '748b1741302a49b08fac51bc25cf0527');

-- ----------------------------
-- Table structure for t_sale_account
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_account`;
CREATE TABLE `t_sale_account` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `admin_id` varchar(50) DEFAULT NULL COMMENT '交易所属账户',
  `trading_detail` varchar(500) DEFAULT NULL COMMENT '交易明细（具体出售家具详情）',
  `total_price` varchar(50) DEFAULT NULL COMMENT '总价',
  `trade_type` varchar(50) DEFAULT NULL COMMENT '交易类型（1全款；2先交定金再付余款）',
  `pay_type` varchar(1) DEFAULT NULL COMMENT '支付方式',
  `payee` varchar(50) DEFAULT NULL COMMENT '收款人',
  `trading_time` date DEFAULT NULL COMMENT '交易成功时间',
  `buyer` varchar(50) DEFAULT NULL COMMENT '购买人',
  `buyer_phone` varchar(255) DEFAULT NULL COMMENT '购买人电话',
  `deposit` varchar(50) DEFAULT NULL COMMENT '定金（trade_type为2时有效）',
  `balance_pay_type` varchar(1) DEFAULT NULL COMMENT '余款支付方式',
  `balance_bring_people` varchar(50) DEFAULT NULL COMMENT '余款委托带回的人',
  `balance_is_finish` varchar(1) DEFAULT NULL COMMENT '余款是否全部收完（1是，0否）',
  `balance_already_gathering` varchar(50) DEFAULT NULL COMMENT '已收余款',
  `balance_finish_time` datetime DEFAULT NULL COMMENT '余款收完时间',
  `balance_payee` varchar(50) DEFAULT NULL COMMENT '余款收款人',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`trading_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='销售记账记录';

-- ----------------------------
-- Records of t_sale_account
-- ----------------------------
INSERT INTO `t_sale_account` VALUES ('29d97d87af804dc7b3901d0551835811', '03a7fbdc3d444c85a00047d3ca604034', '办公椅子一套', '1080', '2', '2', '雷爽', '2018-04-26', null, null, '300', '1', '张超', '1', '780', '2018-05-02 00:00:00', '邹朝亮', null, null, null, '2018-05-02 17:41:02', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_sale_account` VALUES ('3b22cb54775e415ab27ff7412e4e44d0', '03a7fbdc3d444c85a00047d3ca604034', '办公桌一张，隔断办公桌一张，隔断50个位置办公桌一张，隔断50个位置50个位置', '1500', '2', '3', '刘小兰', '2018-04-26', null, null, '500', '1', '邹朝亮', '1', '1000', '2018-04-20 00:00:00', '好多个', null, null, null, '2018-04-27 14:36:56', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_sale_account` VALUES ('3f9449d3cc344d73b6f44ee170fadc56', '03a7fbdc3d444c85a00047d3ca604034', '床一张，床头柜两张', '1000', '2', '3', '刘小兰', '2018-05-02', null, null, '300', '2', null, '0', '0', null, null, '2018-05-02 17:42:17', null, null, '2018-05-02 17:42:17', null, null, '0', '0');
INSERT INTO `t_sale_account` VALUES ('8e50dbca209e44e29fe33881d1f22cdd', '03a7fbdc3d444c85a00047d3ca604034', '红木家具1张去', '500', '1', '2', '邹朝亮', '2018-04-19', null, null, null, null, null, null, null, null, null, null, null, null, '2018-04-26 19:47:20', null, null, null, null);
INSERT INTO `t_sale_account` VALUES ('9e2248ad2544456aa8a0a27dbadaa1e9', '03a7fbdc3d444c85a00047d3ca604034', '测试啥时候', '5000', '2', '1', '张总', '2018-05-02', null, null, '500', '1', '离开家', '0', '0', null, null, '2018-05-02 17:45:12', null, null, '2018-05-02 17:45:12', null, null, '0', '0');
INSERT INTO `t_sale_account` VALUES ('ac5486e0ed094a05b913f2f424ba9159', '03a7fbdc3d444c85a00047d3ca604034', '家具使出吴文杰', '1200', '2', '3', '雷爽', '2018-04-27', null, null, '500', '3', null, '1', '700', '2018-04-27 00:00:00', '试试', null, null, null, '2018-04-27 13:34:36', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_sale_account` VALUES ('f62993b53c9741e6bd9156c940e47dcd', '03a7fbdc3d444c85a00047d3ca604034', '床一张，床头柜两张啦啦啦啦啦', '1000', '2', '3', '刘小兰', '2018-05-02', null, null, '300', '2', null, '0', '0', null, null, '2018-05-02 17:44:31', null, null, '2018-05-02 17:44:31', null, null, '0', '0');

-- ----------------------------
-- Table structure for t_special_info
-- ----------------------------
DROP TABLE IF EXISTS `t_special_info`;
CREATE TABLE `t_special_info` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `location` varchar(250) DEFAULT NULL COMMENT '位置',
  `link_url` varchar(250) DEFAULT NULL COMMENT '跳转的url',
  `head_img` varchar(250) DEFAULT NULL COMMENT '标题图',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`title`) USING BTREE,
  KEY `real_name` (`location`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特殊位置的信息展示';

-- ----------------------------
-- Records of t_special_info
-- ----------------------------
INSERT INTO `t_special_info` VALUES ('c88bf63386d345c09adb655a647591b1', '测试--------', 'wx-main-swiper', 'http://www.baidu.com', 'http://p3npuv0x6.bkt.clouddn.com/公众号_img.png', '2018-04-24 15:31:47', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-24 15:34:25', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_spend_account
-- ----------------------------
DROP TABLE IF EXISTS `t_spend_account`;
CREATE TABLE `t_spend_account` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `admin_id` varchar(50) DEFAULT NULL COMMENT '支出所属账户',
  `trading_detail` varchar(500) DEFAULT NULL COMMENT '支出明细（具体支出详情）',
  `total_price` varchar(50) DEFAULT NULL COMMENT '总价',
  `spend_type` varchar(10) DEFAULT NULL COMMENT '支出事由',
  `pay_type` varchar(1) DEFAULT NULL COMMENT '支付方式',
  `drawee` varchar(50) DEFAULT NULL COMMENT '付款人',
  `trading_time` date DEFAULT NULL COMMENT '交易成功时间',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`trading_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支出记账记录';

-- ----------------------------
-- Records of t_spend_account
-- ----------------------------
INSERT INTO `t_spend_account` VALUES ('5cb90b4ea79640f2ba18bb4f1eb8e514', '03a7fbdc3d444c85a00047d3ca604034', '啦啦啦', '54601', null, '2', '邹安科', '2018-05-03', null, null, null, '2018-05-03 17:08:58', null, null, null, null);

-- ----------------------------
-- Table structure for t_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_wechat_menu`;
CREATE TABLE `t_wechat_menu` (
  `id` varchar(50) NOT NULL COMMENT 'ID',
  `type` varchar(15) DEFAULT NULL COMMENT '类型',
  `name` varchar(60) DEFAULT NULL COMMENT '名称',
  `keyword` varchar(128) DEFAULT NULL COMMENT '菜单key值',
  `url` varchar(1024) DEFAULT NULL COMMENT '菜单地址',
  `media_id` varchar(64) DEFAULT NULL,
  `appid` varchar(32) DEFAULT NULL COMMENT '小程序appid',
  `pagepath` varchar(100) DEFAULT NULL COMMENT '小程序路径',
  `parent` varchar(50) DEFAULT NULL COMMENT '父级菜单id',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信菜单信息表';

-- ----------------------------
-- Records of t_wechat_menu
-- ----------------------------
INSERT INTO `t_wechat_menu` VALUES ('38b5f4c05ae24467922ff230b288b6b9', 'view', '二手家具发布', null, 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3b6758772f584a13&redirect_uri=http://zoucl.s1.natapp.cc/wechat/user/recycle/edit%3FisFromMenu=true&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect', null, null, null, 'aa2519fc07644df3a5504ed54bcfdbcc', '1', '2018-03-05 14:17:50', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-10 11:25:45', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_wechat_menu` VALUES ('9de43b3ee02842d78d96cea2bef9b5f6', 'view', '用户主页', null, 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3b6758772f584a13&redirect_uri=http://zoucl.s1.natapp.cc/wechat/user/home/main&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect', '', '', '', 'aa2519fc07644df3a5504ed54bcfdbcc', '2', '2018-03-05 14:21:52', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-31 21:45:14', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_wechat_menu` VALUES ('aa2519fc07644df3a5504ed54bcfdbcc', null, '我是用户', null, null, null, null, null, '0', '1', '2018-03-05 14:15:19', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 14:15:19', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_wechat_menu` VALUES ('e5b90ce010494841a78237071a372430', 'view', '我是商户', null, 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx3b6758772f584a13&redirect_uri=http://zoucl.s1.natapp.cc/wechat/merchant/home/init&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect', '', '', '', '0', '1', '2018-03-08 19:40:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-31 21:45:05', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_wechat_msg
-- ----------------------------
DROP TABLE IF EXISTS `t_wechat_msg`;
CREATE TABLE `t_wechat_msg` (
  `id` varchar(50) DEFAULT NULL COMMENT 'ID',
  `msg_id` varchar(100) DEFAULT NULL COMMENT '消息ID',
  `content` text COMMENT '消息内容',
  `from_user` varchar(100) DEFAULT NULL COMMENT '发送者openId',
  `to_user` varchar(100) DEFAULT NULL COMMENT '接收者openId',
  `reply` varchar(500) DEFAULT NULL COMMENT '回复消息',
  `date_reply` datetime DEFAULT NULL COMMENT '回复时间',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信消息';

-- ----------------------------
-- Records of t_wechat_msg
-- ----------------------------

-- ----------------------------
-- Table structure for t_wechat_public_platform
-- ----------------------------
DROP TABLE IF EXISTS `t_wechat_public_platform`;
CREATE TABLE `t_wechat_public_platform` (
  `id` varchar(50) DEFAULT NULL COMMENT 'ID',
  `token` varchar(50) DEFAULT NULL COMMENT '公众号token',
  `user_id` varchar(100) DEFAULT NULL COMMENT '公众号账户',
  `password` varchar(60) DEFAULT NULL COMMENT '公众号密码',
  `app_id` varchar(32) DEFAULT NULL COMMENT 'appId',
  `app_secret` varchar(50) DEFAULT NULL COMMENT 'appSecret',
  `aes_key` varchar(255) DEFAULT NULL COMMENT '微信消息加密key',
  `type` varchar(255) DEFAULT NULL COMMENT '订阅号和服务号',
  `mch_id` varchar(255) DEFAULT NULL COMMENT '商户号ID',
  `mch_key` varchar(255) DEFAULT NULL COMMENT '商户密钥',
  `key_path` varchar(255) DEFAULT NULL COMMENT 'apiclient_cert.p12文件上传地址',
  `key_path_local` varchar(255) DEFAULT NULL COMMENT 'apiclient_cert.p12的文件路径',
  `is_active` varchar(1) DEFAULT NULL COMMENT '是否激活',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公众号基本信息表';

-- ----------------------------
-- Records of t_wechat_public_platform
-- ----------------------------
INSERT INTO `t_wechat_public_platform` VALUES ('ee1d35312c0949bc8a8f51d2ec9591b4', '03a7fbdc3d444c85a00047d3ca604034', '', '', 'wx3b6758772f584a13', '09059d887c163a3396d1d80da2b140cc', '', '', '', '', null, null, '1', '2017-07-06 10:57:27', null, null, '2017-11-24 15:05:16', '8cc624a06d1342cd960c26d32a0407a1', '127.0.0.1', '34', '0');

-- ----------------------------
-- Table structure for t_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `t_wechat_user`;
CREATE TABLE `t_wechat_user` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `open_id` varchar(64) DEFAULT NULL,
  `union_id` varchar(64) DEFAULT NULL COMMENT '开放平台联合id',
  `nick_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别(1:男，2:女，0:未知)',
  `city` varchar(100) DEFAULT NULL COMMENT '所在城市',
  `country` varchar(100) DEFAULT NULL COMMENT '所在国家',
  `province` varchar(100) DEFAULT NULL COMMENT '所在省份',
  `language` varchar(60) DEFAULT NULL COMMENT '用户语言',
  `head_img_url` varchar(300) DEFAULT NULL COMMENT '用户头像',
  `subscribe_time` varchar(15) DEFAULT NULL COMMENT '关注时间',
  `subscribe` varchar(10) DEFAULT NULL COMMENT '是否订阅（0否）',
  `remark` varchar(50) DEFAULT NULL COMMENT '用户备注',
  `group_id` varchar(64) DEFAULT NULL,
  `merchant_admin_id` varchar(64) DEFAULT NULL COMMENT '绑定的商户后台登陆id',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户信息表';

-- ----------------------------
-- Records of t_wechat_user
-- ----------------------------
INSERT INTO `t_wechat_user` VALUES ('5c9c40a753354b76866308181a090363', 'om7BFwXYtdJHST0-gaCs9uge6Ew8', 'o60ch0v2tcvz01r6GGoRid2PkWmI', '雷爽', null, '南岸', '中国', '重庆', 'zh_CN', 'http://thirdwx.qlogo.cn/mmopen/ZaA54v7JUALnTJoJ1DiaLiaF5NeNlXicTet3O7wCx4lX9r2jSzV1T4jbfvwxkQpGPvYJeJibDnWExzFmhBrTHL1cADTLxB9yNO9V/132', '1520152877', '1', '', '0', '03a7fbdc3d444c85a00047d3ca604034', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_wechat_user` VALUES ('978610e7bcdf4c6294f1d174a9146996', 'om7BFwdUTtnIDPmUyWUS04h5c1L0', 'o60ch0q4seoVTFll-TvaWYvc67qM', '邹朝亮', null, '闵行', '中国', '上海', 'zh_CN', 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM4Tabghq6xia3nhRzDRsK7oPvteC7YalOBlqPUOGYL1XmXJQ7E35e2nVWtSibnselX1O3VBdhPInzjkn2ImuJp0JvIUFx19E6YBw/132', '1520260933', '1', '', '0', '03a7fbdc3d444c85a00047d3ca604034', null, null, null, null, null, null, '0', '0');
