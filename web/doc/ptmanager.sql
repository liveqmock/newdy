/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ptmanager

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-01-26 10:32:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `data_dictionary`
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary`;
CREATE TABLE `data_dictionary` (
  `data_id` varchar(36) NOT NULL COMMENT '主键',
  `data_name` varchar(64) DEFAULT NULL COMMENT '数据名称',
  `data_value` char(64) DEFAULT NULL COMMENT '数据值',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` varchar(3) DEFAULT NULL COMMENT '状态',
  `data_code` varchar(36) DEFAULT NULL COMMENT '父级id',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `show_left` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('26b95294-5350-11e4-a93c-00215e283e38', '公司', '1', '1', '1', 'new_class_type', '2014-10-14 11:14:03', 'yangqianqian', '0');
INSERT INTO `data_dictionary` VALUES ('28b8f252-7f40-11e4-905f-001a6436c118', '行业', '2', '1', '1', 'new_class_type', '2014-12-09 09:10:26', 'admin', '0');

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `info_title` varchar(500) DEFAULT NULL COMMENT '信息主题',
  `info_content` varchar(2048) DEFAULT NULL COMMENT '信息内容',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `status` varchar(3) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL COMMENT '图片地址',
  `desc` varchar(2048) DEFAULT NULL COMMENT '信息描述',
  `info_type` varchar(3) DEFAULT NULL COMMENT '信息类型',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_name` varchar(64) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(2048) DEFAULT NULL COMMENT '链接地址',
  `open_way` varchar(64) DEFAULT NULL COMMENT '打开方式',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级id',
  `status` varchar(3) DEFAULT NULL COMMENT '状态（启用1，禁用0）',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `icon_path` varchar(50) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `item_class` varchar(50) DEFAULT NULL,
  `icon_top_path` varchar(50) DEFAULT NULL COMMENT '菜单一级目录图标',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '组织机构管理', null, null, '0', '1', null, null, '/images/ico03.png', null, 'kuai_red', '/images/ico_sy4.png');
INSERT INTO `menu` VALUES ('2', '企业内容管理', null, '0', '0', '1', null, null, '/images/ico02.png', null, 'kuai_green', '/images/ico_sy3.png');
INSERT INTO `menu` VALUES ('3', '产品管理', null, null, '0', '1', null, null, '/images/ico07.png', null, 'kuai_red', '/images/ico_sy8.png');
INSERT INTO `menu` VALUES ('4', '新闻公告管理', null, '0', '0', '1', null, null, '/images/ico08.png', null, 'kuai_yellow', '/images/ico_sy8.png');
INSERT INTO `menu` VALUES ('5', '网站基本信息管理', null, '0', '0', '1', null, null, '/images/ico01.png', '2', 'kuai_yellow', '/images/ico_sy2.png');
INSERT INTO `menu` VALUES ('6', '积分兑换管理', null, null, '0', '1', null, null, '/images/ico04.png', null, 'kuai_blue', '/images/ico_sy5.png');
INSERT INTO `menu` VALUES ('7', '订单管理', null, null, '0', '1', null, null, '/images/ico06.png', null, 'kuai_orange', '/images/ico_sy7.png');
INSERT INTO `menu` VALUES ('8', '论坛管理', null, '0', '0', '1', null, null, '/images/ico05.png', null, 'kuai_purple', '/images/ico_sy6.png');
INSERT INTO `menu` VALUES ('10', '网站1', ' /initResourceAdd.do', '1', '5', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('11', '网站2', ' /initQuery.do', '0', '5', '0', null, null, null, '2', null, null);
INSERT INTO `menu` VALUES ('12', '企业1', ' /initCourseAdd', '0', '2', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('13', '企业2', ' /initCourseQuery', '0', '2', '0', null, null, null, '2', null, null);
INSERT INTO `menu` VALUES ('14', '会员1', '/initAuditResource.do', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('15', '会员2', '/initAuditCourse.do', null, '3', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('16', '积分1', '/initStatisticalResource.do', null, '4', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('17', '积分2', '/initStatisticalCourse.do', null, '4', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('18', '积分三', '/initStatisticalBuy.do', null, '4', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('19', '积分四', '/initStatisticalLearnUser.do', null, '4', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('20', '用户管理', ' /tuser/list', '0', '1', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('21', '角色管理', '/role/index', '0', '1', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('22', '订单查询', ' /user/addPage', '0', '6', '1', null, null, null, '1', 'addPage', null);
INSERT INTO `menu` VALUES ('23', '订单删除', '/user/managerPage', null, '6', '0', null, null, null, null, 'managerPage', null);
INSERT INTO `menu` VALUES ('24', '订单详情', '/user/managerGroupPage', null, '6', '0', null, null, null, null, 'managerGroupPage', null);
INSERT INTO `menu` VALUES ('25', '菜单管理', '/menu/index', null, '1', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `message_title` varchar(500) DEFAULT NULL COMMENT '信息主题',
  `message` varchar(2048) DEFAULT NULL COMMENT '信息内容',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `sort` int(11) DEFAULT NULL COMMENT '排序标识',
  `status` varchar(3) DEFAULT NULL COMMENT '状态标识',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `notice_title` varchar(500) DEFAULT NULL COMMENT '公告主题',
  `notice_content` varchar(2048) DEFAULT NULL COMMENT '公告内容',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `status` varchar(3) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `notice_type` varchar(3) DEFAULT NULL COMMENT '公告类型',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `pay_records`
-- ----------------------------
DROP TABLE IF EXISTS `pay_records`;
CREATE TABLE `pay_records` (
  `pay_record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `pay_ip` varchar(64) DEFAULT NULL COMMENT '支付ip',
  `pay_money` int(11) DEFAULT NULL COMMENT '支付金额',
  `pay_status` varchar(3) DEFAULT NULL COMMENT '支付状态0未支付1已支付',
  `pay_date` datetime DEFAULT NULL COMMENT '支付完成时间',
  `pay_order_no` varchar(64) DEFAULT NULL COMMENT '第三方订单号',
  `pay_serial_no` varchar(64) DEFAULT NULL COMMENT '第三方流水号',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  PRIMARY KEY (`pay_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_records
-- ----------------------------

-- ----------------------------
-- Table structure for `pay_record_detail`
-- ----------------------------
DROP TABLE IF EXISTS `pay_record_detail`;
CREATE TABLE `pay_record_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pay_record_id` int(11) DEFAULT NULL COMMENT '支付记录id',
  `product_id` int(11) DEFAULT NULL COMMENT '产品id',
  `product_type` varchar(3) DEFAULT NULL COMMENT '产品类型标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_record_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `pay_way`
-- ----------------------------
DROP TABLE IF EXISTS `pay_way`;
CREATE TABLE `pay_way` (
  `pay_way_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pay_way_name` varchar(128) DEFAULT NULL COMMENT '支付名称',
  `pay_way_desc` varchar(2048) DEFAULT NULL COMMENT '支付方式描述',
  `merchant_no` varchar(64) DEFAULT NULL COMMENT '商户号',
  `check_code` varchar(255) DEFAULT NULL COMMENT '校验码',
  `secret_key` varchar(2048) DEFAULT NULL COMMENT '密钥',
  `sign_code` varchar(4096) DEFAULT NULL COMMENT '签名',
  `status` varchar(3) DEFAULT NULL COMMENT '状态（无效0，有效1）',
  `sort` int(11) DEFAULT NULL COMMENT '排序值',
  `edit_time` datetime NOT NULL COMMENT '编辑人',
  `editor` varchar(64) NOT NULL COMMENT '编辑人',
  PRIMARY KEY (`pay_way_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_way
-- ----------------------------

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `product_name` varchar(500) DEFAULT NULL COMMENT '产品名称',
  `product_level` varchar(2048) DEFAULT NULL COMMENT '产品级别',
  `parentId` int(11) DEFAULT NULL COMMENT '父产品Id',
  `url` varchar(2048) DEFAULT NULL COMMENT '图片地址',
  `desc` varchar(2048) DEFAULT NULL COMMENT '产品描述',
  `isNew` varchar(3) DEFAULT NULL,
  `isHot` varchar(3) DEFAULT NULL,
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `status` varchar(3) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `isShow` int(3) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for `resource_file`
-- ----------------------------
DROP TABLE IF EXISTS `resource_file`;
CREATE TABLE `resource_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 主键',
  `resource_id` int(11) DEFAULT NULL COMMENT '资源id',
  `pic_path` varchar(4096) DEFAULT NULL COMMENT '预览图片路径',
  `file_name` varchar(1024) DEFAULT NULL COMMENT '文件名称',
  `file_path` varchar(4096) DEFAULT NULL COMMENT '文件路径',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `file_size` int(11) DEFAULT NULL COMMENT '文件大小',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_file
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(64) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(500) DEFAULT NULL COMMENT '角色描述',
  `role_function` varchar(1000) DEFAULT NULL COMMENT '角色功能权限',
  `status` varchar(3) DEFAULT NULL COMMENT '状态（启用S，禁用H）',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '管理所有的模块', '管理', '1', '2015-01-15 14:10:43', '1');
INSERT INTO `role` VALUES ('2', '普通会员', '前台登陆权限', '前台用户', '1', '2015-01-15 14:11:27', '1');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`role_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1', '1');
INSERT INTO `role_menu` VALUES ('2', '2', '1');
INSERT INTO `role_menu` VALUES ('3', '3', '1');
INSERT INTO `role_menu` VALUES ('4', '4', '1');
INSERT INTO `role_menu` VALUES ('5', '5', '1');
INSERT INTO `role_menu` VALUES ('6', '6', '1');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `event` int(1) DEFAULT NULL,
  `operinfo` varchar(1000) DEFAULT NULL,
  `userip` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `opertime` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for `template`
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `template_name` varchar(128) DEFAULT NULL COMMENT '模板名称',
  `template_url` varchar(2048) DEFAULT NULL COMMENT '模板引用地址',
  `preview_url` varchar(2048) DEFAULT NULL COMMENT '预览地址',
  `thumbnail_path` varchar(2048) DEFAULT NULL COMMENT '缩略图地址',
  `default_flag` varchar(3) DEFAULT NULL COMMENT '默认标识',
  `template_type` varchar(3) DEFAULT NULL COMMENT '模板类型(1web,2app)',
  `status` varchar(3) DEFAULT NULL COMMENT '有效标识',
  `sort` int(11) DEFAULT NULL COMMENT '排序值',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of template
-- ----------------------------

-- ----------------------------
-- Table structure for `tuser`
-- ----------------------------
DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(64) DEFAULT NULL COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `name_cn` varchar(64) DEFAULT NULL COMMENT '中文名',
  `sex` varchar(3) DEFAULT NULL COMMENT '性别0女1男',
  `birthday` varchar(20) DEFAULT NULL COMMENT '出生年月',
  `phone_no` varchar(16) DEFAULT NULL COMMENT '手机',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `post_address` varchar(512) DEFAULT NULL COMMENT '邮寄地址',
  `learn_level` varchar(16) DEFAULT NULL COMMENT '最高学习程度',
  `desc` varchar(4000) DEFAULT NULL COMMENT '个人简介',
  `status` varchar(3) DEFAULT '1' COMMENT '有效标识0是禁用1启用',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `uuid` varchar(36) DEFAULT NULL COMMENT '唯一标识,扩展字段',
  `entry_time` datetime DEFAULT NULL COMMENT '入职时间',
  `identity_card` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `user_position` varchar(40) DEFAULT NULL COMMENT '职位',
  `status_flag` varchar(3) DEFAULT NULL COMMENT '身份标识(前台用户S，后台用户M，讲师J)',
  `is_admin` varchar(3) DEFAULT NULL COMMENT '是否是管理员1、是0、否',
  `head_portrait` varchar(100) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuser
-- ----------------------------
INSERT INTO `tuser` VALUES ('2', 'admin', '123456', '管理员', '1', '2005-10-08', '13017670171', '502341194@qq.com', null, '2', null, '1', null, '2014-07-07 13:56:01', null, null, '2004-07-14 00:00:00', '410225198809322022', '管理员', 'S', null, '/headimg/1414720454928_.jpg');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '2', '1');

