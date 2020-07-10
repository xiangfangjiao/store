/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50544
 Source Host           : localhost:3306
 Source Schema         : system_free

 Target Server Type    : MySQL
 Target Server Version : 50544
 File Encoding         : 65001

 Date: 30/06/2020 16:48:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for free_category
-- ----------------------------
DROP TABLE IF EXISTS `free_category`;
CREATE TABLE `free_category`  (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `categoryName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名',
  PRIMARY KEY (`categoryId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_goods
-- ----------------------------
DROP TABLE IF EXISTS `free_goods`;
CREATE TABLE `free_goods`  (
  `proId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `proName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `numbers` int(11) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`proId`) USING BTREE,
  INDEX `proName`(`proName`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  CONSTRAINT `proName` FOREIGN KEY (`proName`) REFERENCES `free_info` (`proName`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `free_goods_ibfk_1` FOREIGN KEY (`price`) REFERENCES `free_info` (`price`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_info
-- ----------------------------
DROP TABLE IF EXISTS `free_info`;
CREATE TABLE `free_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '额外主键',
  `proName` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `brand` int(64) NULL DEFAULT NULL COMMENT '品牌',
  `categoryId` int(11) NULL DEFAULT NULL COMMENT '分类id',
  `production` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生产地',
  `price` double NULL DEFAULT NULL COMMENT '售价',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `proName`(`proName`) USING BTREE,
  INDEX `price`(`price`) USING BTREE,
  INDEX `categoryId`(`categoryId`) USING BTREE,
  CONSTRAINT `categoryId` FOREIGN KEY (`categoryId`) REFERENCES `free_category` (`categoryId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_invitation_ans
-- ----------------------------
DROP TABLE IF EXISTS `free_invitation_ans`;
CREATE TABLE `free_invitation_ans`  (
  `ansId` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '对应的商品ID_回复账户_日期到秒',
  `ansMessage` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复的内容',
  `userId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复的账户',
  `ansDate` datetime NOT NULL COMMENT '回复的日期时间',
  PRIMARY KEY (`ansId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `free_user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_level
-- ----------------------------
DROP TABLE IF EXISTS `free_level`;
CREATE TABLE `free_level`  (
  `levelId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键(1-普通 2-初级 3-中级 4-高级 5-系统)',
  `levelMessage` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '等级信息',
  `levelRequest` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '等级要求',
  PRIMARY KEY (`levelId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_orders
-- ----------------------------
DROP TABLE IF EXISTS `free_orders`;
CREATE TABLE `free_orders`  (
  `oid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号，由当前日期时间+客户远程IP+随机数',
  `bid` int(11) NULL DEFAULT NULL COMMENT '关联free_info的主键',
  `count` double NULL DEFAULT NULL COMMENT '订单数量',
  `curPrice` double NULL DEFAULT NULL COMMENT '单价',
  `date` datetime NULL DEFAULT NULL COMMENT '订单日期时间',
  PRIMARY KEY (`oid`) USING BTREE,
  INDEX `bid`(`bid`) USING BTREE,
  CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `free_info` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_plate
-- ----------------------------
DROP TABLE IF EXISTS `free_plate`;
CREATE TABLE `free_plate`  (
  `plateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `plateTitle` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '版块标题',
  `plateMessage` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '板块描述',
  `isEnable` int(255) NULL DEFAULT 0 COMMENT '板块是否被屏蔽',
  PRIMARY KEY (`plateId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_store
-- ----------------------------
DROP TABLE IF EXISTS `free_store`;
CREATE TABLE `free_store`  (
  `userId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `invitationId` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `storeDate` datetime NULL DEFAULT NULL COMMENT '收藏日期时间',
  PRIMARY KEY (`userId`, `invitationId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_system_ans
-- ----------------------------
DROP TABLE IF EXISTS `free_system_ans`;
CREATE TABLE `free_system_ans`  (
  `systemId` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '采用Java的UUID自动生成',
  `userId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收此信息的账户id',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发送的消息信息',
  `isRead` int(255) NULL DEFAULT 0 COMMENT '是否已读(0-未读 1-读)',
  `createDate` datetime NULL DEFAULT NULL COMMENT '消息创建时间',
  PRIMARY KEY (`systemId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for free_user
-- ----------------------------
DROP TABLE IF EXISTS `free_user`;
CREATE TABLE `free_user`  (
  `userId` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账户',
  `userName` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `userPsw` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `userAlice` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `userEmail` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `userPhone` int(11) NOT NULL COMMENT '电话',
  `userSex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `userPhoto` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `userLevel` int(2) NULL DEFAULT NULL COMMENT '等级(1-普通 2-初级 3-中级 4-高级 5-系统)',
  `levelDown` date NULL DEFAULT NULL COMMENT '降级日期',
  `userCreateDate` date NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`userId`) USING BTREE,
  INDEX `userLevel`(`userLevel`) USING BTREE,
  CONSTRAINT `userLevel` FOREIGN KEY (`userLevel`) REFERENCES `free_level` (`levelId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
