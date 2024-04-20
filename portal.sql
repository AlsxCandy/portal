/*
 Navicat Premium Data Transfer

 Source Server         : portal
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : portal

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 20/04/2024 15:37:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `article_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章介绍',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容html',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章作者',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布时间',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (1, 'A9PRO ', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/A9PRO/%E8%8B%B1%E6%96%87%E8%AF%A6%E6%83%85/5.jpg', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter: </h5>	<p>			$: 25</p>\r\n			<p>		Model A9: pro ANC	</p>\r\n			<p>		Chip: JL 7003D8	</p>\r\n			<p>		Rated voltage/current: 5V/30mA	</p>\r\n			<p>		Bluetooth version: V5.4	</p>\r\n			<p>		Headphone battery model: 401012, 30mAh	</p>\r\n			<p>		ISM band (2.402-2.480GHZ)	</p>\r\n			<p>		Standby time: 130H	</p>\r\n			<p>		Charging compartment: 500 mAh	</p>\r\n			<p>		Charging time: 1H	</p>\r\n			<p>		Music time: 5-6 hours	</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (2, 'AR06_20 ANC', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/AR06%20ANC.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 12.87				</p>\r\n				 <p>	RMB: 90					</p>\r\n				 <p>	Chip : JL7006 F8		</p>\r\n				 <p>	Bluetooth : V5.4		</p>\r\n				 <p>  Earbuds: 40mAh			</p>\r\n				 <p>  charging case:400mAh		</p>\r\n				 <p>  speaker:Φ13				</p>\r\n				 <p>  play time: 6Hours			</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (3, 'AT68', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/AT68.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5>	 <p>	$: 12.14				</p>\r\n				 <p>	RMB: 85					</p>\r\n				 <p>	Chip: JL 7003D8 		</p>\r\n				 <p>	earbuds battery: 40 mAh	</p>\r\n				 <p>  Charging case battery: 500 mAh			</p>\r\n				 <p>  speaker:Φ13				</p>\r\n				 <p>  play time: 7-8Hours			</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (4, 'DX05', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/DX05.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 5									</p>\r\n				 <p>	RMB: 35									</p>\r\n				 <p>	Chip: JL 7023D							</p>\r\n				 <p>	earbuds battery: 40 mAh					</p>\r\n				 <p>  Charging case battery: 300 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 5Hours							</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (5, 'F9', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/F9.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5><p>	$: 1.75									</p>\r\n				 <p>	RMB: 12									</p>\r\n				 <p>	Chip: JL AC7023D							</p>\r\n				 <p>	earbuds battery: 45 mAh					</p>\r\n				 <p>  Charging case battery: 600 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 5~6Hours							</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (6, 'M19', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/M19.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 2.24									</p>\r\n				 <p>	RMB: 15.7								</p>\r\n				 <p>	Chip: bluetrum 5616							</p>\r\n				 <p>	earbuds battery: 28 mAh					</p>\r\n				 <p>  Charging case battery: 400 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 3Hours							</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (7, 'M25', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/M25.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 2.86									</p>\r\n				 <p>	RMB: 20								</p>\r\n				 <p>	Chip: Jieli / bluetrum 5659T							</p>\r\n				 <p>	earbuds battery: 40 mAh					</p>\r\n				 <p>  Charging case battery: 500 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 3Hours							</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (8, 'M41', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/M41.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 4.43									</p>\r\n				 <p>	RMB: 31								</p>\r\n				 <p>	Chip: Jieli  / bluetrum 5659T							</p>\r\n				 <p>	earbuds battery: 50 mAh					</p>\r\n				 <p>  Charging case battery: 600 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 3Hours							</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (9, 'M60', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/M60.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5>	 <p>	$: 3									</p>\r\n				 <p>	RMB: 21								</p>\r\n				 <p>	Chip: Bluetrum5616							</p>\r\n				 <p>	earbuds battery: 30 mAh					</p>\r\n				 <p>  Charging case battery: 400 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 3~4Hours							</p>', 'Lsx', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (11, 'Mate 50Plus', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/Mate%2050%20Plus.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 4.40									</p>\r\n				 <p>	RMB: 31							</p>\r\n				 <p>	Chip: Bluetrum 5696D							</p>\r\n				 <p>	earbuds battery: 30 mAh					</p>\r\n				 <p>  Charging case battery: 200 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: ANC ON 3 hours							</p>', 'July', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (12, 'Mate 60 SE', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/Mate%2060%20SE.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5><p>	$: 5.30									</p>\r\n				 <p>	RMB: 37						</p>\r\n				 <p>	Chip: Bleutrum 5696D							</p>\r\n				 <p>	earbuds battery: 30 mAh					</p>\r\n				 <p>  Charging case battery: 200 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: ANC ON 3 hours							</p>', 'July', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (13, 'N35', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/N35.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 4									</p>\r\n				 <p>	RMB: 28					</p>\r\n				 <p>	Chip: Jieli AD6983							</p>\r\n				 <p>	earbuds battery: 35 mAh					</p>\r\n				 <p>  Charging case battery: 200 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 4~5 hours							</p>', 'July', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (14, 'S28', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/S28.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5><p>	$: 4.70									</p>\r\n				 <p>	RMB: 33					</p>\r\n				 <p>	Chip: Jieli / bluetrum 5656C							</p>\r\n				 <p>	earbuds battery: 30~ 40mAh					</p>\r\n				 <p>  Charging case battery: 600 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 3 hours							</p>', 'July', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (15, 'SKYGS-5', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/SKYGS-5.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5>	 <p>	$: 3.6									</p>\r\n				 <p>	RMB: 25					</p>\r\n				 <p>	Chip: Jieli AD6983B2							</p>\r\n				 <p>	earbuds battery: 50mAh					</p>\r\n				 <p>  Charging case battery: 800 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 7~8hours							</p>', 'Andi', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (16, 'Y30', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/Y30.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 2.57									</p>\r\n				 <p>	RMB: 18					</p>\r\n				 <p>	Chip:  Jieli 6956							</p>\r\n				 <p>	earbuds battery: 40mAh					</p>\r\n				 <p>  Charging case battery: 350 mAh			</p>\r\n				 <p>  speaker:10mm								</p>\r\n				 <p>  play time: 3hours							</p>', 'Andi', '2024-04-06 18:30:55', 0);
INSERT INTO `t_article` VALUES (17, 'Y80', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/Product_details/Product_details/Y80.png', 'Cost-effective, nicknamed the performance monster', 'Cost-effective, nicknamed the performance monster', '<h5>Product parameter:  </h5> <p>	$: 3.14									</p>\r\n				 <p>	RMB: 22				</p>\r\n				 <p>	Chip:  Jieli AD7023D2							</p>\r\n				 <p>	earbuds battery: 30mAh					</p>\r\n				 <p>  Charging case battery: 180 mAh			</p>\r\n				 <p>  speaker:8mm								</p>\r\n				 <p>  play time: 2~3hours							</p>', 'Andi', '2024-04-06 18:30:55', 0);

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company`  (
  `company_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '公司介绍',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话号码',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '二维码',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`company_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES (1, 'Shenzhen WuZhuQ Electronic Co.,LTD', '     Shenzhen WuZhuQ Electronic Co.,LTD', '13360527236', 'Longgang District, Shenzhen City, Guangdong Province', NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_designer
-- ----------------------------
DROP TABLE IF EXISTS `t_designer`;
CREATE TABLE `t_designer`  (
  `designer_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '设计师id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容html',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '发布时间',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`designer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_designer
-- ----------------------------
INSERT INTO `t_designer` VALUES (1, 'AT68', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%AF%A6%E6%83%85%E9%A1%B5/images/01.jpg', 'Double speaker ANC+ENC', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (2, 'AR05', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/AR06/AR06.jpg', 'ANC+ENC Stereo earbuds', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (3, 'M2', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/M2/%E5%AE%9E%E6%8B%8D/M2-03.png', 'M2 Smart treasure', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (4, 'Bluetooth speaker', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/132%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/01.jpg', '132', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (5, 'G15PRO', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/G15PRO/G15%20Pro/%E7%99%BD%E5%BA%95/%E7%99%BD%E5%BA%95/1-1.jpg', 'G15pro 4G smart watch', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (6, 'GS Ultra 4G', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GS%20Ultra%204G/GS%20Ultra%204G/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%80%8F%E6%98%8E/1-1.png', 'GS Ultra 4G smart watch', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (7, ' GM6', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GM6/GM6/%E4%B8%BB%E5%9B%BE/%E8%8B%B1%E6%96%87/%E4%B8%BB%E5%9B%BE2%EF%BC%88%E8%8B%B1%E6%96%87%EF%BC%89.jpg', 'Round screen smart watch', NULL, '2024-03-29', 0);
INSERT INTO `t_designer` VALUES (8, 'S9Ultra', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/S9Ultra/%E5%AE%9E%E6%8B%8D/S9-Ultra05.png', 'S9Ultra 2.01inch smart watch', NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_example
-- ----------------------------
DROP TABLE IF EXISTS `t_example`;
CREATE TABLE `t_example`  (
  `example_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '案例id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '案例名称',
  `example_type` int(0) NULL DEFAULT NULL COMMENT '案例种类（0，1，2，3，4，5）',
  `image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '案例图片(1-16张)',
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image7` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image8` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image9` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image10` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image11` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image12` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image13` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image14` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image15` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image16` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容',
  `content_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '内容html',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`example_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_example
-- ----------------------------
INSERT INTO `t_example` VALUES (1, 'T68', 0, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%87%911.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%BB%911.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%87%913.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%93%B61.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T68', NULL, '2024-03-30', 0);
INSERT INTO `t_example` VALUES (2, 'AR06', 1, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/AR06/AR06/AR06/%E6%98%BE%E7%A4%BA%E5%B1%8FAR06%285%29/2024_02_26_%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20240126145025/8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AR06', NULL, '2024-03-30', 0);
INSERT INTO `t_example` VALUES (3, 'L4', 2, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/L4%E4%B8%BB%E5%9B%BE/L4%20%E4%B8%BB%E5%9B%BE/L4%20%E4%B8%BB%E5%9B%BE/7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_example` VALUES (4, '288', 3, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/288%E4%B8%BB%E5%9B%BE/288%20%E4%B8%BB%E5%9B%BE%EF%BC%88%E6%96%B0%EF%BC%89%283%29/288%20%E4%B8%BB%E5%9B%BE%EF%BC%88%E6%96%B0%EF%BC%89/1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_example` VALUES (5, '150', 4, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/150%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/1.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/150%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/2.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/150%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/3.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/150%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/150%20%E4%B8%BB%E5%9B%BE/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `t_example` VALUES (6, '146', 5, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/146%E4%B8%BB%E5%9B%BE/146%E4%B8%BB%E5%9B%BE%2B%E8%AF%A6%E6%83%85%E5%9B%BE/146%20%E4%B8%BB%E5%9B%BE/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `t_slideshow`;
CREATE TABLE `t_slideshow`  (
  `slideshow_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`slideshow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_slideshow
-- ----------------------------
INSERT INTO `t_slideshow` VALUES (1, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/slideshow/LCD.jpg', NULL, NULL, 0);
INSERT INTO `t_slideshow` VALUES (2, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/slideshow/%E9%9F%B3%E5%93%8D01.jpg', NULL, NULL, 0);
INSERT INTO `t_slideshow` VALUES (3, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/slideshow/%E9%9F%B3%E5%93%8D03.jpg', NULL, NULL, 0);
INSERT INTO `t_slideshow` VALUES (4, 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/slideshow/%E9%87%91%E9%93%B6.jpg', NULL, NULL, 0);

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `type_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '电梯种类id',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '电梯种类名称',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES (1, 'TWS Wireless earbuds', 0, '2024-03-19');
INSERT INTO `t_type` VALUES (2, 'Smart watch', 0, '2024-03-19');
INSERT INTO `t_type` VALUES (3, 'Bluetooth speaker', 0, '2024-03-19');

-- ----------------------------
-- Table structure for t_type_details
-- ----------------------------
DROP TABLE IF EXISTS `t_type_details`;
CREATE TABLE `t_type_details`  (
  `type_detais_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '种类详情id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标题',
  `image_url1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片',
  `image_url2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image_url5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type_id` int(0) NULL DEFAULT NULL COMMENT '产品类型id',
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '描述内容',
  `create_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`type_detais_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_type_details
-- ----------------------------
INSERT INTO `t_type_details` VALUES (1, 'AT68', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E4%B8%BB%E5%9B%BE/%E4%B8%BB%E5%9B%BE1.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E4%B8%BB%E5%9B%BE/%E4%B8%BB%E5%9B%BE2.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E4%B8%BB%E5%9B%BE/%E4%B8%BB%E5%9B%BE4.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E4%B8%BB%E5%9B%BE/%E4%B8%BB%E5%9B%BE5.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/T68/T68/T68/T68%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%8B%B1%E6%96%87%E7%89%88%E8%AF%A6%E6%83%85%E9%A1%B5/%E8%AF%A6%E6%83%85%E9%A1%B5/images/18.jpg', 1, 'Double speaker ANC+ENC earphone', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (2, 'AR06', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/AR06/AR06.jpg', '', '', '', '', 1, 'ANC+ENC Stereo earbuds', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (3, 'A9PRO', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/A9PRO/%E8%8B%B1%E6%96%87%E8%AF%A6%E6%83%85/5.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/A9PRO/%E8%8B%B1%E6%96%87%E8%AF%A6%E6%83%85/1.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/A9PRO/%E8%8B%B1%E6%96%87%E8%AF%A6%E6%83%85/2.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/A9PRO/%E8%8B%B1%E6%96%87%E8%AF%A6%E6%83%85/3.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/A9PRO/%E8%8B%B1%E6%96%87%E8%AF%A6%E6%83%85/4.jpg', 1, 'M2 Smart treasure', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (4, 'Bluetooth speaker', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/132%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/01.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/132%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/03.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/132%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/04.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/132%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/05.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/132%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/132%20%E4%B8%BB%E5%9B%BE/1.2.jpg', 3, 'Bluetooth speaker', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (5, 'G15PRO', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/G15PRO/G15%20Pro/%E7%99%BD%E5%BA%95/%E9%80%8F%E6%98%8E/1-1.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/G15PRO/G15%20Pro/%E7%99%BD%E5%BA%95/%E9%80%8F%E6%98%8E/1-2.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/G15PRO/G15%20Pro/%E7%99%BD%E5%BA%95/%E9%80%8F%E6%98%8E/1-3.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/G15PRO/G15%20Pro/%E7%99%BD%E5%BA%95/%E9%80%8F%E6%98%8E/2-1.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/G15PRO/G15%20Pro/%E7%99%BD%E5%BA%95/%E9%80%8F%E6%98%8E/2-2.png', 2, 'G15pro 4G smart watch', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (6, 'GS Ultra 4G', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GS%20Ultra%204G/GS%20Ultra%204G/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%80%8F%E6%98%8E/1-1.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GS%20Ultra%204G/GS%20Ultra%204G/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%80%8F%E6%98%8E/1-2.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GS%20Ultra%204G/GS%20Ultra%204G/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%80%8F%E6%98%8E/1-3.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GS%20Ultra%204G/GS%20Ultra%204G/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%80%8F%E6%98%8E/1-4.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GS%20Ultra%204G/GS%20Ultra%204G/%E7%99%BD%E5%BA%95%E5%9B%BE/%E9%80%8F%E6%98%8E/10-1.png', 2, 'GS Ultra 4G smart watch', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (7, 'GM6', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GM6/GM6/%E4%B8%BB%E5%9B%BE/%E8%8B%B1%E6%96%87/%E4%B8%BB%E5%9B%BE1%EF%BC%88%E8%8B%B1%E6%96%87%EF%BC%89.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GM6/GM6/%E4%B8%BB%E5%9B%BE/%E8%8B%B1%E6%96%87/%E4%B8%BB%E5%9B%BE2%EF%BC%88%E8%8B%B1%E6%96%87%EF%BC%89.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GM6/GM6/%E4%B8%BB%E5%9B%BE/%E8%8B%B1%E6%96%87/%E4%B8%BB%E5%9B%BE3%28%E8%8B%B1%E6%96%87%EF%BC%89.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GM6/GM6/%E4%B8%BB%E5%9B%BE/%E8%8B%B1%E6%96%87/%E4%B8%BB%E5%9B%BE4%EF%BC%88%E8%8B%B1%E6%96%87%EF%BC%89.jpg', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/GM6/GM6/%E4%B8%BB%E5%9B%BE/%E8%8B%B1%E6%96%87/%E4%B8%BB%E5%9B%BE5%28%E8%8B%B1%E6%96%87%EF%BC%89.jpg', 2, 'GM6 1.43inch big round screen smart watch', '2024-03-19', 0);
INSERT INTO `t_type_details` VALUES (8, 'S9Ultra', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/S9Ultra/%E5%AE%9E%E6%8B%8D/S9-Ultra01.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/S9Ultra/%E5%AE%9E%E6%8B%8D/S9-Ultra02.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/S9Ultra/%E5%AE%9E%E6%8B%8D/S9-Ultra03.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/S9Ultra/%E5%AE%9E%E6%8B%8D/S9-Ultra04.png', 'https://wuzhuq.oss-cn-shenzhen.aliyuncs.com/S9Ultra/%E5%AE%9E%E6%8B%8D/S9-Ultra05.png', 2, 'S9Ultra 2.01inch smart watch', '2024-03-19', 0);

SET FOREIGN_KEY_CHECKS = 1;
