/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : cqjj

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-24 14:48:24
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
INSERT INTO `t_base_element` VALUES ('3df07b78ef7a4cef861123ecaa0bb33c', 'ada7c204fb5743558a9cadda627fc6c0', 'cqjjTradeFurnitureRecycle:detail', '回收详情', '/cqjjTrade/furnitureRecycle/frontPage 修改', 'GET', '2018-03-29 10:35:49', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 10:36:01', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('581887ab3bd94d719cd86b536f473074', '77af0c4576044c078d5920f959d0cd5b', 'certificate:submit', '认证提交', '/cqjjTrade/merchant/saveOrUpdate', 'POST', '2018-03-15 17:56:28', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 17:56:28', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('5af298c8ebac46f5a24f100a2c150223', '-1', '', '用户注册接口', '/sysAdmin/user/regist', 'POST', '2018-03-15 15:39:55', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 15:39:55', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('688386f9ac8a46539bce75fd6d708a8e', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:btn_del', '删除', '/cqjjTrade/furnitureSale', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('6c426f55bb984b249edf21fa61f54af3', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:view', '查询', '/cqjjTrade/furnitureSale', 'GET', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('6fac4a53fafe45eca940b4ec5b51d5e1', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:btn_del', '删除', '/cqjjTrade/merchant', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('7197c6751e4f48d5bd50ed790a0ccbd6', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:btn_add', '新增', '/cqjjTrade/furnitureType', 'POST', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('7ac03f80ecb748e2afa932bae56348ec', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:btn_upd', '修改', '/cqjjTrade/merchant', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('7e89751bd6084ba0bfb6791c7cdc7010', '-1', '', '短信验证码发送', '/sysAdmin/sms', 'GET', '2018-03-15 11:21:38', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 11:21:38', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('834d2da3ce0a4139801d556381b9d889', '-1', '', '微信验证', '/cqjjTrade/wechat/portal', 'GET', '2018-03-05 22:38:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 22:38:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('83acbf9faebe4d03a64f51052a9d594c', '186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup:menu:view', '菜单查询', '/sysAdmin/menu', 'GET', '2018-02-01 23:14:03', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-02-02 12:15:58', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('87fe39fbe7f74de3978d7f9721d7fc6a', '70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle:btn_del', '删除', '/cqjjTrade/furnitureRecycle', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('892e718e3dc8425c90f2861022438efb', '-1', '', '销售查询', '/cqjjTrade/furnitureSale', 'GET', '2018-03-29 13:24:20', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:24:20', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('8c2d253444444b3eb70143caa316f418', '-1', '', '家具类型获取', '/cqjjTrade/furnitureType', 'GET', '2018-03-08 14:12:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-08 14:12:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('90346523ef8b4b389f196116c9850141', '-1', '', '回收发布删除', '/cqjjTrade/furnitureRecycle', 'DELETE', '2018-03-07 19:35:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:25:29', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('92778cf7d7df4b7a910177e8ae69f34d', '-1', '', '回收发布修改', '/cqjjTrade/furnitureRecycle', 'PUT', '2018-03-07 19:35:51', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 13:25:35', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('96acbdabe78243058e4925fad65a6aee', 'ada7c204fb5743558a9cadda627fc6c0', 'cqjjTradeFurnitureRecycle:list', '回收列表', '/cqjjTrade/furnitureRecycle/frontPage', 'GET', '2018-03-28 16:38:59', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-29 10:36:06', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('a06791149375400d8785aaa7da031e4f', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:btn_del', '删除', '/cqjjTrade/wechat/menu', 'DELETE', null, null, null, '2018-03-05 14:00:01', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('a30c1e305a714c3c8ce8e0a124a8a65d', '-2', '', '修改用户名', '/sysAdmin/user/updUsername', 'PUT', '2018-03-16 15:26:45', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-16 15:26:45', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('a67046cc01c84d08ab0196095ea526fb', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:btn_add', '新增', '/cqjjTrade/wechat/menu', 'POST', null, null, null, '2018-03-05 14:00:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('bdadd68eb09f45d4949b1c5168bb1fd7', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:btn_del', '删除', '/cqjjTrade/furnitureType', 'DELETE', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('c24cd7bae05949faaf4849eff15014bd', '0485b37e877d44c3a06d7ffa56817e0e', 'cqjjTradeFurnitureSale:btn_upd', '修改', '/cqjjTrade/furnitureSale', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('c87f4e4c301d4503a6e013c25acb5921', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:view', '查询', '/cqjjTrade/furnitureType', 'GET', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('caf1ddd9a401452a8acfc6a15bb2e17f', 'fe97ec34ff484da38873ced827ef735a', 'wechatMenu:view', '查询', '/cqjjTrade/wechat/menu', 'GET', null, null, null, '2018-03-05 14:00:12', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', null, null);
INSERT INTO `t_base_element` VALUES ('ccc0e612d78f434a83dd7b3ab11a5df9', '6a928edbde6d49909d73b5e982b8d956', '', '销售发布删除', '/cqjjTrade/furnitureSale', 'DELETE', '2018-03-29 13:25:00', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-30 15:13:44', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('ccd238ffa5504e1eabefee00693a65be', '-1', '', '微信商户登陆接口', '/cqjjTrade/merchant/merchantLogin', 'POST', '2018-03-08 19:50:31', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-10 18:00:26', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('d24f83367fe84b4386412a7d57245239', 'e790870402814e7bbbafc2c5af4887cc', 'cqjjTradeMerchant:view', '查询', '/cqjjTrade/merchant', 'GET', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('d88e4496c5554cb891771c9142528a34', '118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType:btn_upd', '修改', '/cqjjTrade/furnitureType', 'PUT', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('dca943ba7c314906883ff3d20c7f5656', '-1', '', '用户收藏新增', 'cqjjTrade/collections', 'POST', '2018-04-03 19:33:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-03 19:33:18', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('ef5c73892cbd495bbd1cde097bb1c146', '77af0c4576044c078d5920f959d0cd5b', '', '解除绑定', '/cqjjTrade/merchant/unBinding', 'DELETE', '2018-03-16 10:10:10', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-16 10:10:10', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('efa76e89e48a4e99926c755cb0d033ad', '77af0c4576044c078d5920f959d0cd5b', 'certification:view', '商户认证查询', '/cqjjTrade/merchant/getByAdminId', 'GET', '2018-03-15 17:55:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-15 17:55:43', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_element` VALUES ('f2086f6462304e939435b26257a08535', '70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle:btn_add', '新增', '/cqjjTrade/furnitureRecycle', 'POST', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_element` VALUES ('f2e29cd29cdd4b9ebb9eed1c100673bb', '-1', '', '微信鉴权接口', '/cqjjTrade/wechat/auth', 'GET', '2018-03-03 11:05:47', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 22:44:54', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
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
INSERT INTO `t_base_menu` VALUES ('118284f284034ac187b082ac79d3da3d', 'cqjjTradeFurnitureType', '家具类型管理', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/furnitureType', null, '', '2', '1', '2018-03-04 17:38:07', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-05 13:56:41', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('15809d9eec174692aadb6c1af64b1ddf', 'sysAdmin', '系统管理', '-1', '/sysAdmin', '', null, '2', '1', null, null, null, '2018-02-02 12:53:36', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('16f5373e51dc4245b7e1d8e185f8cb15', 'sysAdminUser', '用户管理', '15809d9eec174692aadb6c1af64b1ddf', '/sysAdmin/user/init', null, null, '1', '1', null, null, null, '2018-01-31 23:52:41', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('186d664a81e44ca48f58aaaf16c6d221', 'sysAdminGroup', '组管理', '15809d9eec174692aadb6c1af64b1ddf', '/sysAdmin/group/init', null, null, '2', '1', null, null, null, '2018-02-01 12:06:13', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('38a054e013d1485ca5266f2213414523', 'home', '主页', '-1', '/home/init', null, null, '1', '1', null, null, null, null, null, null, '0', '0');
INSERT INTO `t_base_menu` VALUES ('4a3cfa77ce77414aad2c764d224e466a', 'merchant', '微信-商户信息', '-1', '', null, '', '4', '0', '2018-03-15 17:51:40', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-23 11:18:20', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('6a928edbde6d49909d73b5e982b8d956', 'merchantFurnitureSale', '微信-家具销售', '4a3cfa77ce77414aad2c764d224e466a', 'merchantFurnitureSale', null, '', '3', '0', '2018-03-29 13:19:58', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-23 11:18:12', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('70043a1ba07c48b19d2e355171ebd820', 'cqjjTradeFurnitureRecycle', '回收发布', '909acbe35d8f4efeabf79c846e7827b3', '/cqjjTrade/furnitureRecycle', null, '', '4', '1', '2018-03-07 19:27:04', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-03-07 19:27:04', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('77af0c4576044c078d5920f959d0cd5b', 'merchantCertification', '微信-商户认证', '4a3cfa77ce77414aad2c764d224e466a', 'merchantCertification', null, '', '1', '0', '2018-03-15 17:54:21', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-23 11:18:00', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('909acbe35d8f4efeabf79c846e7827b3', 'cqjjTrade', '家具平台', '-1', '/cqjjTrade', null, '', '3', '1', '2018-03-01 22:01:22', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-23 11:42:26', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
INSERT INTO `t_base_menu` VALUES ('ada7c204fb5743558a9cadda627fc6c0', 'merchantFurnitureRecycle', '微信-家具回收', '4a3cfa77ce77414aad2c764d224e466a', 'merchantFurnitureRecycle', null, '', '2', '0', '2018-03-28 16:37:12', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '2018-04-23 11:18:06', '03a7fbdc3d444c85a00047d3ca604034', '127.0.0.1', '0', '0');
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
INSERT INTO `t_base_resource_authority` VALUES ('040dcc436667481da7cf54a2948ad0e7', '0a564344dbc241cb9fd2a7e78d9db486', 'fb9e8e4a316142ee92bd13bb9640c481', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('065d6ed91e3048d08b2316f09b0cfbb8', '0a564344dbc241cb9fd2a7e78d9db486', '028cdb9bde85420a8b4eb96c188a9495', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('06ceaa2f32234bf8ab9372d3622eb715', '0a564344dbc241cb9fd2a7e78d9db486', '7197c6751e4f48d5bd50ed790a0ccbd6', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('0e23f3d94cf04a47bd2b834ff7bbdb11', '0a564344dbc241cb9fd2a7e78d9db486', '352a02ed554d4d269407935c36198271', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('0faff1cb1d264796b78d62b7074e5bbc', '0a564344dbc241cb9fd2a7e78d9db486', 'a06791149375400d8785aaa7da031e4f', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('147f78b4eac74da99b9022ddcb0d32f4', '0a564344dbc241cb9fd2a7e78d9db486', '87fe39fbe7f74de3978d7f9721d7fc6a', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('151308e5e3994c948a561ebf182cdd82', '0a564344dbc241cb9fd2a7e78d9db486', '909acbe35d8f4efeabf79c846e7827b3', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('17fb6db2813b4e94a10764d69bc7a23f', '0a564344dbc241cb9fd2a7e78d9db486', '34e94bb388e146e8b27712713503589c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('19acbe4913b242068dc16d38fe26fe3e', '489c84de2c2b49bd8288f037363c1825', 'ada7c204fb5743558a9cadda627fc6c0', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('1f447facbe9d4c1d983ff7c23466364f', '0a564344dbc241cb9fd2a7e78d9db486', 'fe97ec34ff484da38873ced827ef735a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('21ed6f44f2794873bb48aac3bdd7a752', '0a564344dbc241cb9fd2a7e78d9db486', 'd88e4496c5554cb891771c9142528a34', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2580aa971b974ef592052c0f476c2161', '0a564344dbc241cb9fd2a7e78d9db486', '77af0c4576044c078d5920f959d0cd5b', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('26fc82bfa8d042899e9b359494202f9f', '0a564344dbc241cb9fd2a7e78d9db486', 'ada7c204fb5743558a9cadda627fc6c0', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2851d859939e4a35bb56f2c1d99d0b78', '0a564344dbc241cb9fd2a7e78d9db486', '16f5373e51dc4245b7e1d8e185f8cb15', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2952d764f77c4276b57cf525db523602', '0a564344dbc241cb9fd2a7e78d9db486', 'ef5c73892cbd495bbd1cde097bb1c146', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2a20d037c2fa46da95fbfc9f12418e07', '0a564344dbc241cb9fd2a7e78d9db486', '0485b37e877d44c3a06d7ffa56817e0e', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('2f7eb3ceba7a4742b70feb5981573dc9', '0a564344dbc241cb9fd2a7e78d9db486', '3668d4d9e4164ef1b2541fcb5bba97e1', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('3085ab9265914ef8b1f7857f0d105cc2', '0a564344dbc241cb9fd2a7e78d9db486', '96acbdabe78243058e4925fad65a6aee', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('341bcc09bbea40fa98f60d4490ed2d9f', '0a564344dbc241cb9fd2a7e78d9db486', '0299fd47170b4f949796710201850f58', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('35d71b21ea5b40daa0e99e2722ac3a68', '0a564344dbc241cb9fd2a7e78d9db486', '36b74e5685d34c1e9c0c931253cb1b4e', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('3a99c1b5bd6b4d62bbacac9c310b5ce6', '0a564344dbc241cb9fd2a7e78d9db486', '3df07b78ef7a4cef861123ecaa0bb33c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('3c76bf9729574398a97f4c3a26fead1d', '489c84de2c2b49bd8288f037363c1825', '3df07b78ef7a4cef861123ecaa0bb33c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('40244a868df24a40935938926977bb66', '0a564344dbc241cb9fd2a7e78d9db486', '00f697e6a15949f7b0f45ec368f8db39', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('53d0339dcd1042fa8c03ad9922cf4860', '0a564344dbc241cb9fd2a7e78d9db486', '6c426f55bb984b249edf21fa61f54af3', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('56e5ff911e83436aae911cf6d58ea1b2', '489c84de2c2b49bd8288f037363c1825', '6a928edbde6d49909d73b5e982b8d956', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('579f32692c0c47c7b177ac903c9c5da0', '489c84de2c2b49bd8288f037363c1825', '4a3cfa77ce77414aad2c764d224e466a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6164b15b4059466d895359a6c32736da', '0a564344dbc241cb9fd2a7e78d9db486', '23ebfeb62f264cd4a6f8abca4e00bf84', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('65a1260bb55f4bfb8b0e99996f661fa2', '0a564344dbc241cb9fd2a7e78d9db486', '02707c75fe374c1ebd6c1b975d552df2', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('67183dc1e2c942cc90b6b832e27239d7', '489c84de2c2b49bd8288f037363c1825', '96acbdabe78243058e4925fad65a6aee', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('67716336598f4fa4b5c6dd16a9ab9e0e', '0a564344dbc241cb9fd2a7e78d9db486', 'c24cd7bae05949faaf4849eff15014bd', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('69a24a77df024713b9cd6b34ac370b7e', '0a564344dbc241cb9fd2a7e78d9db486', '186d664a81e44ca48f58aaaf16c6d221', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6a953448b9934160a37113a927540b45', '0a564344dbc241cb9fd2a7e78d9db486', 'f2086f6462304e939435b26257a08535', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6b6bf1e8ab46465aacd852275c2b11ce', '0a564344dbc241cb9fd2a7e78d9db486', '3213f4e8ca344bc293bc9996db50a1b8', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('6c07a31cdc4e48ff88153aa0575a21cf', '489c84de2c2b49bd8288f037363c1825', 'ccc0e612d78f434a83dd7b3ab11a5df9', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('75a11efaecba4901ac52e93f6ef80a3c', '0a564344dbc241cb9fd2a7e78d9db486', '02282fa13a69466686240cb58175ed72', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('79809e390797462091ec7419e79d6f7b', '0a564344dbc241cb9fd2a7e78d9db486', '688386f9ac8a46539bce75fd6d708a8e', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('7a4f169fbc81471da79e1e2b0dc85daf', '0a564344dbc241cb9fd2a7e78d9db486', '15809d9eec174692aadb6c1af64b1ddf', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('7dc64972a92c4b5fbae5bf6c9a87c4d9', '489c84de2c2b49bd8288f037363c1825', '3213f4e8ca344bc293bc9996db50a1b8', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('7e14abe821d14259882d52b77bd545d5', '489c84de2c2b49bd8288f037363c1825', '581887ab3bd94d719cd86b536f473074', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('8cc0f97b416b41c098ea550ccc0a70d8', '0a564344dbc241cb9fd2a7e78d9db486', '7ac03f80ecb748e2afa932bae56348ec', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('96ccc9ebd21b48ed9876278b8e83556b', '0a564344dbc241cb9fd2a7e78d9db486', '302b4794979a4e7ea5d3ffa6f46a378e', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('9c4d87b5500646a1ad8c9bd5e690479d', '0a564344dbc241cb9fd2a7e78d9db486', '14b2bfb7d71a48088e2bda757a534a8b', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('9ebd554f13fc49cead4aeee4427fd498', '0a564344dbc241cb9fd2a7e78d9db486', '368664d6a0d3485ea05cc73efbe49837', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('a7ce040213da4d5a8f188a28a98edee2', '0a564344dbc241cb9fd2a7e78d9db486', '581887ab3bd94d719cd86b536f473074', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('a8cd5ae444b849799741db9cd579fee6', '489c84de2c2b49bd8288f037363c1825', 'ef5c73892cbd495bbd1cde097bb1c146', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('acf31b9cb1b94e8d9624e954c43419a6', '0a564344dbc241cb9fd2a7e78d9db486', '6fac4a53fafe45eca940b4ec5b51d5e1', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b0d746f3564b43dfa62d29ca45dcd983', '0a564344dbc241cb9fd2a7e78d9db486', '70043a1ba07c48b19d2e355171ebd820', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b14cfed9590249b0b63e9c74056cd657', '0a564344dbc241cb9fd2a7e78d9db486', '4a3cfa77ce77414aad2c764d224e466a', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b24dd1d95203482199590dfa63471137', '0a564344dbc241cb9fd2a7e78d9db486', '6a928edbde6d49909d73b5e982b8d956', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b3870b1c5082486aae2a7b8b8506b6e0', '0a564344dbc241cb9fd2a7e78d9db486', '83acbf9faebe4d03a64f51052a9d594c', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b3dbb7d2dd14447492334936e6deb9b4', '0a564344dbc241cb9fd2a7e78d9db486', '38a054e013d1485ca5266f2213414523', 'menu', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b5a0a8e211da4f029041c1d17c0a5367', '0a564344dbc241cb9fd2a7e78d9db486', '13ecb8a1cb34499ca5ed20ba3b9936b7', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('b6c29b8fd7c24d6d8d64ec79132e42cf', '0a564344dbc241cb9fd2a7e78d9db486', '118284f284034ac187b082ac79d3da3d', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('bc296d7a3b32449390314c817b44ee46', '489c84de2c2b49bd8288f037363c1825', 'efa76e89e48a4e99926c755cb0d033ad', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('bd4381a30b43472d9dd6e32bdb0511f3', '0a564344dbc241cb9fd2a7e78d9db486', 'ccc0e612d78f434a83dd7b3ab11a5df9', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c6bd34b516c84386b907c3bbd7293ef2', '0a564344dbc241cb9fd2a7e78d9db486', 'e790870402814e7bbbafc2c5af4887cc', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('c8475734b15747ae87f6bba7a55d33a3', '0a564344dbc241cb9fd2a7e78d9db486', '153054137682453a967ed67d21af21a8', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('cb11e4252a2244868087a9b98662eaff', '0a564344dbc241cb9fd2a7e78d9db486', 'bdadd68eb09f45d4949b1c5168bb1fd7', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('cfc5a132c72346b0a6123b1084d9fbcb', '489c84de2c2b49bd8288f037363c1825', '77af0c4576044c078d5920f959d0cd5b', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d4cdd14606a840d3b9d215e6180dee0c', '489c84de2c2b49bd8288f037363c1825', '38a054e013d1485ca5266f2213414523', 'menu', '1', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d5649e370b5649ad84cadf73e2168aff', '489c84de2c2b49bd8288f037363c1825', '23ebfeb62f264cd4a6f8abca4e00bf84', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d61529f3e5dd45ee858499a863047848', '0a564344dbc241cb9fd2a7e78d9db486', '363c9469368c4f249d4c67a6bb4bf8e9', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d626d72f8fb34482b21507b6ebc38186', '0a564344dbc241cb9fd2a7e78d9db486', '01e886d372de4a89bb70bfd1ac0204fd', 'menu', '0', null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('d645fc6d3d0b4cf493af17d8e5b20738', '0a564344dbc241cb9fd2a7e78d9db486', 'caf1ddd9a401452a8acfc6a15bb2e17f', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e19538ff1e3c4b4c998ae993da6a0db3', '0a564344dbc241cb9fd2a7e78d9db486', 'd24f83367fe84b4386412a7d57245239', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e44600a1d2d442ac8e92b3bf75525d89', '0a564344dbc241cb9fd2a7e78d9db486', '00885895f7854fa89364b06c1f56c237', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('e9011b4e12f64a3694f8aeceaf59ed20', '0a564344dbc241cb9fd2a7e78d9db486', 'c87f4e4c301d4503a6e013c25acb5921', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ea3def579ddf4bdb990f31535ce2b381', '0a564344dbc241cb9fd2a7e78d9db486', '35c6fce7f6a446f89696fcf5c2593cdb', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ead68237a9e24d819fda3400affd7e8e', '0a564344dbc241cb9fd2a7e78d9db486', '334d610d016d40bb95fd5bc27f756545', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ec07e5989386477e86de5e8d8866cd60', '0a564344dbc241cb9fd2a7e78d9db486', '3721a60a06524fed8711de3bc358e1d6', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ed90fcebc7e24206a0b92b4a3b0e46d5', '0a564344dbc241cb9fd2a7e78d9db486', 'efa76e89e48a4e99926c755cb0d033ad', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f08bdaf3ab3246b49e7d403cd5596032', '0a564344dbc241cb9fd2a7e78d9db486', '01fb513845714f988c7658f70aa4c76d', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('f8bd122194fb4e09bab2598935cd7cd3', '0a564344dbc241cb9fd2a7e78d9db486', '19167867cbc84639a039aaf49f340a59', 'resource', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_base_resource_authority` VALUES ('ff358afabf9d4567b35358c26b0c890a', '0a564344dbc241cb9fd2a7e78d9db486', 'a67046cc01c84d08ab0196095ea526fb', 'resource', null, null, null, null, null, null, null, null, null);

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
