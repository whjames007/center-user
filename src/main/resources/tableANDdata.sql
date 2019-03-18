/*
 Navicat Premium Data Transfer

 Source Server         : 70
 Source Server Type    : MariaDB
 Source Server Version : 100122
 Source Host           : 192.168.2.70:3306
 Source Schema         : netmgr

 Target Server Type    : MariaDB
 Target Server Version : 100122
 File Encoding         : 65001

 Date: 18/03/2019 13:56:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ammeter_info
-- ----------------------------
DROP TABLE IF EXISTS `ammeter_info`;
CREATE TABLE `ammeter_info`  (
  `ammeter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '电表主键',
  `ammeter_sn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电表SN编号',
  `ammeter_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电表名称',
  `ammeter_supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电表厂家',
  `ammeter_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电表类型【NORMAL=普通直联】【AUGMENT=增强直联】',
  `ammeter_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电表状态【OPEN=合闸】【CLOSE=拉闸】【OFFLINE=下线】',
  `connection_mode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联接方式【DIRECT=直联】【CONCENTRATOR=集中器联】',
  `ammeter_numerical_value` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '电表当前电量',
  `ammeter_read_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前抄表时间',
  `ammeter_position` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电表位置',
  `concentrator_id` int(11) NOT NULL DEFAULT 0 COMMENT '集中器主键',
  `room_id` int(11) NOT NULL COMMENT '房间主键',
  `ammeter_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电表描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`ammeter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电表信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ammeter_info
-- ----------------------------
INSERT INTO `ammeter_info` VALUES (1, 'ZNDNB-001', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 2.88, '2018-10-22 13:24:57', '前台左墙表箱之第一排第一个', 1, 1, '这次是我真的决定离开，远离那些许久不懂的悲哀；', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 13:37:27', '数据由java程序做最后一次修改', 15, '2018-10-22 13:24:57');
INSERT INTO `ammeter_info` VALUES (2, 'ZNDNB-002', '三相四线（新型导轨式）电子式电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'CLOSE', 'CONCENTRATOR', 5.64, '2018-10-22 13:28:23', '前台左墙表箱之第一排第二个', 1, 2, '想让你忘却愁绪忘记关怀，放开这纷纷扰扰自由自在；', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 13:39:29', '数据由java程序做最后一次修改', 15, '2018-10-22 13:28:23');
INSERT INTO `ammeter_info` VALUES (3, 'ZNDNB-003', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 17.16, '2018-10-18 18:56:27', '前台左墙表箱之第一排第3个', 1, 3, '那次是你不经意的离开，成为我这许久不变的悲哀；', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '抄表成功', 888, '2018-10-18 18:56:27');
INSERT INTO `ammeter_info` VALUES (4, 'ZNDNB-004', '三相四线（新型导轨式）电子式电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'CLOSE', 'CONCENTRATOR', 25.52, '2018-10-18 18:56:35', '前台左墙表箱之第一排第4个', 1, 4, '于是淡漠了繁华无法再开怀，于是我守着寂寞不能归来；', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:39:29', '抄表成功', 888, '2018-10-18 18:56:35');
INSERT INTO `ammeter_info` VALUES (5, 'ZNDNB-005', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'CLOSE', 'CONCENTRATOR', 14.25, '2018-10-18 19:55:14', '前台左墙表箱之第2排第一个', 1, 5, '于是淡漠了繁华无法再开怀，于是我守着寂寞不能归来；', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '抄表成功', 888, '2018-10-18 19:55:14');
INSERT INTO `ammeter_info` VALUES (6, 'ZNDNB-006', '三相四线（新型导轨式）电子式电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 20.54, '2018-10-08 13:39:29', '前台左墙表箱之第2排第二个', 1, 6, '非常好啊', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:39:29', '', NULL, '2018-10-08 13:39:29');
INSERT INTO `ammeter_info` VALUES (7, 'ZNDNB-007', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'CLOSE', 'CONCENTRATOR', 8.54, '2018-10-08 13:37:27', '前台左墙表箱之第2排第3个', 1, 7, '很不错', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '', NULL, '2018-10-08 13:37:27');
INSERT INTO `ammeter_info` VALUES (8, 'ZNDNB-008', 'DTZY1225-Z型三相费控智能电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 13.49, '2018-10-08 13:39:29', '前台左墙表箱之第2排第4个', 4, 8, '这次是我真的决定离开，远离那些许久不懂的悲哀；', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:39:29', '抄表成功', 888, '2018-10-09 17:15:27');
INSERT INTO `ammeter_info` VALUES (9, 'ZNDNB-009', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 15.68, '2018-10-08 13:37:27', '前台左墙表箱之第一排第3个', 2, 9, '很不错', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '', NULL, '2018-10-08 13:37:27');
INSERT INTO `ammeter_info` VALUES (10, 'ZNDNB-010', '三相四线（新型导轨式）电子式电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'CLOSE', 'CONCENTRATOR', 19.21, '2018-10-08 13:39:29', '前台左墙表箱之第一排第4个', 2, 10, '非常好啊', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:39:29', '', NULL, '2018-10-08 13:39:29');
INSERT INTO `ammeter_info` VALUES (11, 'ZNDNB-011', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 14.25, '2018-10-08 13:37:27', '前台左墙表箱之第2排第一个', 2, 11, '很不错', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '', NULL, '2018-10-08 13:37:27');
INSERT INTO `ammeter_info` VALUES (12, 'ZNDNB-012', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 10.32, '2018-10-08 13:37:27', '前台左墙表箱之第一排第一个', 5, 12, '很不错', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '', NULL, '2018-10-08 13:37:27');
INSERT INTO `ammeter_info` VALUES (13, 'ZNDNB-013', '三相四线（新型导轨式）电子式电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 9.65, '2018-10-08 13:39:29', '前台左墙表箱之第一排第二个', 5, 13, '非常好啊', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:39:29', '', NULL, '2018-10-08 13:39:29');
INSERT INTO `ammeter_info` VALUES (14, 'ZNDNB-015', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 10.32, '2018-10-08 13:37:27', '前台左墙表箱之第一排第一个', 3, 1, '很不错', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '', NULL, '2018-10-08 13:37:27');
INSERT INTO `ammeter_info` VALUES (15, 'ZNDNB-018', '三相四线（新型导轨式）电子式电能表', '常州瑞信电子科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 9.65, '2018-10-08 13:39:29', '前台左墙表箱之第一排第二个', 3, 2, '非常好啊', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:39:29', '', NULL, '2018-10-08 13:39:29');
INSERT INTO `ammeter_info` VALUES (16, 'ZNDNB-016', 'DTZY1225-Z型三相费控智能电能表', '深圳市嘉荣华科技有限公司', 'NORMAL', 'OPEN', 'CONCENTRATOR', 15.68, '2018-10-08 13:37:27', '前台左墙表箱之第一排第3个', 3, 3, '很不错', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 13:37:27', '', NULL, '2018-10-08 13:37:27');

-- ----------------------------
-- Table structure for ammeter_log_record
-- ----------------------------
DROP TABLE IF EXISTS `ammeter_log_record`;
CREATE TABLE `ammeter_log_record`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志记录主键',
  `ammeter_id` int(11) NOT NULL COMMENT '电表主键',
  `operation_method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作方式【AUTO=自动】【MANUAL=人工】【TEST=测试】',
  `operation_directive` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作指令【READ=抄表】【ZERO=清零】【OPEN=合闸】【CLOSE=拉闸】',
  `numerical_record` double(10, 2) NULL DEFAULT 0.00 COMMENT '电量记录',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电表操作日志记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for building_info
-- ----------------------------
DROP TABLE IF EXISTS `building_info`;
CREATE TABLE `building_info`  (
  `building_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '楼栋主键',
  `building_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼栋名称',
  `pack_id` int(11) NOT NULL COMMENT '园区主键',
  `building_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`building_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '楼栋信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of building_info
-- ----------------------------
INSERT INTO `building_info` VALUES (1, '电子港一号楼', 1, '还可以', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-09-30 16:28:40', NULL, 15, '2018-09-30 16:28:40');
INSERT INTO `building_info` VALUES (2, '电子港二号楼', 1, '高富帅', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-30 16:30:52', NULL, NULL, '2018-09-30 16:30:52');
INSERT INTO `building_info` VALUES (3, '电子港三号楼', 1, '酒店。。。。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-30 16:31:17', NULL, NULL, '2018-09-30 16:31:17');

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails`  (
  `appId` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resourceIds` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `appSecret` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grantTypes` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `redirectUrl` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorities` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_token_validity` int(11) NULL DEFAULT NULL,
  `refresh_token_validity` int(11) NULL DEFAULT NULL,
  `additionalInformation` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `autoApproveScopes` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`appId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for concentrator_info
-- ----------------------------
DROP TABLE IF EXISTS `concentrator_info`;
CREATE TABLE `concentrator_info`  (
  `concentrator_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '集中器主键',
  `concentrator_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中器名称',
  `concentrator_type_id` int(11) NOT NULL COMMENT '集中器类型',
  `concentrator_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中器IP地址',
  `concentrator_port` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中器端口号',
  `concentrator_supplier` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '集中器厂家',
  `concentrator_pack_id` int(11) NULL DEFAULT NULL COMMENT '所属园区ID',
  `concentrator_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '集中器描述',
  `concentrator_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中器状态【ONLINE=在线】【OFFLINE=下线】',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`concentrator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '集中器信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of concentrator_info
-- ----------------------------
INSERT INTO `concentrator_info` VALUES (1, 'TJTL-1248型集中器', 1, '192.168.10.73', '10086', '深圳市嘉荣华科技有限公司', 1, '集中器是腾联集中抄表系统中的关键设备。能自动抄收并存储各种智能仪表和通信终端采集到的能耗数据，其下行信道是低压电力线及RS-485串行通信通道；上行信道采用公用通讯网，支持客户端、服务器两种通讯模式，采用模块化设计，可通过更换通信模块直接改变通信方式。', 'ONLINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 14:11:49', NULL, NULL, '2018-10-08 14:11:49');
INSERT INTO `concentrator_info` VALUES (2, 'DTT-6074型集中器', 2, '192.168.10.104', '10087', '深圳腾讯公司', 1, '多通道通讯：支持MBUS、RS485、红外等', 'ONLINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 14:12:02', NULL, NULL, '2018-10-08 14:12:02');
INSERT INTO `concentrator_info` VALUES (3, 'LOL-3684型集中器', 3, '192.168.10.104', '10088', '北京百度公司', 2, '超强带载力：可带载1000块表计 ', 'ONLINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 14:12:13', NULL, NULL, '2018-10-08 14:12:13');
INSERT INTO `concentrator_info` VALUES (4, 'CS-60型集中器', 4, 'abcd::2', '10086', '上海大华测控设备厂有限公司', 3, '可靠性及稳定性高：全部采用军工级芯片', 'ONLINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 14:12:22', NULL, NULL, '2018-10-08 14:12:22');
INSERT INTO `concentrator_info` VALUES (5, 'CS-60型集中器', 2, '192.168.10.104', '10089', '上海大华测控设备厂有限公司', 1, '可靠性及稳定性高：全部采用军工级芯片', 'OFFLINE', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 14:12:22', '', NULL, '2018-10-08 14:12:22');
INSERT INTO `concentrator_info` VALUES (6, 'TJTL-1248型集中器', 1, '192.168.10.104', '10086', '深圳市嘉荣华科技有限公司', 2, '集中器是腾联集中抄表系统中的关键设备。能自动抄收并存储各种智能仪表和通信终端采集到的能耗数据，其下行信道是低压电力线及RS-485串行通信通道；上行信道采用公用通讯网，支持客户端、服务器两种通讯模式，采用模块化设计，可通过更换通信模块直接改变通信方式。', 'ONLINE', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 14:11:49', '', NULL, '2018-10-08 14:11:49');

-- ----------------------------
-- Table structure for concentrator_type
-- ----------------------------
DROP TABLE IF EXISTS `concentrator_type`;
CREATE TABLE `concentrator_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '集中器类型主键',
  `type_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '集中器类型编码',
  `type_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '集中器类型描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '集中器类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of concentrator_type
-- ----------------------------
INSERT INTO `concentrator_type` VALUES (1, 'JZQ-001', '此类型的集中器采取TCP通信', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-08 14:07:33', NULL, NULL, '2018-10-08 14:07:33');
INSERT INTO `concentrator_type` VALUES (2, 'JZQ-002', '此类型的集中器采取HTTP通信', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 14:07:33', '', NULL, '2018-10-08 14:07:33');
INSERT INTO `concentrator_type` VALUES (3, 'JZQ-003', '此类型的集中器采取UDP通信', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-08 14:07:33', '', NULL, '2018-10-08 14:07:33');
INSERT INTO `concentrator_type` VALUES (4, 'JZQ-004-V6', '此类型的集中器在IPV6网段，采取TCP通信', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-10 08:47:17', NULL, NULL, '2018-12-10 08:47:17');

-- ----------------------------
-- Table structure for language_content
-- ----------------------------
DROP TABLE IF EXISTS `language_content`;
CREATE TABLE `language_content`  (
  `content_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '语言内容主键',
  `content_group` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '语言内容分组',
  `type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '语言简写代码',
  `content_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '语言内容键',
  `content_value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '语言内容值',
  `content_used` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否已经使用【Y=已使用】【N=未使用】',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE INDEX `language_content_index001`(`type_code`, `content_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '国际化语言内容表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of language_content
-- ----------------------------
INSERT INTO `language_content` VALUES (1, 'MENU-NAME', 'zh', 'person.info', '个人信息管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-02-12 11:09:19');
INSERT INTO `language_content` VALUES (2, 'MENU-NAME', 'en', 'person.info', 'Person info', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 11:09:14', 'werwer', 1, '2018-12-29 11:09:14');
INSERT INTO `language_content` VALUES (3, 'MENU-NAME', 'ja', 'person.info', '個人情報', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 11:09:14', 'werwer', 1, '2018-12-29 11:09:14');
INSERT INTO `language_content` VALUES (4, 'MENU-NAME', 'zh', 'personal.data.modification', '个人资料修改', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 13:56:13', 'werwer', 1, '2018-12-29 13:56:13');
INSERT INTO `language_content` VALUES (5, 'MENU-NAME', 'en', 'personal.data.modification', 'Personal data modification', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 13:56:31', 'werwer', 1, '2018-12-29 13:56:31');
INSERT INTO `language_content` VALUES (6, 'MENU-NAME', 'ja', 'personal.data.modification', '個人情報の修正', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 13:57:36', 'werwer', 1, '2018-12-29 13:57:36');
INSERT INTO `language_content` VALUES (7, 'MENU-NAME', 'zh', 'change.of.personal.password', '个人密码变更', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 13:59:16', 'werwer', 1, '2018-12-29 13:59:16');
INSERT INTO `language_content` VALUES (8, 'MENU-NAME', 'en', 'change.of.personal.password', 'Change of personal password', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 13:59:25', 'werwer', 1, '2018-12-29 13:59:25');
INSERT INTO `language_content` VALUES (9, 'MENU-NAME', 'ja', 'change.of.personal.password', '個人パスワードの変更', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:00:27', 'werwer', 1, '2018-12-29 14:00:27');
INSERT INTO `language_content` VALUES (10, 'MENU-NAME', 'zh', 'feedback', '意见反馈', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:01:06', 'werwer', 1, '2018-12-29 14:01:06');
INSERT INTO `language_content` VALUES (11, 'MENU-NAME', 'en', 'feedback', 'feedback', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:01:26', 'werwer', 1, '2018-12-29 14:01:26');
INSERT INTO `language_content` VALUES (12, 'MENU-NAME', 'ja', 'feedback', '意見フィードバック', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:01:54', 'werwer', 1, '2018-12-29 14:01:54');
INSERT INTO `language_content` VALUES (13, 'MENU-NAME', 'zh', 'integrated.system.management', '系统综合管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:04:12', 'werwer', 1, '2018-12-29 14:04:12');
INSERT INTO `language_content` VALUES (14, 'MENU-NAME', 'en', 'integrated.system.management', 'System management', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:04:17', 'werwer', 1, '2018-12-29 14:04:17');
INSERT INTO `language_content` VALUES (15, 'MENU-NAME', 'ja', 'integrated.system.management', 'システム総合管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:04:35', 'werwer', 1, '2018-12-29 14:04:35');
INSERT INTO `language_content` VALUES (16, 'MENU-NAME', 'zh', 'user.information.management', '用户信息管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:05:31', 'werwer', 1, '2018-12-29 14:05:31');
INSERT INTO `language_content` VALUES (17, 'MENU-NAME', 'en', 'user.information.management', 'User information management', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:05:39', 'werwer', 1, '2018-12-29 14:05:39');
INSERT INTO `language_content` VALUES (18, 'MENU-NAME', 'ja', 'user.information.management', 'ユーザ情報管理\n', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:05:51', 'werwer', 1, '2018-12-29 14:05:51');
INSERT INTO `language_content` VALUES (19, 'MENU-NAME', 'zh', 'role.information.management', '角色信息管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:06:54', 'werwer', 1, '2018-12-29 14:06:54');
INSERT INTO `language_content` VALUES (20, 'MENU-NAME', 'en', 'role.information.management', 'Role information management', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:06:54', 'werwer', 1, '2018-12-29 14:06:54');
INSERT INTO `language_content` VALUES (21, 'MENU-NAME', 'ja', 'role.information.management', 'キャラクター情報管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:07:20', 'werwer', 1, '2018-12-29 14:07:20');
INSERT INTO `language_content` VALUES (22, 'MENU-NAME', 'zh', 'permission.information.management', '权限信息管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:08:42', 'werwer', 1, '2018-12-29 14:08:42');
INSERT INTO `language_content` VALUES (23, 'MENU-NAME', 'en', 'permission.information.management', 'Permission information management', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:09:36', 'werwer', 1, '2018-12-29 14:09:36');
INSERT INTO `language_content` VALUES (24, 'MENU-NAME', 'ja', 'permission.information.management', '権限情報管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:10:06', 'werwer', 1, '2018-12-29 14:10:06');
INSERT INTO `language_content` VALUES (25, 'MENU-NAME', 'zh', 'menu.information.management', '菜单信息管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:11:41', 'werwer', 1, '2018-12-29 14:11:41');
INSERT INTO `language_content` VALUES (26, 'MENU-NAME', 'en', 'menu.information.management', 'Menu information management', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:11:56', 'werwer', 1, '2018-12-29 14:11:56');
INSERT INTO `language_content` VALUES (27, 'MENU-NAME', 'ja', 'menu.information.management', 'メニュー情報管理', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:12:23', 'werwer', 1, '2018-12-29 14:12:23');
INSERT INTO `language_content` VALUES (28, 'MENU-NAME', 'zh', 'operation.log.view', '操作日志查看', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:13:28', 'werwer', 1, '2018-12-29 14:13:28');
INSERT INTO `language_content` VALUES (29, 'MENU-NAME', 'en', 'operation.log.view', 'Operation log view', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:13:32', 'werwer', 1, '2018-12-29 14:13:32');
INSERT INTO `language_content` VALUES (30, 'MENU-NAME', 'ja', 'operation.log.view', '操作日誌を調べる', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:13:53', 'werwer', 1, '2018-12-29 14:13:53');
INSERT INTO `language_content` VALUES (31, 'MENU-NAME', 'zh', 'the.function.menu', '功能总菜单', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:36:49', 'werwer', 1, '2018-12-29 14:36:49');
INSERT INTO `language_content` VALUES (32, 'MENU-NAME', 'en', 'the.function.menu', 'The function menu', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:37:45', 'werwer', 1, '2018-12-29 14:37:45');
INSERT INTO `language_content` VALUES (33, 'MENU-NAME', 'ja', 'the.function.menu', '機能メニュー', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-29 14:38:44', 'werwer', 1, '2018-12-29 14:38:44');
INSERT INTO `language_content` VALUES (34, 'MENU-NAME', 'zh', 'function.show', '功能展示', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:36:49', 'werwer', 1, '2018-12-29 14:36:49');
INSERT INTO `language_content` VALUES (35, 'MENU-NAME', 'en', 'function.show', 'Show function', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:37:45', 'werwer', 1, '2018-12-29 14:37:45');
INSERT INTO `language_content` VALUES (36, 'MENU-NAME', 'ja', 'function.show', '機能表示', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:38:44', 'werwer', 1, '2018-12-29 14:38:44');
INSERT INTO `language_content` VALUES (37, 'MENU-NAME', 'zh', 'system.summary', '系统简介', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:36:49', 'werwer', 1, '2018-12-29 14:36:49');
INSERT INTO `language_content` VALUES (38, 'MENU-NAME', 'en', 'system.summary', 'System summary', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:37:45', 'werwer', 1, '2018-12-29 14:37:45');
INSERT INTO `language_content` VALUES (39, 'MENU-NAME', 'ja', 'system.summary', 'システム紹介', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:38:44', 'werwer', 1, '2018-12-29 14:38:44');
INSERT INTO `language_content` VALUES (40, 'ROLE-NAME', 'zh', 'role.admin.name', '管理员角色', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 10:56:01', 'werwer', 1, '2019-01-03 10:56:01');
INSERT INTO `language_content` VALUES (41, 'ROLE-NAME', 'en', 'role.admin.name', 'Admin Role', 'Y', '', '', '', '', '', '', '', '', '', 1, '2019-01-03 10:55:14', 'werwer', 1, '2019-01-30 10:55:29');
INSERT INTO `language_content` VALUES (42, 'ROLE-NAME', 'ja', 'role.admin.name', '管理人役', 'Y', '', '', '', '', '', '', '', '', '', 1, '2019-01-18 10:55:45', 'werwer', 1, '2019-01-29 10:55:41');
INSERT INTO `language_content` VALUES (43, 'ROLE-DESC', 'zh', 'role.admin.desc', '本角色提供对系统的全面管理，属于最高级别角色', 'Y', '', '', '', '', '', '', '', '', '', 1, '2019-01-03 10:56:01', 'werwer', 1, '2019-01-03 10:56:01');
INSERT INTO `language_content` VALUES (44, 'ROLE-DESC', 'en', 'role.admin.desc', 'This role provides the overall management of the system and is the highest-level role.', 'Y', '', '', '', '', '', '', '', '', '', 1, '2019-01-03 10:55:14', 'werwer', 1, '2019-01-30 10:55:29');
INSERT INTO `language_content` VALUES (45, 'ROLE-DESC', 'ja', 'role.admin.desc', 'このキャラクターは、システムに対する全面的な管理を提供しており、最高レベルの役割を果たしている', 'Y', '', '', '', '', '', '', '', '', '', 1, '2019-01-18 10:55:45', 'werwer', 1, '2019-01-29 10:55:41');
INSERT INTO `language_content` VALUES (46, 'ROLE-NAME', 'zh', 'role.normal.name', '普通用户角色', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 13:50:50', 'werwer', 1, '2019-01-03 13:50:50');
INSERT INTO `language_content` VALUES (47, 'ROLE-NAME', 'en', 'role.normal.name', 'Normal Role', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 13:51:16', 'werwer', 1, '2019-01-03 13:51:16');
INSERT INTO `language_content` VALUES (48, 'ROLE-NAME', 'ja', 'role.normal.name', '一般ユーザーのキャラクター', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 13:52:23', 'werwer', 1, '2019-01-03 13:52:23');
INSERT INTO `language_content` VALUES (49, 'ROLE-DESC', 'zh', 'role.normal.desc', '本角色为用户提供系统的基本功能使用权限，属于普通的用户权限', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 13:53:40', 'werwer', 1, '2019-01-03 13:53:40');
INSERT INTO `language_content` VALUES (50, 'ROLE-DESC', 'en', 'role.normal.desc', 'This role provides users with access to the basic functions of the system, which belongs to ordinary user rights', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 14:00:48', 'werwer', 1, '2019-01-03 14:00:48');
INSERT INTO `language_content` VALUES (51, 'ROLE-DESC', 'ja', 'role.normal.desc', '本役割は、ユーザにシステムの基本的な機能使用権限を提供し、一般的なユーザ権限に属する', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-03 14:01:56', 'werwer', 1, '2019-01-03 14:01:56');
INSERT INTO `language_content` VALUES (53, 'MENU-NAME', 'zh', 'language.management', '国际化管理', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:36:49', 'werwer', 1, '2018-12-29 14:36:49');
INSERT INTO `language_content` VALUES (54, 'MENU-NAME', 'en', 'language.management', 'I18n management', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:37:45', 'werwer', 1, '2018-12-29 14:37:45');
INSERT INTO `language_content` VALUES (55, 'MENU-NAME', 'ja', 'language.management', '国際的な管理', 'Y', '', '', '', '', '', '', '', '', '', 1, '2018-12-29 14:38:44', 'werwer', 1, '2018-12-29 14:38:44');
INSERT INTO `language_content` VALUES (57, 'MENU-NAME', 'zh', 'test.aaa', '菜单TEST名称001', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-02-12 09:31:33');
INSERT INTO `language_content` VALUES (58, 'MENU-NAME', 'zh', 'test.bbb', '菜单TEST名称002', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-02-12 09:32:13');
INSERT INTO `language_content` VALUES (64, 'ROLE-NAME', 'en', 'role.quality.name', 'Quality Role', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-16 09:56:18', 'werwer', 1, '2019-01-16 09:56:18');
INSERT INTO `language_content` VALUES (65, 'ROLE-DESC', 'en', 'role.quality.desc', 'hello quality!', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2019-01-16 09:57:41', 'werwer', 1, '2019-01-16 09:57:41');
INSERT INTO `language_content` VALUES (66, 'ROLE-NAME', 'en', 'role.test.name', 'Test Role', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-16 14:24:10');
INSERT INTO `language_content` VALUES (67, 'ROLE-DESC', 'en', 'role.test.desc', 'hello desc Test Role', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-16 14:23:58');
INSERT INTO `language_content` VALUES (68, 'MENU-DESC', 'zh', 'function.menu.desc', '功能菜单是所有菜单的根节点。', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2019-01-18 14:57:47', '222', 3, '2019-01-18 14:57:47');
INSERT INTO `language_content` VALUES (69, 'MENU-DESC', 'zh', 'system.manage.desc', '系统管理是一个分支节点，管理着跟系统管理相关的各个子页面菜单。', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-18 15:08:25', NULL, NULL, '2019-01-18 15:08:25');
INSERT INTO `language_content` VALUES (70, 'MENU-DESC', 'zh', 'user.manage.desc', '主要是管理用户的账号、密码、权限等；', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-25 16:45:46');
INSERT INTO `language_content` VALUES (71, 'MENU-DESC', 'zh', 'test.desc.aaa', '菜单描述的测试数据001', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 10:33:38', '数据由java程序创建', 15, '2019-02-12 10:33:38');
INSERT INTO `language_content` VALUES (72, 'MENU-DESC', 'zh', 'test.desc.bbb', '菜单描述测试002', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 10:34:29', '数据由java程序创建', 15, '2019-02-12 10:34:29');
INSERT INTO `language_content` VALUES (73, 'MENU-NAME', 'zh', 'test.ccc', '菜单TEST名称003', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 10:36:41', '数据由java程序创建', 15, '2019-02-12 10:36:41');
INSERT INTO `language_content` VALUES (74, 'MENU-NAME', 'zh', 'test.ddd', '菜单TEST名称004', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 10:36:59', '数据由java程序创建', 15, '2019-02-12 10:36:59');
INSERT INTO `language_content` VALUES (75, 'PRIVILEGE-NAME', 'zh', 'priv.root.name', '菜单根节点权限', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-18 10:58:33', NULL, NULL, '2019-02-18 10:58:33');
INSERT INTO `language_content` VALUES (77, 'PRIVILEGE-DESC', 'zh', 'priv.root.desc', '菜单根节点权限是管理菜单的基础权限，必须配置；', 'N', '', '', '', '', '', '', '', '', '', NULL, '2019-02-18 10:58:33', '', NULL, '2019-02-18 10:58:33');
INSERT INTO `language_content` VALUES (78, 'PRIVILEGE-NAME', 'zh', 'priv.show.name', '功能显示权限', 'N', '', '', '', '', '', '', '', '', '', NULL, '2019-02-18 10:58:33', '', NULL, '2019-02-18 10:58:33');
INSERT INTO `language_content` VALUES (80, 'PRIVILEGE-DESC', 'zh', 'priv.show.desc', '功能显示权限主要用于匹配功能显示这个分支菜单', 'N', '', '', '', '', '', '', '', '', '', NULL, '2019-02-18 10:58:33', '', NULL, '2019-02-18 10:58:33');
INSERT INTO `language_content` VALUES (81, 'PRIVILEGE-NAME', 'zh', 'priv.test001.name', '神龙架权限名称', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-25 09:36:01', '数据由java程序创建', 15, '2019-02-25 09:36:01');
INSERT INTO `language_content` VALUES (82, 'PRIVILEGE-DESC', 'zh', 'priv.test001.desc', '神农架权限描述。。。。', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-25 09:36:24', '数据由java程序创建', 15, '2019-02-25 09:36:24');
INSERT INTO `language_content` VALUES (83, 'PRIVILEGE-NAME', 'zh', 'priv.t2.name', '乌鲁木齐权限名称', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-25 14:26:03', '数据由java程序创建', 15, '2019-02-25 14:26:03');
INSERT INTO `language_content` VALUES (84, 'PRIVILEGE-DESC', 'zh', 'priv.t2.desc', '乌鲁木齐权限miaoshu', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-02-25 14:28:13');

-- ----------------------------
-- Table structure for language_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `language_dictionary`;
CREATE TABLE `language_dictionary`  (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '语言字典主键',
  `dict_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型',
  `dict_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典代码',
  `dict_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '语言字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of language_dictionary
-- ----------------------------
INSERT INTO `language_dictionary` VALUES (1, 'LANGUAGE', 'zh', '中文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 14:17:26', '人工编辑', 3, '2019-01-03 14:17:26');
INSERT INTO `language_dictionary` VALUES (2, 'LANGUAGE', 'en', '英文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 14:17:26', '人工编辑', 3, '2019-01-03 14:17:26');
INSERT INTO `language_dictionary` VALUES (3, 'LANGUAGE', 'ja', '日文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 14:17:26', '人工编辑', 3, '2019-01-03 14:17:26');
INSERT INTO `language_dictionary` VALUES (4, 'GROUP', 'MENU-NAME', '菜单名称语言组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 14:17:26', '人工编辑', 3, '2019-01-03 14:17:26');
INSERT INTO `language_dictionary` VALUES (5, 'GROUP', 'ROLE-NAME', '角色名称语言组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 14:17:26', '人工编辑', 3, '2019-01-03 14:17:26');
INSERT INTO `language_dictionary` VALUES (6, 'GROUP', 'ROLE-DESC', '角色描述语言组', '', '', '', '', '', '', '', '', '', '', 5, '2019-01-03 14:17:26', '人工编辑', 3, '2019-01-03 14:17:26');

-- ----------------------------
-- Table structure for language_type
-- ----------------------------
DROP TABLE IF EXISTS `language_type`;
CREATE TABLE `language_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '语言类型主键',
  `type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简写代码',
  `type_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '语言描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '语言类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of language_type
-- ----------------------------
INSERT INTO `language_type` VALUES (1, 'zh', '中文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 11:01:59', NULL, NULL, '2018-12-29 11:01:59');
INSERT INTO `language_type` VALUES (2, 'en', '英文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 11:02:21', NULL, NULL, '2018-12-29 11:02:21');
INSERT INTO `language_type` VALUES (3, 'ja', '日文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 11:02:41', NULL, NULL, '2018-12-29 11:02:41');

-- ----------------------------
-- Table structure for menu_info
-- ----------------------------
DROP TABLE IF EXISTS `menu_info`;
CREATE TABLE `menu_info`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单主键',
  `menu_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menu_icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `menu_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单路由',
  `menu_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单类型【BRANCH=枝节点】【LEAF=叶节点】',
  `parent_id` int(11) NOT NULL COMMENT '上级主键',
  `menu_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE INDEX `menu_info_index001`(`menu_name`) USING BTREE,
  INDEX `menu_info_index002`(`menu_url`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_info
-- ----------------------------
INSERT INTO `menu_info` VALUES (10, 'the.function.menu', 'el-icon-menu', 'GeweiFunctionMenu', 'BRANCH', 0, 'function.menu.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (12, 'function.show', 'el-icon-menu', 'GeweiShow', 'BRANCH', 10, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (13, 'system.summary', 'ali-iot-icon-PIR', 'GeweiSummary', 'LEAF', 12, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (30, 'person.info', 'ali-iot-icon-icon_zhanghao', 'GeweiPersonInfo', 'BRANCH', 10, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (31, 'personal.data.modification', 'ali-iot-icon-tubiao-qiapian', 'GeweiPersonUpdate', 'LEAF', 30, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (32, 'change.of.personal.password', 'ali-iot-icon-miwen', 'GeweiPersonPass', 'LEAF', 30, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (33, 'feedback', 'ali-iot-icon-iframetianjia', 'GeweiSuggestion', 'LEAF', 30, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (91, 'integrated.system.management', 'el-icon-menu', 'GeweiMultipleManage', 'BRANCH', 10, 'system.manage.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (92, 'user.information.management', 'ali-iot-icon-fanshe', 'GeweiUser', 'LEAF', 91, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (93, 'role.information.management', 'ali-iot-icon-anquan', 'GeweiRole', 'LEAF', 91, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (94, 'permission.information.management', 'ali-iot-icon-jietouzuoyi', 'GeweiPrivilege', 'LEAF', 91, 'test.desc.aaa', '', '', '', '', '', '', '', '', '', '', 3, '2019-01-18 13:55:03', '数据由java程序做最后一次修改', 15, '2019-02-12 10:56:41');
INSERT INTO `menu_info` VALUES (95, 'menu.information.management', 'ali-iot-icon-yingyongguanli', 'GeweiMenu', 'LEAF', 91, 'test.desc.aaa', '', '', '', '', '', '', '', '', '', '', 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (96, 'operation.log.view', 'ali-iot-icon-liebiao', 'GeweiOperationLog', 'LEAF', 91, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (97, 'language.management', 'ali-iot-icon-fanshe', 'GeweiLanguage', 'LEAF', 91, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2019-01-18 13:55:03', 'hhhhhhhhhhhhhhhhhhhhhhhhh', 4, '2019-01-18 13:55:03');
INSERT INTO `menu_info` VALUES (98, 'test.bbb', 'ali-iot-icon-yingyongguanli', 'geweibbb', 'BRANCH', 10, 'test.desc.bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-01-23 10:05:03', '数据由java程序做最后一次修改', 15, '2019-02-12 10:35:24');
INSERT INTO `menu_info` VALUES (104, 'test.ccc', 'ali-iot-icon-icon_yingyongguanli', 'rr55', 'LEAF', 98, 'test.desc.bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 10:39:45', '数据由java程序创建', 15, '2019-02-12 10:39:45');
INSERT INTO `menu_info` VALUES (106, 'test.ddd', 'ali-iot-icon-icon_yingyongguanli', 'dd5', 'LEAF', 98, 'test.desc.bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 10:43:01', '数据由java程序创建', 15, '2019-02-12 10:43:01');
INSERT INTO `menu_info` VALUES (107, 'test.aaa', 'ali-iot-icon-icon_yingyongguanli', 'jjj88', 'LEAF', 98, 'test.desc.aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-12 11:00:34', '数据由java程序做最后一次修改', 15, '2019-02-12 13:11:04');

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL,
  `refresh_token` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals`  (
  `userId` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `clientId` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expiresAt` datetime(0) NULL DEFAULT NULL,
  `lastModifiedAt` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `resource_ids` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_secret` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorized_grant_types` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authorities` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_token_validity` int(11) NULL DEFAULT NULL,
  `refresh_token_validity` int(11) NULL DEFAULT NULL,
  `additional_information` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `autoapprove` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code`  (
  `code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
  `token_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for operation_log_info
-- ----------------------------
DROP TABLE IF EXISTS `operation_log_info`;
CREATE TABLE `operation_log_info`  (
  `operation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作日志主键',
  `micro_service_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '微服务名称',
  `micro_service_port` int(11) NOT NULL COMMENT '微服务端口号',
  `operation_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作API路径',
  `operation_source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作日志来源【WEB】【ANDROID】【IOS】【WEIXIN】',
  `user_id` int(11) NOT NULL COMMENT '操作人员ID',
  `operation_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `operation_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`operation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统操作日志记录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of operation_log_info
-- ----------------------------
INSERT INTO `operation_log_info` VALUES (17, 'songpeng-netmgr-center', 20051, '/ammeter/aaa', 'WEIXIN', 15, '2018-12-06 15:17:39', '登录成功，初始化用户对象的一系列属性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-04 16:31:58', '数据由java程序创建', 15, '2018-12-04 16:31:58');
INSERT INTO `operation_log_info` VALUES (18, 'songpeng-netmgr-center', 20051, 'http://localhost:20051/ammeter/aaa', 'ANDROID', 15, '2018-12-06 15:17:39', '登录成功，初始化用户对象的一系列属性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-05 11:54:03', '数据由java程序创建', 15, '2018-12-05 11:54:03');
INSERT INTO `operation_log_info` VALUES (19, 'song73-netmgr-center', 20051, 'http://localhost:20051/ammeter/aaa', 'ANDROID', 15, '2018-12-06 15:17:39', '登录成功，初始化用户对象的一系列属性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-05 13:59:17', '数据由java程序创建', 15, '2018-12-05 13:59:17');
INSERT INTO `operation_log_info` VALUES (20, 'song73-netmgr-center', 20051, 'http://localhost:20051/ammeter/aaa', 'ANDROID', 15, '2018-12-06 15:17:39', '登录成功，初始化用户对象的一系列属性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-05 14:06:58', '数据由java程序创建', 15, '2018-12-05 14:06:58');
INSERT INTO `operation_log_info` VALUES (21, 'song73-netmgr-center', 20051, 'http://localhost:20051/ammeter/aaa', 'ANDROID', 15, '2018-12-06 15:17:39', '登录成功，初始化用户对象的一系列属性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-05 14:36:44', '数据由java程序创建', 15, '2018-12-05 14:36:44');

-- ----------------------------
-- Table structure for order_device_list
-- ----------------------------
DROP TABLE IF EXISTS `order_device_list`;
CREATE TABLE `order_device_list`  (
  `list_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备列表主键',
  `order_id` int(11) NOT NULL COMMENT '工单ID',
  `device_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备类型【AMMETER=电表】',
  `device_id` int(11) NOT NULL COMMENT '房间ID',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单信息设备列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工单主键',
  `order_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工单名称',
  `order_type` int(11) NOT NULL COMMENT '工单类型【1=施工单】',
  `order_status` int(11) NOT NULL COMMENT '工单状态【10=已创建】【20=施工中】【30=待审核】【40=测试中】【90=完工】',
  `expect_handle_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预计开工日期',
  `expect_handle_days` int(11) NOT NULL COMMENT '预计工作时长（天）',
  `order_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工单描述',
  `current_handle_person` int(11) NOT NULL COMMENT '当前处理人员',
  `current_handle_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前处理日期',
  `next_handle_person` int(11) NOT NULL COMMENT '下一步处理人员',
  `next_handle_date` datetime(0) NULL DEFAULT NULL COMMENT '下一步处理日期',
  `pack_id` int(11) NOT NULL COMMENT '园区ID',
  `build_id` int(11) NOT NULL COMMENT '楼栋ID',
  `concentrator_id` int(11) NOT NULL COMMENT '集中器ID',
  `job_person` int(11) NOT NULL COMMENT '施工人员',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_log_list
-- ----------------------------
DROP TABLE IF EXISTS `order_log_list`;
CREATE TABLE `order_log_list`  (
  `list_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志列表主键',
  `order_id` int(11) NOT NULL COMMENT '工单ID',
  `order_status` int(11) NOT NULL COMMENT '工单状态',
  `log_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志描述',
  `current_handle_person` int(11) NOT NULL COMMENT '当前处理人员',
  `current_handle_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前处理日期',
  `next_handle_person` int(11) NOT NULL COMMENT '下一步处理人员',
  `next_handle_date` datetime(0) NULL DEFAULT NULL COMMENT '下一步处理日期',
  `log_remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志标记',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单信息日志列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_room_list
-- ----------------------------
DROP TABLE IF EXISTS `order_room_list`;
CREATE TABLE `order_room_list`  (
  `list_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间列表主键',
  `order_id` int(11) NOT NULL COMMENT '工单ID',
  `room_id` int(11) NOT NULL COMMENT '房间ID',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`list_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工单信息房间列表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pack_info
-- ----------------------------
DROP TABLE IF EXISTS `pack_info`;
CREATE TABLE `pack_info`  (
  `pack_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '园区主键',
  `pack_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '园区名称',
  `pack_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '园区地址',
  `pack_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '园区描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`pack_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '园区信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pack_info
-- ----------------------------
INSERT INTO `pack_info` VALUES (1, '关东科技园', '湖北省武汉市洪山区佳园路100号', '好山好水好', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-09-30 16:29:36', NULL, 15, '2018-09-30 16:29:36');
INSERT INTO `pack_info` VALUES (2, '武汉大学', '武汉市武昌区八一路68号', '12312', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-09-30 16:32:15', NULL, 15, '2018-09-30 16:32:15');
INSERT INTO `pack_info` VALUES (3, '王府井百货', '武汉市江岸区中山大道1046号', '少时诵诗书所所所所所所', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-30 16:32:55', NULL, NULL, '2018-09-30 16:32:55');
INSERT INTO `pack_info` VALUES (4, '湖北省委', '武汉市武昌区八一路168号', '111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-11 16:24:45', NULL, NULL, '2018-10-11 16:24:45');
INSERT INTO `pack_info` VALUES (5, '湖北省财政厅', '武汉市武昌区八一路268号', '2222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-11 16:25:13', NULL, NULL, '2018-10-11 16:25:13');

-- ----------------------------
-- Table structure for privilege_info
-- ----------------------------
DROP TABLE IF EXISTS `privilege_info`;
CREATE TABLE `privilege_info`  (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限主键',
  `privilege_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `privilege_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`privilege_id`) USING BTREE,
  UNIQUE INDEX `privilege_info_index001`(`privilege_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of privilege_info
-- ----------------------------
INSERT INTO `privilege_info` VALUES (1, 'priv.root.name', 'priv.root.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:26:32', NULL, NULL, '2018-09-11 18:26:32');
INSERT INTO `privilege_info` VALUES (2, '系统管理权限', 'priv.t2.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:26:55', '数据由java程序做最后一次修改', 15, '2019-02-25 14:27:47');
INSERT INTO `privilege_info` VALUES (3, '用户管理权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:27:20', NULL, NULL, '2018-09-11 18:27:20');
INSERT INTO `privilege_info` VALUES (4, '角色管理权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:27:30', NULL, NULL, '2018-09-11 18:27:30');
INSERT INTO `privilege_info` VALUES (5, '权限信息管理权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:27:43', NULL, NULL, '2018-09-11 18:27:43');
INSERT INTO `privilege_info` VALUES (6, '国际化管理权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 11:43:30', NULL, NULL, '2018-09-20 11:43:30');
INSERT INTO `privilege_info` VALUES (7, 'bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 11:43:35', NULL, NULL, '2018-09-20 11:43:35');
INSERT INTO `privilege_info` VALUES (8, 'ccc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 11:43:40', NULL, NULL, '2018-09-20 11:43:40');
INSERT INTO `privilege_info` VALUES (9, 'a33333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:20', NULL, NULL, '2018-09-20 17:07:20');
INSERT INTO `privilege_info` VALUES (10, 'ddds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (11, 'dfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (12, 'fs3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (13, 'fdg3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (14, 'fg7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (15, 'jy5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (16, 'fg3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (17, 'ds3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (18, 'jh9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:07:21', NULL, NULL, '2018-09-20 17:07:21');
INSERT INTO `privilege_info` VALUES (19, 'priv.t2.name', 'priv.t2.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-06 10:41:46', '数据由java程序做最后一次修改', 15, '2019-02-26 09:24:52');
INSERT INTO `privilege_info` VALUES (23, '工单管理', '工单管理', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-14 10:01:51', NULL, NULL, '2018-12-14 10:01:51');
INSERT INTO `privilege_info` VALUES (30, '个人信息权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:43:33', NULL, NULL, '2018-12-20 10:43:33');
INSERT INTO `privilege_info` VALUES (31, '个人资料修改权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:43:45', NULL, NULL, '2018-12-20 10:43:45');
INSERT INTO `privilege_info` VALUES (32, '个人密码变更权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:43:51', NULL, NULL, '2018-12-20 10:43:51');
INSERT INTO `privilege_info` VALUES (33, '意见反馈权限', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:43:56', NULL, NULL, '2018-12-20 10:43:56');
INSERT INTO `privilege_info` VALUES (38, 'priv.test001.name', 'priv.test001.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-25 11:38:21', '数据由java程序创建', 15, '2019-02-25 11:38:21');

-- ----------------------------
-- Table structure for privilege_relation_menu
-- ----------------------------
DROP TABLE IF EXISTS `privilege_relation_menu`;
CREATE TABLE `privilege_relation_menu`  (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关联主键',
  `privilege_id` int(11) NOT NULL COMMENT '权限主键',
  `menu_id` int(11) NOT NULL COMMENT '菜单主键',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限关联菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of privilege_relation_menu
-- ----------------------------
INSERT INTO `privilege_relation_menu` VALUES (1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:28:25', NULL, NULL, '2018-09-11 18:28:25');
INSERT INTO `privilege_relation_menu` VALUES (2, 2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:28:31', '数据由java程序做最后一次修改', 15, '2019-02-25 14:27:47');
INSERT INTO `privilege_relation_menu` VALUES (3, 3, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:28:38', NULL, NULL, '2018-09-11 18:28:38');
INSERT INTO `privilege_relation_menu` VALUES (4, 4, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-14 10:06:53', NULL, 15, '2018-12-14 10:06:53');
INSERT INTO `privilege_relation_menu` VALUES (5, 5, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-11 18:28:53', NULL, NULL, '2018-09-11 18:28:53');
INSERT INTO `privilege_relation_menu` VALUES (6, 6, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 17:34:04', NULL, NULL, '2018-09-19 17:34:04');
INSERT INTO `privilege_relation_menu` VALUES (7, 7, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 17:34:10', NULL, NULL, '2018-09-19 17:34:10');
INSERT INTO `privilege_relation_menu` VALUES (8, 8, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-19 17:34:23', NULL, NULL, '2018-09-19 17:34:23');
INSERT INTO `privilege_relation_menu` VALUES (9, 9, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (10, 10, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (11, 11, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (12, 12, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (13, 13, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (14, 14, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (15, 15, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (16, 16, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (17, 17, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (18, 18, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 17:05:08', NULL, NULL, '2018-09-20 17:05:08');
INSERT INTO `privilege_relation_menu` VALUES (20, 23, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2018-12-14 10:07:06', NULL, 15, '2018-12-14 10:07:06');
INSERT INTO `privilege_relation_menu` VALUES (21, 30, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:45:35', NULL, NULL, '2018-12-20 10:45:35');
INSERT INTO `privilege_relation_menu` VALUES (22, 31, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:45:40', NULL, NULL, '2018-12-20 10:45:40');
INSERT INTO `privilege_relation_menu` VALUES (23, 32, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:45:45', NULL, NULL, '2018-12-20 10:45:45');
INSERT INTO `privilege_relation_menu` VALUES (24, 33, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:45:49', NULL, NULL, '2018-12-20 10:45:49');
INSERT INTO `privilege_relation_menu` VALUES (27, 38, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-25 11:38:21', '数据由java程序创建', 15, '2019-02-25 11:38:21');
INSERT INTO `privilege_relation_menu` VALUES (28, 19, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-02-25 14:23:44', '数据由java程序做最后一次修改', 15, '2019-02-26 09:24:52');

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色主键',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `role_info_index001`(`role_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES (1, 'role.admin.name', 'role.admin.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (2, 'role.normal.name', 'role.normal.desc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (3, '施工员角色', '施工专用', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (4, '租客角色', '租客专用角色', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (5, 'admin角色', 'admin角色', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (6, '工单管理员', '工单管理员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (7, '工单审核员', '工单审核员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');
INSERT INTO `role_info` VALUES (8, '工单验证员', '工单验证员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, '2019-01-03 11:02:48', 'aaaa', 3, '2019-01-03 11:02:48');

-- ----------------------------
-- Table structure for role_relation_privilege
-- ----------------------------
DROP TABLE IF EXISTS `role_relation_privilege`;
CREATE TABLE `role_relation_privilege`  (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关联主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `privilege_id` int(11) NOT NULL COMMENT '权限主键',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色关联权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role_relation_privilege
-- ----------------------------
INSERT INTO `role_relation_privilege` VALUES (22, 3, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (23, 6, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (24, 7, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (25, 8, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (26, 1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (27, 1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (28, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (29, 1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (30, 1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (31, 1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (32, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (33, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (34, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (35, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (36, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (37, 1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (38, 1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (39, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (40, 1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (41, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (42, 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (43, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (44, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (45, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, 15, NULL);
INSERT INTO `role_relation_privilege` VALUES (46, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:46:25', NULL, NULL, '2018-12-20 10:46:25');
INSERT INTO `role_relation_privilege` VALUES (47, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:46:32', NULL, NULL, '2018-12-20 10:46:32');
INSERT INTO `role_relation_privilege` VALUES (48, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:46:45', NULL, NULL, '2018-12-20 10:46:45');
INSERT INTO `role_relation_privilege` VALUES (49, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-20 10:46:51', NULL, NULL, '2018-12-20 10:46:51');

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info`  (
  `room_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间主键',
  `room_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房间名称',
  `building_id` int(11) NOT NULL COMMENT '楼栋主键',
  `room_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间描述',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info` VALUES (1, '301', 2, '办公室', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-09 17:16:14', NULL, 15, '2018-12-12 13:28:59');
INSERT INTO `room_info` VALUES (2, '302', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');
INSERT INTO `room_info` VALUES (3, '303', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');
INSERT INTO `room_info` VALUES (4, '304', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');
INSERT INTO `room_info` VALUES (5, '305', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');
INSERT INTO `room_info` VALUES (6, '306', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');
INSERT INTO `room_info` VALUES (7, '307', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');
INSERT INTO `room_info` VALUES (8, '308', 2, '办公室', '', '', '', '', '', '', '', '', '', '', NULL, '2018-10-09 17:16:14', '', NULL, '2018-10-09 17:16:14');

-- ----------------------------
-- Table structure for suggestion_answer
-- ----------------------------
DROP TABLE IF EXISTS `suggestion_answer`;
CREATE TABLE `suggestion_answer`  (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '建议答复主键',
  `suggestion_id` int(11) NOT NULL COMMENT '建议信息主键',
  `answer_user_id` int(11) NOT NULL COMMENT '建议答复人员',
  `answer_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建议答复日期',
  `answer_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建议答复内容',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`answer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '建议答复表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of suggestion_answer
-- ----------------------------
INSERT INTO `suggestion_answer` VALUES (1, 1, 5, '2018-10-22 14:04:13', '水电费水电费', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 14:04:13', NULL, NULL, '2018-10-22 14:04:13');
INSERT INTO `suggestion_answer` VALUES (2, 1, 4, '2018-10-22 14:04:32', '大风刮过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 14:04:32', NULL, NULL, '2018-10-22 14:04:32');
INSERT INTO `suggestion_answer` VALUES (3, 1, 5, '2018-10-22 14:04:44', '哈哈哈哈或或或或或或或或', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 14:04:44', NULL, NULL, '2018-10-22 14:04:44');

-- ----------------------------
-- Table structure for suggestion_info
-- ----------------------------
DROP TABLE IF EXISTS `suggestion_info`;
CREATE TABLE `suggestion_info`  (
  `suggestion_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '建议信息主键',
  `suggestion_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建议信息名称',
  `suggestion_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建议信息类型【FIRST=第一类型】',
  `suggestion_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建议信息状态【OPEN=开启状态】【CLOSE=关闭状态】',
  `suggest_user_id` int(11) NOT NULL COMMENT '建议反馈人员',
  `suggestion_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '建议反馈日期',
  `suggestion_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '建议信息内容',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`suggestion_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '建议信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of suggestion_info
-- ----------------------------
INSERT INTO `suggestion_info` VALUES (1, '把什么什么调大一点', 'FIRST', 'CLOSE', 4, '2018-10-22 14:02:33', '把什么什么调大一点，的点点滴滴多多多多多多多多多多多多多多多多多多多多多多多多', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 14:02:33', NULL, NULL, '2018-10-22 14:02:33');
INSERT INTO `suggestion_info` VALUES (3, 'sdfsf', '', 'OPEN', 15, '2018-10-26 08:57:44', 'fsfsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-26 08:59:17', NULL, NULL, '2018-10-26 08:59:17');
INSERT INTO `suggestion_info` VALUES (4, '11', '', 'OPEN', 15, '2018-11-08 09:46:48', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:23', NULL, NULL, '2018-11-08 09:48:23');
INSERT INTO `suggestion_info` VALUES (5, '11', '', 'OPEN', 15, '2018-11-08 09:46:51', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:27', NULL, NULL, '2018-11-08 09:48:27');
INSERT INTO `suggestion_info` VALUES (6, '11', '', 'OPEN', 15, '2018-11-08 09:46:53', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:29', NULL, NULL, '2018-11-08 09:48:29');
INSERT INTO `suggestion_info` VALUES (7, '11', '', 'OPEN', 15, '2018-11-08 09:46:56', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:31', NULL, NULL, '2018-11-08 09:48:31');
INSERT INTO `suggestion_info` VALUES (8, '11', '', 'OPEN', 15, '2018-11-08 09:46:59', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:34', NULL, NULL, '2018-11-08 09:48:34');
INSERT INTO `suggestion_info` VALUES (9, '1111', '', 'OPEN', 15, '2018-11-08 09:47:03', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:38', NULL, NULL, '2018-11-08 09:48:38');
INSERT INTO `suggestion_info` VALUES (10, 'sdf ', '', 'OPEN', 15, '2018-11-08 09:47:07', 'sadf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:42', NULL, NULL, '2018-11-08 09:48:42');
INSERT INTO `suggestion_info` VALUES (11, '发生的发生', '', 'OPEN', 15, '2018-11-08 09:47:16', ' 大声道', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:51', NULL, NULL, '2018-11-08 09:48:51');
INSERT INTO `suggestion_info` VALUES (12, '发送到发送到', '', 'OPEN', 15, '2018-11-08 09:47:21', '的说法是否', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:48:56', NULL, NULL, '2018-11-08 09:48:56');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户主键',
  `user_account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `user_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `nick_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色主键',
  `user_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'ENABLED' COMMENT '用户状态【ENABLED=启用】【DISABLED=禁用】',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_info_index001`(`user_account`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 833 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'admin01', '111', '郭靖', 'aaa@gewei.com', 1, 'ENABLED', '', '', '', '', '', '', '', '', '', NULL, '2017-06-27 11:55:07', '', NULL, '2018-09-11 16:21:31');
INSERT INTO `user_info` VALUES (2, 'admin02', '111', '黄蓉', 'aaa@gewei.com', 1, 'DISABLED', '', '', '', '', '', '', '', '', '', NULL, '2017-06-27 11:55:07', '数据由java程序做最后一次修改', 15, '2019-01-02 11:51:16');
INSERT INTO `user_info` VALUES (3, 'admin03', '111', '杨康', 'aaa@gewei.com', 1, 'ENABLED', '', '', '', '', '', '', '', '', '', NULL, '2017-06-27 11:55:07', '', NULL, '2018-09-11 16:21:31');
INSERT INTO `user_info` VALUES (4, 'admin04', '111', '穆念慈', 'aaa@gewei.com', 1, 'ENABLED', '', '', '', '', '', '', '', '', '', NULL, '2017-06-27 11:55:07', '', NULL, '2018-09-11 16:21:31');
INSERT INTO `user_info` VALUES (5, 'admin05', '111', '华筝', 'aaa@gewei.com', 2, 'ENABLED', '', '', '', '', '', '', '', '', '', NULL, '2017-06-27 11:55:07', '', NULL, '2018-09-11 16:21:31');
INSERT INTO `user_info` VALUES (7, 'a', '$2a$10$iR.bFng1u0ivQsX0.zjzaONo4x4vKScGNRa.CKscdQygHLPlX6lLq', '拖雷', 'aaa@gewei.com', 1, 'ENABLED', '', '', '', '', '', '', '', '', '', NULL, '2017-06-27 11:55:07', '', NULL, '2018-09-11 16:21:31');
INSERT INTO `user_info` VALUES (8, 'wangchongyang0', '$2a$10$mWxuoG7vzhBHz1Y9FdoaEO42rhWCfdiLqstTmJu2AIL6hSvSoxp8m', '王重阳0', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:11');
INSERT INTO `user_info` VALUES (9, 'wangchongyang1', '111', '王重阳1', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:11');
INSERT INTO `user_info` VALUES (10, 'wangchongyang2', '111', '王重阳2', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:11');
INSERT INTO `user_info` VALUES (11, 'wangchongyang3', '$2a$10$K.NN3uBVrlKajDeM5GLJ6uhcBlEXy9gnqOQ2MGYusFmXrn24x8lr6', '王重阳3D', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:11');
INSERT INTO `user_info` VALUES (12, 'wangchongyang4', '111', '王重阳4', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:11');
INSERT INTO `user_info` VALUES (13, 'wangchongyang-0', '111', '王重阳-0', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (14, 'wangchongyang-1', '111', '王重阳-1', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (15, 'aaa', '$2a$10$gEq0/Vqyra2jZuerxAWSXelTROxRtfUCNTe6TeqyXFgUMCj7Y/kgK', '黄药师[东邪]', 'aaa@gewei.com', 1, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (16, 'ccc', '$2a$10$gEq0/Vqyra2jZuerxAWSXelTROxRtfUCNTe6TeqyXFgUMCj7Y/kgK', '王重阳-3', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (17, 'ddd', '$2a$10$gEq0/Vqyra2jZuerxAWSXelTROxRtfUCNTe6TeqyXFgUMCj7Y/kgK', '梅超风', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (18, 'wangchongyang-5', '111', '王重阳-5', 'huzhengxiong@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (19, 'eee', '$2a$10$yu1C.Me79DlWryoCKny.F.oikekOBPpjlaOuRvo0ICHlInYVKp0xy', '王重阳-6', 'huzhengxiong@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (20, 'wangchongyang-7', '111', '王重阳-7', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (21, 'wangchongyang-8', '111', '王重阳-8', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (22, 'wangchongyang-9', '111', '王重阳-9', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (23, 'wangchongyang-10', '111', '王重阳-10', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (24, 'wangchongyang-11', '111', '王重阳-11', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (25, 'wangchongyang-12', '111', '王重阳-12', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (26, 'wangchongyang-13', '111', '王重阳-13', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (27, 'wangchongyang-14', '111', '王重阳-14', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (28, 'wangchongyang-15', '111', '王重阳-15', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (29, 'wangchongyang-16', '111', '王重阳-16', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:57');
INSERT INTO `user_info` VALUES (30, 'wangchongyang-17', '111', '王重阳-17', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (31, 'wangchongyang-18', '111', '王重阳-18', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (32, 'wangchongyang-19', '111', '王重阳-19', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (33, 'wangchongyang-20', '111', '王重阳-20', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (34, 'wangchongyang-21', '111', '王重阳-21', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (35, 'wangchongyang-22', '111', '王重阳-22', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (36, 'wangchongyang-23', '111', '王重阳-23', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (37, 'wangchongyang-24', '111', '王重阳-24', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (38, 'wangchongyang-25', '111', '王重阳-25', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (39, 'wangchongyang-26', '111', '王重阳-26', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (40, 'wangchongyang-27', '111', '王重阳-27', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (41, 'wangchongyang-28', '111', '王重阳-28', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (42, 'wangchongyang-29', '111', '王重阳-29', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (43, 'wangchongyang-30', '111', '王重阳-30', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (44, 'wangchongyang-31', '111', '王重阳-31', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (45, 'wangchongyang-32', '111', '王重阳-32', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (46, 'wangchongyang-33', '111', '王重阳-33', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (47, 'wangchongyang-34', '111', '王重阳-34', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (48, 'wangchongyang-35', '111', '王重阳-35', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (49, 'wangchongyang-36', '111', '王重阳-36', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (50, 'wangchongyang-37', '111', '王重阳-37', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (51, 'wangchongyang-38', '111', '王重阳-38', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (52, 'wangchongyang-39', '111', '王重阳-39', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (53, 'wangchongyang-40', '111', '王重阳-40', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (54, 'wangchongyang-41', '111', '王重阳-41', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (55, 'wangchongyang-42', '111', '王重阳-42', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (56, 'wangchongyang-43', '111', '王重阳-43', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (57, 'wangchongyang-44', '111', '王重阳-44', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (58, 'wangchongyang-45', '111', '王重阳-45', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (59, 'wangchongyang-46', '111', '王重阳-46', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (60, 'wangchongyang-47', '111', '王重阳-47', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:58');
INSERT INTO `user_info` VALUES (61, 'wangchongyang-48', '111', '王重阳-48', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (62, 'wangchongyang-49', '111', '王重阳-49', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (63, 'wangchongyang-50', '111', '王重阳-50', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (64, 'wangchongyang-51', '111', '王重阳-51', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (65, 'wangchongyang-52', '111', '王重阳-52', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (66, 'wangchongyang-53', '111', '王重阳-53', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (67, 'wangchongyang-54', '111', '王重阳-54', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (68, 'wangchongyang-55', '111', '王重阳-55', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (69, 'wangchongyang-56', '111', '王重阳-56', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (70, 'wangchongyang-57', '111', '王重阳-57', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (71, 'wangchongyang-58', '111', '王重阳-58', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (72, 'wangchongyang-59', '111', '王重阳-59', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (73, 'wangchongyang-60', '111', '王重阳-60', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (74, 'wangchongyang-61', '111', '王重阳-61', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (75, 'wangchongyang-62', '111', '王重阳-62', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (76, 'wangchongyang-63', '111', '王重阳-63', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (77, 'wangchongyang-64', '111', '王重阳-64', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (78, 'wangchongyang-65', '111', '王重阳-65', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (79, 'wangchongyang-66', '111', '王重阳-66', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (80, 'wangchongyang-67', '111', '王重阳-67', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (81, 'wangchongyang-68', '111', '王重阳-68', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (82, 'wangchongyang-69', '111', '王重阳-69', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (83, 'wangchongyang-70', '111', '王重阳-70', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (84, 'wangchongyang-71', '111', '王重阳-71', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (85, 'wangchongyang-72', '111', '王重阳-72', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (86, 'wangchongyang-73', '111', '王重阳-73', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (87, 'wangchongyang-74', '111', '王重阳-74', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (88, 'wangchongyang-75', '111', '王重阳-75', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (89, 'wangchongyang-76', '111', '王重阳-76', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (90, 'wangchongyang-77', '111', '王重阳-77', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (91, 'wangchongyang-78', '111', '王重阳-78', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (92, 'wangchongyang-79', '111', '王重阳-79', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (93, 'wangchongyang-80', '111', '王重阳-80', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (94, 'wangchongyang-81', '111', '王重阳-81', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (95, 'wangchongyang-82', '111', '王重阳-82', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (96, 'wangchongyang-83', '111', '王重阳-83', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (97, 'wangchongyang-84', '111', '王重阳-84', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (98, 'wangchongyang-85', '111', '王重阳-85', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (99, 'wangchongyang-86', '111', '王重阳-86', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:08:59');
INSERT INTO `user_info` VALUES (100, 'wangchongyang-87', '111', '王重阳-87', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (101, 'wangchongyang-88', '111', '王重阳-88', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (102, 'wangchongyang-89', '111', '王重阳-89', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (103, 'wangchongyang-90', '111', '王重阳-90', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (104, 'wangchongyang-91', '111', '王重阳-91', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (105, 'wangchongyang-92', '111', '王重阳-92', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (106, 'wangchongyang-93', '111', '王重阳-93', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (107, 'wangchongyang-94', '111', '王重阳-94', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (108, 'wangchongyang-95', '111', '王重阳-95', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (109, 'wangchongyang-96', '111', '王重阳-96', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (110, 'wangchongyang-97', '111', '王重阳-97', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (111, 'wangchongyang-98', '111', '王重阳-98', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (112, 'wangchongyang-99', '111', '王重阳-99', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (113, 'wangchongyang-100', '111', '王重阳-100', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (114, 'wangchongyang-101', '111', '王重阳-101', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (115, 'wangchongyang-102', '111', '王重阳-102', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (116, 'wangchongyang-103', '111', '王重阳-103', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (117, 'wangchongyang-104', '111', '王重阳-104', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (118, 'wangchongyang-105', '111', '王重阳-105', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (119, 'wangchongyang-106', '111', '王重阳-106', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (120, 'wangchongyang-107', '111', '王重阳-107', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (121, 'wangchongyang-108', '111', '王重阳-108', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (122, 'wangchongyang-109', '111', '王重阳-109', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (123, 'wangchongyang-110', '111', '王重阳-110', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (124, 'wangchongyang-111', '111', '王重阳-111', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (125, 'wangchongyang-112', '111', '王重阳-112', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (126, 'wangchongyang-113', '111', '王重阳-113', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (127, 'wangchongyang-114', '111', '王重阳-114', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (128, 'wangchongyang-115', '111', '王重阳-115', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (129, 'wangchongyang-116', '111', '王重阳-116', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (130, 'wangchongyang-117', '111', '王重阳-117', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (131, 'wangchongyang-118', '111', '王重阳-118', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (132, 'wangchongyang-119', '111', '王重阳-119', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (133, 'wangchongyang-120', '111', '王重阳-120', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (134, 'wangchongyang-121', '111', '王重阳-121', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (135, 'wangchongyang-122', '111', '王重阳-122', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (136, 'wangchongyang-123', '111', '王重阳-123', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (137, 'wangchongyang-124', '111', '王重阳-124', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:00');
INSERT INTO `user_info` VALUES (138, 'wangchongyang-125', '111', '王重阳-125', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (139, 'wangchongyang-126', '111', '王重阳-126', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (140, 'wangchongyang-127', '111', '王重阳-127', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (141, 'wangchongyang-128', '111', '王重阳-128', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (142, 'wangchongyang-129', '111', '王重阳-129', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (143, 'wangchongyang-130', '111', '王重阳-130', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (144, 'wangchongyang-131', '111', '王重阳-131', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (145, 'wangchongyang-132', '111', '王重阳-132', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (146, 'wangchongyang-133', '111', '王重阳-133', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (147, 'wangchongyang-134', '111', '王重阳-134', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (148, 'wangchongyang-135', '111', '王重阳-135', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (149, 'wangchongyang-136', '111', '王重阳-136', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (150, 'wangchongyang-137', '111', '王重阳-137', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (151, 'wangchongyang-138', '111', '王重阳-138', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (152, 'wangchongyang-139', '111', '王重阳-139', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (153, 'wangchongyang-140', '111', '王重阳-140', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (154, 'wangchongyang-141', '111', '王重阳-141', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (155, 'wangchongyang-142', '111', '王重阳-142', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (156, 'wangchongyang-143', '111', '王重阳-143', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (157, 'wangchongyang-144', '111', '王重阳-144', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (158, 'wangchongyang-145', '111', '王重阳-145', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (159, 'wangchongyang-146', '111', '王重阳-146', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (160, 'wangchongyang-147', '111', '王重阳-147', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (161, 'wangchongyang-148', '111', '王重阳-148', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (162, 'wangchongyang-149', '111', '王重阳-149', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (163, 'wangchongyang-150', '111', '王重阳-150', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (164, 'wangchongyang-151', '111', '王重阳-151', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (165, 'wangchongyang-152', '111', '王重阳-152', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (166, 'wangchongyang-153', '111', '王重阳-153', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (167, 'wangchongyang-154', '111', '王重阳-154', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (168, 'wangchongyang-155', '111', '王重阳-155', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (169, 'wangchongyang-156', '111', '王重阳-156', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (170, 'wangchongyang-157', '111', '王重阳-157', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (171, 'wangchongyang-158', '111', '王重阳-158', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (172, 'wangchongyang-159', '111', '王重阳-159', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (173, 'wangchongyang-160', '111', '王重阳-160', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (174, 'wangchongyang-161', '111', '王重阳-161', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (175, 'wangchongyang-162', '111', '王重阳-162', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (176, 'wangchongyang-163', '111', '王重阳-163', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:01');
INSERT INTO `user_info` VALUES (177, 'wangchongyang-164', '111', '王重阳-164', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (178, 'wangchongyang-165', '111', '王重阳-165', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (179, 'wangchongyang-166', '111', '王重阳-166', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (180, 'wangchongyang-167', '111', '王重阳-167', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (181, 'wangchongyang-168', '111', '王重阳-168', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (182, 'wangchongyang-169', '111', '王重阳-169', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (183, 'wangchongyang-170', '111', '王重阳-170', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (184, 'wangchongyang-171', '111', '王重阳-171', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (185, 'wangchongyang-172', '111', '王重阳-172', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (186, 'wangchongyang-173', '111', '王重阳-173', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (187, 'wangchongyang-174', '111', '王重阳-174', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (188, 'wangchongyang-175', '111', '王重阳-175', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (189, 'wangchongyang-176', '111', '王重阳-176', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (190, 'wangchongyang-177', '111', '王重阳-177', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (191, 'wangchongyang-178', '111', '王重阳-178', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (192, 'wangchongyang-179', '111', '王重阳-179', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (193, 'wangchongyang-180', '111', '王重阳-180', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (194, 'wangchongyang-181', '111', '王重阳-181', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (195, 'wangchongyang-182', '111', '王重阳-182', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (196, 'wangchongyang-183', '111', '王重阳-183', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (197, 'wangchongyang-184', '111', '王重阳-184', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (198, 'wangchongyang-185', '111', '王重阳-185', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (199, 'wangchongyang-186', '111', '王重阳-186', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (200, 'wangchongyang-187', '111', '王重阳-187', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (201, 'wangchongyang-188', '111', '王重阳-188', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (202, 'wangchongyang-189', '111', '王重阳-189', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (203, 'wangchongyang-190', '111', '王重阳-190', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (204, 'wangchongyang-191', '111', '王重阳-191', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (205, 'wangchongyang-192', '111', '王重阳-192', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (206, 'wangchongyang-193', '111', '王重阳-193', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (207, 'wangchongyang-194', '111', '王重阳-194', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (208, 'wangchongyang-195', '111', '王重阳-195', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (209, 'wangchongyang-196', '111', '王重阳-196', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (210, 'wangchongyang-197', '111', '王重阳-197', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (211, 'wangchongyang-198', '111', '王重阳-198', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (212, 'wangchongyang-199', '111', '王重阳-199', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (213, 'wangchongyang-200', '111', '王重阳-200', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (214, 'wangchongyang-201', '111', '王重阳-201', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:02');
INSERT INTO `user_info` VALUES (215, 'wangchongyang-202', '111', '王重阳-202', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (216, 'wangchongyang-203', '111', '王重阳-203', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (217, 'wangchongyang-204', '111', '王重阳-204', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (218, 'wangchongyang-205', '111', '王重阳-205', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (219, 'wangchongyang-206', '111', '王重阳-206', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (220, 'wangchongyang-207', '111', '王重阳-207', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (221, 'wangchongyang-208', '111', '王重阳-208', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (222, 'wangchongyang-209', '111', '王重阳-209', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (223, 'wangchongyang-210', '111', '王重阳-210', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (224, 'wangchongyang-211', '111', '王重阳-211', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (225, 'wangchongyang-212', '111', '王重阳-212', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (226, 'wangchongyang-213', '111', '王重阳-213', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (227, 'wangchongyang-214', '111', '王重阳-214', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (228, 'wangchongyang-215', '111', '王重阳-215', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (229, 'wangchongyang-216', '111', '王重阳-216', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (230, 'wangchongyang-217', '111', '王重阳-217', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (231, 'wangchongyang-218', '111', '王重阳-218', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (232, 'wangchongyang-219', '111', '王重阳-219', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (233, 'wangchongyang-220', '111', '王重阳-220', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (234, 'wangchongyang-221', '111', '王重阳-221', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (235, 'wangchongyang-222', '111', '王重阳-222', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (236, 'wangchongyang-223', '111', '王重阳-223', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (237, 'wangchongyang-224', '111', '王重阳-224', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (238, 'wangchongyang-225', '111', '王重阳-225', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (239, 'wangchongyang-226', '111', '王重阳-226', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (240, 'wangchongyang-227', '111', '王重阳-227', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (241, 'wangchongyang-228', '111', '王重阳-228', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (242, 'wangchongyang-229', '111', '王重阳-229', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (243, 'wangchongyang-230', '111', '王重阳-230', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (244, 'wangchongyang-231', '111', '王重阳-231', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (245, 'wangchongyang-232', '111', '王重阳-232', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (246, 'wangchongyang-233', '111', '王重阳-233', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (247, 'wangchongyang-234', '111', '王重阳-234', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (248, 'wangchongyang-235', '111', '王重阳-235', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (249, 'wangchongyang-236', '111', '王重阳-236', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (250, 'wangchongyang-237', '111', '王重阳-237', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (251, 'wangchongyang-238', '111', '王重阳-238', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:03');
INSERT INTO `user_info` VALUES (252, 'wangchongyang-239', '111', '王重阳-239', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (253, 'wangchongyang-240', '111', '王重阳-240', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (254, 'wangchongyang-241', '111', '王重阳-241', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (255, 'wangchongyang-242', '111', '王重阳-242', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (256, 'wangchongyang-243', '111', '王重阳-243', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (257, 'wangchongyang-244', '111', '王重阳-244', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (258, 'wangchongyang-245', '111', '王重阳-245', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (259, 'wangchongyang-246', '111', '王重阳-246', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (260, 'wangchongyang-247', '111', '王重阳-247', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (261, 'wangchongyang-248', '111', '王重阳-248', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (262, 'wangchongyang-249', '111', '王重阳-249', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (263, 'wangchongyang-250', '111', '王重阳-250', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (264, 'wangchongyang-251', '111', '王重阳-251', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (265, 'wangchongyang-252', '111', '王重阳-252', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (266, 'wangchongyang-253', '111', '王重阳-253', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (267, 'wangchongyang-254', '111', '王重阳-254', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (268, 'wangchongyang-255', '111', '王重阳-255', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (269, 'wangchongyang-256', '111', '王重阳-256', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (270, 'wangchongyang-257', '111', '王重阳-257', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (271, 'wangchongyang-258', '111', '王重阳-258', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (272, 'wangchongyang-259', '111', '王重阳-259', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (273, 'wangchongyang-260', '111', '王重阳-260', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (274, 'wangchongyang-261', '111', '王重阳-261', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (275, 'wangchongyang-262', '111', '王重阳-262', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (276, 'wangchongyang-263', '111', '王重阳-263', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (277, 'wangchongyang-264', '111', '王重阳-264', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (278, 'wangchongyang-265', '111', '王重阳-265', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (279, 'wangchongyang-266', '111', '王重阳-266', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (280, 'wangchongyang-267', '111', '王重阳-267', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (281, 'wangchongyang-268', '111', '王重阳-268', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (282, 'wangchongyang-269', '111', '王重阳-269', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (283, 'wangchongyang-270', '111', '王重阳-270', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (284, 'wangchongyang-271', '111', '王重阳-271', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (285, 'wangchongyang-272', '111', '王重阳-272', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (286, 'wangchongyang-273', '111', '王重阳-273', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (287, 'wangchongyang-274', '111', '王重阳-274', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (288, 'wangchongyang-275', '111', '王重阳-275', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (289, 'wangchongyang-276', '111', '王重阳-276', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (290, 'wangchongyang-277', '111', '王重阳-277', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:04');
INSERT INTO `user_info` VALUES (291, 'wangchongyang-278', '111', '王重阳-278', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (292, 'wangchongyang-279', '111', '王重阳-279', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (293, 'wangchongyang-280', '111', '王重阳-280', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (294, 'wangchongyang-281', '111', '王重阳-281', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (295, 'wangchongyang-282', '111', '王重阳-282', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (296, 'wangchongyang-283', '111', '王重阳-283', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (297, 'wangchongyang-284', '111', '王重阳-284', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (298, 'wangchongyang-285', '111', '王重阳-285', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (299, 'wangchongyang-286', '111', '王重阳-286', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (300, 'wangchongyang-287', '111', '王重阳-287', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (301, 'wangchongyang-288', '111', '王重阳-288', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (302, 'wangchongyang-289', '111', '王重阳-289', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (303, 'wangchongyang-290', '111', '王重阳-290', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (304, 'wangchongyang-291', '111', '王重阳-291', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (305, 'wangchongyang-292', '111', '王重阳-292', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (306, 'wangchongyang-293', '111', '王重阳-293', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (307, 'wangchongyang-294', '111', '王重阳-294', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (308, 'wangchongyang-295', '111', '王重阳-295', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (309, 'wangchongyang-296', '111', '王重阳-296', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (310, 'wangchongyang-297', '111', '王重阳-297', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (311, 'wangchongyang-298', '111', '王重阳-298', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (312, 'wangchongyang-299', '111', '王重阳-299', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (313, 'wangchongyang-300', '111', '王重阳-300', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (314, 'wangchongyang-301', '111', '王重阳-301', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (315, 'wangchongyang-302', '111', '王重阳-302', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (316, 'wangchongyang-303', '111', '王重阳-303', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (317, 'wangchongyang-304', '111', '王重阳-304', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (318, 'wangchongyang-305', '111', '王重阳-305', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (319, 'wangchongyang-306', '111', '王重阳-306', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (320, 'wangchongyang-307', '111', '王重阳-307', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (321, 'wangchongyang-308', '111', '王重阳-308', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (322, 'wangchongyang-309', '111', '王重阳-309', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (323, 'wangchongyang-310', '111', '王重阳-310', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (324, 'wangchongyang-311', '111', '王重阳-311', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (325, 'wangchongyang-312', '111', '王重阳-312', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (326, 'wangchongyang-313', '111', '王重阳-313', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:05');
INSERT INTO `user_info` VALUES (327, 'wangchongyang-314', '111', '王重阳-314', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (328, 'wangchongyang-315', '111', '王重阳-315', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (329, 'wangchongyang-316', '111', '王重阳-316', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (330, 'wangchongyang-317', '111', '王重阳-317', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (331, 'wangchongyang-318', '111', '王重阳-318', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (332, 'wangchongyang-319', '111', '王重阳-319', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (333, 'wangchongyang-320', '111', '王重阳-320', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (334, 'wangchongyang-321', '111', '王重阳-321', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (335, 'wangchongyang-322', '111', '王重阳-322', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (336, 'wangchongyang-323', '111', '王重阳-323', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (337, 'wangchongyang-324', '111', '王重阳-324', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (338, 'wangchongyang-325', '111', '王重阳-325', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (339, 'wangchongyang-326', '111', '王重阳-326', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (340, 'wangchongyang-327', '111', '王重阳-327', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (341, 'wangchongyang-328', '111', '王重阳-328', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (342, 'wangchongyang-329', '111', '王重阳-329', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (343, 'wangchongyang-330', '111', '王重阳-330', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (344, 'wangchongyang-331', '111', '王重阳-331', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (345, 'wangchongyang-332', '111', '王重阳-332', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (346, 'wangchongyang-333', '111', '王重阳-333', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (347, 'wangchongyang-334', '111', '王重阳-334', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (348, 'wangchongyang-335', '111', '王重阳-335', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (349, 'wangchongyang-336', '111', '王重阳-336', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (350, 'wangchongyang-337', '111', '王重阳-337', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (351, 'wangchongyang-338', '111', '王重阳-338', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (352, 'wangchongyang-339', '111', '王重阳-339', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (353, 'wangchongyang-340', '111', '王重阳-340', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (354, 'wangchongyang-341', '111', '王重阳-341', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (355, 'wangchongyang-342', '111', '王重阳-342', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (356, 'wangchongyang-343', '111', '王重阳-343', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (357, 'wangchongyang-344', '111', '王重阳-344', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (358, 'wangchongyang-345', '111', '王重阳-345', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (359, 'wangchongyang-346', '111', '王重阳-346', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (360, 'wangchongyang-347', '111', '王重阳-347', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (361, 'wangchongyang-348', '111', '王重阳-348', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (362, 'wangchongyang-349', '111', '王重阳-349', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:06');
INSERT INTO `user_info` VALUES (363, 'wangchongyang-350', '111', '王重阳-350', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (364, 'wangchongyang-351', '111', '王重阳-351', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (365, 'wangchongyang-352', '111', '王重阳-352', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (366, 'wangchongyang-353', '111', '王重阳-353', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (367, 'wangchongyang-354', '111', '王重阳-354', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (368, 'wangchongyang-355', '111', '王重阳-355', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (369, 'wangchongyang-356', '111', '王重阳-356', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (370, 'wangchongyang-357', '111', '王重阳-357', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (371, 'wangchongyang-358', '111', '王重阳-358', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (372, 'wangchongyang-359', '111', '王重阳-359', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (373, 'wangchongyang-360', '111', '王重阳-360', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (374, 'wangchongyang-361', '111', '王重阳-361', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (375, 'wangchongyang-362', '111', '王重阳-362', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (376, 'wangchongyang-363', '111', '王重阳-363', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (377, 'wangchongyang-364', '111', '王重阳-364', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (378, 'wangchongyang-365', '111', '王重阳-365', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (379, 'wangchongyang-366', '111', '王重阳-366', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (380, 'wangchongyang-367', '111', '王重阳-367', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (381, 'wangchongyang-368', '111', '王重阳-368', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (382, 'wangchongyang-369', '111', '王重阳-369', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (383, 'wangchongyang-370', '111', '王重阳-370', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (384, 'wangchongyang-371', '111', '王重阳-371', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (385, 'wangchongyang-372', '111', '王重阳-372', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (386, 'wangchongyang-373', '111', '王重阳-373', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (387, 'wangchongyang-374', '111', '王重阳-374', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (388, 'wangchongyang-375', '111', '王重阳-375', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (389, 'wangchongyang-376', '111', '王重阳-376', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (390, 'wangchongyang-377', '111', '王重阳-377', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (391, 'wangchongyang-378', '111', '王重阳-378', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (392, 'wangchongyang-379', '111', '王重阳-379', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (393, 'wangchongyang-380', '111', '王重阳-380', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (394, 'wangchongyang-381', '111', '王重阳-381', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (395, 'wangchongyang-382', '111', '王重阳-382', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (396, 'wangchongyang-383', '111', '王重阳-383', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:07');
INSERT INTO `user_info` VALUES (397, 'wangchongyang-384', '111', '王重阳-384', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (398, 'wangchongyang-385', '111', '王重阳-385', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (399, 'wangchongyang-386', '111', '王重阳-386', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (400, 'wangchongyang-387', '111', '王重阳-387', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (401, 'wangchongyang-388', '111', '王重阳-388', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (402, 'wangchongyang-389', '111', '王重阳-389', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (403, 'wangchongyang-390', '111', '王重阳-390', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (404, 'wangchongyang-391', '111', '王重阳-391', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (405, 'wangchongyang-392', '111', '王重阳-392', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (406, 'wangchongyang-393', '111', '王重阳-393', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (407, 'wangchongyang-394', '111', '王重阳-394', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (408, 'wangchongyang-395', '111', '王重阳-395', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (409, 'wangchongyang-396', '111', '王重阳-396', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (410, 'wangchongyang-397', '111', '王重阳-397', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (411, 'wangchongyang-398', '111', '王重阳-398', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (412, 'wangchongyang-399', '111', '王重阳-399', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (413, 'wangchongyang-400', '111', '王重阳-400', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (414, 'wangchongyang-401', '111', '王重阳-401', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (415, 'wangchongyang-402', '111', '王重阳-402', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (416, 'wangchongyang-403', '111', '王重阳-403', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (417, 'wangchongyang-404', '111', '王重阳-404', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (418, 'wangchongyang-405', '111', '王重阳-405', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (419, 'wangchongyang-406', '111', '王重阳-406', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (420, 'wangchongyang-407', '111', '王重阳-407', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (421, 'wangchongyang-408', '111', '王重阳-408', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (422, 'wangchongyang-409', '111', '王重阳-409', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (423, 'wangchongyang-410', '111', '王重阳-410', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (424, 'wangchongyang-411', '111', '王重阳-411', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (425, 'wangchongyang-412', '111', '王重阳-412', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (426, 'wangchongyang-413', '111', '王重阳-413', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (427, 'wangchongyang-414', '111', '王重阳-414', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (428, 'wangchongyang-415', '111', '王重阳-415', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (429, 'wangchongyang-416', '111', '王重阳-416', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (430, 'wangchongyang-417', '111', '王重阳-417', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (431, 'wangchongyang-418', '111', '王重阳-418', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (432, 'wangchongyang-419', '111', '王重阳-419', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (433, 'wangchongyang-420', '111', '王重阳-420', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:08');
INSERT INTO `user_info` VALUES (434, 'wangchongyang-421', '111', '王重阳-421', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (435, 'wangchongyang-422', '111', '王重阳-422', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (436, 'wangchongyang-423', '111', '王重阳-423', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (437, 'wangchongyang-424', '111', '王重阳-424', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (438, 'wangchongyang-425', '111', '王重阳-425', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (439, 'wangchongyang-426', '111', '王重阳-426', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (440, 'wangchongyang-427', '111', '王重阳-427', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (441, 'wangchongyang-428', '111', '王重阳-428', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (442, 'wangchongyang-429', '111', '王重阳-429', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (443, 'wangchongyang-430', '111', '王重阳-430', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (444, 'wangchongyang-431', '111', '王重阳-431', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (445, 'wangchongyang-432', '111', '王重阳-432', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (446, 'wangchongyang-433', '111', '王重阳-433', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (447, 'wangchongyang-434', '111', '王重阳-434', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (448, 'wangchongyang-435', '111', '王重阳-435', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (449, 'wangchongyang-436', '111', '王重阳-436', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (450, 'wangchongyang-437', '111', '王重阳-437', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (451, 'wangchongyang-438', '111', '王重阳-438', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (452, 'wangchongyang-439', '111', '王重阳-439', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (453, 'wangchongyang-440', '111', '王重阳-440', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (454, 'wangchongyang-441', '111', '王重阳-441', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (455, 'wangchongyang-442', '111', '王重阳-442', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (456, 'wangchongyang-443', '111', '王重阳-443', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (457, 'wangchongyang-444', '111', '王重阳-444', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (458, 'wangchongyang-445', '111', '王重阳-445', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (459, 'wangchongyang-446', '111', '王重阳-446', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (460, 'wangchongyang-447', '111', '王重阳-447', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (461, 'wangchongyang-448', '111', '王重阳-448', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (462, 'wangchongyang-449', '111', '王重阳-449', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (463, 'wangchongyang-450', '111', '王重阳-450', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (464, 'wangchongyang-451', '111', '王重阳-451', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (465, 'wangchongyang-452', '111', '王重阳-452', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (466, 'wangchongyang-453', '111', '王重阳-453', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (467, 'wangchongyang-454', '111', '王重阳-454', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (468, 'wangchongyang-455', '111', '王重阳-455', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (469, 'wangchongyang-456', '111', '王重阳-456', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (470, 'wangchongyang-457', '111', '王重阳-457', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:09');
INSERT INTO `user_info` VALUES (471, 'wangchongyang-458', '111', '王重阳-458', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (472, 'wangchongyang-459', '111', '王重阳-459', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (473, 'wangchongyang-460', '111', '王重阳-460', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (474, 'wangchongyang-461', '111', '王重阳-461', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (475, 'wangchongyang-462', '111', '王重阳-462', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (476, 'wangchongyang-463', '111', '王重阳-463', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (477, 'wangchongyang-464', '111', '王重阳-464', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (478, 'wangchongyang-465', '111', '王重阳-465', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (479, 'wangchongyang-466', '111', '王重阳-466', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (480, 'wangchongyang-467', '111', '王重阳-467', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (481, 'wangchongyang-468', '111', '王重阳-468', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (482, 'wangchongyang-469', '111', '王重阳-469', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (483, 'wangchongyang-470', '111', '王重阳-470', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (484, 'wangchongyang-471', '111', '王重阳-471', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (485, 'wangchongyang-472', '111', '王重阳-472', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (486, 'wangchongyang-473', '111', '王重阳-473', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (487, 'wangchongyang-474', '111', '王重阳-474', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (488, 'wangchongyang-475', '111', '王重阳-475', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (489, 'wangchongyang-476', '111', '王重阳-476', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (490, 'wangchongyang-477', '111', '王重阳-477', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (491, 'wangchongyang-478', '111', '王重阳-478', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (492, 'wangchongyang-479', '111', '王重阳-479', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (493, 'wangchongyang-480', '111', '王重阳-480', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (494, 'wangchongyang-481', '111', '王重阳-481', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (495, 'wangchongyang-482', '111', '王重阳-482', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (496, 'wangchongyang-483', '111', '王重阳-483', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (497, 'wangchongyang-484', '111', '王重阳-484', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (498, 'wangchongyang-485', '111', '王重阳-485', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (499, 'wangchongyang-486', '111', '王重阳-486', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (500, 'wangchongyang-487', '111', '王重阳-487', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (501, 'wangchongyang-488', '111', '王重阳-488', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (502, 'wangchongyang-489', '111', '王重阳-489', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (503, 'wangchongyang-490', '111', '王重阳-490', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (504, 'wangchongyang-491', '111', '王重阳-491', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (505, 'wangchongyang-492', '111', '王重阳-492', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (506, 'wangchongyang-493', '111', '王重阳-493', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (507, 'wangchongyang-494', '111', '王重阳-494', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:10');
INSERT INTO `user_info` VALUES (508, 'wangchongyang-495', '111', '王重阳-495', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (509, 'wangchongyang-496', '111', '王重阳-496', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (510, 'wangchongyang-497', '111', '王重阳-497', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (511, 'wangchongyang-498', '111', '王重阳-498', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (512, 'wangchongyang-499', '111', '王重阳-499', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (513, 'wangchongyang-500', '111', '王重阳-500', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (514, 'wangchongyang-501', '111', '王重阳-501', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (515, 'wangchongyang-502', '111', '王重阳-502', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (516, 'wangchongyang-503', '111', '王重阳-503', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (517, 'wangchongyang-504', '111', '王重阳-504', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (518, 'wangchongyang-505', '111', '王重阳-505', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (519, 'wangchongyang-506', '111', '王重阳-506', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (520, 'wangchongyang-507', '111', '王重阳-507', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (521, 'wangchongyang-508', '111', '王重阳-508', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (522, 'wangchongyang-509', '111', '王重阳-509', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (523, 'wangchongyang-510', '111', '王重阳-510', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (524, 'wangchongyang-511', '111', '王重阳-511', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (525, 'wangchongyang-512', '111', '王重阳-512', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (526, 'wangchongyang-513', '111', '王重阳-513', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (527, 'wangchongyang-514', '111', '王重阳-514', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (528, 'wangchongyang-515', '111', '王重阳-515', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (529, 'wangchongyang-516', '111', '王重阳-516', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (530, 'wangchongyang-517', '111', '王重阳-517', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (531, 'wangchongyang-518', '111', '王重阳-518', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (532, 'wangchongyang-519', '111', '王重阳-519', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (533, 'wangchongyang-520', '111', '王重阳-520', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (534, 'wangchongyang-521', '111', '王重阳-521', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (535, 'wangchongyang-522', '111', '王重阳-522', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (536, 'wangchongyang-523', '111', '王重阳-523', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (537, 'wangchongyang-524', '111', '王重阳-524', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (538, 'wangchongyang-525', '111', '王重阳-525', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (539, 'wangchongyang-526', '111', '王重阳-526', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (540, 'wangchongyang-527', '111', '王重阳-527', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (541, 'wangchongyang-528', '111', '王重阳-528', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (542, 'wangchongyang-529', '111', '王重阳-529', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (543, 'wangchongyang-530', '111', '王重阳-530', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:11');
INSERT INTO `user_info` VALUES (544, 'wangchongyang-531', '111', '王重阳-531', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (545, 'wangchongyang-532', '111', '王重阳-532', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (546, 'wangchongyang-533', '111', '王重阳-533', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (547, 'wangchongyang-534', '111', '王重阳-534', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (548, 'wangchongyang-535', '111', '王重阳-535', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (549, 'wangchongyang-536', '111', '王重阳-536', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (550, 'wangchongyang-537', '111', '王重阳-537', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (551, 'wangchongyang-538', '111', '王重阳-538', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (552, 'wangchongyang-539', '111', '王重阳-539', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (553, 'wangchongyang-540', '111', '王重阳-540', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (554, 'wangchongyang-541', '111', '王重阳-541', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (555, 'wangchongyang-542', '111', '王重阳-542', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (556, 'wangchongyang-543', '111', '王重阳-543', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (557, 'wangchongyang-544', '111', '王重阳-544', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (558, 'wangchongyang-545', '111', '王重阳-545', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (559, 'wangchongyang-546', '111', '王重阳-546', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (560, 'wangchongyang-547', '111', '王重阳-547', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (561, 'wangchongyang-548', '111', '王重阳-548', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (562, 'wangchongyang-549', '111', '王重阳-549', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (563, 'wangchongyang-550', '111', '王重阳-550', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (564, 'wangchongyang-551', '111', '王重阳-551', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (565, 'wangchongyang-552', '111', '王重阳-552', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (566, 'wangchongyang-553', '111', '王重阳-553', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (567, 'wangchongyang-554', '111', '王重阳-554', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (568, 'wangchongyang-555', '111', '王重阳-555', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (569, 'wangchongyang-556', '111', '王重阳-556', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (570, 'wangchongyang-557', '111', '王重阳-557', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (571, 'wangchongyang-558', '111', '王重阳-558', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (572, 'wangchongyang-559', '111', '王重阳-559', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (573, 'wangchongyang-560', '111', '王重阳-560', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (574, 'wangchongyang-561', '111', '王重阳-561', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (575, 'wangchongyang-562', '111', '王重阳-562', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (576, 'wangchongyang-563', '111', '王重阳-563', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (577, 'wangchongyang-564', '111', '王重阳-564', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (578, 'wangchongyang-565', '111', '王重阳-565', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (579, 'wangchongyang-566', '111', '王重阳-566', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (580, 'wangchongyang-567', '111', '王重阳-567', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:12');
INSERT INTO `user_info` VALUES (581, 'wangchongyang-568', '111', '王重阳-568', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (582, 'wangchongyang-569', '111', '王重阳-569', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (583, 'wangchongyang-570', '111', '王重阳-570', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (584, 'wangchongyang-571', '111', '王重阳-571', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (585, 'wangchongyang-572', '111', '王重阳-572', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (586, 'wangchongyang-573', '111', '王重阳-573', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (587, 'wangchongyang-574', '111', '王重阳-574', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (588, 'wangchongyang-575', '111', '王重阳-575', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (589, 'wangchongyang-576', '111', '王重阳-576', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (590, 'wangchongyang-577', '111', '王重阳-577', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (591, 'wangchongyang-578', '111', '王重阳-578', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (592, 'wangchongyang-579', '111', '王重阳-579', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (593, 'wangchongyang-580', '111', '王重阳-580', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (594, 'wangchongyang-581', '111', '王重阳-581', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (595, 'wangchongyang-582', '111', '王重阳-582', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (596, 'wangchongyang-583', '111', '王重阳-583', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (597, 'wangchongyang-584', '111', '王重阳-584', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (598, 'wangchongyang-585', '111', '王重阳-585', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (599, 'wangchongyang-586', '111', '王重阳-586', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (600, 'wangchongyang-587', '111', '王重阳-587', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (601, 'wangchongyang-588', '111', '王重阳-588', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (602, 'wangchongyang-589', '111', '王重阳-589', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (603, 'wangchongyang-590', '111', '王重阳-590', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (604, 'wangchongyang-591', '111', '王重阳-591', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (605, 'wangchongyang-592', '111', '王重阳-592', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (606, 'wangchongyang-593', '111', '王重阳-593', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (607, 'wangchongyang-594', '111', '王重阳-594', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (608, 'wangchongyang-595', '111', '王重阳-595', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (609, 'wangchongyang-596', '111', '王重阳-596', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (610, 'wangchongyang-597', '111', '王重阳-597', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:13');
INSERT INTO `user_info` VALUES (611, 'wangchongyang-598', '111', '王重阳-598', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (612, 'wangchongyang-599', '111', '王重阳-599', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (613, 'wangchongyang-600', '111', '王重阳-600', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (614, 'wangchongyang-601', '111', '王重阳-601', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (615, 'wangchongyang-602', '111', '王重阳-602', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (616, 'wangchongyang-603', '111', '王重阳-603', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (617, 'wangchongyang-604', '111', '王重阳-604', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (618, 'wangchongyang-605', '111', '王重阳-605', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (619, 'wangchongyang-606', '111', '王重阳-606', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (620, 'wangchongyang-607', '111', '王重阳-607', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (621, 'wangchongyang-608', '111', '王重阳-608', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (622, 'wangchongyang-609', '111', '王重阳-609', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (623, 'wangchongyang-610', '111', '王重阳-610', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (624, 'wangchongyang-611', '111', '王重阳-611', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (625, 'wangchongyang-612', '111', '王重阳-612', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (626, 'wangchongyang-613', '111', '王重阳-613', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (627, 'wangchongyang-614', '111', '王重阳-614', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (628, 'wangchongyang-615', '111', '王重阳-615', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (629, 'wangchongyang-616', '111', '王重阳-616', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (630, 'wangchongyang-617', '111', '王重阳-617', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (631, 'wangchongyang-618', '111', '王重阳-618', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (632, 'wangchongyang-619', '111', '王重阳-619', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (633, 'wangchongyang-620', '111', '王重阳-620', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (634, 'wangchongyang-621', '111', '王重阳-621', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (635, 'wangchongyang-622', '111', '王重阳-622', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (636, 'wangchongyang-623', '111', '王重阳-623', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (637, 'wangchongyang-624', '111', '王重阳-624', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (638, 'wangchongyang-625', '111', '王重阳-625', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (639, 'wangchongyang-626', '111', '王重阳-626', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (640, 'wangchongyang-627', '111', '王重阳-627', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (641, 'wangchongyang-628', '111', '王重阳-628', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (642, 'wangchongyang-629', '111', '王重阳-629', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:14');
INSERT INTO `user_info` VALUES (643, 'wangchongyang-630', '111', '王重阳-630', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (644, 'wangchongyang-631', '111', '王重阳-631', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (645, 'wangchongyang-632', '111', '王重阳-632', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (646, 'wangchongyang-633', '111', '王重阳-633', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (647, 'wangchongyang-634', '111', '王重阳-634', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (648, 'wangchongyang-635', '111', '王重阳-635', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (649, 'wangchongyang-636', '111', '王重阳-636', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (650, 'wangchongyang-637', '111', '王重阳-637', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (651, 'wangchongyang-638', '111', '王重阳-638', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (652, 'wangchongyang-639', '111', '王重阳-639', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (653, 'wangchongyang-640', '111', '王重阳-640', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (654, 'wangchongyang-641', '111', '王重阳-641', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (655, 'wangchongyang-642', '111', '王重阳-642', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (656, 'wangchongyang-643', '111', '王重阳-643', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (657, 'wangchongyang-644', '111', '王重阳-644', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (658, 'wangchongyang-645', '111', '王重阳-645', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (659, 'wangchongyang-646', '111', '王重阳-646', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (660, 'wangchongyang-647', '111', '王重阳-647', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (661, 'wangchongyang-648', '111', '王重阳-648', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (662, 'wangchongyang-649', '111', '王重阳-649', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (663, 'wangchongyang-650', '111', '王重阳-650', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (664, 'wangchongyang-651', '111', '王重阳-651', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (665, 'wangchongyang-652', '111', '王重阳-652', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (666, 'wangchongyang-653', '111', '王重阳-653', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (667, 'wangchongyang-654', '111', '王重阳-654', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (668, 'wangchongyang-655', '111', '王重阳-655', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (669, 'wangchongyang-656', '111', '王重阳-656', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (670, 'wangchongyang-657', '111', '王重阳-657', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (671, 'wangchongyang-658', '111', '王重阳-658', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (672, 'wangchongyang-659', '111', '王重阳-659', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (673, 'wangchongyang-660', '111', '王重阳-660', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (674, 'wangchongyang-661', '111', '王重阳-661', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (675, 'wangchongyang-662', '111', '王重阳-662', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:15');
INSERT INTO `user_info` VALUES (676, 'wangchongyang-663', '111', '王重阳-663', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (677, 'wangchongyang-664', '111', '王重阳-664', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (678, 'wangchongyang-665', '111', '王重阳-665', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (679, 'wangchongyang-666', '111', '王重阳-666', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (680, 'wangchongyang-667', '111', '王重阳-667', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (681, 'wangchongyang-668', '111', '王重阳-668', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (682, 'wangchongyang-669', '111', '王重阳-669', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (683, 'wangchongyang-670', '111', '王重阳-670', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (684, 'wangchongyang-671', '111', '王重阳-671', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (685, 'wangchongyang-672', '111', '王重阳-672', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (686, 'wangchongyang-673', '111', '王重阳-673', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (687, 'wangchongyang-674', '111', '王重阳-674', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (688, 'wangchongyang-675', '111', '王重阳-675', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (689, 'wangchongyang-676', '111', '王重阳-676', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (690, 'wangchongyang-677', '111', '王重阳-677', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (691, 'wangchongyang-678', '111', '王重阳-678', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (692, 'wangchongyang-679', '111', '王重阳-679', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (693, 'wangchongyang-680', '111', '王重阳-680', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (694, 'wangchongyang-681', '111', '王重阳-681', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (695, 'wangchongyang-682', '111', '王重阳-682', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (696, 'wangchongyang-683', '111', '王重阳-683', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (697, 'wangchongyang-684', '111', '王重阳-684', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (698, 'wangchongyang-685', '111', '王重阳-685', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (699, 'wangchongyang-686', '111', '王重阳-686', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (700, 'wangchongyang-687', '111', '王重阳-687', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (701, 'wangchongyang-688', '111', '王重阳-688', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (702, 'wangchongyang-689', '111', '王重阳-689', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (703, 'wangchongyang-690', '111', '王重阳-690', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (704, 'wangchongyang-691', '111', '王重阳-691', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (705, 'wangchongyang-692', '111', '王重阳-692', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (706, 'wangchongyang-693', '111', '王重阳-693', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (707, 'wangchongyang-694', '111', '王重阳-694', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:16');
INSERT INTO `user_info` VALUES (708, 'wangchongyang-695', '111', '王重阳-695', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (709, 'wangchongyang-696', '111', '王重阳-696', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (710, 'wangchongyang-697', '111', '王重阳-697', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (711, 'wangchongyang-698', '111', '王重阳-698', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (712, 'wangchongyang-699', '111', '王重阳-699', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (713, 'wangchongyang-700', '111', '王重阳-700', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (714, 'wangchongyang-701', '111', '王重阳-701', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (715, 'wangchongyang-702', '111', '王重阳-702', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (716, 'wangchongyang-703', '111', '王重阳-703', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (717, 'wangchongyang-704', '111', '王重阳-704', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (718, 'wangchongyang-705', '111', '王重阳-705', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (719, 'wangchongyang-706', '111', '王重阳-706', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (720, 'wangchongyang-707', '111', '王重阳-707', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (721, 'wangchongyang-708', '111', '王重阳-708', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (722, 'wangchongyang-709', '111', '王重阳-709', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (723, 'wangchongyang-710', '111', '王重阳-710', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (724, 'wangchongyang-711', '111', '王重阳-711', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (725, 'wangchongyang-712', '111', '王重阳-712', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (726, 'wangchongyang-713', '111', '王重阳-713', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (727, 'wangchongyang-714', '111', '王重阳-714', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (728, 'wangchongyang-715', '111', '王重阳-715', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (729, 'wangchongyang-716', '111', '王重阳-716', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (730, 'wangchongyang-717', '111', '王重阳-717', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (731, 'wangchongyang-718', '111', '王重阳-718', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (732, 'wangchongyang-719', '111', '王重阳-719', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (733, 'wangchongyang-720', '111', '王重阳-720', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (734, 'wangchongyang-721', '111', '王重阳-721', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (735, 'wangchongyang-722', '111', '王重阳-722', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (736, 'wangchongyang-723', '111', '王重阳-723', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (737, 'wangchongyang-724', '111', '王重阳-724', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (738, 'wangchongyang-725', '111', '王重阳-725', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (739, 'wangchongyang-726', '111', '王重阳-726', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (740, 'wangchongyang-727', '111', '王重阳-727', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (741, 'wangchongyang-728', '111', '王重阳-728', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:17');
INSERT INTO `user_info` VALUES (742, 'wangchongyang-729', '111', '王重阳-729', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (743, 'wangchongyang-730', '111', '王重阳-730', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (744, 'wangchongyang-731', '111', '王重阳-731', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (745, 'wangchongyang-732', '111', '王重阳-732', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (746, 'wangchongyang-733', '111', '王重阳-733', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (747, 'wangchongyang-734', '111', '王重阳-734', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (748, 'wangchongyang-735', '111', '王重阳-735', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (749, 'wangchongyang-736', '111', '王重阳-736', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (750, 'wangchongyang-737', '111', '王重阳-737', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (751, 'wangchongyang-738', '111', '王重阳-738', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (752, 'wangchongyang-739', '111', '王重阳-739', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (753, 'wangchongyang-740', '111', '王重阳-740', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (754, 'wangchongyang-741', '111', '王重阳-741', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (755, 'wangchongyang-742', '111', '王重阳-742', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (756, 'wangchongyang-743', '111', '王重阳-743', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (757, 'wangchongyang-744', '111', '王重阳-744', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (758, 'wangchongyang-745', '111', '王重阳-745', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (759, 'wangchongyang-746', '111', '王重阳-746', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (760, 'wangchongyang-747', '111', '王重阳-747', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (761, 'wangchongyang-748', '111', '王重阳-748', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (762, 'wangchongyang-749', '111', '王重阳-749', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (763, 'wangchongyang-750', '111', '王重阳-750', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (764, 'wangchongyang-751', '111', '王重阳-751', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (765, 'wangchongyang-752', '111', '王重阳-752', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (766, 'wangchongyang-753', '111', '王重阳-753', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (767, 'wangchongyang-754', '111', '王重阳-754', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (768, 'wangchongyang-755', '111', '王重阳-755', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (769, 'wangchongyang-756', '111', '王重阳-756', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (770, 'wangchongyang-757', '111', '王重阳-757', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (771, 'wangchongyang-758', '111', '王重阳-758', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (772, 'wangchongyang-759', '111', '王重阳-759', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (773, 'wangchongyang-760', '111', '王重阳-760', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (774, 'wangchongyang-761', '111', '王重阳-761', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:18');
INSERT INTO `user_info` VALUES (775, 'wangchongyang-762', '111', '王重阳-762', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (776, 'wangchongyang-763', '111', '王重阳-763', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (777, 'wangchongyang-764', '111', '王重阳-764', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (778, 'wangchongyang-765', '111', '王重阳-765', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (779, 'wangchongyang-766', '111', '王重阳-766', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (780, 'wangchongyang-767', '111', '王重阳-767', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (781, 'wangchongyang-768', '111', '王重阳-768', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (782, 'wangchongyang-769', '111', '王重阳-769', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (783, 'wangchongyang-770', '111', '王重阳-770', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (784, 'wangchongyang-771', '111', '王重阳-771', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (785, 'wangchongyang-772', '111', '王重阳-772', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (786, 'wangchongyang-773', '111', '王重阳-773', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (787, 'wangchongyang-774', '111', '王重阳-774', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (788, 'wangchongyang-775', '111', '王重阳-775', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (789, 'wangchongyang-776', '111', '王重阳-776', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (790, 'wangchongyang-777', '111', '王重阳-777', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (791, 'wangchongyang-778', '111', '王重阳-778', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (792, 'wangchongyang-779', '111', '王重阳-779', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (793, 'wangchongyang-780', '111', '王重阳-780', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (794, 'wangchongyang-781', '111', '王重阳-781', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (795, 'wangchongyang-782', '111', '王重阳-782', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (796, 'wangchongyang-783', '111', '王重阳-783', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (797, 'wangchongyang-784', '111', '王重阳-784', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (798, 'wangchongyang-785', '111', '王重阳-785', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (799, 'wangchongyang-786', '111', '王重阳-786', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (800, 'wangchongyang-787', '111', '王重阳-787', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (801, 'wangchongyang-788', '111', '王重阳-788', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (802, 'wangchongyang-789', '111', '王重阳-789', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (803, 'wangchongyang-790', '111', '王重阳-790', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (804, 'wangchongyang-791', '111', '王重阳-791', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (805, 'wangchongyang-792', '111', '王重阳-792', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (806, 'wangchongyang-793', '111', '王重阳-793', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (807, 'wangchongyang-794', '111', '王重阳-794', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:19');
INSERT INTO `user_info` VALUES (808, 'wangchongyang-795', '111', '王重阳-795', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (809, 'wangchongyang-796', '111', '王重阳-796', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (810, 'wangchongyang-797', '111', '王重阳-797', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (811, 'wangchongyang-798', '111', '王重阳-798', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (812, 'wangchongyang-799', '111', '王重阳-799', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (813, 'wangchongyang-800', '111', '王重阳-800', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (814, 'wangchongyang-801', '111', '王重阳-801', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (815, 'wangchongyang-802', '111', '王重阳-802', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (816, 'wangchongyang-803', '111', '王重阳-803', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (817, 'wangchongyang-804', '111', '王重阳-804', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (818, 'wangchongyang-805', '111', '王重阳-805', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (819, 'wangchongyang-806', '111', '王重阳-806', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (820, 'wangchongyang-807', '111', '王重阳-807', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (821, 'wangchongyang-808', '111', '王重阳-808', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (822, 'wangchongyang-809', '$2a$10$2m3TNTl2vsfMEq0PWbCiXuPmngUuxHUc0QmLBPV/ls7oI4YZJ0QCC', '王重阳-89', 'aaa@gewei.com', 3, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-27 11:55:07', NULL, NULL, '2018-09-21 11:09:20');
INSERT INTO `user_info` VALUES (823, 'b', '$2a$10$nB6E2cApqH7eKXBGwObLaOPQn5joAG3v0X.AIC5qEADvLDBcA3FH6', 'b', '111@qqq.ddf', 7, 'DISABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-03 13:26:13');
INSERT INTO `user_info` VALUES (824, 'c', '$2a$10$rprq8WiQfNlfXfkCAbOGHeJHjE8/jtRS5N5/Ql.ZPh2YZePshI2ae', 'ct', NULL, 8, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-02 13:38:18');
INSERT INTO `user_info` VALUES (825, 'qqq', '$2a$10$g.VlVZiPKg.goJLyNm0vOuYTaMu3mk.PL1SWfXoXml2up5vSC8eO2', '太阳花', 'slkdfjl@sldfkj.com', 1, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-16 09:19:28');
INSERT INTO `user_info` VALUES (826, 'wwwwww', '$2a$10$mdLmVflbOO0ntem.89LvfOMQQKX/ja8vWD8gu1Myfb6mfx94q1w0u', 'wwwww', 'www@www.kk', 7, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '数据由java程序做最后一次修改', 15, '2019-01-02 15:50:02');
INSERT INTO `user_info` VALUES (827, 'sss', '$2a$10$XySEaoSZG0djnKAzKpryHupcDeoqUUBTjN1C/y1Z3jkQV.hg/aA0u', '水电费', 'qqq@11.jjqq', 1, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-01-02 11:17:45', '数据由java程序做最后一次修改', 15, '2019-01-02 15:29:40');
INSERT INTO `user_info` VALUES (831, 'eee9', '$2a$10$z.RfxrJRIlpEtoQVlrgiEu1Gv0OBnkcOMl1QJD084Ctk0ocgYaBXm', 'e456ee', 'eee@w.fff', 8, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-01-03 09:55:40', '数据由java程序做最后一次修改', 15, '2019-01-03 09:57:44');
INSERT INTO `user_info` VALUES (832, 'sss1', '$2a$10$Lht5SmrX7eCfoATm4FMzeeOQibubVpIn3l8ItppVLlr73Kgynu.Fq', 'sss', 'sss@sss.ss', 7, 'ENABLED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, '2019-01-03 11:13:31', '数据由java程序做最后一次修改', 15, '2019-01-03 13:24:58');

-- ----------------------------
-- Table structure for user_verify
-- ----------------------------
DROP TABLE IF EXISTS `user_verify`;
CREATE TABLE `user_verify`  (
  `verify_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '验证码信息主键',
  `user_id` int(100) NOT NULL COMMENT '用户主键',
  `verify_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码类型【EMAIL=邮箱】【SMS=短信】',
  `verify_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码信息',
  `verify_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码状态【VALID=有效】【INVALID=无效】',
  `attribute01` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段01',
  `attribute02` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段02',
  `attribute03` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段03',
  `attribute04` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段04',
  `attribute05` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段05',
  `attribute06` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段06',
  `attribute07` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段07',
  `attribute08` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段08',
  `attribute09` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段09',
  `attribute10` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留字段10',
  `first_create_by` int(11) NULL DEFAULT NULL COMMENT '初始创建人员',
  `first_create_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '初始创建日期',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据变化描述',
  `last_update_by` int(11) NULL DEFAULT NULL COMMENT '最后修改人员',
  `last_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改日期',
  PRIMARY KEY (`verify_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '验证码信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_verify
-- ----------------------------
INSERT INTO `user_verify` VALUES (1, 1, 'EMAIL', 'WER234', 'VALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-29 11:17:44', NULL, NULL, '2018-10-29 11:17:44');
INSERT INTO `user_verify` VALUES (2, 19, 'mail', 'PJJW', 'VALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 10:00:21', NULL, NULL, '2018-10-30 10:00:21');
INSERT INTO `user_verify` VALUES (3, 19, 'mail', '112O', 'VALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 10:02:33', NULL, NULL, '2018-10-30 10:02:33');
INSERT INTO `user_verify` VALUES (4, 19, 'mail', 'MEZN', 'VALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 10:04:47', NULL, NULL, '2018-10-30 10:04:47');
INSERT INTO `user_verify` VALUES (5, 19, 'mail', 'UV69', 'VALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 10:49:54', NULL, NULL, '2018-10-30 10:49:54');
INSERT INTO `user_verify` VALUES (6, 19, 'mail', 'T138', 'VALID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 10:51:17', NULL, NULL, '2018-10-30 10:51:17');

SET FOREIGN_KEY_CHECKS = 1;
