/*
 Navicat Premium Data Transfer

 Source Server         : chris
 Source Server Type    : MySQL
 Source Server Version : 50560
 Source Host           : localhost:3306
 Source Schema         : datadata

 Target Server Type    : MySQL
 Target Server Version : 50560
 File Encoding         : 65001

 Date: 17/07/2018 16:45:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `tid` int(2) NOT NULL,
  `question` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `optA` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `optB` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `optC` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `optD` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `answer` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (1, '狗的鼻尖为什么经常是湿乎乎的?', '狗常年感骨', '经常喝水而弄湿的', '经常用唾液清洗', '滋润嗅觉细胞的分泌物', 'D');
INSERT INTO `questions` VALUES (2, '美丽的极光多出现在极地上空，这是因为:', '极夜期间天空黑暗', '地球磁场作用的结果', '太阳斜射 极地高层大气', '太阳光反射造成的\r\n', 'B');
INSERT INTO `questions` VALUES (3, '如果用天文望远镜观察太阳，会发现太阳上有小黑点,这些小黑点叫太阳黑子,太阳上为什么有黑子呢?', '被小显体挡住的效果', '太阳黑子是太阳表面温度比较低的地方', '是太阳被其他星体撞伤留下的痕迹', '太阳黑子是太阳表面温度比较高的地方', 'B');
INSERT INTO `questions` VALUES (4, ' 我们每个人每只手都有5根手指，哪根手指上的指甲长得最快呢?', '大拇指上的指甲', '中指上的指甲', '小拇指上的指甲', '无名指上的指甲', 'B');
INSERT INTO `questions` VALUES (5, ' 常温下，下列哪种物质能导电?', '橡皮', '陶瓷', '铅笔芯', '塑料笔', 'C');
INSERT INTO `questions` VALUES (6, '如果眼睛感到疲倦时，主要是哪个部分疲倦了?', '瞳孔', '视网膜', '晶状体', '睫状肌\r\n', 'D');
INSERT INTO `questions` VALUES (7, '晚上，小虫子喜欢围着日光灯飞来飞去，这是因为', '在日光灯旁边比较温暖', '昆虫具有趋光性', '日光灯管点亮时会激发灯管内的化学物质，这些物质对昆虫有吸引力', '方便昆虫捕食', 'B');
INSERT INTO `questions` VALUES (8, '下列的人体认证技术中，精确度最高的是', '指纹认证', '笔迹认证', '虹膜认证', '体液认证', 'C');
INSERT INTO `questions` VALUES (9, '下列哪种情况下最容易引起静电?', '干燥的环境下', '潮湿的环境下', '刚打完闪电之后', '下完雨之后', 'A');
INSERT INTO `questions` VALUES (10, '大气和水被污染时可能引起人的牙齿和骨骼变酥弓起这种污染的元素是', '碘', '氟', '汞', '钙\r\n', 'B');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `id` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `score` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREAT