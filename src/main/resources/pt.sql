/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : ptmanager

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2015-01-15 17:11:16
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
  `data_pid` varchar(36) DEFAULT NULL COMMENT '父级id',
  `edit_time` datetime DEFAULT NULL COMMENT '编辑时间',
  `editor` varchar(64) DEFAULT NULL COMMENT '编辑人',
  `show_left` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of data_dictionary
-- ----------------------------
INSERT INTO `data_dictionary` VALUES ('01c3ab66-2e83-11e4-ad5c-00215e283e38', '专科', '1', '3', '1', 'c177337e-2db6-11e4-9f8b-00215e283e38', '2014-08-28 15:14:53', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('0d138446-2e83-11e4-ad5c-00215e283e38', '硕士', '3', '6', '1', 'c177337e-2db6-11e4-9f8b-00215e283e38', '2014-08-28 15:15:12', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('26b95294-5350-11e4-a93c-00215e283e38', '博士后', '5', '1', '1', 'c177337e-2db6-11e4-9f8b-00215e283e38', '2014-10-14 11:14:03', 'yangqianqian', '0');
INSERT INTO `data_dictionary` VALUES ('28b8f252-7f40-11e4-905f-001a6436c118', '费雪', 'feixue', '1', '1', 'file_class_type', '2014-12-09 09:10:26', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('58f6ed54-5dbc-11e4-844c-00215e283e38', '北京', 'bj', '0', '1', '73dd8422-2db3-11e4-9f8b-00215e283e38', '2014-10-27 17:33:45', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('6be90c0c-3fc7-11e4-89b9-00215e283e38', '本科', '2', '0', '1', 'c177337e-2db6-11e4-9f8b-00215e283e38', '2014-09-19 14:37:26', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('703d6fba-5dbc-11e4-844c-00215e283e38', '天津', 'tj', '1', '1', '73dd8422-2db3-11e4-9f8b-00215e283e38', '2014-10-27 17:34:24', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('73dd8422-2db3-11e4-9f8b-00215e283e38', '工作地', '', null, '1', '73dd8422-2db8-11e4-9f8b-00215e283e38', '2014-10-27 17:25:38', 'admin', '1');
INSERT INTO `data_dictionary` VALUES ('73dd8422-2db8-11e4-9f8b-00215e283e38', '业务字典', null, null, null, '0', '2014-08-27 15:14:06', 'admin', '1');
INSERT INTO `data_dictionary` VALUES ('c177337e-2db6-11e4-9f8b-00215e283e38', '学历', null, null, null, '73dd8422-2db8-11e4-9f8b-00215e283e38', '2014-08-27 14:53:40', 'admin', '1');
INSERT INTO `data_dictionary` VALUES ('f58f4c48-2e86-11e4-ad5c-00215e283e38', '博士', '4', '0', '1', 'c177337e-2db6-11e4-9f8b-00215e283e38', '2014-08-28 15:43:10', 'admin', '0');
INSERT INTO `data_dictionary` VALUES ('file_class_type', 'ppt类别', 'ppt', null, '1', '73dd8422-2db8-11e4-9f8b-00215e283e38', '2014-12-08 17:30:13', 'admin', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '网站基本信息管理', null, '0', '0', '1', null, null, '/images/ico01.png', '2', 'kuai_yellow', '/images/ico_sy2.png');
INSERT INTO `menu` VALUES ('2', '企业内容管理', null, '0', '0', '1', null, null, '/images/ico02.png', null, 'kuai_green', '/images/ico_sy3.png');
INSERT INTO `menu` VALUES ('3', '会员信息管理', null, null, '0', '1', null, null, '/images/ico03.png', null, 'kuai_red', '/images/ico_sy4.png');
INSERT INTO `menu` VALUES ('4', '积分兑换管理', null, null, '0', '1', null, null, '/images/ico04.png', null, 'kuai_blue', '/images/ico_sy5.png');
INSERT INTO `menu` VALUES ('5', '论坛管理', null, '0', '0', '1', null, null, '/images/ico05.png', null, 'kuai_purple', '/images/ico_sy6.png');
INSERT INTO `menu` VALUES ('6', '订单管理', null, null, '0', '1', null, null, '/images/ico06.png', null, 'kuai_orange', '/images/ico_sy7.png');
INSERT INTO `menu` VALUES ('7', '系统管理', null, null, '0', '1', null, null, '/images/ico07.png', null, 'kuai_red', '/images/ico_sy8.png');
INSERT INTO `menu` VALUES ('8', '前台设置', null, '0', '0', '1', null, null, '/images/ico08.png', null, 'kuai_yellow', '/images/ico_sy8.png');
INSERT INTO `menu` VALUES ('9', '客户端设置', null, null, '0', '1', null, null, '/images/ico_shj0.png', null, 'kuai_turquoise', '/images/ico_shj.png');
INSERT INTO `menu` VALUES ('10', '  添加课件', ' /initResourceAdd.do', '1', '1', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('11', '  课件管理 ', ' /initQuery.do', '0', '1', '1', null, null, null, '2', null, null);
INSERT INTO `menu` VALUES ('12', '  添加课程 ', ' /initCourseAdd', '0', '2', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('13', '  课程管理 ', ' /initCourseQuery', '0', '2', '1', null, null, null, '2', null, null);
INSERT INTO `menu` VALUES ('14', '课件审核', '/initAuditResource.do', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('15', '课程审核', '/initAuditCourse.do', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('16', '课件统计', '/initStatisticalResource.do', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('17', '课程统计', '/initStatisticalCourse.do', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('18', '课程购买统计', '/initStatisticalBuy.do', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('19', '用户学习统计', '/initStatisticalLearnUser.do', null, '4', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('20', '  公告管理 ', ' /initNoticeQuery', '0', '5', '0', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('21', '  信息推送 ', ' /initMesssageQuery', '0', '5', '1', null, null, null, '1', null, null);
INSERT INTO `menu` VALUES ('22', '  添加前台用户 ', ' /user/addPage', '0', '6', '1', null, null, null, '1', 'addPage', null);
INSERT INTO `menu` VALUES ('23', '前台用户管理', '/user/managerPage', null, '6', '1', null, null, null, null, 'managerPage', null);
INSERT INTO `menu` VALUES ('24', '前台用户组管理', '/user/managerGroupPage', null, '6', '1', null, null, null, null, 'managerGroupPage', null);
INSERT INTO `menu` VALUES ('25', '用户课程记录', '/user/coursePage', null, '6', '1', null, null, null, null, 'coursePage', null);
INSERT INTO `menu` VALUES ('26', '用户购买记录', '/user/buyPage', null, '6', '1', null, null, null, null, 'buyPage', null);
INSERT INTO `menu` VALUES ('27', '角色管理', '/system/roleManagerPage', null, '7', '1', null, null, null, null, 'roleManagerPage', null);
INSERT INTO `menu` VALUES ('28', '添加用户', '/system/backUserAddPage', null, '7', '1', null, null, null, null, 'backUserAddPage', null);
INSERT INTO `menu` VALUES ('29', '用户管理', '/system/backUserManagerPage', null, '7', '1', null, null, null, null, 'backUserManagerPage', null);
INSERT INTO `menu` VALUES ('30', '课件/课程分类', '/resourceType/list', null, '7', '1', null, null, null, null, 'resorcour', null);
INSERT INTO `menu` VALUES ('32', '系统设置', '/systeminfo/list', null, '8', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('33', '前台模板设置', '/webtemplate/list', null, '8', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('34', '前台菜单设置', '/webmenu/list', null, '8', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('35', '支付设置', '/payway/list', null, '8', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('36', '首页图管理', '/homepic/list', null, '8', '0', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('37', '终端设置', '/appbase/list', null, '9', '1', null, null, null, null, 'phoneSet', null);
INSERT INTO `menu` VALUES ('38', '终端管理', '/initTerminalQuery', null, '9', '1', null, null, null, null, 'terminalManager', null);
INSERT INTO `menu` VALUES ('39', '终端信息推送', '/initPhoneMesssageQuery', null, '9', '1', null, null, null, null, 'phoneInfoPush', null);
INSERT INTO `menu` VALUES ('40', '系统参数管理', '/system/systemPropertyManagerPage', null, '7', '1', null, null, null, null, 'systemproperties', null);
INSERT INTO `menu` VALUES ('41', '  批量导入课件', ' /initBatchImport', '0', '1', '1', null, null, null, '3', null, null);
INSERT INTO `menu` VALUES ('42', '  批量导入课程 ', ' /initBatchImportCourse', '0', '2', '1', null, null, null, '3', null, null);
INSERT INTO `menu` VALUES ('43', '讲师管理', null, null, '0', '1', null, null, '/images/ico06.png', null, 'kuai_green', '/images/ico_sy4.png');
INSERT INTO `menu` VALUES ('44', '数据字典', null, null, '0', '1', null, null, '/images/ico09.png', null, 'kuai_blue', '/images/ico_sy10.png');
INSERT INTO `menu` VALUES ('45', '新闻资讯', null, null, '0', '1', null, null, '/images/ico10.png', null, 'kuai_purple', '/images/ico_sy9.png');
INSERT INTO `menu` VALUES ('46', '数据字典', '/systeminfo/dataDictionaryPage', null, '44', '1', null, null, null, null, 'dataDictionaryPage', null);
INSERT INTO `menu` VALUES ('47', '添加讲师', '/lecturer/addLecturerPage', null, '43', '1', null, null, null, null, 'dataDictionaryPage', null);
INSERT INTO `menu` VALUES ('48', '讲师管理', '/lecturer/lecturerManagerPage', null, '43', '1', null, null, null, null, 'dataDictionaryPage', null);
INSERT INTO `menu` VALUES ('49', '  添加新闻 ', ' /webArticle/add', '0', '45', '1', null, null, null, '1', 'dataDictionaryPage', null);
INSERT INTO `menu` VALUES ('50', '  新闻管理 ', ' /webArticle/list', '0', '45', '1', null, null, null, '2', 'dataDictionaryPage', null);
INSERT INTO `menu` VALUES ('51', '菜单管理', '/system/menuManagerPage', null, '7', '1', null, null, null, null, 'menuManagerPage', null);
INSERT INTO `menu` VALUES ('52', '课程作业', '/homework/list', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('53', '课程问答', '/question/list', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('54', '课程公告', '/initCourseNotice', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('55', '课程评论', '/initCommentQuery', null, '2', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('56', '报名审核', '/initAuditSign', null, '3', '1', null, null, null, null, null, null);
INSERT INTO `menu` VALUES ('57', '批量导入用户', '/user/initBatchImportPage', null, '6', '1', null, null, null, null, null, null);

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
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
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
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=utf8;

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