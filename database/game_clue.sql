/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : murloc_puzzle

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-07-18 09:55:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for murloc_game_clue
-- ----------------------------
DROP TABLE IF EXISTS `murloc_game_clue`;
CREATE TABLE `murloc_game_clue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clue_key` tinyint(2) unsigned DEFAULT '0' COMMENT '线索标识',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tips` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tips_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '张贴位置',
  `qrcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '是否上线',
  `c_time` int(11) DEFAULT NULL,
  `u_time` int(11) DEFAULT NULL,
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of murloc_game_clue
-- ----------------------------
INSERT INTO `murloc_game_clue` VALUES ('3', '1', '寻找带有这个标记的线索卡', '要参加海洋守护者，必须先在水族馆找到鱼人国教官，对接口号：“保护海洋精灵”（——还我蓝灵家园）', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e9456cb638nHz.png', '娃娃鱼', '571876255e7d43b1142af432e26a8b79', '1', '1555653102', '1563333722', '0');
INSERT INTO `murloc_game_clue` VALUES ('4', '2', '寻找带有这个标记的线索卡', '要参加海洋守护者，就先找到NPC，大喊：我要参加活动。3次！不能少，不然NPC不触发被动。', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-13/20190713_5d29954024c36GNk.png', '55', '2d9c605fb1c29e8f74068e7af4f2e088', '1', '1555653250', '1556257127', '1');
INSERT INTO `murloc_game_clue` VALUES ('5', '3', '寻找带有这个标记的线索卡', '搜寻散落的鱼人徽章，那是先知的印记', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e946f74ad9TQ6.png', '小丑鱼', '35f899866eaa4944c6d77186407df226', '1', '1556265195', '1563333745', '0');
INSERT INTO `murloc_game_clue` VALUES ('6', '4', '寻找带有这个标记的线索卡', '要参加海洋守护者，就先找到NPC，大喊：我要参加活动。3次！不能少，不然NPC不触发被动。', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-13/20190713_5d29954024c36GNk.png', null, 'c020e3932ad61bbce2a1ffb55edba81e', '1', '1556265202', '1556265314', '1');
INSERT INTO `murloc_game_clue` VALUES ('7', '5', '寻找带有这个标记的线索卡', '要适应海底的生活，还得寻求鱼人国生活指导员的帮助，对接暗号：“需要你，我是一只鱼”（——水里的空气就是你）', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e94822b39fhqV.png', '狮子鱼', '06ec563ef35efa06a1b5324569dca953', '1', '1556265210', '1563333765', '0');
INSERT INTO `murloc_game_clue` VALUES ('8', '6', '寻找带有这个标记的线索卡', '寻找散落在海底的鱼人徽章——海洋守护者的图腾', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e948de5a8994J.png', '斑海豹', 'a7df98b9d097dd07734301a574fdcd90', '1', '1556265301', '1563333775', '0');
INSERT INTO `murloc_game_clue` VALUES ('9', '7', '寻找带有这个标记的线索卡', '保护海洋，迫在眉睫，不要让人类的眼泪成为地球上最后一滴水。\n是时候前往上层水域了，不要忘了搜集图腾', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e9496ae69cInr.png', '蛋黄水母', 'd3f3fbce03840c7e6330c4a0843f0410', '1', '1556265326', '1563333783', '0');
INSERT INTO `murloc_game_clue` VALUES ('10', '8', '寻找带有这个标记的线索卡', '海龟族是鱼人的智者长老，他们会引导你通向最终的鱼人学院，密语：“我要你陪着我”（——看着那海龟水中游）', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e949e284b9v0A.png', '北极狼', '75666287394c7b5613f70abae10a4e86', '1', '1556265332', '1563333791', '0');
INSERT INTO `murloc_game_clue` VALUES ('11', '9', '寻找带有这个标记的线索卡', '前往鱼人科技馆，完成最后的挑战', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e94a605975NR9.png', '科技馆', '63ffb72c0706d2283ddc24f65b287320', '1', '1556265337', '1563333799', '0');
INSERT INTO `murloc_game_clue` VALUES ('14', '2', '寻找带有这个标记的线索卡', '要参加海洋守护者，就先找到NPC，大喊：我要参加活动。3次！不能少，不然NPC不触发被动。', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-13/20190713_5d29954024c36GNk.png', null, '7c2ed063bfa9a74dab62650718a33c8d', '1', '1563093254', '1563093254', '1');
INSERT INTO `murloc_game_clue` VALUES ('15', '2', '寻找带有这个标记的线索卡', '找到遗落的鱼人徽章，听说它们被散落在历史遗迹中', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e946314f578zb.png', '椰子蟹', 'fc519d305fa55fd1283321a7a92f89ab', '1', '1563093260', '1563333735', '0');
INSERT INTO `murloc_game_clue` VALUES ('16', '3', '寻找带有这个标记的线索卡', '要参加海洋守护者，就先找到NPC，大喊：我要参加活动。3次！不能少，不然NPC不触发被动。', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-13/20190713_5d29954024c36GNk.png', null, '2992fe75d46f43163ca3620231a6de8d', '1', '1563093264', '1563093264', '1');
INSERT INTO `murloc_game_clue` VALUES ('17', '4', '寻找带有这个标记的线索卡', '做得不错，看来你已经掌握了要领，请前往海底继续找寻徽章吧', 'sys/2019-07-13/20190713_5d299596a91a1XBL.png', 'sys/2019-07-17/20190717_5d2e9478a43adSvQ.png', '中华鲟', 'e6736bcf1c6b16d83c4558fa05fdfbd5', '1', '1563093269', '1563333753', '0');
INSERT INTO `murloc_game_clue` VALUES ('28', '0', '暂未启用', null, null, null, null, 'ac9e2967e856513c33336ad22a235280', '0', '1563268380', '1563268380', '0');
INSERT INTO `murloc_game_clue` VALUES ('29', '0', '暂未启用', null, null, null, null, 'a18542c3286a43791796ee32080616c0', '0', '1563268383', '1563268383', '0');
INSERT INTO `murloc_game_clue` VALUES ('30', '0', '暂未启用', null, null, null, null, 'f5a7e71324738fea4405d2cf58aba5dc', '0', '1563268386', '1563268386', '0');
INSERT INTO `murloc_game_clue` VALUES ('31', '0', '暂未启用', null, null, null, null, '56456899c8e1e1c8e5fd42455058a7cc', '0', '1563268389', '1563268389', '0');
INSERT INTO `murloc_game_clue` VALUES ('32', '0', '暂未启用', null, null, null, null, 'ce43f347eb3acee212fec0244fa66aa4', '0', '1563268392', '1563268392', '0');
INSERT INTO `murloc_game_clue` VALUES ('33', '0', '暂未启用', null, null, null, null, 'ed988613f358c265972c0d9c75e6aa74', '0', '1563268395', '1563268395', '0');
INSERT INTO `murloc_game_clue` VALUES ('34', '0', '暂未启用', null, null, null, null, '4a27abf762b3fc6a8a710c2868d44c46', '0', '1563268398', '1563268398', '0');
INSERT INTO `murloc_game_clue` VALUES ('35', '0', '暂未启用', null, null, null, null, 'd167d4c97386279e26338ca284b0a70c', '0', '1563268401', '1563268401', '0');
INSERT INTO `murloc_game_clue` VALUES ('36', '0', '暂未启用', null, null, null, null, 'be12ed0be2e52faa0d114a7dc8b0b1f0', '0', '1563268404', '1563268404', '0');
INSERT INTO `murloc_game_clue` VALUES ('37', '0', '暂未启用', null, null, null, null, 'ae18dd0f8d442aaef0686aac704fcc35', '0', '1563268407', '1563268407', '0');
INSERT INTO `murloc_game_clue` VALUES ('38', '0', '暂未启用', null, null, null, null, '85f59be49e0c556100413a4b76ea4f3f', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('39', '0', '暂未启用', null, null, null, null, '4e46d58111ad90775eb59390bdebf361', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('40', '0', '暂未启用', null, null, null, null, '3ec7d8ddfa09c65b6fa42b739fddb954', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('41', '0', '暂未启用', null, null, null, null, '20cdebbb23cab455d7f6c8b449608927', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('42', '0', '暂未启用', null, null, null, null, '2b9bc43bf3a815a7e9efc09f6b670af6', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('43', '0', '暂未启用', null, null, null, null, 'd165711d786c4e435997a7a74829520b', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('44', '0', '暂未启用', null, null, null, null, '42531c72836ba99f3e3f09876d6b4699', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('45', '0', '暂未启用', null, null, null, null, 'fdb08f7e12cac44e290aba87d15beaa6', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('46', '0', '暂未启用', null, null, null, null, 'b755dda2378fe24ffdd8556475babe53', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('47', '0', '暂未启用', null, null, null, null, 'f41c224009192f6bf7820a56660a8049', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('48', '0', '暂未启用', null, null, null, null, '6b7ac77e796cd62c8787341af261da84', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('49', '0', '暂未启用', null, null, null, null, '8f0f620b2ead8736ca4cf215b034c47d', '0', '1563268455', '1563268455', '0');
INSERT INTO `murloc_game_clue` VALUES ('50', '0', '暂未启用', null, null, null, null, '2d364ba95cb58008506f722286713fff', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('51', '0', '暂未启用', null, null, null, null, 'db31c5889124c200d204a59e6180b0bf', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('52', '0', '暂未启用', null, null, null, null, '6b8170b945feb9145364625b0aa25841', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('53', '0', '暂未启用', null, null, null, null, 'a6ee9db2ecb7ed89998f63b38f04b2c8', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('54', '0', '暂未启用', null, null, null, null, '4a4ec4ea20873c7e4666525499f05ea8', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('55', '0', '暂未启用', null, null, null, null, '555513cad8ce464a539300c095a313e6', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('56', '0', '暂未启用', null, null, null, null, '669ad5a2eafa6fd9b9b9cf5e4572aebe', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('57', '0', '暂未启用', null, null, null, null, '8a44a426ff49a02f0619d29cb4360469', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('58', '0', '暂未启用', null, null, null, null, 'f5acb11cdd87b5752b6680e9f1e64e24', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('59', '0', '暂未启用', null, null, null, null, 'cadb90bedf67dcb608bc7c3f667be6d9', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('60', '0', '暂未启用', null, null, null, null, '719502d215bb1ffe28c5b40f4495fbe5', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('61', '0', '暂未启用', null, null, null, null, 'c51321e13ce6b9937a6a26897ac3b297', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('62', '0', '暂未启用', null, null, null, null, '60a779ac1aaf559e683f625e4fcfa354', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('63', '0', '暂未启用', null, null, null, null, '0c1d1792cd1511155c19cc86169dc9d7', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('64', '0', '暂未启用', null, null, null, null, '3c783a9d5fba2a1233cb02a6682c4baf', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('65', '0', '暂未启用', null, null, null, null, '6b80bf966c866aaf5a9b0359c859235f', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('66', '0', '暂未启用', null, null, null, null, '2b7b67a567943a4e22cf6fc562feee05', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('67', '0', '暂未启用', null, null, null, null, '84ea2ac747b9241a26badd77455d72ef', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('68', '0', '暂未启用', null, null, null, null, 'ba9cf2a780d3c241b4f64a05d9055345', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('69', '0', '暂未启用', null, null, null, null, 'f3cbd80ef1baf3c4b492c1840d2f997f', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('70', '0', '暂未启用', null, null, null, null, '66264bf865ce57456a5d542a6c9a28f8', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('71', '0', '暂未启用', null, null, null, null, 'c60cb2ab9559721e7247a2692fc1c6d7', '0', '1563268456', '1563268456', '0');
INSERT INTO `murloc_game_clue` VALUES ('72', '0', '暂未启用', null, null, null, null, '64de536b3f7173a122c8bbbfcb3d7eda', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('73', '0', '暂未启用', null, null, null, null, '95bea2c612b08bf37aa767c47bf1290f', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('74', '0', '暂未启用', null, null, null, null, '0e1b19abcd65722615dd1148a57267d0', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('75', '0', '暂未启用', null, null, null, null, 'a1ed7e18b56b468ca254e8b2f65e0ca2', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('76', '0', '暂未启用', null, null, null, null, '4c0c7b1b2a12cfff5576540f4c61ca0c', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('77', '0', '暂未启用', null, null, null, null, '8ebe6add2e69bc08399e8fe6b3b7e7a6', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('78', '0', '暂未启用', null, null, null, null, '9346fd4a11cf3574e232f0a6f9151a0f', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('79', '0', '暂未启用', null, null, null, null, '530f3b8c279f3d654a936d29e7c59ace', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('80', '0', '暂未启用', null, null, null, null, '8f0c2901d5b43750079ad281f9d58955', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('81', '0', '暂未启用', null, null, null, null, '03d78f5754b9440243e6b05a0ccedf68', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('82', '0', '暂未启用', null, null, null, null, '14b2788c9f7c3e043011cfed1b89d435', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('83', '0', '暂未启用', null, null, null, null, 'e76e7b60fa4f8e2da84045d0dcd88288', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('84', '0', '暂未启用', null, null, null, null, '8344b73213473259a5ee424ccc59d03a', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('85', '0', '暂未启用', null, null, null, null, '78a2bf834a9cc621ad727bad64de4127', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('86', '0', '暂未启用', null, null, null, null, '52317bfe0a17cdcda9e9532d6c18552e', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('87', '0', '暂未启用', null, null, null, null, '0357fdc89197a0a00a3b6641a3344987', '0', '1563268457', '1563268457', '0');
INSERT INTO `murloc_game_clue` VALUES ('88', '0', '暂未启用', null, null, null, null, '8662e35d8c62f5c051704173a79ada4d', '0', '1563268457', '1563268457', '0');
