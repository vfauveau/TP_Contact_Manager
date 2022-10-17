/*
Navicat MySQL Data Transfer

Source Server         : poe
Source Server Version : 50153
Source Host           : localhost:3307
Source Database       : contactmanager

Target Server Type    : MYSQL
Target Server Version : 50153
File Encoding         : 65001

Date: 2022-10-17 21:51:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adress_infos` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enterprise` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `street_number` int(11) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe07k4jcfdophemi6j1lt84b61` (`user_id`),
  CONSTRAINT `FKe07k4jcfdophemi6j1lt84b61` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('6', null, null, 'ElMarioBros@mail', 'BrosInc', 'Mario', 'Bros', 'aaaaaaa', 'Plumber', 'MushroomLand', '123', '123456', '1', 'MetroCity', '28130', 'France');
INSERT INTO `contact` VALUES ('17', null, null, 'bobbricole@gmail.com', 'Bob enterprise', 'Bob', 'LeBricoleur', '', 'Worker', 'small street', '9', '000000000000', '1', 'BIOT', null, null);
INSERT INTO `contact` VALUES ('19', null, '2022-09-26', 'samuse@mail.com', 'sony', 'leSuper', 'Admin', '', 'bob', 'main street', '5', '546464654645', '12', 'Roma', null, null);
INSERT INTO `contact` VALUES ('20', null, '', 'daniel@craigmail', 'ddddddd', 'Experience 3', 'Sujet 007', '', 'bob', 'rue de chartres', '1', '445645', '12', 'Chartres', null, null);
INSERT INTO `contact` VALUES ('21', null, '', 'qqqqqqqqqqqqqqqqqqq@ggggggg', 'ddddddd', 'marco', 'polo', '', 'bob', 'street', '9', '4564564646', '12', 'France', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `birthdate` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1997-02-05 00:00:00', 'valentinfauveau28@gmail.com', 'Fauveau', 'Valentin', '$2a$10$tisUSAI5lXpgQI61PZKfVeK9FjRkzp2Lo06GRaTtQxGDuXemdR9hy', '000000000000000', 'https://cdn-bmalj.nitrocdn.com/uirOOtSrYrqqUksKHkiSCjZGZlPeXsmk/assets/static/optimized/rev-d225bf7/images/Things-to-Do-in-St-Lucia-Gros-Piton-1423x1067.jpg');
INSERT INTO `user` VALUES ('12', '1981-02-04 21:31:07', 'admin@admin', 'admin', 'admin', '$2a$10$dzVN3Gvmz45oM0uEJSvIDeo5PVlHn7B0qTHd6WVI4w7YDbsg5jBOu', '000000000000000', 'https://media.istockphoto.com/photos/small-people-welcome-greeting-picture-id1171121986?s=612x612');

-- ----------------------------
-- Table structure for `user_contact_list`
-- ----------------------------
DROP TABLE IF EXISTS `user_contact_list`;
CREATE TABLE `user_contact_list` (
  `user_id` bigint(20) NOT NULL,
  `contact_list_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_lw4sv4yp5ho42ukxsm4bmcbhe` (`contact_list_id`),
  KEY `FKky7qhtr8acpi16ecv6556r2ov` (`user_id`),
  CONSTRAINT `FKky7qhtr8acpi16ecv6556r2ov` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKh02hvv6cwa7aodsnd7vtu2w3k` FOREIGN KEY (`contact_list_id`) REFERENCES `contact` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_contact_list
-- ----------------------------
