/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : phongtro

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 01/12/2017 15:32:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_room` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED NOT NULL,
  `created` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES (1, 1, 1, '2017-09-13 21:18:07');
INSERT INTO `bill` VALUES (2, 2, 2, '2017-10-09 21:18:23');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `delegate` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'Nguyễn Đình Công', '1996-03-07', 'Nam', '01694996521', 'Bắc Ninh', 'abc', '/images', 1, 1, '2017-06-22 21:26:47', '2017-10-04 21:27:04');
INSERT INTO `customer` VALUES (2, 'Thân Thế Văn', '1996-07-14', 'Nam', '0941360187', 'Bắc Giang', 'abc', '/images', 1, 1, '2017-10-19 21:25:41', '2017-10-19 21:25:46');
INSERT INTO `customer` VALUES (3, 'Lê Thanh Trà', '1996-08-14', 'Nam', '0941360223', 'Phú Thọ', 'abc', '/images', 1, 1, '2017-10-19 21:33:19', '2017-10-19 21:33:22');
INSERT INTO `customer` VALUES (4, '1', '1996-07-03', '1', '1', '1', '1', '1', 1, 1, '1996-07-03 00:00:00', '1996-07-03 00:00:00');

-- ----------------------------
-- Table structure for detail_bill
-- ----------------------------
DROP TABLE IF EXISTS `detail_bill`;
CREATE TABLE `detail_bill`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `water_bill` double NOT NULL,
  `electric_bill` double NOT NULL,
  `service_bill` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_bill`(`id_bill`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail_bill
-- ----------------------------
INSERT INTO `detail_bill` VALUES (1, 1, 200, 32, 23);
INSERT INTO `detail_bill` VALUES (2, 2, 343, 23, 23);

-- ----------------------------
-- Table structure for electric_bill
-- ----------------------------
DROP TABLE IF EXISTS `electric_bill`;
CREATE TABLE `electric_bill`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `first_index` int(10) UNSIGNED NULL DEFAULT NULL,
  `last_index` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_bill`(`id_bill`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of electric_bill
-- ----------------------------
INSERT INTO `electric_bill` VALUES (1, 1, 12, 54);
INSERT INTO `electric_bill` VALUES (2, 2, 12, 56);

-- ----------------------------
-- Table structure for receipts
-- ----------------------------
DROP TABLE IF EXISTS `receipts`;
CREATE TABLE `receipts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) NOT NULL,
  `id_member` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_room` int(11) NOT NULL,
  `start` date NOT NULL,
  `leave` date NOT NULL,
  `deposits` double NOT NULL,
  `created` datetime(0) NOT NULL,
  `updated` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  INDEX `id_room`(`id_room`) USING BTREE,
  CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `receipts_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of receipts