-- ----------------------------
-- Table structure for `web_article`
-- ----------------------------
DROP TABLE IF EXISTS `web_article`;
CREATE TABLE `web_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资讯主键',
  `class_type_id` int(11) DEFAULT NULL COMMENT '栏目id',
  `main_title` varchar(255) DEFAULT NULL COMMENT '主标题',
  `sub_title` varchar(255) DEFAULT NULL COMMENT '内容预览信息',
  `content` mediumtext COMMENT '资讯内容',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `add_person` varchar(64) DEFAULT NULL COMMENT '添加人',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `source` varchar(1024) DEFAULT NULL COMMENT '来源',
  `top_flag` varchar(3) DEFAULT '0' COMMENT '置顶标识0false1true',
  `hot_flag` varchar(3) DEFAULT '0' COMMENT '热门标识0false1true',
  `recommend_flag` varchar(3) DEFAULT '0' COMMENT '推荐标识0false1true',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读次数',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `title_pic_path` varchar(1024) DEFAULT NULL COMMENT '标题图片路径',
  `status` varchar(3) DEFAULT '0' COMMENT '状态0编辑1已发布2取消发布',
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_article
-- ----------------------------

-- ----------------------------
-- Table structure for `web_menu`
-- ----------------------------
DROP TABLE IF EXISTS `web_menu`;
CREATE TABLE `web_menu` (
  `web_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `web_menu_name` varchar(64) DEFAULT NULL COMMENT '菜单名称',
  `web_url` varchar(2048) DEFAULT NULL COMMENT '链接地址',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级id',
  `status` varchar(3) DEFAULT NULL COMMENT '状态（启用S，禁用H）',
  `sort` int(11) DEFAULT NULL COMMENT '排序值',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `defaultflag` varchar(3) DEFAULT NULL COMMENT '默认标识S不能删除H可以删除',
  PRIMARY KEY (`web_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_menu
-- ----------------------------

-- ----------------------------
-- View structure for `myview`
-- ----------------------------
DROP VIEW IF EXISTS `myview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `myview` AS (select `um`.`user_message_id` AS `user_message_id`,`u`.`user_id` AS `uid`,`u`.`head_portrait` AS `head_portrait`,`um`.`user_id` AS `send_id`,`u`.`name_cn` AS `name_cn`,count(`m`.`message_id`) AS `COUNT(m.message_id)`,`m`.`message_id` AS `message_id`,`m`.`message_title` AS `message_title`,`m`.`message` AS `message`,`m`.`edit_time` AS `edit_time`,`m`.`editor` AS `editor`,`m`.`sort` AS `sort`,`m`.`status` AS `status` from ((`user_message` `um` left join `message` `m` on((`um`.`message_id` = `m`.`message_id`))) left join `user_info` `u` on((`m`.`editor` = `u`.`user_name`))) where (((`um`.`user_id` = 194) or (`u`.`user_id` = 194)) and (`um`.`message_type` = '0') and (`um`.`pid` = 0)) group by `um`.`user_id`) ;
