/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : cqjj

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-05-04 16:18:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_base_element
-- ----------------------------
DROP TABLE IF EXISTS `t_base_element`;
CREATE TABLE `t_base_element` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `menu_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `code` varchar(150) DEFAULT NULL COMMENT '资源编码',
  `name` varchar(50) DEFAULT NULL COMMENT '元素名称',
  `uri` varchar(150) DEFAULT NULL COMMENT '执行该操作需要的权限地址',
  `method` varchar(50) DEFAULT NULL COMMENT '请求类型',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='页面元素';

-- ----------------------------
-- Records of t_base_element
-- ----------------------------
INSERT INTO `t_base_element` VALUES ('00885895f7854fa89364b06c1f56c237', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminElement:view', '元素查询', '/sysAdmin/element', 'GET', null, null, null, '2018-02-01 14:35:26', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('008da25baf374e48ba0bc0e390bf1f32', '-2', null, '个人信息', '/sysAdmin/user/loginUserInfo', 'GET', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('00f697e6a15949f7b0f45ec368f8db39', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminElement:btn_add', '元素新增', '/sysAdmin/element', 'POST', null, null, null, '2018-02-01 14:35:51', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('01fb513845714f988c7658f70aa4c76d', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminMenu:view', '菜单查询', '/sysAdmin/menu', 'GET', null, null, null, '2018-02-01 14:35:57', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('02282fa13a69466686240cb58175ed72', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminElement:btn_upd', '元素编辑', '/sysAdmin/element', 'PUT', null, null, null, '2018-02-01 14:36:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('02707c75fe374c1ebd6c1b975d552df2', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminMenu:btn_add', '菜单新增', '/sysAdmin/menu', 'POST', null, null, null, '2018-02-01 15:19:51', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('028cdb9bde85420a8b4eb96c188a9495', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminMenu:btn_upd', '菜单编辑', '/sysAdmin/menu', 'PUT', null, null, null, '2018-02-01 14:36:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('0299fd47170b4f949796710201850f58', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminMenu:btn_del', '菜单删除', '/sysAdmin/menu', 'DELETE', null, null, null, '2018-02-01 14:36:23', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('04daf92d6387475abfb0ed44a2694ec8', '-1', '', '根据用户ID查询商户信息接口', '/cqjjTrade/merchant/getByAdminId', 'GET', '2018-04-02 14:36:14', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-02 14:36:14', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('099dc78c55bb4ee9add9d4c9bae69b71', '-1', '', '商户找回密码接口', '/sysAdmin/user/findpwd', 'PUT', '2018-03-15 19:46:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 19:46:28', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('13ecb8a1cb34499ca5ed20ba3b9936b7', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:btn_add', '新增', '/cqjjTrade/furnitureSale', 'POST', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('14b2bfb7d71a48088e2bda757a534a8b', '70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle:btn_upd', '修改', '/cqjjTrade/furnitureRecycle', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('153054137682453a967ed67d21af21a8', '01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminMenu:btn_del', '元素删除', '/sysAdmin/element', 'DELETE', '2018-02-01 15:18:08', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-02-01 15:18:08', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('18e867c87c824e30922e8b538336fd2e', '-1', '', '用户收藏查询', 'cqjjTrade/collections', 'GET', '2018-04-03 19:32:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-03 19:33:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('19167867cbc84639a039aaf49f340a59', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:btn_upd', '修改', '/cqjjTrade/wechat/menu', 'PUT', null, null, null, '2018-03-05 13:59:55', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('23ebfeb62f264cd4a6f8abca4e00bf84', '6a928edbde6d49909d73b5e982b8d956', '', '销售发布修改', '/cqjjTrade/furnitureSale', 'PUT', '2018-03-29 13:24:46', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-30 15:13:39', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('27eca336134c4872b04c6146c83d9a7f', 'bb7fb979aeca4e37976c0645c3d8d51d', 'cqjjTradeSpecialInfo:view', '查询', '/cqjjTrade/specialInfo', 'GET', null, null, null, '2018-04-24 15:20:49', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('2a5caf8ec85843279d536c074925bd54', '-1', '', '微信接口', '/cqjjTrade/wechat/portal', 'POST', '2018-03-03 11:46:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-03 11:46:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('2f7e20432d4d45deae04cd19832292dc', '-1', '', '回收发布查询', '/cqjjTrade/furnitureRecycle', 'GET', '2018-03-07 19:35:35', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:25:19', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('302b4794979a4e7ea5d3ffa6f46a378e', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:user:view', '用户查询', '/sysAdmin/user', 'GET', '2018-02-01 23:13:05', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-02-02 12:15:44', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('3213f4e8ca344bc293bc9996db50a1b8', '6a928edbde6d49909d73b5e982b8d956', '', '销售发布', '/cqjjTrade/furnitureSale', 'POST', '2018-03-29 13:22:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:22:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('334d610d016d40bb95fd5bc27f756545', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:btn_add', '新增', '/cqjjTrade/merchant', 'POST', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('34e94bb388e146e8b27712713503589c', '16f5373e51dc4245b7e1d8e185f8cb15', 'sysAdminUser:view', '查询', '/sysAdmin/user', 'GET', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('352a02ed554d4d269407935c36198271', '16f5373e51dc4245b7e1d8e185f8cb15', 'sysAdminUser:btn_add', '新增', '/sysAdmin/user', 'POST', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('35c6fce7f6a446f89696fcf5c2593cdb', '16f5373e51dc4245b7e1d8e185f8cb15', 'sysAdminUser:btn_upd', '编辑', '/sysAdmin/user', 'PUT', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('363c9469368c4f249d4c67a6bb4bf8e9', '16f5373e51dc4245b7e1d8e185f8cb15', 'sysAdminUser:btn_del', '删除', '/sysAdmin/user', 'DELETE', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('3668d4d9e4164ef1b2541fcb5bba97e1', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:view', '查询', '/sysAdmin/group', 'GET', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('368664d6a0d3485ea05cc73efbe49837', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:btn_add', '新增', '/sysAdmin/group', 'POST', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('36b74e5685d34c1e9c0c931253cb1b4e', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:btn_upd', '编辑', '/sysAdmin/group', 'PUT', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('36ff2b97d96d4a6fb0cb74d1a70575c4', '-1', '', '回收发布', '/cqjjTrade/furnitureRecycle', 'POST', '2018-03-07 19:35:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-07 19:35:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('3721a60a06524fed8711de3bc358e1d6', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:btn_del', '删除', '/sysAdmin/group', 'DELETE', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('3721f2e336054058acfea69517be9f0d', '-1', null, '登陆', '/sysAuth/auth/login', 'POST', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_element` VALUES ('3a1cb5ad7e424fa1a82852fc68eb8895', '-1', '', '用户收藏删除', 'cqjjTrade/collections', 'DELETE', '2018-04-03 19:33:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-03 19:33:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('3c4f3d5b8cca4e099ed76b60ed6465ba', 'bb7fb979aeca4e37976c0645c3d8d51d', 'cqjjTradeSpecialInfo:btn_del', '删除', '/cqjjTrade/specialInfo', 'DELETE', null, null, null, '2018-04-24 15:20:52', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('3df07b78ef7a4cef861123ecaa0bb33c', 'ada7c204fb5743558a9cadda627fc6c0', 'cqjjTradeFurnitureRecycle:detail', '回收详情', '/cqjjTrade/furnitureRecycle/frontPage 修改', 'GET', '2018-03-29 10:35:49', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 10:36:01', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('581887ab3bd94d719cd86b536f473074', '77af0c4576044c078d5920f959d0cd5b', 'certificate:submit', '认证提交', '/cqjjTrade/merchant/saveOrUpdate', 'POST', '2018-03-15 17:56:28', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 17:56:28', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('5af298c8ebac46f5a24f100a2c150223', '-1', '', '用户注册接口', '/sysAdmin/user/regist', 'POST', '2018-03-15 15:39:55', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 15:39:55', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('5e41844346c9437cadf6c0c0b05bab63', '09442dda0fc440efaf2d0a7a0b1730e6', 'cqjjTradeSpendAccount:btn_del', '删除', '/cqjjTrade/account/spend', 'DELETE', null, null, null, '2018-05-03 16:46:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('640891be0e864959bac86ca54871e072', 'bb7fb979aeca4e37976c0645c3d8d51d', 'cqjjTradeSpecialInfo:btn_add', '新增', '/cqjjTrade/specialInfo', 'POST', null, null, null, '2018-04-24 15:20:55', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('652643af9ad848da8dab53b1a25e0a60', '71de77ab514842808dd45009e253329a', 'cqjjTradeSaleAccount:view', '查询', '/cqjjTrade/account/sale', 'GET', null, null, null, '2018-05-02 17:36:39', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('688386f9ac8a46539bce75fd6d708a8e', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:btn_del', '删除', '/cqjjTrade/furnitureSale', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('6c3d1fb16a0d4bd6b5afe230174edb6a', '-1', '', '特殊位置信息列表获取', '/cqjjTrade/specialInfo/list', 'GET', '2018-04-24 15:36:17', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-24 15:36:17', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('6c426f55bb984b249edf21fa61f54af3', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:view', '查询', '/cqjjTrade/furnitureSale', 'GET', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('6fac4a53fafe45eca940b4ec5b51d5e1', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:btn_del', '删除', '/cqjjTrade/merchant', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('7197c6751e4f48d5bd50ed790a0ccbd6', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:btn_add', '新增', '/cqjjTrade/furnitureType', 'POST', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('7ac03f80ecb748e2afa932bae56348ec', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:btn_upd', '修改', '/cqjjTrade/merchant', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('7ac9ae0446f045e5863554405e6429c1', '09442dda0fc440efaf2d0a7a0b1730e6', 'cqjjTradeSpendAccount:btn_add', '新增', '/cqjjTrade/account/spend', 'POST', null, null, null, '2018-05-03 16:46:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('7e89751bd6084ba0bfb6791c7cdc7010', '-1', '', '短信验证码发送', '/sysAdmin/sms', 'GET', '2018-03-15 11:21:38', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 11:21:38', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('834d2da3ce0a4139801d556381b9d889', '-1', '', '微信验证', '/cqjjTrade/wechat/portal', 'GET', '2018-03-05 22:38:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 22:38:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('83acbf9faebe4d03a64f51052a9d594c', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:menu:view', '菜单查询', '/sysAdmin/menu', 'GET', '2018-02-01 23:14:03', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-02-02 12:15:58', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('87fe39fbe7f74de3978d7f9721d7fc6a', '70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle:btn_del', '删除', '/cqjjTrade/furnitureRecycle', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('892e718e3dc8425c90f2861022438efb', '-1', '', '销售查询', '/cqjjTrade/furnitureSale', 'GET', '2018-03-29 13:24:20', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:24:20', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('8c2d253444444b3eb70143caa316f418', '-1', '', '家具类型获取', '/cqjjTrade/furnitureType', 'GET', '2018-03-08 14:12:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-08 14:12:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('8d5a7dd5031b46c0a7d85d4b371ed640', '71de77ab514842808dd45009e253329a', 'cqjjTradeSaleAccount:btn_del', '删除', '/cqjjTrade/account/sale', 'DELETE', null, null, null, '2018-05-02 17:36:57', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('90346523ef8b4b389f196116c9850141', '-1', '', '回收发布删除', '/cqjjTrade/furnitureRecycle', 'DELETE', '2018-03-07 19:35:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:25:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('92778cf7d7df4b7a910177e8ae69f34d', '-1', '', '回收发布修改', '/cqjjTrade/furnitureRecycle', 'PUT', '2018-03-07 19:35:51', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:25:35', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('92ca705eaaba4a02b8e88eddedbd2c02', '71de77ab514842808dd45009e253329a', 'cqjjTradeSaleAccount:btn_add', '新增', '/cqjjTrade/account/sale', 'POST', null, null, null, '2018-05-02 17:37:11', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('96acbdabe78243058e4925fad65a6aee', 'ada7c204fb5743558a9cadda627fc6c0', 'cqjjTradeFurnitureRecycle:list', '回收列表', '/cqjjTrade/furnitureRecycle/frontPage', 'GET', '2018-03-28 16:38:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 10:36:06', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('a06791149375400d8785aaa7da031e4f', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:btn_del', '删除', '/cqjjTrade/wechat/menu', 'DELETE', null, null, null, '2018-03-05 14:00:01', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('a30c1e305a714c3c8ce8e0a124a8a65d', '-2', '', '修改用户名', '/sysAdmin/user/updUsername', 'PUT', '2018-03-16 15:26:45', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-16 15:26:45', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('a67046cc01c84d08ab0196095ea526fb', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:btn_add', '新增', '/cqjjTrade/wechat/menu', 'POST', null, null, null, '2018-03-05 14:00:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('bd0cab702efb40f8bb30b2ce7f40dc03', '09442dda0fc440efaf2d0a7a0b1730e6', 'cqjjTradeSpendAccount:view', '查询', '/cqjjTrade/account/spend', 'GET', null, null, null, '2018-05-03 16:46:24', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('bdadd68eb09f45d4949b1c5168bb1fd7', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:btn_del', '删除', '/cqjjTrade/furnitureType', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('c24cd7bae05949faaf4849eff15014bd', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:btn_upd', '修改', '/cqjjTrade/furnitureSale', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('c87f4e4c301d4503a6e013c25acb5921', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:view', '查询', '/cqjjTrade/furnitureType', 'GET', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('caf1ddd9a401452a8acfc6a15bb2e17f', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:view', '查询', '/cqjjTrade/wechat/menu', 'GET', null, null, null, '2018-03-05 14:00:12', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('ccc0e612d78f434a83dd7b3ab11a5df9', '6a928edbde6d49909d73b5e982b8d956', '', '销售发布删除', '/cqjjTrade/furnitureSale', 'DELETE', '2018-03-29 13:25:00', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-30 15:13:44', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('ccd238ffa5504e1eabefee00693a65be', '-1', '', '微信商户登陆接口', '/cqjjTrade/merchant/merchantLogin', 'POST', '2018-03-08 19:50:31', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-10 18:00:26', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('d24f83367fe84b4386412a7d57245239', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:view', '查询', '/cqjjTrade/merchant', 'GET', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('d5ea40a354464591aa390339ab9b984a', '09442dda0fc440efaf2d0a7a0b1730e6', 'cqjjTradeSpendAccount:btn_upd', '修改', '/cqjjTrade/account/spend', 'PUT', null, null, null, '2018-05-03 16:46:26', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('d88e4496c5554cb891771c9142528a34', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:btn_upd', '修改', '/cqjjTrade/furnitureType', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('dca943ba7c314906883ff3d20c7f5656', '-1', '', '用户收藏新增', 'cqjjTrade/collections', 'POST', '2018-04-03 19:33:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-03 19:33:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('df07a211d9be4a9bb3346a4e244fac76', '71de77ab514842808dd45009e253329a', 'cqjjTradeSaleAccount:btn_upd', '修改', '/cqjjTrade/account/sale', 'PUT', null, null, null, '2018-05-02 17:37:19', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('ef5c73892cbd495bbd1cde097bb1c146', '77af0c4576044c078d5920f959d0cd5b', '', '解除绑定', '/cqjjTrade/merchant/unBinding', 'DELETE', '2018-03-16 10:10:10', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-16 10:10:10', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('efa76e89e48a4e99926c755cb0d033ad', '77af0c4576044c078d5920f959d0cd5b', 'certification:view', '商户认证查询', '/cqjjTrade/merchant/getByAdminId', 'GET', '2018-03-15 17:55:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 17:55:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('f2086f6462304e939435b26257a08535', '70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle:btn_add', '新增', '/cqjjTrade/furnitureRecycle', 'POST', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('f2e29cd29cdd4b9ebb9eed1c100673bb', '-1', '', '微信鉴权接口', '/cqjjTrade/wechat/auth', 'GET', '2018-03-03 11:05:47', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 22:44:54', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('f3ed2b93290b43fabf13f8eaa68b7792', 'bb7fb979aeca4e37976c0645c3d8d51d', 'cqjjTradeSpecialInfo:btn_upd', '修改', '/cqjjTrade/specialInfo', 'PUT', null, null, null, '2018-04-24 15:20:57', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('f901bb9a1cac4439bc65e68678482e8b', '-1', '', '七牛上传', '/sysAdmin/qiniu', 'GET', '2018-03-03 11:05:11', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-03 11:05:11', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('f996c351108949bcb63287e44d8f0f11', '-1', '', '微信商户绑定后台账户接口', '/cqjjTrade/merchant/bindingAdmin', 'POST', '2018-03-10 18:02:01', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-10 18:02:01', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('fb9e8e4a316142ee92bd13bb9640c481', '70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle:view', '查询', '/cqjjTrade/furnitureRecycle', 'GET', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_base_group
-- ----------------------------
DROP TABLE IF EXISTS `t_base_group`;
CREATE TABLE `t_base_group` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `code` varchar(50) DEFAULT NULL COMMENT '组编码',
  `name` varchar(50) DEFAULT NULL COMMENT '组名',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级组',
  `path` varchar(150) DEFAULT NULL COMMENT '组路径关系',
  `type` varchar(32) DEFAULT NULL COMMENT '组类型',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组信息';

-- ----------------------------
-- Records of t_base_group
-- ----------------------------
INSERT INTO `t_base_group` VALUES ('0a564344dbc241cb9fd2a7e78d9db486', 'admin', '管理员组', '-1', '/admin', '1', null, null, null, '2018-01-30 14:25:37', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_group` VALUES ('489c84de2c2b49bd8288f037363c1825', 'merchant', '普通商户组', '-1', '/admin/merchant', '1', '2018-01-30 19:09:12', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 16:00:46', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_base_group_leader
-- ----------------------------
DROP TABLE IF EXISTS `t_base_group_leader`;
CREATE TABLE `t_base_group_leader` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `group_id` varchar(32) DEFAULT NULL COMMENT '组ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组领导者';

-- ----------------------------
-- Records of t_base_group_leader
-- ----------------------------
INSERT INTO `t_base_group_leader` VALUES ('0741b62c0f034d25b3f0dc1adb5c65c8', '0a564344dbc241cb9fd2a7e78d9db486', '03a7fbdc3d444c85a00047d3ca604034');
INSERT INTO `t_base_group_leader` VALUES ('c817b2f571874afaa7101d162bae3110', '489c84de2c2b49bd8288f037363c1825', '03a7fbdc3d444c85a00047d3ca604034');

-- ----------------------------
-- Table structure for t_base_group_member
-- ----------------------------
DROP TABLE IF EXISTS `t_base_group_member`;
CREATE TABLE `t_base_group_member` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `group_id` varchar(32) DEFAULT NULL COMMENT '组ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组成员';

-- ----------------------------
-- Records of t_base_group_member
-- ----------------------------
INSERT INTO `t_base_group_member` VALUES ('9a4c884b06de482085539a576d65c01b', '489c84de2c2b49bd8288f037363c1825', '1e350cc8e8614b89acde9c4f17b76b28');

-- ----------------------------
-- Table structure for t_base_group_type
-- ----------------------------
DROP TABLE IF EXISTS `t_base_group_type`;
CREATE TABLE `t_base_group_type` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '类型名',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组类型';

-- ----------------------------
-- Records of t_base_group_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_base_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_base_menu`;
CREATE TABLE `t_base_menu` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `code` varchar(50) DEFAULT NULL COMMENT '路径编码',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父级菜单',
  `path` varchar(150) DEFAULT NULL COMMENT '菜单地址',
  `href` varchar(150) DEFAULT NULL COMMENT '菜单地址（备用字段）',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `is_show` varchar(1) DEFAULT NULL COMMENT '是否显示（1显示，0不显示）',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of t_base_menu
-- ----------------------------
INSERT INTO `t_base_menu` VALUES ('01e886d372de4a89bb70bfd1ac0204fd', 'sysAdminMenu', '菜单管理', '15809d9eec174692aadb6c1af64b1ddf', '/sysAdmin/menu/init', null, null, '3', '1', null, null, null, '2018-02-01 12:09:35', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale', '销售发布', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/furnitureSale', null, '', '5', '1', '2018-03-29 13:17:41', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:17:41', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('09442dda0fc440efaf2d0a7a0b1730e6', 'cqjjTradeSpendAccount', '支出记账', '4a3cfa77ce77414aad2c764d224e466a', '', null, '', '5', '0', '2018-05-03 16:45:32', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-05-03 16:45:54', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType', '家具类型管理', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/furnitureType', null, '', '2', '1', '2018-03-04 17:38:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 13:56:41', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('15809d9eec174692aadb6c1af64b1ddf', 'sysAdmin', '系统管理', '-1', '/sysAdmin', '', null, '2', '1', null, null, null, '2018-02-02 12:53:36', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('16f5373e51dc4245b7e1d8e185f8cb15', 'sysAdminUser', '用户管理', '15809d9eec174692aadb6c1af64b1ddf', '/sysAdmin/user/init', null, null, '1', '1', null, null, null, '2018-01-31 23:52:41', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup', '组管理', '15809d9eec174692aadb6c1af64b1ddf', '/sysAdmin/group/init', null, null, '2', '1', null, null, null, '2018-02-01 12:06:13', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('38a054e013d1485ca5266f2213414523', 'home', '主页', '-1', '/home/init', null, null, '1', '1', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_menu` VALUES ('4a3cfa77ce77414aad2c764d224e466a', 'merchant', '功能-商户信息', '-1', '', null, '', '4', '0', '2018-03-15 17:51:40', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-25 15:08:42', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('6a928edbde6d49909d73b5e982b8d956', 'merchantFurnitureSale', '家具销售', '4a3cfa77ce77414aad2c764d224e466a', 'merchantFurnitureSale', null, '', '3', '0', '2018-03-29 13:19:58', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-25 15:08:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle', '回收发布', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/furnitureRecycle', null, '', '4', '1', '2018-03-07 19:27:04', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-07 19:27:04', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('71de77ab514842808dd45009e253329a', 'cqjjTradeSaleAccount', '出售记账', '4a3cfa77ce77414aad2c764d224e466a', '', null, '', '4', '0', '2018-04-25 15:07:58', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-05-02 17:36:15', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('77af0c4576044c078d5920f959d0cd5b', 'merchantCertification', '商户认证', '4a3cfa77ce77414aad2c764d224e466a', 'merchantCertification', null, '', '1', '0', '2018-03-15 17:54:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-25 15:08:34', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('909acbe35d8f4efeabf79c846e7827b3', 'cqjjTrade', '家具平台', '-1', '/cqjjTrade', null, '', '3', '1', '2018-03-01 22:01:22', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-23 11:42:26', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('ada7c204fb5743558a9cadda627fc6c0', 'merchantFurnitureRecycle', '家具回收', '4a3cfa77ce77414aad2c764d224e466a', 'merchantFurnitureRecycle', null, '', '2', '0', '2018-03-28 16:37:12', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-25 15:08:24', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('bb7fb979aeca4e37976c0645c3d8d51d', 'cqjjTradeSpecialInfo', '信息配置', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/specialInfo', null, '', '6', '1', '2018-04-24 15:17:35', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-24 15:20:33', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant', '商户管理', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/merchant', null, '', '1', '1', '2018-03-01 22:02:36', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-01 22:08:44', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('fe97ec34ff484da38873ced827ef735a', 'wechatMenu', '微信菜单管理', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/wechatMenu', null, '', '3', '1', '2018-03-05 13:55:52', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 13:58:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');

-- ----------------------------
-- Table structure for t_base_resource_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_base_resource_authority`;
CREATE TABLE `t_base_resource_authority` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `group_id` varchar(32) DEFAULT NULL COMMENT '组id',
  `resource_id` varchar(32) DEFAULT NULL COMMENT '资源（菜单，元素）id',
  `type` varchar(50) DEFAULT NULL COMMENT '菜单（menu），元素（element）',
  `is_show` varchar(1) DEFAULT NULL COMMENT '是否是后台添加的菜单（1是，0否）',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源权限';

-- ----------------------------
-- Records of t_base_resource_authority
-- ----------------------------
INSERT INTO `t_base_resource_authority` VALUES ('00aadab4ae044d5c87b3fd6276f13bcb', '489c84de2c2b49bd8288f037363c1825', '581887ab3bd94d719cd86b536f473074', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('056ca186366442db860ffc9fe65c2c18', '0a564344dbc241cb9fd2a7e78d9db486', '4a3cfa77ce77414aad2c764d224e466a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('0e6023526f9b45409956a7490f3e5afc', '0a564344dbc241cb9fd2a7e78d9db486', 'd24f83367fe84b4386412a7d57245239', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('132cf85849704641a81d072582485897', '0a564344dbc241cb9fd2a7e78d9db486', '34e94bb388e146e8b27712713503589c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('1a0e0c9409be465fa5df7414ce952945', '0a564344dbc241cb9fd2a7e78d9db486', '00885895f7854fa89364b06c1f56c237', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2430b4a400d74d85a583bd3bf0f799c0', '489c84de2c2b49bd8288f037363c1825', 'bd0cab702efb40f8bb30b2ce7f40dc03', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('269ef3ba57454e6b8192d5278e57c239', '0a564344dbc241cb9fd2a7e78d9db486', 'ef5c73892cbd495bbd1cde097bb1c146', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2775818bad3c45dab14f146160aed644', '0a564344dbc241cb9fd2a7e78d9db486', '02282fa13a69466686240cb58175ed72', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('32f654bdfd3d4fad82cb3ac8cc4687f3', '0a564344dbc241cb9fd2a7e78d9db486', '186d664a81e44ca48f58aaaf16c6d221', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('330fa607848d42b59ee9267ce373b618', '489c84de2c2b49bd8288f037363c1825', '7ac9ae0446f045e5863554405e6429c1', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('33e011970e6f4c8aa483c5895a40cc77', '0a564344dbc241cb9fd2a7e78d9db486', '302b4794979a4e7ea5d3ffa6f46a378e', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('3a4d9a0389364c588a26c146e0948aef', '0a564344dbc241cb9fd2a7e78d9db486', 'd88e4496c5554cb891771c9142528a34', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('401573e6394f482d84f8b11eaccc2e4d', '0a564344dbc241cb9fd2a7e78d9db486', '6c426f55bb984b249edf21fa61f54af3', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('4164fde0102c4f148011bca579c85d0b', '0a564344dbc241cb9fd2a7e78d9db486', '028cdb9bde85420a8b4eb96c188a9495', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('4242743dbf9b4d0d968f109c6a71fe20', '0a564344dbc241cb9fd2a7e78d9db486', '35c6fce7f6a446f89696fcf5c2593cdb', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('45a934c600954e3a8483ec3dd2926bf6', '0a564344dbc241cb9fd2a7e78d9db486', '19167867cbc84639a039aaf49f340a59', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('466c12e1c85949cc9873781aba775002', '0a564344dbc241cb9fd2a7e78d9db486', '36b74e5685d34c1e9c0c931253cb1b4e', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('49e124c134f941499e66c0aa3a694824', '489c84de2c2b49bd8288f037363c1825', '652643af9ad848da8dab53b1a25e0a60', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('4c6147e02c004c5494f4c3439fa8b067', '0a564344dbc241cb9fd2a7e78d9db486', '334d610d016d40bb95fd5bc27f756545', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('4c8f3d2b177342eda3682508612712cd', '489c84de2c2b49bd8288f037363c1825', '23ebfeb62f264cd4a6f8abca4e00bf84', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('534a315c89e2430ba696e8ac84e2ea6a', '489c84de2c2b49bd8288f037363c1825', '3df07b78ef7a4cef861123ecaa0bb33c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('53b8bdadc47a4304b273844277a50e84', '0a564344dbc241cb9fd2a7e78d9db486', 'f2086f6462304e939435b26257a08535', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('5604cc44171e4bf18016d08aac88db9f', '489c84de2c2b49bd8288f037363c1825', '38a054e013d1485ca5266f2213414523', 'menu', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('599b7f86c9f640d69c977b8d81b7557b', '0a564344dbc241cb9fd2a7e78d9db486', '640891be0e864959bac86ca54871e072', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('5dadcb1c3892412194431be2721e544f', '0a564344dbc241cb9fd2a7e78d9db486', '02707c75fe374c1ebd6c1b975d552df2', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('62f3e3a2aca24461943ff075712019fd', '0a564344dbc241cb9fd2a7e78d9db486', 'fe97ec34ff484da38873ced827ef735a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6441f6b2f3c14b17bea48e1d19097bd7', '489c84de2c2b49bd8288f037363c1825', '96acbdabe78243058e4925fad65a6aee', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('650ab151e23a4028ad92e89845c3e49a', '489c84de2c2b49bd8288f037363c1825', '77af0c4576044c078d5920f959d0cd5b', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6a6b58668cd845bbb0ad440a346fc2a2', '0a564344dbc241cb9fd2a7e78d9db486', '581887ab3bd94d719cd86b536f473074', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6db0aaaf75f243abb29dab566e3c5257', '0a564344dbc241cb9fd2a7e78d9db486', '87fe39fbe7f74de3978d7f9721d7fc6a', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6ff68d0c52804aa984402c67a88cf077', '0a564344dbc241cb9fd2a7e78d9db486', '118284f284034ac187b082ac79d3da3d', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('726c360da51c4f978b7d7056ef6ece6f', '0a564344dbc241cb9fd2a7e78d9db486', '01fb513845714f988c7658f70aa4c76d', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('7934beb30110422a8593c2baf1a2ef2f', '0a564344dbc241cb9fd2a7e78d9db486', '0485b37e877d44c3a06d7ffa56817e0e', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('81d0b6e882b64b71a439952183c4c127', '0a564344dbc241cb9fd2a7e78d9db486', 'bdadd68eb09f45d4949b1c5168bb1fd7', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('8282e29461884eec82fa629072a8d5fa', '0a564344dbc241cb9fd2a7e78d9db486', 'efa76e89e48a4e99926c755cb0d033ad', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('86f81ad4b82a4a0895acece8fc06702a', '489c84de2c2b49bd8288f037363c1825', '71de77ab514842808dd45009e253329a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('87e2e945093d4b4bbbf9bb15214813d2', '489c84de2c2b49bd8288f037363c1825', 'efa76e89e48a4e99926c755cb0d033ad', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('8cbce6283a444f1a97a696f53d3dd82b', '0a564344dbc241cb9fd2a7e78d9db486', '352a02ed554d4d269407935c36198271', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('9099582c1ccb4d9e8e3a742a5926c648', '0a564344dbc241cb9fd2a7e78d9db486', '7197c6751e4f48d5bd50ed790a0ccbd6', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('90d5be257b30411a94cea29e80c3adb1', '489c84de2c2b49bd8288f037363c1825', '3213f4e8ca344bc293bc9996db50a1b8', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('93c12d3fea3442388e47379ca8490c44', '489c84de2c2b49bd8288f037363c1825', 'd5ea40a354464591aa390339ab9b984a', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('970b555d5a3f441d9c69d38d45937829', '0a564344dbc241cb9fd2a7e78d9db486', '00f697e6a15949f7b0f45ec368f8db39', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('97b75feb49164c0a88e3215ad2b2aea2', '0a564344dbc241cb9fd2a7e78d9db486', '909acbe35d8f4efeabf79c846e7827b3', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('981eb56de3b8492db697d2388e80c7c9', '0a564344dbc241cb9fd2a7e78d9db486', '3c4f3d5b8cca4e099ed76b60ed6465ba', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('9d09218d475f4f4dabdf5e9852cb68ec', '0a564344dbc241cb9fd2a7e78d9db486', 'caf1ddd9a401452a8acfc6a15bb2e17f', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('9f0254df041143ab80d7561c0a7d1fb5', '489c84de2c2b49bd8288f037363c1825', '5e41844346c9437cadf6c0c0b05bab63', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('a3c0465bb7df4710a2a7c4e3f7ceea06', '0a564344dbc241cb9fd2a7e78d9db486', '3df07b78ef7a4cef861123ecaa0bb33c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('a4b4e0d0015547b29a4eab7025e4b681', '0a564344dbc241cb9fd2a7e78d9db486', 'ada7c204fb5743558a9cadda627fc6c0', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('a632675b6b9d418f9c1130843cd098e6', '0a564344dbc241cb9fd2a7e78d9db486', '368664d6a0d3485ea05cc73efbe49837', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('a6e857f42cb7435d8154fe43c2ba6f84', '0a564344dbc241cb9fd2a7e78d9db486', '77af0c4576044c078d5920f959d0cd5b', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ae96fc0505044ea898ff15426be0f091', '0a564344dbc241cb9fd2a7e78d9db486', '14b2bfb7d71a48088e2bda757a534a8b', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('afb0088e79a446568e4a3860993ed2ce', '489c84de2c2b49bd8288f037363c1825', 'df07a211d9be4a9bb3346a4e244fac76', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b0e0df2034da4f9d8d0ee40cbe94d69e', '489c84de2c2b49bd8288f037363c1825', '4a3cfa77ce77414aad2c764d224e466a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b12774ad42884f168cae8641cb9e68be', '0a564344dbc241cb9fd2a7e78d9db486', '7ac03f80ecb748e2afa932bae56348ec', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b212318a376e4b7d8b836c5b0a3b5dab', '0a564344dbc241cb9fd2a7e78d9db486', '688386f9ac8a46539bce75fd6d708a8e', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b3a4fae403b74e91b9706a5ac4e0fadd', '489c84de2c2b49bd8288f037363c1825', 'ef5c73892cbd495bbd1cde097bb1c146', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b93c8a2a2e1247f588306f542e75d233', '489c84de2c2b49bd8288f037363c1825', '92ca705eaaba4a02b8e88eddedbd2c02', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b9e0bd22505145fda142f740534fe668', '0a564344dbc241cb9fd2a7e78d9db486', '6fac4a53fafe45eca940b4ec5b51d5e1', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('beb96cf1d14f4fd08d193340c78ee3ac', '0a564344dbc241cb9fd2a7e78d9db486', '83acbf9faebe4d03a64f51052a9d594c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c4a941fb87ee427b9a4d1c0ab8cd1576', '0a564344dbc241cb9fd2a7e78d9db486', 'c87f4e4c301d4503a6e013c25acb5921', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c51aa5922d8445708030ce9d10c51934', '0a564344dbc241cb9fd2a7e78d9db486', '96acbdabe78243058e4925fad65a6aee', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c778972624504552866754bdbfee5b35', '0a564344dbc241cb9fd2a7e78d9db486', 'c24cd7bae05949faaf4849eff15014bd', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c920b91c940041d4aca08476e1e3d478', '0a564344dbc241cb9fd2a7e78d9db486', '13ecb8a1cb34499ca5ed20ba3b9936b7', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c9af1589d3f747c58e583d0290312aa3', '0a564344dbc241cb9fd2a7e78d9db486', 'a67046cc01c84d08ab0196095ea526fb', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d32e21444db645849bcd4f5f31830ad7', '0a564344dbc241cb9fd2a7e78d9db486', 'f3ed2b93290b43fabf13f8eaa68b7792', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d345d92c0bfe482495eedded6b10d247', '0a564344dbc241cb9fd2a7e78d9db486', '0299fd47170b4f949796710201850f58', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d6507de105784298b3ef3d3963106270', '0a564344dbc241cb9fd2a7e78d9db486', '153054137682453a967ed67d21af21a8', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d6bd3fef9a454645bf7fd1753bd360a6', '0a564344dbc241cb9fd2a7e78d9db486', 'a06791149375400d8785aaa7da031e4f', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d7030b01519243fabf2b0479a7d139c1', '489c84de2c2b49bd8288f037363c1825', '09442dda0fc440efaf2d0a7a0b1730e6', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d72a7c1822484b68a5f280a7c60fbbcc', '0a564344dbc241cb9fd2a7e78d9db486', 'fb9e8e4a316142ee92bd13bb9640c481', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d8c6ff911a134c21a519c989a376c842', '0a564344dbc241cb9fd2a7e78d9db486', '3668d4d9e4164ef1b2541fcb5bba97e1', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d93ebe46729446989173ebd6a2d4d9ba', '0a564344dbc241cb9fd2a7e78d9db486', '27eca336134c4872b04c6146c83d9a7f', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('dcead53e70704e23b6667ddd73299c2f', '0a564344dbc241cb9fd2a7e78d9db486', 'ccc0e612d78f434a83dd7b3ab11a5df9', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('df620be31079421c8558e6e630140a6d', '0a564344dbc241cb9fd2a7e78d9db486', 'bb7fb979aeca4e37976c0645c3d8d51d', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e30a715e903447ff9dfae2d4baf333c6', '0a564344dbc241cb9fd2a7e78d9db486', '16f5373e51dc4245b7e1d8e185f8cb15', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e324bcfecbb44f29b69cc5c3f63063bd', '0a564344dbc241cb9fd2a7e78d9db486', '3721a60a06524fed8711de3bc358e1d6', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e449397552c34d9595bd6fb499e3848a', '0a564344dbc241cb9fd2a7e78d9db486', '363c9469368c4f249d4c67a6bb4bf8e9', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e6df8920f24a46fd8835d1398b1552a7', '0a564344dbc241cb9fd2a7e78d9db486', '6a928edbde6d49909d73b5e982b8d956', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e849058c8dee47a9987ca9e55d670a62', '0a564344dbc241cb9fd2a7e78d9db486', 'e790870402814e7bbbafc2c5af4887cc', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e8c9644854b64a08a110aaa8ae62516f', '489c84de2c2b49bd8288f037363c1825', 'ada7c204fb5743558a9cadda627fc6c0', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e9e2ee3004d44f848aa3d2d45d7fbb2a', '0a564344dbc241cb9fd2a7e78d9db486', '15809d9eec174692aadb6c1af64b1ddf', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ee2e73c953ba42339c9438904f26d9e1', '0a564344dbc241cb9fd2a7e78d9db486', '23ebfeb62f264cd4a6f8abca4e00bf84', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f18d607b99f74b85b60b06cc14de5b4d', '489c84de2c2b49bd8288f037363c1825', '6a928edbde6d49909d73b5e982b8d956', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f50147aa795a40618650ad54d2e67166', '489c84de2c2b49bd8288f037363c1825', 'ccc0e612d78f434a83dd7b3ab11a5df9', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f5b65faf9d064f6da0c87afd42b4a7ae', '0a564344dbc241cb9fd2a7e78d9db486', '38a054e013d1485ca5266f2213414523', 'menu', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f5e4fc49d7224eeb9837d38802556864', '0a564344dbc241cb9fd2a7e78d9db486', '3213f4e8ca344bc293bc9996db50a1b8', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f95afbaf845e43fa9d3db1101bf27582', '0a564344dbc241cb9fd2a7e78d9db486', '01e886d372de4a89bb70bfd1ac0204fd', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('fdb51d86e2a149429f1e374b55a4c607', '0a564344dbc241cb9fd2a7e78d9db486', '70043a1ba07c48b19d2e355171ebd820', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ff78b69f3424480fa8342901c9376b59', '489c84de2c2b49bd8288f037363c1825', '8d5a7dd5031b46c0a7d85d4b371ed640', 'resource', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_base_user
-- ----------------------------
DROP TABLE IF EXISTS `t_base_user`;
CREATE TABLE `t_base_user` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(150) DEFAULT NULL COMMENT '密码',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `gender` varchar(1) DEFAULT NULL COMMENT '1:男2女3保密',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(30) DEFAULT NULL COMMENT '电子邮件',
  `head_img` varchar(155) DEFAULT NULL COMMENT '头像',
  `address` varchar(200) DEFAULT NULL COMMENT '住址',
  `reg_date` datetime DEFAULT NULL COMMENT '注册日期',
  `enabled` char(5) DEFAULT '1' COMMENT '1可用的 0不可用',
  `last_login` datetime DEFAULT NULL COMMENT '最后登入时间',
  `credential_code` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `credential` varchar(50) DEFAULT NULL COMMENT '证件类型',
  `date_created` datetime DEFAULT NULL COMMENT '数据输入日期',
  `create_id` varchar(50) DEFAULT NULL COMMENT '建立者ID',
  `create_ip` varchar(50) DEFAULT NULL COMMENT '建立者IP',
  `date_updated` datetime DEFAULT NULL COMMENT '资料更新日期',
  `update_id` varchar(50) DEFAULT NULL COMMENT '修改者ID',
  `update_ip` varchar(50) DEFAULT NULL COMMENT '修改者IP',
  `version` int(11) DEFAULT '0' COMMENT 'VERSION',
  `del_flag` char(1) DEFAULT '0' COMMENT '0否1是',
  PRIMARY KEY (`id`),
  KEY `sys_c006744` (`username`),
  KEY `real_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- ----------------------------
-- Records of t_base_user
-- ----------------------------
INSERT INTO `t_base_user` VALUES ('03a7fbdc3d444c85a00047d3ca604034', '18523977614', '96e79218965eb72c92a549dd5a330112', '邹朝亮', '0', '2018-01-24 00:00:00', '12345', null, 'http://p3npuv0x6.bkt.clouddn.com/公众号_img_2.png', null, null, null, null, null, null, null, null, null, '2018-02-28 20:06:13', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_user` VALUES ('1e350cc8e8614b89acde9c4f17b76b28', '18523977615', '96e79218965eb72c92a549dd5a330112', '18523977615', null, null, null, null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_user` VALUES ('4516cfdbbee94193b81d157b82ff7b52', 'test123', '111111', '测试用户', '0', null, '124', '124', null, null, null, '1', null, null, null, '2018-02-01 21:50:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-02-01 21:50:36', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