-- ----------------------------
INSERT INTO `receipts` VALUES (1, 1, '1', 1, '2017-10-09', '2017-11-29', 0, '2017-10-18 21:20:55', '2017-10-19 21:21:05');
INSERT INTO `receipts` VALUES (2, 2, '2', 5, '2017-10-11', '2017-11-23', 250000, '2017-10-19 21:35:24', '2017-10-19 21:35:26');
INSERT INTO `receipts` VALUES (3, 3, '3', 4, '2017-10-22', '2017-12-21', 800000, '2017-08-03 21:36:00', '2017-10-04 21:36:13');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `RecordID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`RecordID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 'https://kinhdoanh.vnexpress.net/tin-tuc/bat-dong-san/du-an/page/1.html');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_typeroom` int(11) NOT NULL,
  `code` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_typeroom`(`id_typeroom`) USING BTREE,
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`id_typeroom`) REFERENCES `type_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 1, 'Phòng không khép kín', 'Phòng 101', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 1, 0);
INSERT INTO `room` VALUES (2, 2, 'Phòng khép kín', 'Phòng 201', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 1, 1);
INSERT INTO `room` VALUES (3, 1, 'Phòng không khép kín', 'Phòng 102', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 2, 0);
INSERT INTO `room` VALUES (4, 3, 'Cửa hàng cho thuê', 'Phòng 301', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 1, 1);
INSERT INTO `room` VALUES (5, 1, 'Phòng không khép kín', 'Phòng 103', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 3, 1);
INSERT INTO `room` VALUES (6, 1, 'Phòng không khép kín', 'Phòng 104', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 3, 0);
INSERT INTO `room` VALUES (7, 1, 'Phòng không khép kín ', 'Phòng 105', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 2, 1);
INSERT INTO `room` VALUES (8, 2, 'Phòng khép kín', 'Phòng 202', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 2, 0);
INSERT INTO `room` VALUES (9, 2, 'Phòng khép kín ', 'Phòng 203', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 2, 1);
INSERT INTO `room` VALUES (10, 2, 'Phòng khép kín ', 'Phòng 204', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 2, 1);
INSERT INTO `room` VALUES (11, 2, 'Phòng khép kín ', 'Phòng 205', 'số 72-xóm Mới-Nguyên Xá-Bác Từ Liêm-Hà Nội', 2, 1);

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_typeservice` int(11) UNSIGNED NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_typeservice`(`id_typeservice`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service
-- ----------------------------
INSERT INTO `service` VALUES (1, 'Máy lạnh', 1, 1);
INSERT INTO `service` VALUES (2, 'Internet', 2, 1);
INSERT INTO `service` VALUES (3, 'Nước nóng', 3, 0);
INSERT INTO `service` VALUES (4, 'Vệ sinh hàng tháng', 1, 1);

-- ----------------------------
-- Table structure for service_register
-- ----------------------------
DROP TABLE IF EXISTS `service_register`;
CREATE TABLE `service_register`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) UNSIGNED NOT NULL,
  `id_room` int(11) UNSIGNED NOT NULL,
  `created` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_customer`(`id_customer`) USING BTREE,
  INDEX `id_room`(`id_room`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_register
-- ----------------------------
INSERT INTO `service_register` VALUES (1, 1, 1, '2017-10-19 21:37:21');
INSERT INTO `service_register` VALUES (2, 2, 2, '2017-10-11 21:37:45');

-- ----------------------------
-- Table structure for service_register_detail
-- ----------------------------
DROP TABLE IF EXISTS `service_register_detail`;
CREATE TABLE `service_register_detail`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_service_register` int(10) UNSIGNED NOT NULL,
  `id_service` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of service_register_detail
-- ----------------------------
INSERT INTO `service_register_detail` VALUES (1, 1, 1);
INSERT INTO `service_register_detail` VALUES (2, 2, 1);

-- ----------------------------
-- Table structure for type_room
-- ----------------------------
DROP TABLE IF EXISTS `type_room`;
CREATE TABLE `type_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `types` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` double NOT NULL,
  `area` double NOT NULL,
  `postion` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_room
-- ----------------------------
INSERT INTO `type_room` VALUES (1, 'Không khép kín', 700000, 20, 'Tầng 1');
INSERT INTO `type_room` VALUES (2, 'Khép kín', 900000, 30, 'Tầng 2');
INSERT INTO `type_room` VALUES (3, 'Cửa hàng cho thuê', 2000000, 50, 'Mặt tiền');
INSERT INTO `type_room` VALUES (4, 'Khép kín', 900000, 30, 'Tầng 4');
INSERT INTO `type_room` VALUES (5, 'Khép kín', 900000, 30, 'Tầng 5');

-- ----------------------------
-- Table structure for type_service
-- ----------------------------
DROP TABLE IF EXISTS `type_service`;
CREATE TABLE `type_service`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit_price` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_service
-- ----------------------------
INSERT INTO `type_service` VALUES (1, 'Net', 50000);
INSERT INTO `type_service` VALUES (2, 'Máy lạnh', 80000);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0978568958', 1);
INSERT INTO `user` VALUES ('adminvtc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0868907396', 1);
INSERT INTO `user` VALUES ('congnguyenstit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01694996521', 0);

-- ----------------------------
-- Table structure for water_bill
-- ----------------------------
DROP TABLE IF EXISTS `water_bill`;
CREATE TABLE `water_bill`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_bill` int(10) UNSIGNED NOT NULL,
  `created` date NOT NULL,
  `first_index` int(11) UNSIGNED NULL DEFAULT NULL,
  `last_index` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of water_bill
-- ----------------------------
INSERT INTO `water_bill` VALUES (1, 1, '2017-10-27', 1, 31);
INSERT INTO `water_bill` VALUES (2, 2, '2017-10-10', 1, 50);

SET FOREIGN_KEY_CHECKS = 1;
