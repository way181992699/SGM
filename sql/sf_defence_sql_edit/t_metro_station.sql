/*
Navicat PGSQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 100400
Source Host           : localhost:5432
Source Database       : sf_dev
Source Schema         : sf_defence

Target Server Type    : PGSQL
Target Server Version : 100400
File Encoding         : 65001

Date: 2018-11-07 15:54:46
*/


-- ----------------------------
-- Table structure for t_metro_station
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_metro_station";
CREATE TABLE "sf_defence"."t_metro_station" (
"recid" int4 NOT NULL,
"name" varchar(50) COLLATE "default",
"lng" numeric(12,5),
"lat" numeric(12,5),
"line" varchar(10) COLLATE "default",
"code" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of t_metro_station
-- ----------------------------
INSERT INTO "sf_defence"."t_metro_station" VALUES ('2', '后瑞', '113.83567', '22.62893', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('3', '固戍', '113.84718', '22.60088', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('4', '西乡', '113.86268', '22.57550', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('5', '坪洲', '113.87079', '22.56894', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('6', '宝体', '113.88133', '22.56020', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('7', '宝安中心', '113.88729', '22.55456', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('8', '新安', '113.89446', '22.54775', '1', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('9', '前海湾', '113.89822', '22.53709', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('10', '鲤鱼门', '113.90337', '22.53215', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('11', '大新', '113.91522', '22.53215', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('12', '桃园', '113.92480', '22.53232', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('13', '深大', '113.94388', '22.53837', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('14', '高新园', '113.95389', '22.54025', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('15', '白石洲', '113.96699', '22.53977', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('16', '世界之窗', '113.97428', '22.53698', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('17', '华侨城', '113.98530', '22.53354', '1', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('18', '侨城东', '113.99684', '22.53234', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('19', '竹子林', '114.01395', '22.53335', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('20', '车公庙', '114.02676', '22.53618', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('21', '香蜜湖', '114.03863', '22.53889', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('22', '购物公园', '114.05333', '22.53473', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('23', '会展中心', '114.06109', '22.53483', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('24', '岗厦', '114.06803', '22.53503', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('25', '华强路', '114.08519', '22.54046', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('26', '科学馆', '114.09485', '22.54065', '1', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('27', '大剧院', '114.10839', '22.54164', '1', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('28', '老街', '114.11635', '22.54420', '1', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('29', '国贸', '114.11870', '22.53971', '1', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('30', '罗湖', '114.11907', '22.53244', '1', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('31', '赤湾', '113.89759', '22.47936', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('32', '蛇口港', '113.91219', '22.47672', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('33', '海上世界', '113.91517', '22.48526', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('34', '水湾', '113.91980', '22.48858', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('35', '东角头', '113.93110', '22.48629', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('36', '湾厦', '113.93876', '22.49341', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('37', '海月', '113.93776', '22.49994', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('38', '登良', '113.93782', '22.50922', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('39', '后海', '113.94143', '22.51804', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('40', '科苑', '113.94654', '22.52698', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('41', '红树湾', '113.96886', '22.52505', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('42', '世界之窗', '113.97428', '22.53698', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('43', '侨城北', '113.98941', '22.54413', '2', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('44', '深康', '113.99917', '22.54645', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('45', '安托山', '114.00621', '22.54849', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('46', '侨香', '114.01437', '22.54968', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('47', '香蜜', '114.02392', '22.55267', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('48', '香梅北', '114.03347', '22.55364', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('49', '景田', '114.04372', '22.55336', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('50', '莲花西', '114.04968', '22.54694', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('51', '福田', '114.05442', '22.53975', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('52', '市民中心', '114.06132', '22.54110', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('53', '岗厦北', '114.06928', '22.54058', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('54', '华强北', '114.08530', '22.54439', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('55', '燕南', '114.09303', '22.54438', '2', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('56', '大剧院', '114.10839', '22.54164', '2', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('57', '湖贝', '114.12531', '22.54441', '2', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('58', '黄贝岭', '114.13693', '22.54627', '2', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('59', '新秀', '114.14898', '22.54778', '2', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('60', '益田', '114.05160', '22.51613', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('61', '石厦', '114.05369', '22.52334', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('62', '购物公园', '114.05333', '22.53473', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('63', '福田', '114.05442', '22.53975', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('64', '少年宫', '114.06075', '22.54851', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('65', '莲花村', '114.06793', '22.54864', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('66', '华新', '114.08669', '22.54898', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('67', '通岭新', '114.09633', '22.54909', '3', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('68', '红岭', '114.10388', '22.54876', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('69', '老街', '114.11635', '22.54420', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('70', '晒布', '114.12279', '22.54929', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('71', '翠竹', '114.13008', '22.55643', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('72', '田贝', '114.13006', '22.56745', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('73', '水贝', '114.12495', '22.57413', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('74', '草埔', '114.11639', '22.58458', '3', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('75', '布吉', '114.12155', '22.60173', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('76', '大芬', '114.13838', '22.61406', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('77', '丹竹头', '114.14814', '22.61962', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('78', '六约', '114.18095', '22.63423', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('79', '塘坑', '114.19282', '22.63934', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('80', '横岗', '114.20892', '22.64835', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('81', '永湖', '114.21795', '22.65904', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('82', '荷坳', '114.22433', '22.67319', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('83', '大运', '114.22813', '22.68585', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('84', '爱联', '114.23447', '22.69769', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('85', '吉祥', '114.24441', '22.70965', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('86', '龙城广场', '114.25450', '22.71697', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('87', '南联', '114.26579', '22.72199', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('88', '双龙', '114.27758', '22.72879', '3', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('89', '前海湾', '113.89822', '22.53709', '5', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('90', '临海', '113.88906', '22.54390', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('91', '宝华', '113.88499', '22.54973', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('92', '宝安中心', '113.88729', '22.55456', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('93', '翻身', '113.89321', '22.56003', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('94', '灵芝', '113.90445', '22.56938', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('95', '洪浪北', '113.91060', '22.57490', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('96', '兴东', '113.91876', '22.58189', '5', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('97', '留仙洞', '113.94380', '22.58082', '5', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('98', '西丽', '113.95379', '22.58090', '5', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('99', '大学城', '113.96557', '22.58268', '5', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('100', '塘朗', '114.00001', '22.59012', '5', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('101', '长岭坡', '114.01030', '22.59936', '5', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('102', '深圳北', '114.03038', '22.61060', '5', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('103', '民治', '114.04086', '22.61761', '5', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('104', '五和', '114.06076', '22.62688', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('105', '坂田', '114.07085', '22.62740', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('106', '杨美', '114.08008', '22.62671', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('107', '上水径', '114.10550', '22.62166', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('108', '下水径', '114.11078', '22.61489', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('109', '长龙', '114.11405', '22.60792', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('110', '布吉', '114.12155', '22.60173', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('111', '百鸽笼', '114.13027', '22.59550', '5', '594905');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('112', '布心', '114.13803', '22.58109', '5', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('113', '太安', '114.13704', '22.57313', '5', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('114', '怡景', '114.14010', '22.55598', '5', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('115', '黄贝岭', '114.13693', '22.54627', '5', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('116', '西丽湖', '113.96567', '22.59374', '7', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('117', '西丽', '113.95379', '22.58090', '7', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('118', '茶光', '113.95435', '22.57416', '7', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('119', '珠光', '113.96059', '22.56841', '7', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('120', '龙井', '113.97492', '22.56383', '7', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('121', '桃源村', '113.98182', '22.55992', '7', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('122', '深云', '113.99375', '22.55588', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('123', '安托山', '114.00621', '22.54849', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('124', '农林', '114.01838', '22.54044', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('125', '车公庙', '114.02676', '22.53618', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('126', '上沙', '114.03607', '22.52431', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('127', '沙尾', '114.04261', '22.52092', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('128', '石厦', '114.05369', '22.52334', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('129', '皇岗村', '114.05966', '22.52301', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('130', '福民', '114.06484', '22.52315', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('131', '皇岗口岸', '114.07465', '22.52236', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('132', '福邻', '114.08085', '22.52507', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('133', '赤尾', '114.08380', '22.53174', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('134', '华强南', '114.08681', '22.53738', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('135', '华强北', '114.08530', '22.54439', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('136', '华新', '114.08669', '22.54898', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('137', '黄木岗', '114.08648', '22.55524', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('138', '八卦岭', '114.09461', '22.56179', '7', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('139', '红岭北', '114.10430', '22.56201', '7', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('140', '笋岗', '114.11124', '22.56334', '7', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('141', '洪湖', '114.12293', '22.56574', '7', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('142', '田贝', '114.13006', '22.56745', '7', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('143', '太安', '114.13704', '22.57313', '7', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('144', '文锦', '114.13112', '22.54244', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('145', '向西村', '114.12583', '22.53982', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('146', '人民南', '114.11804', '22.53550', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('147', '鹿丹村', '114.10929', '22.53523', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('148', '红岭南', '114.10477', '22.53923', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('149', '红岭', '114.10388', '22.54876', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('150', '园岭', '114.10438', '22.55597', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('151', '红岭北', '114.10430', '22.56201', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('152', '泥岗', '114.09786', '22.56753', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('153', '银湖', '114.08959', '22.56780', '9', '594901');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('154', '孖岭', '114.06835', '22.56845', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('155', '上梅林', '114.05995', '22.56851', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('156', '梅村', '114.05286', '22.56848', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('157', '下梅林', '114.04148', '22.56562', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('158', '梅景', '114.03792', '22.55973', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('159', '景田', '114.04372', '22.55336', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('160', '香梅', '114.03977', '22.54548', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('161', '车公庙', '114.02676', '22.53618', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('162', '下沙', '114.02443', '22.52907', '9', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('163', '深圳湾公园', '113.99267', '22.52150', '9', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('164', '深湾', '113.97855', '22.52323', '9', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('165', '红树湾南', '113.97165', '22.52303', '9', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('166', '碧头', '113.81990', '22.78316', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('167', '松岗', '113.82967', '22.77219', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('168', '后亭', '113.82666', '22.75257', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('169', '沙井', '113.82442', '22.73037', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('170', '马安山', '113.81678', '22.71650', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('171', '塘尾', '113.81786', '22.70230', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('172', '桥头', '113.81090', '22.68803', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('173', '福永', '113.80596', '22.67373', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('174', '机场北', '113.79754', '22.65171', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('175', '机场', '113.81422', '22.62373', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('176', '碧海湾', '113.85626', '22.57507', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('177', '宝安', '113.88060', '22.55472', '11', '594906');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('178', '前海湾', '113.89822', '22.53709', '11', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('179', '南山', '113.92390', '22.52397', '11', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('180', '后海', '113.94143', '22.51804', '11', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('181', '红树湾南', '113.97165', '22.52303', '11', '594903');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('182', '车公庙', '114.02676', '22.53618', '11', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('183', '福田', '114.05442', '22.53975', '11', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('184', '福田口岸', '114.06913', '22.51582', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('185', '福民', '114.06484', '22.52315', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('186', '会展中心', '114.06109', '22.53483', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('187', '市民中心', '114.06132', '22.54110', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('188', '少年宫', '114.06075', '22.54851', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('189', '莲花北', '114.05925', '22.56051', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('190', '下梅林', '114.04148', '22.56562', '4', '594902');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('191', '民乐', '114.04852', '22.59447', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('192', '白石龙', '114.04260', '22.60147', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('193', '深圳北', '114.03038', '22.61060', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('194', '红山', '114.02350', '22.62188', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('195', '上塘', '114.01276', '22.63695', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('196', '龙胜', '114.01242', '22.64483', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('197', '龙华', '114.02259', '22.65185', '4', '594910');
INSERT INTO "sf_defence"."t_metro_station" VALUES ('198', '清湖', '114.03658', '22.66410', '4', '594910');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_metro_station
-- ----------------------------
ALTER TABLE "sf_defence"."t_metro_station" ADD PRIMARY KEY ("recid");
