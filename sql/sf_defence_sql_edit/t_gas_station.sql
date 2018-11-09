/*
Navicat PGSQL Data Transfer

Source Server         : 10.153.96.74
Source Server Version : 100200
Source Host           : 10.153.96.74:5432
Source Database       : sf_dev
Source Schema         : sf_defence

Target Server Type    : PGSQL
Target Server Version : 100200
File Encoding         : 65001

Date: 2018-10-25 09:54:38
*/


-- ----------------------------
-- Table structure for t_gas_station
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_gas_station";
CREATE TABLE "sf_defence"."t_gas_station" (
"RECID" int4,
"NAME" varchar(255) COLLATE "default",
"ADDRESS" varchar(255) COLLATE "default",
"AREA_CODE" varchar(255) COLLATE "default",
"LNG" varchar(255) COLLATE "default",
"LAT" varchar(255) COLLATE "default",
"DANGEROUS_GOODS_CATEGORY" varchar(255) COLLATE "default",
"CONTACTS" varchar(255) COLLATE "default",
"AREA" varchar(255) COLLATE "default",
"PHONE" varchar(255) COLLATE "default",
"EXPANDSION" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_gas_station" IS '燃气站(t_gas_station)';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."RECID" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."NAME" IS '名称';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."ADDRESS" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."AREA_CODE" IS '区域编码';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."LNG" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."LAT" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."DANGEROUS_GOODS_CATEGORY" IS '危险品类别';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."CONTACTS" IS '负责人';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."AREA" IS '区域';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."PHONE" IS '手机号';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."EXPANDSION" IS '扩展';

-- ----------------------------
-- Records of t_gas_station
-- ----------------------------
INSERT INTO "sf_defence"."t_gas_station" VALUES ('1', '广东大鹏液化天然气有限公司', '', '', '114.4425', '22.575', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('1', '广东大鹏液化天然气有限公司', '', '', '114.4425', '22.575', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('2', '深圳市华安液化石油气有限公司', '', '', '114.3862389', '22.61582778', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('2', '深圳市华安液化石油气有限公司', '', '', '114.3862389', '22.61582778', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('3', '深圳市光汇石油化工股份有限公司', '', '', '114.38465', '22.61520278', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('3', '深圳市光汇石油化工股份有限公司', '', '', '114.38465', '22.61520278', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('4', '中国石油化工股份有限公司深圳大鹏湾油库', '', '', '114.3841417', '22.61645833', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('4', '中国石油化工股份有限公司深圳大鹏湾油库', '', '', '114.3841417', '22.61645833', '', '', '大鹏新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('5', '中海油销售深圳有限公司一湾油气库', '', '', '113.899649', '22.471465', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('5', '中海油销售深圳有限公司一湾油气库', '', '', '113.899649', '22.471465', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('6', '深圳中石油美视妈湾油港油库有限公司', '', '', '113.877825', '22.510977', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('6', '深圳中石油美视妈湾油港油库有限公司', 't_building', '', '113.877825', '22.510977', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('7', '深圳市广聚亿升石油化工储运有限公司', '', '', '113.878247', '22.508591', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('7', '深圳市广聚亿升石油化工储运有限公司', '', '', '113.878247', '22.508591', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('8', '深圳市南油石化妈湾油库', '', '', '113.878893', '22.506935', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('8', '深圳市南油石化妈湾油库', '', '', '113.878893', '22.506935', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('9', '深圳市中南石油有限公司赤湾油库', '南山区蛇口赤湾一路', '', '113.899763', '22.479953', '柴油', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('9', '深圳市中南石油有限公司赤湾油库', '南山区蛇口赤湾一路', '', '113.899763', '22.479953', '柴油', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('10', '林德气体（深圳）有限公司', '', '', '113.942091', '22.553269', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('10', '林德气体（深圳）有限公司', '', '', '113.942091', '22.553269', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('11', '深圳南华气体工业有限公司', '', '', '113.944768', '22.56511', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('11', '深圳南华气体工业有限公司', '', '', '113.944768', '22.56511', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('12', '空气化工产品气体（深圳）有限公司', '', '', '113.904901', '22.474099', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('12', '空气化工产品气体（深圳）有限公司', '', '', '113.904901', '22.474099', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('13', '深圳市高发特种气体有限公司', '', '', '113.982185', '22.562246', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('13', '深圳市高发特种气体有限公司', '', '', '113.982185', '22.562246', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('14', '招商局国际冷链（深圳）有限公司华南冷库', '', '', '113.907308', '22.472302', '', '', '西部海区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('14', '招商局国际冷链（深圳）有限公司华南冷库', '', '', '113.907308', '22.472302', '', '', '西部海区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('15', '招商局国际冷链（深圳）有限公司保税冷库', '', '', '113.886068', '22.509808', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('15', '招商局国际冷链（深圳）有限公司保税冷库', '', '', '113.886068', '22.509808', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('16', '深圳市粮食集团有限公司曙光冷库分公司', '', '', '113.959922', '22.569591', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('16', '深圳市粮食集团有限公司曙光冷库分公司', '', '', '113.959922', '22.569591', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('17', '南海油脂工业（赤湾）有限公司', '', '', '113.886824', '22.483037', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('17', '南海油脂工业（赤湾）有限公司', '', '', '113.886824', '22.483037', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('18', '深圳市心胜山明冰厂', '', '', '113.960031', '22.550784', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('18', '深圳市心胜山明冰厂', '', '', '113.960031', '22.550784', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('19', '深圳世界之窗有限公司', '', '', '113.97936', '22.539438', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('19', '深圳世界之窗有限公司', '', '', '113.97936', '22.539438', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('20', '深圳水务（集团）有限公司大涌水厂', '', '', '113.958709', '22.551067', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('20', '深圳水务（集团）有限公司大涌水厂', '', '', '113.958709', '22.551067', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('21', '深圳水务（集团）有限公司南山水厂', '', '', '113.931946', '22.565126', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('21', '深圳水务（集团）有限公司南山水厂', '', '', '113.931946', '22.565126', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('22', '中石化销售有限公司华南分公司深圳输油管理处', '', '', '113.878644', '22.50668', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('22', '中石化销售有限公司华南分公司深圳输油管理处', '', '', '113.878644', '22.50668', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('23', '深圳市固强粘合剂有限公司', '', '', '113.942427', '22.734713', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('23', '深圳市固强粘合剂有限公司', '', '', '113.942427', '22.734713', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('24', '深圳市东明涂料有限公司', '', '', '113.953804', '22.774165', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('24', '深圳市东明涂料有限公司', '', '', '113.953804', '22.774165', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('25', '捷通行粘合制品（深圳）有限公司', '', '', '113.926396', '22.779833', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('25', '捷通行粘合制品（深圳）有限公司', '', '', '113.926396', '22.779833', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('26', '宏峰行化工（深圳）有限公司绿田胶水厂', '', '', '113.940068', '22.792711', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('26', '宏峰行化工（深圳）有限公司绿田胶水厂', '', '', '113.940068', '22.792711', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('27', '深圳市金泳实业发展有限公司', '', '', '113.913286', '22.803906', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('27', '深圳市金泳实业发展有限公司', '', '', '113.913286', '22.803906', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('28', '深圳市顺发贸易有限公司', '', '', '113.891982', '22.742549', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('28', '深圳市顺发贸易有限公司', '', '', '113.891982', '22.742549', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('29', '台大工业气体（深圳）有限公司', '', '', '113.906107', '22.790373', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('29', '台大工业气体（深圳）有限公司', '', '', '113.906107', '22.790373', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('30', '广钢林德气体（深圳）有限公司', '', '', '113.928423', '22.74513', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('30', '广钢林德气体（深圳）有限公司', '', '', '113.928423', '22.74513', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('31', '深圳市圣亚达化工有限公司', '', '', '113.940979', '22.773175', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('31', '深圳市圣亚达化工有限公司', '', '', '113.940979', '22.773175', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('32', '空气化工产品（深圳）有限公司', '', '', '113.93', '22.75', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('32', '空气化工产品（深圳）有限公司', '', '', '113.93', '22.75', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('33', '深圳市晨龙翔实业有限公司', '', '', '113.973102', '22.81608', '', '', '光明', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('33', '深圳市晨龙翔实业有限公司', '', '', '113.973102', '22.81608', '', '', '光明', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('34', '展辰涂料集团股份有限公司', '', '', '113.988136', '22.735219', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('34', '展辰涂料集团股份有限公司', '', '', '113.988136', '22.735219', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('35', '武汉武钢氧气工业气体有限责任公司深圳分公司', '', '', '113.94', '22.72', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('35', '武汉武钢氧气工业气体有限责任公司深圳分公司', '', '', '113.94', '22.72', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('36', '深圳市华特鹏气体有限公司', '', '', '113.991503', '22.74267', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('36', '深圳市华特鹏气体有限公司', '', '', '113.991503', '22.74267', '', '', '光明区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('37', '贺泰科技（深圳）有限公司', '', '', '113.804962', '22.731499', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('37', '贺泰科技（深圳）有限公司', '', '', '113.804962', '22.731499', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('38', '东江环保股份有限公司沙井处理基地', '', '', '113.79', '22.75', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('38', '东江环保股份有限公司沙井处理基地', '', '', '113.79', '22.75', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('39', '中华制漆（深圳）有限公司', '', '', '113.81', '22.75258333', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('39', '中华制漆（深圳）有限公司', '', '', '113.81', '22.75258333', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('40', '深圳大桥化工有限公司', '', '', '113.857817', '22.708516', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('40', '深圳大桥化工有限公司', '', '', '113.857817', '22.708516', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('41', '深圳市宝光工业有限公司', '', '', '113.8572278', '22.72109167', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('41', '深圳市宝光工业有限公司', '', '', '113.8572278', '22.72109167', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('42', '深圳华美迪油墨有限公司', '', '', '113.8422222', '22.71888889', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('42', '深圳华美迪油墨有限公司', '', '', '113.8422222', '22.71888889', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('43', '力高油墨油漆（深圳）有限公司', '', '', '113.845931', '22.714393', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('43', '力高油墨油漆（深圳）有限公司', '', '', '113.845931', '22.714393', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('44', '深圳市旭村化工有限公司', '', '', '113.795482', '22.733778', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('44', '深圳市旭村化工有限公司', '', '', '113.795482', '22.733778', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('45', '深圳市彩虹精细化工股份有限公司', '', '', '113.929145', '22.700705', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('45', '深圳市彩虹精细化工股份有限公司', '', '', '113.929145', '22.700705', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('46', '深圳市永盛辉实业有限公司', '', '', '113.974431', '22.689684', '', '', '龙华新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('46', '深圳市永盛辉实业有限公司', '', '', '113.974431', '22.689684', '', '', '龙华新区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('47', '深圳市嘉康惠宝肉业有限公司', '', '', '113.969158', '22.698111', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('47', '深圳市嘉康惠宝肉业有限公司', '', '', '113.969158', '22.698111', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('48', '深圳市文川实业有限公司', '', '', '113.932071', '22.660959', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('48', '深圳市文川实业有限公司', '', '', '113.932071', '22.660959', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('49', '深圳市空港油料有限公司', '', '', '113.841', '22.627', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('49', '深圳市空港油料有限公司', '', '', '113.841', '22.627', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('50', '深圳承远航空油料有限公司', '', '', '113.842', '22.627', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('50', '深圳承远航空油料有限公司', '', '', '113.842', '22.627', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('51', '深圳市深特工业气体有限公司', '', '', '113.5111', '22.3948', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('51', '深圳市深特工业气体有限公司', '', '', '113.5111', '22.3948', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('52', '深圳市创蓝天化工有限公司', '', '', '113.867606', '22.67809', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('52', '深圳市创蓝天化工有限公司', '', '', '113.867606', '22.67809', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('53', '深圳市美丽华油墨涂料有限公司', '', '', '113.803351', '22.706726', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('53', '深圳市美丽华油墨涂料有限公司', '', '', '113.803351', '22.706726', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('54', '一可油墨涂料（深圳）有限公司', '', '', '113.841911', '22.683949', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('54', '一可油墨涂料（深圳）有限公司', '', '', '113.841911', '22.683949', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('55', '深圳市广田涂料环保有限公司', '', '', '113.813485', '22.69923', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('55', '深圳市广田涂料环保有限公司', '', '', '113.813485', '22.69923', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('56', '兴美涂料（深圳）有限公司', '', '', '113.85133', '22.69316', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('56', '兴美涂料（深圳）有限公司', '', '', '113.85133', '22.69316', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('57', '松辉化工有限公司', '', '', '114.4492472', '23.30532778', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('57', '松辉化工有限公司', '', '', '114.4492472', '23.30532778', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('58', '宏丰伟业化工有限公司', '', '', '113.8369444', '22.78138889', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('58', '宏丰伟业化工有限公司', '', '', '113.8369444', '22.78138889', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('59', '深圳市盟友化工有限公司', '', '', '113.4932', '22.4726', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('59', '深圳市盟友化工有限公司', '', '', '113.4932', '22.4726', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('60', '德信嘉邦涂料（深圳）有限公司', '', '', '113.80493', '22.776598', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('60', '德信嘉邦涂料（深圳）有限公司', '', '', '113.80493', '22.776598', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('61', '深圳富骏材料科技有限公司', '', '', '114.4369083', '23.265575', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('61', '深圳富骏材料科技有限公司', '', '', '114.4369083', '23.265575', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('62', '宝利树脂有限公司', '', '', '113.8423889', '23.37070833', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('62', '宝利树脂有限公司', '', '', '113.8423889', '23.37070833', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('63', '确信爱法金属(深圳)有限公司', '', '', '113.8423889', '22.80447222', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('63', '确信爱法金属(深圳)有限公司', '', '', '113.8423889', '22.80447222', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('64', '合欢山涂料（深圳）有限公司', '', '', '113.858463', '22.7949039', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('64', '合欢山涂料（深圳）有限公司', '', '', '113.858463', '22.7949039', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('65', '铨丰涂料制品（深圳）有限公司', '', '', '113.875402', '22.806692', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('65', '铨丰涂料制品（深圳）有限公司', '', '', '113.875402', '22.806692', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('66', '深圳市晟信达实业有限公司', '', '', '113.8653361', '22.80055833', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('66', '深圳市晟信达实业有限公司', '', '', '113.8653361', '22.80055833', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('67', '深圳市东兴丝印涂料有限公司', '', '', '113.8888889', '22.47', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('67', '深圳市东兴丝印涂料有限公司', '', '', '113.8888889', '22.47', '', '', '南山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('68', '深圳市东江环保产品贸易有限公司', '', '', '114.5193778', '23.21010278', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('68', '深圳市东江环保产品贸易有限公司', '', '', '114.5193778', '23.21010278', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('69', '亿昌兴金属处理材料（深圳）有限公司', '', '', '113.8552778', '22.77305556', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('69', '亿昌兴金属处理材料（深圳）有限公司', '', '', '113.8552778', '22.77305556', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('70', '同兴行新能源开发有限公司', '', '', '113.858127', '22.820132', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('70', '同兴行新能源开发有限公司', '', '', '113.858127', '22.820132', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('71', '深圳市新社实业有限公司', '', '', '113.8521528', '22.81740833', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('71', '深圳市新社实业有限公司', '', '', '113.8521528', '22.81740833', '', '', '宝安区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('72', '深圳青岛啤酒朝日有限公司', '', '', '114.4211222', '23.32960556', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('72', '深圳青岛啤酒朝日有限公司', '', '', '114.4211222', '23.32960556', '', '', '宝安', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('73', '深圳市化轻贸易有限公司              ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('73', '深圳市化轻贸易有限公司              ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('74', '深圳市昭程贸易有限公司              ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('74', '深圳市昭程贸易有限公司              ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('75', '深圳市弘隆发科技有限公司                       ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('75', '深圳市弘隆发科技有限公司                       ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('76', '深圳市富永和实业有限公司            ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('76', '深圳市富永和实业有限公司            ', '', '', '114.127611', '22.560394', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('77', '深圳市华德石油化工股份有限公司         ', '', '', '114.133586', '22.551254', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('77', '深圳市华德石油化工股份有限公司         ', '', '', '114.133586', '22.551254', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('78', '深圳市星银化工有限公司              ', '', '', '114.138093', '22.554638', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('78', '深圳市星银化工有限公司              ', '', '', '114.138093', '22.554638', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('79', '深圳市佳迪达化工有限公司            ', '', '', '114.121009', '22.548537', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('79', '深圳市佳迪达化工有限公司            ', '', '', '114.121009', '22.548537', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('80', '美绿达科技（天津）有限公司深圳分公司                             ', '', '', '114.126176', '22.546849', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('80', '美绿达科技（天津）有限公司深圳分公司                             ', '', '', '114.126176', '22.546849', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('81', '欧宇生国际贸易（上海）有限公司深圳分公司  ', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('81', '欧宇生国际贸易（上海）有限公司深圳分公司  ', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('82', '大日精化贸易（深圳）有限公司', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('82', '大日精化贸易（深圳）有限公司', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('83', '安士澳贸易（深圳）有限公司                  ', '', '', '114.126687', '22.547627', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('83', '安士澳贸易（深圳）有限公司                  ', '', '', '114.126687', '22.547627', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('84', '深圳市宝诚化工实业有限公司                       ', '', '', '114.126176', '22.548154', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('84', '深圳市宝诚化工实业有限公司                       ', '', '', '114.126176', '22.548154', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('85', '深圳日矿商贸有限公司               ', '', '', '114.156395', '22.581934', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('85', '深圳日矿商贸有限公司               ', '', '', '114.156395', '22.581934', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('86', '深圳市深景浪科技有限公司         ', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('86', '深圳市深景浪科技有限公司         ', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('87', '深圳市三美化工贸易有限公司          ', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('87', '深圳市三美化工贸易有限公司          ', '', '', '114.125093', '22.543328', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('88', '深圳市华丰科技有限公司                   ', '', '', '114.119995', '22.545468', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('88', '深圳市华丰科技有限公司                   ', '', '', '114.119995', '22.545468', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('89', '深圳市兰克贸易有限公司              ', '', '', '114.114143', '22.563173', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('89', '深圳市兰克贸易有限公司              ', '', '', '114.114143', '22.563173', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('90', '深圳市南华化工有限公司                ', '', '', '114.114143', '22.563173', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('90', '深圳市南华化工有限公司                ', '', '', '114.114143', '22.563173', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('91', '深圳市金海隆化工有限公司(罗湖)', '', '', '114.114143', '22.563173', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('91', '深圳市金海隆化工有限公司(罗湖)', '', '', '114.114143', '22.563173', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('92', '深圳源圭能源有限公司', '', '', '114.11389', '22.54937', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('92', '深圳源圭能源有限公司', '', '', '114.11389', '22.54937', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('93', '阿波罗展贸科技（深圳）有限公司     ', '', '', '114.115037', '22.546711', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('93', '阿波罗展贸科技（深圳）有限公司     ', '', '', '114.115037', '22.546711', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('94', '深圳市中芙石油化工有限公司          ', '', '', '114.116861', '22.547606', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('94', '深圳市中芙石油化工有限公司          ', '', '', '114.116861', '22.547606', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('95', '深圳市华润化工有限公司              ', '', '', '114.117199', '22.547515', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('95', '深圳市华润化工有限公司              ', '', '', '114.117199', '22.547515', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('96', '吉世科贸易（深圳）有限公司           ', '', '', '114.116292', '22.548647', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('96', '吉世科贸易（深圳）有限公司           ', '', '', '114.116292', '22.548647', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('97', '深圳市水务（集团）有限公司东湖水厂', '', '', '114.152758', '22.577249', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('97', '深圳市水务（集团）有限公司东湖水厂', '', '', '114.152758', '22.577249', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('98', '深圳市水务（集团）有限公司原水泵站管理所', '', '', '114.15562', '22.571574', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('98', '深圳市水务（集团）有限公司原水泵站管理所', '', '', '114.15562', '22.571574', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('99', '深圳市布吉供水有限公司', '', '', '114.16538', '22.601274', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('99', '深圳市布吉供水有限公司', '', '', '114.16538', '22.601274', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('100', '中粮集团（深圳）有限公司', '', '', '114.115467', '22.588177', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('100', '中粮集团（深圳）有限公司', '', '', '114.115467', '22.588177', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('101', '铭基食品有限公司', '', '', '114.117408', '22.589168', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('101', '铭基食品有限公司', '', '', '114.117408', '22.589168', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('102', '深圳市罗湖区合群制冰厂', '', '', '114.184856', '22.564319', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('102', '深圳市罗湖区合群制冰厂', '', '', '114.184856', '22.564319', '', '', '罗湖区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('103', '深圳市凯帆商贸有限公司', '', '', '114.5786111', '23.33388889', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('103', '深圳市凯帆商贸有限公司', '', '', '114.5786111', '23.33388889', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('104', '深圳市三港联化工有限公司', '', '', '114.58', '23.33083333', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('104', '深圳市三港联化工有限公司', '', '', '114.58', '23.33083333', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('105', '万利制漆（深圳）有限公司', '', '', '114.5572222', '23.32166667', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('105', '万利制漆（深圳）有限公司', '', '', '114.5572222', '23.32166667', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('106', '深圳市宇鹏化工有限公司', '', '', '114.5725', '23.32805556', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('106', '深圳市宇鹏化工有限公司', '', '', '114.5725', '23.32805556', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('107', '金英柏化工（深圳）有限公司', '', '', '114.3188889', '22.795', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('107', '金英柏化工（深圳）有限公司', '', '', '114.3188889', '22.795', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('108', '深圳市尚宏化工有限公司', '', '', '114.5502778', '23.34111111', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('108', '深圳市尚宏化工有限公司', '', '', '114.5502778', '23.34111111', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('109', '深圳市欧耐新材股份有限公司', '', '', '114.333409', '22.796258', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('109', '深圳市欧耐新材股份有限公司', '', '', '114.333409', '22.796258', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('110', '深圳市莱克尔化工新材料有限公司', '', '', '114.348189', '22.769275', '', '', '坪山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('110', '深圳市莱克尔化工新材料有限公司', '', '', '114.348189', '22.769275', '', '', '坪山区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('111', '深圳市宝迪化工有限公司', '', '', '114.5838889', '23.29055556', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('111', '深圳市宝迪化工有限公司', '', '', '114.5838889', '23.29055556', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('112', '深圳市美宝涂料有限公司', '', '', '114.2891667', '22.77027778', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('112', '深圳市美宝涂料有限公司', '', '', '114.2891667', '22.77027778', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('113', '深圳市奇士美涂料有限公司', '', '', '114.284985', '22.76222', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('113', '深圳市奇士美涂料有限公司', '', '', '114.284985', '22.76222', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('114', '深圳市田景实业有限公司', '', '', '114.2730556', '22.75888889', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('114', '深圳市田景实业有限公司', '', '', '114.2730556', '22.75888889', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('115', '大埔中奇油漆化工（深圳）有限公司', '', '', '114.2955556', '22.75944444', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('115', '大埔中奇油漆化工（深圳）有限公司', '', '', '114.2955556', '22.75944444', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('116', '深圳市高氏粘合剂制品有限公司', '', '', '114.2741667', '22.75888889', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('116', '深圳市高氏粘合剂制品有限公司', '', '', '114.2741667', '22.75888889', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('117', '深圳市东方达商贸有限公司', '', '', '114.3305556', '22.76333333', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('117', '深圳市东方达商贸有限公司', '', '', '114.3305556', '22.76333333', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('118', '深圳市顾康力化工有限公司', '', '', '114.5761111', '23.33222222', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('118', '深圳市顾康力化工有限公司', '', '', '114.5761111', '23.33222222', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('119', '华润五丰肉类食品（深圳）有限公司龙岗分公司', '', '', '114.2470194', '22.68953611', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('119', '华润五丰肉类食品（深圳）有限公司龙岗分公司', '', '', '114.2470194', '22.68953611', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('120', '深圳市湘航工业气体有限公司', '', '', '114.2413861', '22.68965278', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('120', '深圳市湘航工业气体有限公司', '', '', '114.2413861', '22.68965278', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('121', '深圳市龙腾工业气体有限公司', '', '', '114.2626889', '22.76284722', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('121', '深圳市龙腾工业气体有限公司', '', '', '114.2626889', '22.76284722', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('122', '深圳市友信崧锋实业有限公司', '', '', '114.134391', '22.665745', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('122', '深圳市友信崧锋实业有限公司', '', '', '114.134391', '22.665745', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('123', '深圳市闽鹏程新兴气体有限公司 ', '', '', '114.166377', '22.632317', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('123', '深圳市闽鹏程新兴气体有限公司 ', '', '', '114.166377', '22.632317', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('124', '深圳达利丰涂料有限公司', '', '', '114.326497', '22.732382', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('124', '深圳达利丰涂料有限公司', '', '', '114.326497', '22.732382', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('125', '深圳市万松化工实业有限公司', '', '', '114.31905', '22.739527', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('125', '深圳市万松化工实业有限公司', '', '', '114.31905', '22.739527', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('126', '深圳龙岗永丰化工有限公司', '', '', '114.319111', '22.740333', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('126', '深圳龙岗永丰化工有限公司', '', '', '114.319111', '22.740333', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('127', '深圳市格邦化工有限公司', '', '', '114.330048', '22.722288', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('127', '深圳市格邦化工有限公司', '', '', '114.330048', '22.722288', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('128', '深圳市绿绿达环保有限公司', '', '', '114.3033333', '22.73583333', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('128', '深圳市绿绿达环保有限公司', '', '', '114.3033333', '22.73583333', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('129', '深圳市福安泰实业有限公司', '', '', '114.327227', '22.733404', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('129', '深圳市福安泰实业有限公司', '', '', '114.327227', '22.733404', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('130', '深圳市宏洲气体工业有限公司', '', '', '114.289919', '22.709868', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('130', '深圳市宏洲气体工业有限公司', '', '', '114.289919', '22.709868', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('131', '深圳市圳宽工业气体有限公司', '', '', '114.289587', '22.701252', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('131', '深圳市圳宽工业气体有限公司', '', '', '114.289587', '22.701252', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('132', '深圳市连邦行化工原料有限公司', '', '', '114.3119444', '22.74', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('132', '深圳市连邦行化工原料有限公司', '', '', '114.3119444', '22.74', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('133', '深圳市瑞兴化工原料有限公司', '', '', '114.335919', '22.744425', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('133', '深圳市瑞兴化工原料有限公司', '', '', '114.335919', '22.744425', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('134', '深圳市恒迪源润达实业有限公司', '', '', '114.311524', '22.73715', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('134', '深圳市恒迪源润达实业有限公司', '', '', '114.311524', '22.73715', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('135', '深圳市千木化工有限公司', '', '', '114.2527778', '22.70777778', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('135', '深圳市千木化工有限公司', '', '', '114.2527778', '22.70777778', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('136', '深圳市鸿发化工有限公司', '', '', '114.326149', '22.737792', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('136', '深圳市鸿发化工有限公司', '', '', '114.326149', '22.737792', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('137', '深圳市东港田化工有限公司', '', '', '114.287005', '22.711697', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('137', '深圳市东港田化工有限公司', '', '', '114.287005', '22.711697', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('138', '深圳市顺益霖贸易有限公司', '', '', '114.288291', '22.716148', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('138', '深圳市顺益霖贸易有限公司', '', '', '114.288291', '22.716148', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('139', '万源油品涂料（深圳）有限公司', '', '', '114.139818', '22.670858', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('139', '万源油品涂料（深圳）有限公司', '', '', '114.139818', '22.670858', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('140', '宏昌行涂料（深圳）有限公司', '', '', '114.114523', '22.688573', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('140', '宏昌行涂料（深圳）有限公司', '', '', '114.114523', '22.688573', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('141', '惠华佳彩涂料（深圳）有限公司', '', '', '114.104481', '27.09963', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('141', '惠华佳彩涂料（深圳）有限公司', '', '', '114.104481', '27.09963', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('142', '龙高涂料（深圳）有限公司', '', '', '114.109179', '22.710984', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('142', '龙高涂料（深圳）有限公司', '', '', '114.109179', '22.710984', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('143', '深圳市一亮顺平化工贸易有限公司', '', '', '114.150244', '22.717271', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('143', '深圳市一亮顺平化工贸易有限公司', '', '', '114.150244', '22.717271', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('144', '深圳市横岗西坑长深气体有限公司', '', '', '114.2362', '22.620784', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('144', '深圳市横岗西坑长深气体有限公司', '', '', '114.2362', '22.620784', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('145', '深圳市金海隆化工有限公司', '', '', '114.249842', '22.671005', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('145', '深圳市金海隆化工有限公司', '', '', '114.249842', '22.671005', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('146', '新龙昌兴工业气体贸易有限公司', '', '', '114.113674', '22.648727', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('146', '新龙昌兴工业气体贸易有限公司', '', '', '114.113674', '22.648727', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('147', '深圳市化轻贸易有限公司', '', '', '', '', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('147', '深圳市化轻贸易有限公司', '', '', '', '', '', '', '龙岗', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('148', '深圳市兴喜化工有限公司', '', '', '114.0947', '22.63115', '', '', '龙岗区', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('148', '深圳市兴喜化工有限公司', '', '', '114.0947', '22.63115', '', '', '龙岗区', '', '');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
