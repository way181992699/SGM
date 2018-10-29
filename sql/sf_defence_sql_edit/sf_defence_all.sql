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

Date: 2018-10-25 09:54:30
*/


-- ----------------------------
-- Table structure for t_forest
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_forest";
CREATE TABLE "sf_defence"."t_forest" (
"recid" int4 NOT NULL,
"address" varchar(50) COLLATE "default",
"areacode" varchar(50) COLLATE "default",
"lng" numeric(10,5),
"lat" numeric(10,5),
"occurstime" date,
"strandednumber" varchar(20) COLLATE "default",
"deaths" varchar(20) COLLATE "default",
"injuries" varchar(20) COLLATE "default",
"potentialloss" varchar(50) COLLATE "default",
"contact" varchar(50) COLLATE "default",
"phone" varchar(50) COLLATE "default",
"surveytime" date,
"onspot" char(1) COLLATE "default",
"disasterdegree" varchar(50) COLLATE "default",
"disasterdesc" varchar(255) COLLATE "default",
"expandsion" varchar(255) COLLATE "default",
"code" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_forest" IS '森林防火(t_forest)';
COMMENT ON COLUMN "sf_defence"."t_forest"."recid" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_forest"."address" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_forest"."areacode" IS '区域编号';
COMMENT ON COLUMN "sf_defence"."t_forest"."lng" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_forest"."lat" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_forest"."occurstime" IS '发生时间';
COMMENT ON COLUMN "sf_defence"."t_forest"."strandednumber" IS '受影响人数';
COMMENT ON COLUMN "sf_defence"."t_forest"."deaths" IS '死亡人数';
COMMENT ON COLUMN "sf_defence"."t_forest"."injuries" IS '受伤人数';
COMMENT ON COLUMN "sf_defence"."t_forest"."potentialloss" IS '经济损失';
COMMENT ON COLUMN "sf_defence"."t_forest"."contact" IS '联系人';
COMMENT ON COLUMN "sf_defence"."t_forest"."phone" IS '电话';
COMMENT ON COLUMN "sf_defence"."t_forest"."surveytime" IS '调查时间';
COMMENT ON COLUMN "sf_defence"."t_forest"."onspot" IS '是否到达现场（0或1）';
COMMENT ON COLUMN "sf_defence"."t_forest"."disasterdegree" IS '灾害程度';
COMMENT ON COLUMN "sf_defence"."t_forest"."disasterdesc" IS '描述';
COMMENT ON COLUMN "sf_defence"."t_forest"."expandsion" IS '扩展';
COMMENT ON COLUMN "sf_defence"."t_forest"."code" IS '区域';

-- ----------------------------
-- Records of t_forest
-- ----------------------------
INSERT INTO "sf_defence"."t_forest" VALUES ('1', '龙华新区新田社区林区气站', '440306', '114.0786111', '22.7',null, '', '', '', '', '王发明', '13927499339',null, '', '', '', '', '5949310');
INSERT INTO "sf_defence"."t_forest" VALUES ('2', '龙华新区樟坑径林区气站', '440306', '114.0825', '22.6825', null,'' , '', '', '', '王发明', '13927499339',null, '', '', '', '', '5949310');
INSERT INTO "sf_defence"."t_forest" VALUES ('3', '大鹏新区水头燕鹏煤气站', '440307', '114.4891417', '22.567793', null, '', '', '', '', '朱子力', '13502857553',null, '', '', '', '', '5949311');
INSERT INTO "sf_defence"."t_forest" VALUES ('4', '大鹏新区布新六南煤气站', '440307', '114.4716472', '22.60404', null, '', '', '', '', '朱子力', '13502857553', null, '', '', '', '', '5949311');
INSERT INTO "sf_defence"."t_forest" VALUES ('5', '大鹏新区龙南加油站', '440307', '114.4798333', '22.55444', null, '', '', '', '', '江竹林', '13603056553',null, '', '', '', '', '5949311');
INSERT INTO "sf_defence"."t_forest" VALUES ('6', '大鹏新区南澳煤气站', '440307', '114.4945417', '22.53506', null, '', '', '', '', '江竹林', '13603056553',null, '', '', '', '', '5949311');
INSERT INTO "sf_defence"."t_forest" VALUES ('7', '大鹏新区东山煤气站', '440307', '114.526067', '22.55444', null, '', '', '', '', '江竹林', '13603056553',null, '', '', '', '', '5949311');
INSERT INTO "sf_defence"."t_forest" VALUES ('8', '龙岗区横岗新园路林区油站', '440307', null, null,null, '', '', '', '', '刘群辉', '13823690133', null, '', '', '', '', '');
INSERT INTO "sf_defence"."t_forest" VALUES ('9', '龙岗区溜马石工业区林区油站', '440307', null,null,null, '', '', '', '', '刘群辉', '13823690133', null, '', '', '', '', '');

-- ----------------------------
-- Alter Sequences Owned By
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_forest ----finish
-- ----------------------------
ALTER TABLE "sf_defence"."t_forest" ADD PRIMARY KEY ("recid");





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
-- ----------------------------"lng" numeric(10,5),
-- "lat" numeric(10,5),
DROP TABLE IF EXISTS "sf_defence"."t_gas_station";
CREATE TABLE "sf_defence"."t_gas_station" (
"recid" int4,
"name" varchar(50) COLLATE "default",
"address" varchar(100) COLLATE "default",
"area_code" varchar(50) COLLATE "default",
"lng" numeric(10,5),
"lat" numeric(10,5),
"dangerous_goods_category" varchar(50) COLLATE "default",
"contacts" varchar(50) COLLATE "default",
"code" varchar(20) COLLATE "default",
"phone" varchar(50) COLLATE "default",
"expandsion" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_gas_station" IS '燃气站(t_gas_station)';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."recid" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."name" IS '名称';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."address" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."area_code" IS '区域编码';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."lng" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."lat" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."dangerous_goods_category" IS '危险品类别';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."contacts" IS '负责人';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."code" IS '区域';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."phone" IS '手机号';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."expandsion" IS '扩展';

-- ----------------------------
-- Records of t_gas_station
-- ----------------------------
INSERT INTO "sf_defence"."t_gas_station" VALUES ('1', '广东大鹏液化天然气有限公司', '', '', '114.4425', '22.575', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('1', '广东大鹏液化天然气有限公司', '', '', '114.4425', '22.575', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('2', '深圳市华安液化石油气有限公司', '', '', '114.3862389', '22.61582778', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('2', '深圳市华安液化石油气有限公司', '', '', '114.3862389', '22.61582778', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('3', '深圳市光汇石油化工股份有限公司', '', '', '114.38465', '22.61520278', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('3', '深圳市光汇石油化工股份有限公司', '', '', '114.38465', '22.61520278', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('4', '中国石油化工股份有限公司深圳大鹏湾油库', '', '', '114.3841417', '22.61645833', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('4', '中国石油化工股份有限公司深圳大鹏湾油库', '', '', '114.3841417', '22.61645833', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('5', '中海油销售深圳有限公司一湾油气库', '', '', '113.899649', '22.471465', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('5', '中海油销售深圳有限公司一湾油气库', '', '', '113.899649', '22.471465', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('6', '深圳中石油美视妈湾油港油库有限公司', '', '', '113.877825', '22.510977', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('6', '深圳中石油美视妈湾油港油库有限公司', 't_building', '', '113.877825', '22.510977', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('7', '深圳市广聚亿升石油化工储运有限公司', '', '', '113.878247', '22.508591', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('7', '深圳市广聚亿升石油化工储运有限公司', '', '', '113.878247', '22.508591', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('8', '深圳市南油石化妈湾油库', '', '', '113.878893', '22.506935', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('8', '深圳市南油石化妈湾油库', '', '', '113.878893', '22.506935', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('9', '深圳市中南石油有限公司赤湾油库', '南山区蛇口赤湾一路', '', '113.899763', '22.479953', '柴油', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('9', '深圳市中南石油有限公司赤湾油库', '南山区蛇口赤湾一路', '', '113.899763', '22.479953', '柴油', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('10', '林德气体（深圳）有限公司', '', '', '113.942091', '22.553269', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('10', '林德气体（深圳）有限公司', '', '', '113.942091', '22.553269', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('11', '深圳南华气体工业有限公司', '', '', '113.944768', '22.56511', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('11', '深圳南华气体工业有限公司', '', '', '113.944768', '22.56511', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('12', '空气化工产品气体（深圳）有限公司', '', '', '113.904901', '22.474099', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('12', '空气化工产品气体（深圳）有限公司', '', '', '113.904901', '22.474099', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('13', '深圳市高发特种气体有限公司', '', '', '113.982185', '22.562246', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('13', '深圳市高发特种气体有限公司', '', '', '113.982185', '22.562246', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('14', '招商局国际冷链（深圳）有限公司华南冷库', '', '', '113.907308', '22.472302', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('14', '招商局国际冷链（深圳）有限公司华南冷库', '', '', '113.907308', '22.472302', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('15', '招商局国际冷链（深圳）有限公司保税冷库', '', '', '113.886068', '22.509808', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('15', '招商局国际冷链（深圳）有限公司保税冷库', '', '', '113.886068', '22.509808', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('16', '深圳市粮食集团有限公司曙光冷库分公司', '', '', '113.959922', '22.569591', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('16', '深圳市粮食集团有限公司曙光冷库分公司', '', '', '113.959922', '22.569591', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('17', '南海油脂工业（赤湾）有限公司', '', '', '113.886824', '22.483037', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('17', '南海油脂工业（赤湾）有限公司', '', '', '113.886824', '22.483037', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('18', '深圳市心胜山明冰厂', '', '', '113.960031', '22.550784', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('18', '深圳市心胜山明冰厂', '', '', '113.960031', '22.550784', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('19', '深圳世界之窗有限公司', '', '', '113.97936', '22.539438', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('19', '深圳世界之窗有限公司', '', '', '113.97936', '22.539438', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('20', '深圳水务（集团）有限公司大涌水厂', '', '', '113.958709', '22.551067', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('20', '深圳水务（集团）有限公司大涌水厂', '', '', '113.958709', '22.551067', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('21', '深圳水务（集团）有限公司南山水厂', '', '', '113.931946', '22.565126', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('21', '深圳水务（集团）有限公司南山水厂', '', '', '113.931946', '22.565126', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('22', '中石化销售有限公司华南分公司深圳输油管理处', '', '', '113.878644', '22.50668', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('22', '中石化销售有限公司华南分公司深圳输油管理处', '', '', '113.878644', '22.50668', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('23', '深圳市固强粘合剂有限公司', '', '', '113.942427', '22.734713', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('23', '深圳市固强粘合剂有限公司', '', '', '113.942427', '22.734713', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('24', '深圳市东明涂料有限公司', '', '', '113.953804', '22.774165', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('24', '深圳市东明涂料有限公司', '', '', '113.953804', '22.774165', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('25', '捷通行粘合制品（深圳）有限公司', '', '', '113.926396', '22.779833', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('25', '捷通行粘合制品（深圳）有限公司', '', '', '113.926396', '22.779833', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('26', '宏峰行化工（深圳）有限公司绿田胶水厂', '', '', '113.940068', '22.792711', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('26', '宏峰行化工（深圳）有限公司绿田胶水厂', '', '', '113.940068', '22.792711', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('27', '深圳市金泳实业发展有限公司', '', '', '113.913286', '22.803906', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('27', '深圳市金泳实业发展有限公司', '', '', '113.913286', '22.803906', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('28', '深圳市顺发贸易有限公司', '', '', '113.891982', '22.742549', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('28', '深圳市顺发贸易有限公司', '', '', '113.891982', '22.742549', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('29', '台大工业气体（深圳）有限公司', '', '', '113.906107', '22.790373', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('29', '台大工业气体（深圳）有限公司', '', '', '113.906107', '22.790373', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('30', '广钢林德气体（深圳）有限公司', '', '', '113.928423', '22.74513', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('30', '广钢林德气体（深圳）有限公司', '', '', '113.928423', '22.74513', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('31', '深圳市圣亚达化工有限公司', '', '', '113.940979', '22.773175', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('31', '深圳市圣亚达化工有限公司', '', '', '113.940979', '22.773175', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('32', '空气化工产品（深圳）有限公司', '', '', '113.93', '22.75', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('32', '空气化工产品（深圳）有限公司', '', '', '113.93', '22.75', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('33', '深圳市晨龙翔实业有限公司', '', '', '113.973102', '22.81608', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('33', '深圳市晨龙翔实业有限公司', '', '', '113.973102', '22.81608', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('34', '展辰涂料集团股份有限公司', '', '', '113.988136', '22.735219', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('34', '展辰涂料集团股份有限公司', '', '', '113.988136', '22.735219', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('35', '武汉武钢氧气工业气体有限责任公司深圳分公司', '', '', '113.94', '22.72', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('35', '武汉武钢氧气工业气体有限责任公司深圳分公司', '', '', '113.94', '22.72', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('36', '深圳市华特鹏气体有限公司', '', '', '113.991503', '22.74267', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('36', '深圳市华特鹏气体有限公司', '', '', '113.991503', '22.74267', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('37', '贺泰科技（深圳）有限公司', '', '', '113.804962', '22.731499', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('37', '贺泰科技（深圳）有限公司', '', '', '113.804962', '22.731499', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('38', '东江环保股份有限公司沙井处理基地', '', '', '113.79', '22.75', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('38', '东江环保股份有限公司沙井处理基地', '', '', '113.79', '22.75', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('39', '中华制漆（深圳）有限公司', '', '', '113.81', '22.75258333', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('39', '中华制漆（深圳）有限公司', '', '', '113.81', '22.75258333', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('40', '深圳大桥化工有限公司', '', '', '113.857817', '22.708516', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('40', '深圳大桥化工有限公司', '', '', '113.857817', '22.708516', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('41', '深圳市宝光工业有限公司', '', '', '113.8572278', '22.72109167', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('41', '深圳市宝光工业有限公司', '', '', '113.8572278', '22.72109167', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('42', '深圳华美迪油墨有限公司', '', '', '113.8422222', '22.71888889', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('42', '深圳华美迪油墨有限公司', '', '', '113.8422222', '22.71888889', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('43', '力高油墨油漆（深圳）有限公司', '', '', '113.845931', '22.714393', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('43', '力高油墨油漆（深圳）有限公司', '', '', '113.845931', '22.714393', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('44', '深圳市旭村化工有限公司', '', '', '113.795482', '22.733778', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('44', '深圳市旭村化工有限公司', '', '', '113.795482', '22.733778', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('45', '深圳市彩虹精细化工股份有限公司', '', '', '113.929145', '22.700705', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('45', '深圳市彩虹精细化工股份有限公司', '', '', '113.929145', '22.700705', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('46', '深圳市永盛辉实业有限公司', '', '', '113.974431', '22.689684', '', '', '5949310', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('46', '深圳市永盛辉实业有限公司', '', '', '113.974431', '22.689684', '', '', '5949310', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('47', '深圳市嘉康惠宝肉业有限公司', '', '', '113.969158', '22.698111', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('47', '深圳市嘉康惠宝肉业有限公司', '', '', '113.969158', '22.698111', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('48', '深圳市文川实业有限公司', '', '', '113.932071', '22.660959', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('48', '深圳市文川实业有限公司', '', '', '113.932071', '22.660959', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('49', '深圳市空港油料有限公司', '', '', '113.841', '22.627', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('49', '深圳市空港油料有限公司', '', '', '113.841', '22.627', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('50', '深圳承远航空油料有限公司', '', '', '113.842', '22.627', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('50', '深圳承远航空油料有限公司', '', '', '113.842', '22.627', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('51', '深圳市深特工业气体有限公司', '', '', '113.5111', '22.3948', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('51', '深圳市深特工业气体有限公司', '', '', '113.5111', '22.3948', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('52', '深圳市创蓝天化工有限公司', '', '', '113.867606', '22.67809', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('52', '深圳市创蓝天化工有限公司', '', '', '113.867606', '22.67809', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('53', '深圳市美丽华油墨涂料有限公司', '', '', '113.803351', '22.706726', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('53', '深圳市美丽华油墨涂料有限公司', '', '', '113.803351', '22.706726', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('54', '一可油墨涂料（深圳）有限公司', '', '', '113.841911', '22.683949', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('54', '一可油墨涂料（深圳）有限公司', '', '', '113.841911', '22.683949', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('55', '深圳市广田涂料环保有限公司', '', '', '113.813485', '22.69923', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('55', '深圳市广田涂料环保有限公司', '', '', '113.813485', '22.69923', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('56', '兴美涂料（深圳）有限公司', '', '', '113.85133', '22.69316', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('56', '兴美涂料（深圳）有限公司', '', '', '113.85133', '22.69316', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('57', '松辉化工有限公司', '', '', '114.4492472', '23.30532778', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('57', '松辉化工有限公司', '', '', '114.4492472', '23.30532778', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('58', '宏丰伟业化工有限公司', '', '', '113.8369444', '22.78138889', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('58', '宏丰伟业化工有限公司', '', '', '113.8369444', '22.78138889', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('59', '深圳市盟友化工有限公司', '', '', '113.4932', '22.4726', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('59', '深圳市盟友化工有限公司', '', '', '113.4932', '22.4726', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('60', '德信嘉邦涂料（深圳）有限公司', '', '', '113.80493', '22.776598', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('60', '德信嘉邦涂料（深圳）有限公司', '', '', '113.80493', '22.776598', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('61', '深圳富骏材料科技有限公司', '', '', '114.4369083', '23.265575', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('61', '深圳富骏材料科技有限公司', '', '', '114.4369083', '23.265575', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('62', '宝利树脂有限公司', '', '', '113.8423889', '23.37070833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('62', '宝利树脂有限公司', '', '', '113.8423889', '23.37070833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('63', '确信爱法金属(深圳)有限公司', '', '', '113.8423889', '22.80447222', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('63', '确信爱法金属(深圳)有限公司', '', '', '113.8423889', '22.80447222', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('64', '合欢山涂料（深圳）有限公司', '', '', '113.858463', '22.7949039', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('64', '合欢山涂料（深圳）有限公司', '', '', '113.858463', '22.7949039', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('65', '铨丰涂料制品（深圳）有限公司', '', '', '113.875402', '22.806692', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('65', '铨丰涂料制品（深圳）有限公司', '', '', '113.875402', '22.806692', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('66', '深圳市晟信达实业有限公司', '', '', '113.8653361', '22.80055833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('66', '深圳市晟信达实业有限公司', '', '', '113.8653361', '22.80055833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('67', '深圳市东兴丝印涂料有限公司', '', '', '113.8888889', '22.47', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('67', '深圳市东兴丝印涂料有限公司', '', '', '113.8888889', '22.47', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('68', '深圳市东江环保产品贸易有限公司', '', '', '114.5193778', '23.21010278', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('68', '深圳市东江环保产品贸易有限公司', '', '', '114.5193778', '23.21010278', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('69', '亿昌兴金属处理材料（深圳）有限公司', '', '', '113.8552778', '22.77305556', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('69', '亿昌兴金属处理材料（深圳）有限公司', '', '', '113.8552778', '22.77305556', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('70', '同兴行新能源开发有限公司', '', '', '113.858127', '22.820132', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('70', '同兴行新能源开发有限公司', '', '', '113.858127', '22.820132', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('71', '深圳市新社实业有限公司', '', '', '113.8521528', '22.81740833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('71', '深圳市新社实业有限公司', '', '', '113.8521528', '22.81740833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('72', '深圳青岛啤酒朝日有限公司', '', '', '114.4211222', '23.32960556', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('72', '深圳青岛啤酒朝日有限公司', '', '', '114.4211222', '23.32960556', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('73', '深圳市化轻贸易有限公', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('73', '深圳市化轻贸易有限公', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('74', '深圳市昭程贸易有限公', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('74', '深圳市昭程贸易有限公', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('75', '深圳市弘隆发科技有限公司', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('75', '深圳市弘隆发科技有限公司', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('76', '深圳市富永和实业有限公司', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('76', '深圳市富永和实业有限公司', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('77', '深圳市华德石油化工股份有限公司', '', '', '114.133586', '22.551254', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('77', '深圳市华德石油化工股份有限公司', '', '', '114.133586', '22.551254', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('78', '深圳市星银化工有限公', '', '', '114.138093', '22.554638', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('78', '深圳市星银化工有限公', '', '', '114.138093', '22.554638', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('79', '深圳市佳迪达化工有限公司', '', '', '114.121009', '22.548537', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('79', '深圳市佳迪达化工有限公司', '', '', '114.121009', '22.548537', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('80', '美绿达科技（天津）有限公司深圳分公司', '', '', '114.126176', '22.546849', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('80', '美绿达科技（天津）有限公司深圳分公司', '', '', '114.126176', '22.546849', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('81', '欧宇生国际贸易（上海）有限公司深圳分公司  ', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('81', '欧宇生国际贸易（上海）有限公司深圳分公司  ', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('82', '大日精化贸易（深圳）有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('82', '大日精化贸易（深圳）有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('83', '安士澳贸易（深圳）有限公司', '', '', '114.126687', '22.547627', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('83', '安士澳贸易（深圳）有限公司', '', '', '114.126687', '22.547627', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('84', '深圳市宝诚化工实业有限公司', '', '', '114.126176', '22.548154', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('84', '深圳市宝诚化工实业有限公司', '', '', '114.126176', '22.548154', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('85', '深圳日矿商贸有限公司', '', '', '114.156395', '22.581934', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('85', '深圳日矿商贸有限公司', '', '', '114.156395', '22.581934', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('86', '深圳市深景浪科技有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('86', '深圳市深景浪科技有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('87', '深圳市三美化工贸易有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('87', '深圳市三美化工贸易有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('88', '深圳市华丰科技有限公司', '', '', '114.119995', '22.545468', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('88', '深圳市华丰科技有限公司', '', '', '114.119995', '22.545468', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('89', '深圳市兰克贸易有限公', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('89', '深圳市兰克贸易有限公', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('90', '深圳市南华化工有限公司 ', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('90', '深圳市南华化工有限公司 ', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('91', '深圳市金海隆化工有限公司(罗湖)', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('91', '深圳市金海隆化工有限公司(罗湖)', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('92', '深圳源圭能源有限公司', '', '', '114.11389', '22.54937', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('92', '深圳源圭能源有限公司', '', '', '114.11389', '22.54937', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('93', '阿波罗展贸科技（深圳）有限公司     ', '', '', '114.115037', '22.546711', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('93', '阿波罗展贸科技（深圳）有限公司     ', '', '', '114.115037', '22.546711', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('94', '深圳市中芙石油化工有限公司', '', '', '114.116861', '22.547606', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('94', '深圳市中芙石油化工有限公司', '', '', '114.116861', '22.547606', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('95', '深圳市华润化工有限公', '', '', '114.117199', '22.547515', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('95', '深圳市华润化工有限公', '', '', '114.117199', '22.547515', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('96', '吉世科贸易（深圳）有限公司', '', '', '114.116292', '22.548647', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('96', '吉世科贸易（深圳）有限公司', '', '', '114.116292', '22.548647', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('97', '深圳市水务（集团）有限公司东湖水厂', '', '', '114.152758', '22.577249', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('97', '深圳市水务（集团）有限公司东湖水厂', '', '', '114.152758', '22.577249', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('98', '深圳市水务（集团）有限公司原水泵站管理所', '', '', '114.15562', '22.571574', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('98', '深圳市水务（集团）有限公司原水泵站管理所', '', '', '114.15562', '22.571574', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('99', '深圳市布吉供水有限公司', '', '', '114.16538', '22.601274', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('99', '深圳市布吉供水有限公司', '', '', '114.16538', '22.601274', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('100', '中粮集团（深圳）有限公司', '', '', '114.115467', '22.588177', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('100', '中粮集团（深圳）有限公司', '', '', '114.115467', '22.588177', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('101', '铭基食品有限公司', '', '', '114.117408', '22.589168', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('101', '铭基食品有限公司', '', '', '114.117408', '22.589168', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('102', '深圳市罗湖区合群制冰厂', '', '', '114.184856', '22.564319', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('102', '深圳市罗湖区合群制冰厂', '', '', '114.184856', '22.564319', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('103', '深圳市凯帆商贸有限公司', '', '', '114.5786111', '23.33388889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('103', '深圳市凯帆商贸有限公司', '', '', '114.5786111', '23.33388889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('104', '深圳市三港联化工有限公司', '', '', '114.58', '23.33083333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('104', '深圳市三港联化工有限公司', '', '', '114.58', '23.33083333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('105', '万利制漆（深圳）有限公司', '', '', '114.5572222', '23.32166667', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('105', '万利制漆（深圳）有限公司', '', '', '114.5572222', '23.32166667', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('106', '深圳市宇鹏化工有限公司', '', '', '114.5725', '23.32805556', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('106', '深圳市宇鹏化工有限公司', '', '', '114.5725', '23.32805556', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('107', '金英柏化工（深圳）有限公司', '', '', '114.3188889', '22.795', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('107', '金英柏化工（深圳）有限公司', '', '', '114.3188889', '22.795', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('108', '深圳市尚宏化工有限公司', '', '', '114.5502778', '23.34111111', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('108', '深圳市尚宏化工有限公司', '', '', '114.5502778', '23.34111111', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('109', '深圳市欧耐新材股份有限公司', '', '', '114.333409', '22.796258', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('109', '深圳市欧耐新材股份有限公司', '', '', '114.333409', '22.796258', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('110', '深圳市莱克尔化工新材料有限公司', '', '', '114.348189', '22.769275', '', '', '5949308', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('110', '深圳市莱克尔化工新材料有限公司', '', '', '114.348189', '22.769275', '', '', '5949308', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('111', '深圳市宝迪化工有限公司', '', '', '114.5838889', '23.29055556', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('111', '深圳市宝迪化工有限公司', '', '', '114.5838889', '23.29055556', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('112', '深圳市美宝涂料有限公司', '', '', '114.2891667', '22.77027778', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('112', '深圳市美宝涂料有限公司', '', '', '114.2891667', '22.77027778', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('113', '深圳市奇士美涂料有限公司', '', '', '114.284985', '22.76222', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('113', '深圳市奇士美涂料有限公司', '', '', '114.284985', '22.76222', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('114', '深圳市田景实业有限公司', '', '', '114.2730556', '22.75888889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('114', '深圳市田景实业有限公司', '', '', '114.2730556', '22.75888889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('115', '大埔中奇油漆化工（深圳）有限公司', '', '', '114.2955556', '22.75944444', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('115', '大埔中奇油漆化工（深圳）有限公司', '', '', '114.2955556', '22.75944444', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('116', '深圳市高氏粘合剂制品有限公司', '', '', '114.2741667', '22.75888889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('116', '深圳市高氏粘合剂制品有限公司', '', '', '114.2741667', '22.75888889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('117', '深圳市东方达商贸有限公司', '', '', '114.3305556', '22.76333333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('117', '深圳市东方达商贸有限公司', '', '', '114.3305556', '22.76333333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('118', '深圳市顾康力化工有限公司', '', '', '114.5761111', '23.33222222', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('118', '深圳市顾康力化工有限公司', '', '', '114.5761111', '23.33222222', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('119', '华润五丰肉类食品（深圳）有限公司龙岗分公司', '', '', '114.2470194', '22.68953611', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('119', '华润五丰肉类食品（深圳）有限公司龙岗分公司', '', '', '114.2470194', '22.68953611', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('120', '深圳市湘航工业气体有限公司', '', '', '114.2413861', '22.68965278', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('120', '深圳市湘航工业气体有限公司', '', '', '114.2413861', '22.68965278', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('121', '深圳市龙腾工业气体有限公司', '', '', '114.2626889', '22.76284722', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('121', '深圳市龙腾工业气体有限公司', '', '', '114.2626889', '22.76284722', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('122', '深圳市友信崧锋实业有限公司', '', '', '114.134391', '22.665745', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('122', '深圳市友信崧锋实业有限公司', '', '', '114.134391', '22.665745', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('123', '深圳市闽鹏程新兴气体有限公司 ', '', '', '114.166377', '22.632317', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('123', '深圳市闽鹏程新兴气体有限公司 ', '', '', '114.166377', '22.632317', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('124', '深圳达利丰涂料有限公司', '', '', '114.326497', '22.732382', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('124', '深圳达利丰涂料有限公司', '', '', '114.326497', '22.732382', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('125', '深圳市万松化工实业有限公司', '', '', '114.31905', '22.739527', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('125', '深圳市万松化工实业有限公司', '', '', '114.31905', '22.739527', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('126', '深圳龙岗永丰化工有限公司', '', '', '114.319111', '22.740333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('126', '深圳龙岗永丰化工有限公司', '', '', '114.319111', '22.740333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('127', '深圳市格邦化工有限公司', '', '', '114.330048', '22.722288', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('127', '深圳市格邦化工有限公司', '', '', '114.330048', '22.722288', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('128', '深圳市绿绿达环保有限公司', '', '', '114.3033333', '22.73583333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('128', '深圳市绿绿达环保有限公司', '', '', '114.3033333', '22.73583333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('129', '深圳市福安泰实业有限公司', '', '', '114.327227', '22.733404', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('129', '深圳市福安泰实业有限公司', '', '', '114.327227', '22.733404', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('130', '深圳市宏洲气体工业有限公司', '', '', '114.289919', '22.709868', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('130', '深圳市宏洲气体工业有限公司', '', '', '114.289919', '22.709868', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('131', '深圳市圳宽工业气体有限公司', '', '', '114.289587', '22.701252', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('131', '深圳市圳宽工业气体有限公司', '', '', '114.289587', '22.701252', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('132', '深圳市连邦行化工原料有限公司', '', '', '114.3119444', '22.74', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('132', '深圳市连邦行化工原料有限公司', '', '', '114.3119444', '22.74', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('133', '深圳市瑞兴化工原料有限公司', '', '', '114.335919', '22.744425', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('133', '深圳市瑞兴化工原料有限公司', '', '', '114.335919', '22.744425', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('134', '深圳市恒迪源润达实业有限公司', '', '', '114.311524', '22.73715', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('134', '深圳市恒迪源润达实业有限公司', '', '', '114.311524', '22.73715', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('135', '深圳市千木化工有限公司', '', '', '114.2527778', '22.70777778', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('135', '深圳市千木化工有限公司', '', '', '114.2527778', '22.70777778', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('136', '深圳市鸿发化工有限公司', '', '', '114.326149', '22.737792', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('136', '深圳市鸿发化工有限公司', '', '', '114.326149', '22.737792', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('137', '深圳市东港田化工有限公司', '', '', '114.287005', '22.711697', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('137', '深圳市东港田化工有限公司', '', '', '114.287005', '22.711697', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('138', '深圳市顺益霖贸易有限公司', '', '', '114.288291', '22.716148', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('138', '深圳市顺益霖贸易有限公司', '', '', '114.288291', '22.716148', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('139', '万源油品涂料（深圳）有限公司', '', '', '114.139818', '22.670858', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('139', '万源油品涂料（深圳）有限公司', '', '', '114.139818', '22.670858', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('140', '宏昌行涂料（深圳）有限公司', '', '', '114.114523', '22.688573', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('140', '宏昌行涂料（深圳）有限公司', '', '', '114.114523', '22.688573', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('141', '惠华佳彩涂料（深圳）有限公司', '', '', '114.104481', '27.09963', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('141', '惠华佳彩涂料（深圳）有限公司', '', '', '114.104481', '27.09963', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('142', '龙高涂料（深圳）有限公司', '', '', '114.109179', '22.710984', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('142', '龙高涂料（深圳）有限公司', '', '', '114.109179', '22.710984', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('143', '深圳市一亮顺平化工贸易有限公司', '', '', '114.150244', '22.717271', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('143', '深圳市一亮顺平化工贸易有限公司', '', '', '114.150244', '22.717271', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('144', '深圳市横岗西坑长深气体有限公司', '', '', '114.2362', '22.620784', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('144', '深圳市横岗西坑长深气体有限公司', '', '', '114.2362', '22.620784', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('145', '深圳市金海隆化工有限公司', '', '', '114.249842', '22.671005', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('145', '深圳市金海隆化工有限公司', '', '', '114.249842', '22.671005', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('146', '新龙昌兴工业气体贸易有限公司', '', '', '114.113674', '22.648727', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('146', '新龙昌兴工业气体贸易有限公司', '', '', '114.113674', '22.648727', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('147', '深圳市化轻贸易有限公司', '', '', '', '', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('147', '深圳市化轻贸易有限公司', '', '', '', '', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('148', '深圳市兴喜化工有限公司', '', '', '114.0947', '22.63115', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('148', '深圳市兴喜化工有限公司', '', '', '114.0947', '22.63115', '', '', '5949305', '', '');

-- ----------------------------
-- Alter Sequences Owned By --finish!!!!!!!!
-- ----------------------------
ALTER TABLE "sf_defence"."t_gas_station" ADD PRIMARY KEY ("recid");





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

Date: 2018-10-25 09:54:45
*/


-- ----------------------------
-- Table structure for t_geo_hazard
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_geo_hazard";
CREATE TABLE "sf_defence"."t_geo_hazard" (
"recid" int4,
"name" varchar(50) COLLATE "default",
"street" varchar(50) COLLATE "default",
"lat" numeric(10,5),
"lng" numeric(10,5),
"slopelength" varchar(20) COLLATE "default",
"slopeheight" varchar(20) COLLATE "default",
"slopes" varchar(20) COLLATE "default",
"threatobject" varchar(50) COLLATE "default",
"threatnumber" varchar(20) COLLATE "default",
"potentialloss" varchar(20) COLLATE "default",
"grade" varchar(20) COLLATE "default",
"preresponsibilityunit" varchar(50) COLLATE "default",
"contact" varchar(50) COLLATE "default",
"phone" varchar(50) COLLATE "default",
"govresponsibilityunit" varchar(50) COLLATE "default",
"superdept" varchar(50) COLLATE "default",
"countermeasures" varchar(255) COLLATE "default",
"slopeclass" varchar(50) COLLATE "default",
"code" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_geo_hazard" IS '地质灾害(t_geo_hazard)';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."recid" IS '记录号ID';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."name" IS '隐患点名称';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."street" IS '所在街道';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."lat" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."lng" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."slopelength" IS '坡长(m)	';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."slopeheight" IS '坡高(m)	';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."slopes" IS '坡度(°)';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."threatobject" IS '威胁对象';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."threatnumber" IS '威胁人数';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."potentialloss" IS '潜在经济损失（万元）';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."grade" IS '隐患等级';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."preresponsibilityunit" IS '监测预防责任单位';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."contact" IS '预防联系人';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."phone" IS '联系电话	';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."govresponsibilityunit" IS '治理责任单位';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."superdept" IS '行业监管部门';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."countermeasures" IS '预防要求及防治对策	';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."slopeclass" IS '边坡类别';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."code" IS '所属区域';

-- ----------------------------
-- Records of t_geo_hazard
-- ----------------------------
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('1', '梅林二线公路东段边坡', '梅林', '22.578317', '114.06409', '150', '15', '70', '二线公路', '2~3', '30', '一般', '梅林山公园管理处', '罗振鹏', '83223575', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('2', '梅林二线公路中段边坡', '梅林', '22.57999', '114.049601', '200', '8~12', '50~70', '二线公路', '2~3', '30', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('3', '新彩隧道南侧边坡', '梅林', '22.583782', '114.069668', '90', '95~110', '55~80', '车辆', '10~12', '100', '较大', '市交通运输委福田交通运输局', '史伟平', '83707010', '', '交通运输部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('4', '梅林水库二线路边坡26号', '梅林', '22.581605', '114.042245', '20', '7', '50~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('5', '梅林水库二线路边坡35号', '梅林', '22.582148', '114.040355', '20', '4', '40~70', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('6', '梅林水库二线路边坡47号', '梅林', '22.58141', '114.037711', '15', '2', '50~70', '水库、车辆及行人', '1~2', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('7', '梅林水库二线路边坡65号', '梅林', '22.581542', '114.034383', '20', '8', '40~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('8', '梅林水库二线路边坡68号', '梅林', '22.581889', '114.0339', '30', '6', '40~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('9', '梅林水库二线路边坡84号', '梅林', '22.584077', '114.032116', '15', '6', '40~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('10', '梅林水库二线路边坡87号', '梅林', '22.583673', '114.031185', '10', '5', '40~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('11', '梅林水库二线路边坡96号', '梅林', '22.581931', '114.031217', '5', '2.5', '40~60', '水库、车辆及行人', '1~2', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('12', '梅林水库二线路边坡102号', '梅林', '22.582403', '114.029972', '30', '7', '40~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('13', '梅林水库二线路边坡126号', '梅林', '22.583736', '114.024395', '40', '8', '40~60', '水库、车辆及行人', '3~4', '10', '一般', '福田区梅林街道办', '张智华', '13751117100', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949302');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('14', '东湖公园派出所宿舍楼后面边坡', '黄贝', '22.574265', '114.152329', '30', '8~10', '30~85', '行人、楼房', '1~3', '50', '一般', '东湖公园管理处', '黄李文', '13825253633', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('15', '金碧苑后山边坡', '清水河', '22.578629', '114.095458', '80', '3~9', '70~80', '行人、住宅', '10~12', '200', '较大', '深圳市交通公用设施建设中心', '安军', '13808831777', '', '交通运输部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('16', '临平一路东、青湖山庄北侧边坡', '清水河', '22.591032', '114.113571', '300', '10~20', '30~70', '行人、车辆', '3~5', '200', '一般', '清水河街道办', '曾济康', '13688843827', '', '交通运输部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('17', '大望锡坑尾西北300米二线公路边坡', '东湖', '22.604724', '114.210449', '80', '10~20', '70~80', '行人、车辆', '1~3', '30', '一般', '东湖街道办', '张洪东', '13688844137', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('18', '大望梧桐山二线路边坡（梧桐山二线路隐患点4）', '东湖', '22.603864', '114.207543', '90', '6', '50~65', '游客', '1~3', '30', '一般', '梧桐山风景区管理处', '李国超', '18988782833', '', '规划国土部门', '群测群防或工程治理', '自然斜坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('19', '梧桐山二线路隐患点1', '东湖', '22.610308', '114.211831', '100', '8', '60', '游客', '1~3', '30', '一般', '梧桐山风景区管理处', '李国超', '18988782833', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('20', '梧桐山二线路隐患点3', '东湖', '22.604631', '114.207846', '30', '12', '45~60', '游客', '1~3', '30', '一般', '梧桐山风景区管理处', '李国超', '18988782833', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('21', '梧桐山二线路隐患点6', '东湖', '22.602007', '114.208396', '50', '7', '45', '游客', '1~3', '30', '一般', '东湖街道办', '张洪东', '13688844137', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('22', '大望横排岭北二线公路边坡', '东湖', '22.601465', '114.206121', '90', '5~20', '60~80', '游客', '1~3', '30', '一般', '东湖街道办', '张洪东', '13688844137', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('23', '梧桐山博雅2号馆旁边坡', '东湖', '22.597077', '114.193017', '50', '5~10', '75~85', '行人、车辆', '1~3', '50', '一般', '东湖街道办', '张洪东', '13688844137', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('24', '梧桐山南路蝴蝶谷入口处边坡', '莲塘', '22.565088', '114.20848', '90', '2~20', '60~75', '游客', '1~3', '30', '一般', '梧桐山风景区管理处', '周伟东', '13823636808', '', '城管部门', '群测群防或工程治理', '自然斜坡', '5949304');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('25', '梧桐山南路北侧边坡', '莲塘', '22.565023', '114.19737', '200', '20~40', '60~80', '游客', '3~8', '200', '一般', '梧桐山风景区管理处', '周伟东', '13823636808', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('26', '金稻田路特检生活小区（翠岭苑）围墙外围边坡', '东晓', '22.59176', '114.136281', '350', '2~20', '45~70', '居民', '3~5', '200', '一般', '围岭公园管理处', '文波', '13590496428', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('27', '东湖公园牌坊路边坡', '黄贝', '22.572738', '114.152836', '200', '6~10', '30~60', '道路、行人、车辆', '3~5', '60', '一般', '东湖公园管理处', '丘卷英', '13510811277', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('28', '仙湖苏铁四路边坡', '莲塘', '22.562052', '114.210597', '200', '30~15', '30', '行人、车辆', '3~5', '30', '一般', '仙湖植物园管理处', '陶昕', '13802218820', '', '规划国土部门', '群测群防或工程治理', '自然斜坡', '5949304');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('29', '华侨城中学后侧香山中路燕晗山登山道旁危岩体边坡', '沙河', '22.529795', '113.018695', '90', '6', '35~45', '坡脚行人', '2~3', '30', '一般', '沙河街道办', '黄琪', '18588249557', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('30', '沙河路南侧亿家商业中心对面丽苑城市公寓后面山体边坡', '西丽', '22.566463', '112.981632', '120', '25', '40~50', '公寓居住人员', '3~5', '100', '一般', '西丽街道办', '段正益', '26528532', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('31', '松白路7栋~10栋后侧沿线边坡', '西丽', '22.623509', '112.962414', '70', '4~8', '50~75', '宿舍楼及商店', '3~5', '100', '一般', '西丽街道办', '段正益', '26528532', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('32', '阳光工业区27栋宿舍楼后边坡', '西丽', '22.628364', '112.969726', '60', '8~20', '55~85', '住宅楼', '5~12', '200', '较大', '深圳市绿化委员会办公室', '胡工', '83746869', '', '城管部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('33', '西丽湖路鹤祥苑8栋（A~C单元）后侧山体边坡', '西丽', '22.586212', '112.993241', '50', '5~10', '65~85', '小区车辆及过往行人', '3~6', '200', '一般', '西丽街道办', '段正益', '26528532', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('34', '龙井路车管所检测站边坡', '桃源', '22.554199', '113.002198', '90', '5~13', '70', '检测站', '3~5', '100', '一般', '桃源街道办', '邓城年', '13714433622', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('35', '赤湾六路山海逸居西北侧——赤湾少帝路东南侧边坡', '招商', '22.485416', '113.896537', '150', '25', '80', '坡顶道路及坡脚临建', '3~5', '100', '一般', '招商街道办', '杨利君', '13826540723', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('36', '深圳市南山文化武术学校东侧边坡', '招商', '22.488184', '113.900199', '190', '6~9', '50~85', '住宅区', '3~5', '50', '一般', '招商街道办', '杨利君', '13826540723', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('37', '赤湾港航保税区钢构架厂房北侧——赤湾学校东南侧山体边坡（未治理段）', '招商', '22.487124', '113.90151', '100', '60', '60', '坡顶学校及坡脚临建', '3~5', '100', '一般', '招商街道办', '杨利君', '13826540723', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('38', '左炮台路8号侧门后侧~赤湾山东南侧山体边坡（未治理段）', '招商', '22.479112', '113.901652', '310', '50~80', '70~90', '坡脚公司及道路', '3~5', '100', '一般', '招商街道办', '杨利君', '13826540723', '', '交通运输部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('39', '港湾生活小区岗亭出口处边坡', '招商', '22.485785', '113.890797', '100', '7~18', '65~85', '行人与车辆', '3~6', '50', '一般', '招商街道办', '杨利君', '13826540723', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('40', '蛇口微波山观海路1号道路内侧边坡', '招商', '22.482959', '113.919894', '100', '3~7', '60~75', '道路', '3~5', '50', '一般', '招商街道办', '杨利君', '13826540723', '', '交通运输部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949303');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('41', '盐梅路正角咀边坡', '梅沙', '22.607353', '114.323897', '100', '5', '50', '居民楼、车辆及居民', '3~5', '60', '一般', '市交通运输委盐田交通运输局', '黄尉', '25061211', '', '交通运输部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949304');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('42', '万科东海岸后山截洪沟东段边坡', '梅沙', '22.60952', '114.306661', '500', '8~15', '40~70', '居民楼、居民、防洪设施等', '10~12', '200', '较大', '盐田区环水局', '陈亮', '25284101', '', '水务部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949304');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('43', '二线巡逻道口~上坪水库方向3公里处边坡', '梅沙', '22.623396', '114.326764', '200', '3~5', '60', '登山驴友', '3~4', '20', '一般', '盐田区城管局', '钟日荣', '25228721', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949304');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('44', '大百汇段登山道上行200米处边坡', '盐田', '22.574576', '114.259397', '50', '6', '60', '登山驴友', '3~5', '20', '一般', '盐田区城管局', '钟日荣', '25228721', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949304');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('45', '华丰共乐工业园边坡', '西乡', '22.59353', '113.871796', '250', '10~30', '50~80', '厂区、宿舍员工', '10~12', '100', '较大', '西乡街道办', '汤柯立', '27932059', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949306');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('46', '共乐老兵工业城边坡', '西乡', '22.590988', '113.876033', '300', '15~25', '100~150', '厂房员工', '3~5', '60', '一般', '西乡街道办', '汤柯立', '27932059', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949306');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('47', '怀德翠湖工业园周边边坡', '福海', '22.697345', '113.832008', '120', '7~8', '70', '工厂员工', '3~5', '200', '一般', '福海街道办', '杨军', '13926504804', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949306');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('48', '吉祥纸业（广田纸厂）北边坡', '燕罗', '22.830961', '113.88179', '100', '8', '30~70', '仓库员工', '3~5', '100', '一般', '罗田林场', '陈伟明', '13502869876', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949306');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('49', '第四工业区消防中队上坡处边坡', '石岩', '22.703417', '113.965781', '100', '15~25', '40~70', '停车场，厂房一角', '3~5', '100', '一般', '石岩街道办', '刘勇兴', '15926570309', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949306');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('50', '元径村友邦骏厂与官田交界处边坡', '石岩', '22.691875', '113.947638', '30', '5', '40~50', '厂房、员工、学校球场', '3~5', '50', '一般', '石岩街道办', '周汉威', '18926573013', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949306');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('51', '坪地石壁红岭一路5号聖地人防厂内边坡', '坪地', '22.801979', '114.328696', '100', '40~60', '60~70', '厂内人员', '10~12', '200', '较大', '坪地街道办', '殷玉聘', '13590330028', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('52', '新雪社区剑业工业区西侧边坡', '坂田', '22.647589', '114.087091', '200', '10~20', '70', '坡下煤气站及临建', '3~6', '200', '一般', '坂田街道办', '刘亮亭', '89586421', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('53', '横岗福坑二路45号后侧边坡', '横岗', '22.640454', '114.244641', '70', '7~9', '65', '居民楼及居民', '10~12', '200', '较大', '横岗街道办', '罗育强', '28699057', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('54', '横岗大康得利发建材厂后深茂水泥厂河道边坡', '横岗', '22.651368', '114.230297', '60', '6~13', '30~50', '厂区及工人', '3~6', '200', '一般', '横岗街道办', '罗育强', '28699064', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('55', '228工业区德泉路4号上围厂房后边坡', '横岗', '22.670311', '114.207832', '50', '10~12', '50~70', '厂区及工人', '8~12', '200', '较大', '横岗街道办', '罗育强', '28699069', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('56', '大和恒丰路路堤边坡', '横岗', '22.63434', '114.195943', '200', '6~10', '40', '道路、车辆、行人', '3~4', '80', '一般', '横岗街道办', '罗育强', '28699075', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('57', '信义玻璃厂后边坡', '横岗', '22.667661', '114.216372', '200', '6~8', '30~50', '厂区及工人', '2~4', '70', '一般', '横岗街道办', '罗育强', '28699079', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('58', '南湾街道下李朗社区兆驰工业园2号厂房南侧边坡', '南湾', '22.649624', '114.139197', '140', '4~6', '30', '道路、厂房', '3~4', '30', '一般', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('59', '南湾街道南岭村社区龙山路24号旁边坡', '南湾', '22.600483', '114.146763', '40', '8~15', '55~65', '行人、车辆', '3~4', '60', '一般', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('60', '南湾街道南岭村社区求水山公园观光道灯柱编号8498535前边坡', '南湾', '22.597724', '114.149189', '200', '5~6', '50~60', '行人、车辆', '2~3', '80', '一般', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('61', '南湾街道南岭村社区华泰4K厂4号厂房东侧边坡', '南湾', '22.603875', '114.153285', '40', '5~7', '60~70', '行人、车辆及岗亭', '3~4', '80', '一般', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('62', '南湾街道南岭村社区布沙路天桥东方向边坡', '南湾', '22.611986', '114.153142', '20', '6~15', '40~60°', '附近行人', '10~12', '60', '较大', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('63', '南湾街道樟树布社区公园水厂路布吉水司旁边坡', '南湾', '22.60712', '114.161594', '130', '6~8', '60~75', '附近行人、车辆', '3', '40', '一般', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949301');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('64', '南湾街道南新社区南和新村村口左侧边坡', '南湾', '22.611738', '114.160276', '30', '6', '50~60', '附近行人', '3', '50', '一般', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('65', '南湾街道厦村社区沙湾实验学校宿舍楼东侧边坡', '南湾', '22.619916', '114.173155', '20', '3~6', '30~50', '饭堂、教师', '10~12', '200', '较大', '南湾街道办', '郑世雨', '15012601909', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('66', '龙东社区赖屋路40号后面边坡', '龙岗', '22.719178', '114.306415', '70', '6~10', '50~70', '坡脚工厂厂房和工作人员', '10~12', '100', '较大', '龙岗街道办', '方思勇', '84807854、13590252342', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('67', '龙东社区龙南路吓井兵营（龙南路老军事基地）边坡', '龙岗', '22.726637', '114.291696', '150', '4~6', '30~40', '坡脚民房和人员', '3~4', '80', '一般', '龙岗街道办', '方思勇', ' 84807854、13590252342', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('68', '同德社区茅湖水库水坝北边左侧道路边坡', '龙岗', '22.740437', '114.340909', '30', '4~5', '50~70', '车辆及管理人员', '3~4', '40', '一般', '龙岗街道办', '方思勇', '84807854、13590252342', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949308');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('69', '宝龙社区宝龙学校对面边坡', '龙岗', '22.690203', '114.273668', '100', '10~15', '30~40', '车辆和路人', '3~5', '60', '一般', '龙岗街道办', '方思勇', ' 84807854、13590252342', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('70', '秀峰路北方公司仓库北侧山体边坡', '布吉', '22.647024', '114.111418', '80', '10~20', '60~70', '其他设施', '3~5', '80', '一般', '布吉街道办', '蒋永超', '15099943086', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('71', '吉华路阳明荣公司北东侧两处山体（伯公坳）边坡', '布吉', '22.644053', '114.100208', '60', '7~20', '35~60', '其他设施、商场', '3~6', '200', '一般', '布吉街道办', '蒋永超', '15099943086', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('72', '秀峰路西侧顺威煤气站马路对面岳丰元公司仓库边坡', '布吉', '22.644909', '114.108284', '125', '15~20', '30~60', '威胁过往车辆', '3~5', '200', '一般', '布吉街道办', '蒋永超', '15099943086', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('73', '甘坑鸿利达厂东侧，灯心坑石场北侧山体边坡', '布吉', '22.654921', '114.116994', '190', '13~50', '55~65', '厂房', '3~5', '200', '一般', '布吉街道办', '蒋永超', '15099943086', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('74', '绿道5号线坂田段边3号边坡（正坑水库周边）', '坂田', '22.623307', '114.088037', '55', '3~12', '40~50', '绿道行人', '3~5', '60', '一般', '坂田街道办', '赖向华', '13823154939', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('75', '南坪快速路龙景立交D匝道边坡', '坂田', '22.6343', '114.104684', '250', '55', '75', '车辆及人员', '10~12', '100', '较大', '深圳市公路养护有限公司', '吴银潭', '13554935670', '', '交通运输部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('76', '水祖坑怡田水厂西侧边坡', '石井', '22.698383', '114.436357', '150', '20~25', '40~50', '厂房、游泳池、餐厅', '3~5', '80', '一般', '石井街道办', '黄瑞安', '13480887554', '', '规划国土部门', '群测群防或工程治理', '自然斜坡', '5949308');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('77', '观湖樟坑径社区大通工业园后山边坡', '观湖', '22.683837', '114.087708', '80', '28', '45~60', '坡下工业园区', '3~4', '100', '一般', '观湖街道办', '曾文深', '13923704799', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('78', '观湖樟坑径社区彩谷厂后边坡', '观湖', '22.700894', '114.08307', '100', '18', '45', '坡下工业园区', '3~5', '100', '一般', '观湖街道办', '曾文深', '13923704799', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('79', '凤天科技创新产业园（宏发、清华花木场宏发、清华花木场）东南侧边坡', '龙华', '22.676183', '114.060005', '170', '3~20', '50~70', '科技园', '2', '20', '一般', '龙华街道办', '焦虎', '13823249606', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('80', '清吉路北东侧边坡', '龙华', '22.673859', '114.069165', '180', '5~12', '25~40', '临建、道路', '2', '40', '一般', '龙华街道办', '焦虎', '13823249606', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949305');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('81', '清湖新村西北侧边坡', '龙华', '22.673596', '114.057511', '150', '15~30', '50~60', '公共休闲场所和村内道路', '1~2', '30', '一般', '龙华街道办', '焦虎', '13823249606', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('82', '郭吓三区四巷3~2北西侧边坡', '龙华', '22.670987', '114.022445', '60', '3~7', '80', '临建', '1~2', '30', '一般', '龙华街道办', '赖建洪', '13825293818', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('83', '龙华敬老院北侧边坡', '龙华', '22.665251', '114.018744', '100', '10~14', '30~40', '住宅', '2~3', '80', '一般', '龙华街道办', '饶高少', '13510126671', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('84', '沃特美公司北侧边坡', '龙华', '22.683629', '114.030331', '120', '13~15', '70~80', '厂房', '2~4', '30', '一般', '龙华街道办', '潘杨涛', '13670030440', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('85', '下横朗新村10巷北侧边坡', '大浪', '22.679845', '113.994325', '540', '2~32', '45~60', '坡下周边住户及行人', '10~14', '200', '较大', '大浪街道办', '詹文彬', '29672282', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('86', '浪口公园边坡', '大浪', '22.684356', '114.022449', '400', '13~30', '55~65', '坡下周边行人', '2', '50', '一般', '大浪街道办', '詹文彬', '29672282', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('87', '桂花社区科赛德思西北侧边坡', '观澜', '22.74996', '114.058238', '120', '4~6', '40~50', '厂房、人民群众', '3~7', '200', '一般', '观澜街道办', '陈凯山', '13560721270', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('88', '桂花社区万寿山陵园边坡', '观澜', '22.746816', '114.052484', '62', '15~20', '55~65', '人民群众', '3~5', '30', '一般', '观澜街道办', '陈凯山', '13560721270', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('89', '桂花社区庙新旅馆后边坡', '观澜', '22.743378', '114.064205', '66', '10~12', '55~65', '人民群众', '4~5', '30', '一般', '观澜街道办', '陈凯山', '13560721270', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('90', '桂花社区桂圆路25号南侧边坡', '观澜', '22.746816', '114.064122', '68', '8~11', '53~60', '厂房、人民群众', '3~5', '30', '一般', '观澜街道办', '陈凯山', '13560721270', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('91', '牛湖社区溢丰厂门前边坡', '观澜', '22.718588', '114.09693', '70', '3~5', '50~70', '厂房、人民群众', '1~2', '30', '一般', '观澜街道办', '陈凯山', '13560721270', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('92', '南坪快速路K9+720~ K10+700南侧边坡', '民治', '22.596289', '114.049539', '980', '10~50', '70', '车辆及人员', '10~12', '300', '较大', '市交通运输委龙华交通运输局', '陈妍竹', '27218389', '', '交通运输部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('93', '观澜河左岸飞鸽地板厂边坡', '观澜', '22.734902', '114.06365', '22', '18', '45', '厂房、公交站、河道', '3~5', '400', '一般', '深圳市防洪设施管理处', '刘磊', '13418759876', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('94', '观澜河左岸梅龙路(清湖路至清龙路段)边坡', '龙华', '22.672871', '114.050272', '16', '14', '65°', '公路人行道、河边人行道', '3~5', '400', '一般', '深圳市防洪设施管理处', '刘磊', '13418759876', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949310');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('95', '猫头山东侧边坡', '马田', '22.770624', '113.896925', '60', '4~13', '40~70', '房子', '4', '3', '一般', '马田办事处', '梁德华', '13662299961', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949307');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('96', '光明白花社区民盛花园西侧边坡', '光明', '22.746274', '113.997696', '145', '10~12', '50~55', '住宅', '3~8', '60', '一般', '光明办事处', '邹富华', '18825282974', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949307');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('97', '公明水库2#坝与3#坝间原观景台边坡', '新湖', '23.323471', '113.378578', '60', '19', '40', '水库、车辆及管理人员', '3~4', '100', '一般', '市公明供水调蓄工程管理处', '刘志峰', '23248202', '', '水务部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949307');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('98', '云海山庄南侧四号楼别墅西侧海边边坡', '大鹏', '22.562432', '114.475006', '60', '10~15', '45~55', '4号别墅楼、房客', '1~3', '30', '一般', '深圳市国资委云海山庄', '温木发', '84306969', '', '住房建设部门', '群测群防或工程治理', '自然斜坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('99', '云海山庄地下停车场南侧边坡', '大鹏', '22.561598', '114.476246', '100', '6~10', '50~60', '车库、建筑、游客', '3~5', '100', '一般', '深圳市国资委云海山庄', '温木发', '84306969', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('100', '大鹏东山寺后山边坡', '大鹏', '22.603646', '114.528199', '30~40', '8~12', '30~60', '游客、东山寺庙及其人员', '10~12', '50', '较大', '大鹏办事处', '温木发', '84306969', '', '规划国土部门', '群测群防且工程治理', '自然斜坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('101', '大鹏云海山庄门口道路西侧边坡', '大鹏', '22.564375', '114.475635', '40', '12', '30~40', '道路过往车辆', '3~5', '50~100', '一般', '深圳市国资委云海山庄', '温木发', '84306969', '', '住房建设部门', '群测群防或工程治理', '自然斜坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('102', '鹏城穗华素质教育培训基地后侧山体边坡', '大鹏', '22.602663', '114.532943', '60~70', '10~15', '70~80', '基地培训人员', '10~12', '50', '较大', '鹏城穗华素质教育培训基地', '温木发', '84306969', '', '住房建设部门', '群测群防且工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('103', '广东省地税系统培训基地西侧边坡', '大鹏', '22.570611', '114.473282', '80', '10~30', '40~50', '行人', '3~5', '50~100', '一般', '深圳市地方税务局', '温木发', '84306969', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('104', '南澳墓园道路旁边坡', '南澳', '22.530968', '114.500695', '100', '4~8', '45~60', '道路行人', '3~5', '50', '一般', '南澳办事处', '雷树声', '84400769', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('105', '海滨北路16号边坡', '南澳', '22.553642', '114.491761', '50', '8~10', '45~60', '居民楼', '3~6', '80', '一般', '南澳办事处', '雷树声', '84400769', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('106', '南澳海贝湾酒店内停车场南侧边坡', '南澳', '22.54559', '114.493484', '100', '8~15', '30~50', '游客、车辆、酒店建筑', '3~5', '100', '一般', '南澳海贝湾酒店', '雷树声', '84400769', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('107', '下企沙1号西侧边坡', '南澳', '22.543228', '114.493914', '20', '4~10', '50~60', '居民楼', '3~4', '50~100', '一般', '南澳办事处', '雷树声', '84400769', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('108', '黄泥湾东侧边坡', '南澳', '22.561945', '114.538138', '50', '4~8', '50~60', '居民楼', '3~5', '200~300', '一般', '南澳办事处', '雷树声', '84400769', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('109', '葵坝路与高速桥墩交汇处边坡', '葵涌', '22.631598', '114.450598', '30', '15', '60~70', '车辆、行人及高速桥墩', '3~5', '60', '一般', '市交通运输委大鹏交通运输局', '何立基', '13713992723', '', '交通运输部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('110', '新庵古观边坡', '葵涌', '22.619654', '114.429193', '60', '12', '30~50', '房屋、人员', '1~3', '100', '一般', '葵涌办事处', '黄益明', '15013727355', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('111', '水产绿道边坡', '葵涌', '22.61575', '114.422346', '200', '10', '70', '绿道', '1~3', '50', '一般', '葵涌办事处', '李振峰', '13560755375', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('112', '土洋后坑门二巷2号边坡', '葵涌', '22.62106', '114.416883', '30', '10', '40~60', '房屋', '3~5', '100', '一般', '葵涌办事处', '李振峰', '13560755375', '', '住房建设部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');
INSERT INTO "sf_defence"."t_geo_hazard" VALUES ('113', '南门头临深圳市天文台道路边坡', '南澳', '22.488017', '114.566363', '500', '15', '30~40', '来访群众、车辆及管理人员', '3~4', '200', '一般', '深圳市气象局', '林轶琦', '13600153880', '', '城管部门', '群测群防或工程治理', '可能引发地质灾害的建筑边坡', '5949311');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER TABLE "sf_defence"."t_geo_hazard" ADD PRIMARY KEY ("recid");
----------finish!!!!!!!!



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

Date: 2018-10-25 09:55:03
*/


-- ----------------------------
-- Table structure for t_hospital
-- ----------------------------
-- "lng" numeric(10,5),
-- "lat" numeric(10,5),
DROP TABLE IF EXISTS "sf_defence"."t_hospital";
CREATE TABLE "sf_defence"."t_hospital" (
"recid" int4 NOT NULL,
"unitname" varchar(50) COLLATE "default",
"address" varchar(255) COLLATE "default",
"areacode" varchar(50) COLLATE "default",
"lng" numeric(10,5),
"lat" numeric(10,5),
"department" varchar(50) COLLATE "default",
"doctornum" varchar(10) COLLATE "default",
"nursenum" varchar(10) COLLATE "default",
"bednum" varchar(10) COLLATE "default",
"ambulancenum" varchar(10) COLLATE "default",
"emergencycontact" varchar(50) COLLATE "default",
"telephone" varchar(50) COLLATE "default",
"phone" varchar(50) COLLATE "default",
"fax" varchar(50) COLLATE "default",
"code" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_hospital" IS '医院数据(t_hospital)';
COMMENT ON COLUMN "sf_defence"."t_hospital"."recid" IS '记录ID';
COMMENT ON COLUMN "sf_defence"."t_hospital"."unitname" IS '单位名称';
COMMENT ON COLUMN "sf_defence"."t_hospital"."address" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_hospital"."areacode" IS '地区编码';
COMMENT ON COLUMN "sf_defence"."t_hospital"."lng" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_hospital"."lat" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_hospital"."department" IS '主管部门';
COMMENT ON COLUMN "sf_defence"."t_hospital"."doctornum" IS '医生数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."nursenum" IS '护士数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."bednum" IS '床位数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."ambulancenum" IS '救护车数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."emergencycontact" IS '应急联系人';
COMMENT ON COLUMN "sf_defence"."t_hospital"."telephone" IS '电话';
COMMENT ON COLUMN "sf_defence"."t_hospital"."phone" IS '手机';
COMMENT ON COLUMN "sf_defence"."t_hospital"."fax" IS '传真';
COMMENT ON COLUMN "sf_defence"."t_hospital"."code" IS '区域';

-- ----------------------------
-- Records of t_hospital
-- ----------------------------
INSERT INTO "sf_defence"."t_hospital" VALUES ('1', '深圳市人民医院', '深圳市罗湖区东门北路1017号大院', '', '114.13428', '22.56305', '', '', '', '', '', '', '25533018', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('2', '深圳市人民医院第一门诊部', '罗湖区深南东路3046号', '', '114.1228', '22.54948', '', '', '', '', '', '', '82197733', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('3', '深圳市第三人民医院(原深圳市东湖医院)', '罗湖区布心路2019号、龙岗区布澜路33号', '', '114.13511', '22.64151', '', '', '', '', '', '', '25509800', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('4', '深圳市康宁医院', '罗湖区翠竹路1080号,罗湖区布心路2019号B座13-15层', '', '114.13717', '22.57049', '', '', '', '', '', '', '25533524', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('5', '深圳市孙逸仙心血管医院', '罗湖区东门北路1021号', '', '114.1355', '22.56281', '', '', '', '', '', '', '25509566', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('6', '深圳市职业病防治院 (深圳市第十二人民医院）', '深圳市罗湖区桂园北路70号', '', '114.12007', '22.55962', '', '', '', '', '', '', '61385409', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('7', '深圳市慢性病防治中心（门诊部）', '罗湖区布心路2010号', '', '114.14163', '22.58078', '', '', '', '', '', '', '25618774', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('8', '深圳市中医院第一门诊部', '罗湖区解放西路3015号', '', '114.11918', '22.55018', '', '', '', '', '', '', '25578220', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('9', '深圳市中医院', '深圳市福华路1号', '', '114.09173', '22.54322', '', '', '', '', '', '', '88359666', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('10', '深圳市第二人民医院', '深圳市福田区笋岗西路3002号', '', '114.0923', '22.56297', '', '', '', '', '', '', '83366388', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('11', '深圳市第二人民医院中西医结合分院', '深圳市福田区振华路2号', '', '114.10224', '22.55077', '', '', '', '', '', '', '', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('12', '北京大学深圳医院', '深圳市福田区莲花路1120号', '', '114.05617', '22.56118', '', '', '', '', '', '', '83923333', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('13', '深圳市儿童医院', '深圳市福田区益田路7019号', '', '114.06207', '22.55324', '', '', '', '', '', '', '83936101', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('14', '深圳市眼科医院', '福田区泽田路18号', '', '114.02083', '22.55243', '', '', '', '', '', '', '23959523', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('15', '深圳市妇幼保健院', '深圳市福田区红荔路2004号', '', '114.10164', '22.55572', '', '', '', '', '', '', '83262288', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('16', '深圳市妇幼保健院（保健部）', '深圳市福田区福强路', '', '114.05576', '22.52357', '', '', '', '', '', '', '', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('17', '深圳市急救中心', '福田区泥岗西路梅岗南街3号', '', '114.09238', '22.52357', '', '', '', '', '', '', '82438120', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('18', '深圳市人民医院龙华分院', '深圳市宝安区龙华街道龙观东路101号', '', '114.03054', '22.67118', '', '', '', '', '', '', '27745118', '', '', '5949310');
INSERT INTO "sf_defence"."t_hospital" VALUES ('19', '深圳市罗湖区人民医院(深圳市第五人民医院)', '罗湖区友谊路47号', '', '114.12842', '22.54494', '', '', '', '', '', '', '82203083', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('20', '深圳市罗湖区中医院', '深圳市罗湖区乐园路83号', '', '114.13396', '22.5535', '', '', '', '', '', '', '82311922', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('21', '深圳市罗湖区中医院康复分院', '深圳市罗湖区黄贝路2136号', '', '114.15027', '22.56718', '', '', '', '', '', '', '', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('22', '罗湖区妇幼保健院', '罗湖区太白路2018号', '', '114.14327', '22.58248', '', '', '', '', '', '', '25510061', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('23', '罗湖区慢性病防治院', '罗湖区金湖路11号', '', '114.10793', '22.57635', '', '', '', '', '', '', '82054069', '', '', '5949301');
INSERT INTO "sf_defence"."t_hospital" VALUES ('24', '深圳市福田区人民医院(深圳市第四人民医院)', '福田区深南中路3025号', '', '114.08571', '22.54528', '', '', '', '', '', '', '83982222', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('25', '深圳市福田区中医院', '深圳市福田区景田北6001号', '', '114.04959', '22.5644', '', '', '', '', '', '', '83548607', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('26', '福田区第二人民医院(梅林医院)', '福田区中康路27号', '', '114.06561', '22.57248', '', '', '', '', '', '', '83110237', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('27', '福田区妇幼保健院', '福田区金田路2002号', '', '114.0709', '22.52851', '', '', '', '', '', '', '83836163', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('28', '福田区人民医院南园肛肠分院', '福田区松岭路2号', '', '114.1013', '22.54192', '', '', '', '', '', '', '', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('29', '福田区人民医院香蜜湖分院', '福田区竹子林香竹路1号', '', '114.02544', '22.54355', '', '', '', '', '', '', '', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('30', '福田区人民医院第三分院', '福田区八卦路56号', '', '114.06043', '22.57583', '', '', '', '', '', '', '', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('31', '福田区慢性病防治院', '福田区新沙路九号', '', null, null, '', '', '', '', '', '', '83898120', '', '', '5949302');
INSERT INTO "sf_defence"."t_hospital" VALUES ('32', '深圳市南山区人民医院(深圳市第六人民医院)', '南山区桃园路', '', null, null, '', '', '', '', '', '', '26553111', '', '', '5949303');
INSERT INTO "sf_defence"."t_hospital" VALUES ('33', '深圳市南山区妇幼保健院', '南山区桃园西路', '', null, null, '', '', '', '', '', '', '26079472', '', '', '5949303');
INSERT INTO "sf_defence"."t_hospital" VALUES ('34', '深圳市南山区蛇口人民医院', '南山区蛇口湾厦路1号、南山区蛇口工业区七路26号', '', null, null, '', '', '', '', '', '', '26866176 26692314', '', '', '5949303');
INSERT INTO "sf_defence"."t_hospital" VALUES ('35', '南山区西丽人民医院', '南山区西丽留仙大道2051号', '', null, null, '', '', '', '', '', '', '26528895', '', '', '5949303');
INSERT INTO "sf_defence"."t_hospital" VALUES ('36', '南山区慢性病防治院', '南山区华明路7号', '', null, null, '', '', '', '', '', '', '26403300', '', '', '5949303');
INSERT INTO "sf_defence"."t_hospital" VALUES ('37', '深圳市宝安区人民医院(深圳市第八人民医院）', '宝安区宝城龙井二路118号', '', '113.92104', '22.56783', '', '', '', '', '', '', '27788311', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('38', '深圳市宝安区妇幼保健院', '宝安区三十区裕安路', '', '113.90477', '22.57706', '', '', '', '', '', '', '27812637', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('39', '深圳市宝安区沙井人民医院', '宝安区沙井大街', '', '113.81218', '22.73849', '', '', '', '', '', '', '27722241', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('40', '深圳市宝安区西乡人民医院', '宝安区西乡街道乐园街60号', '', '113.88641', '22.58648', '', '', '', '', '', '', '27956611', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('41', '深圳市宝安区中医院', '深圳市宝安区裕安二路25号', '', '113.90567', '22.57802', '', '', '', '', '', '', '27806830', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('42', '深圳市宝安区龙华人民医院', '深圳市宝安区龙华街道建设东路', '', '114.0398', '22.66199', '', '', '', '', '', '', '27741585', '', '', '5949310');
INSERT INTO "sf_defence"."t_hospital" VALUES ('43', '深圳市宝安区松岗人民医院', '宝安区松岗街道沙江路2号', '', '113.84739', '22.78238', '', '', '', '', '', '', '27717273', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('44', '深圳市宝安区观澜人民医院', '宝安区观澜街道观澜大道西', '', '114.05213', '22.6995', '', '', '', '', '', '', '28015466', '', '', '5949310');
INSERT INTO "sf_defence"."t_hospital" VALUES ('45', '宝安区慢性病防治院', '宝安区新安街道新安四路', '', '113.8772', '22.61241', '', '', '', '', '', '', '29187209', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('46', '宝安区福永人民医院', '宝安区福永街道德丰路81号', '', '113.82521', '22.67674', '', '', '', '', '', '', '27391395', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('47', '宝安区石岩人民医院', '石岩街道吉祥路11号', '', '113.94834', '22.6826', '', '', '', '', '', '', '27609071', '', '', '5949306');
INSERT INTO "sf_defence"."t_hospital" VALUES ('48', '深圳市龙岗中心医院(深圳市第九人民医院)', '龙岗区深惠路龙岗段1228号', '', null, null, '', '', '', '', '', '', '84802448', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('49', '深圳市龙岗区人民医院', '龙岗区中心城爱心路', '', null, null, '', '', '', '', '', '', '28932833', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('50', '龙岗区妇幼保健院', '龙岗区中心城爱龙路', '', null, null, '', '', '', '', '', '', '28933003', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('51', '龙岗区慢性病防治院', '龙岗区中心城黄阁北路32号', '', null, null, '', '', '', '', '', '', '28924199', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('52', '龙岗区坪地人民医院', '龙岗区深惠路坪地段388号', '', null, null, '', '', '', '', '', '', '84094010', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('53', '龙岗区大鹏人民医院', '大鹏街道鹏新东路149号', '', null, null, '', '', '', '', '', '', '84305909', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('54', '龙岗区葵涌人民医院', '龙岗区葵涌街道葵新北路26号', '', null, null, '', '', '', '', '', '', '84207803', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('55', '龙岗区南澳人民医院', '南澳街道人民路6号', '', null, null, '', '', '', '', '', '', '84401957', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('56', '龙岗区南湾人民医院（原南岭医院）', '南湾街道南岭社区', '', null, null, '', '', '', '', '', '', '28700099', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('57', '龙岗区沙湾医院', '南湾街道沙平北路112号', '', null, null, '', '', '', '', '', '', '28753336', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('58', '深圳市龙岗区第二人民医院（原布吉人民医院）', '龙岗区布吉街道吉华路175号', '', null, null, '', '', '', '', '', '', '28870993', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('59', '深圳市龙岗区横岗人民医院', '龙岗区横岗街道松柏路278号', '', null, null, '', '', '', '', '', '', '28863382', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('60', '深圳市龙岗区平湖人民医院', '龙岗区平湖街道双拥街77号', '', null, null, '', '', '', '', '', '', '28457333', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('61', '龙岗中心医院手外科专科医院', '龙岗区龙岗街道办杨梅岗新生西路243号', '', null, null, '', '', '', '', '', '', '', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('62', '龙岗中心医院耳鼻咽喉科医院', '龙岗区龙城街道爱联社区台湾工业区', '', null, null, '', '', '', '', '', '', '', '', '', '5949305');
INSERT INTO "sf_defence"."t_hospital" VALUES ('63', '深圳市盐田区人民医院(深圳市第七人民医院)', '盐田区沙头角梧桐路2032号', '', null, null, '', '', '', '', '', '', '25216100', '', '', '5949304');
INSERT INTO "sf_defence"."t_hospital" VALUES ('64', '盐田区妇幼保健院', '盐田区沙头角东和路9号', '', null, null, '', '', '', '', '', '', '25355272', '', '', '5949304');
INSERT INTO "sf_defence"."t_hospital" VALUES ('65', '盐田区盐港医院', '盐田区东海道363号', '', null, null, '', '', '', '', '', '', '25208372', '', '', '5949304');
INSERT INTO "sf_defence"."t_hospital" VALUES ('66', '盐田区梅沙医院', '盐田区大海沙望翠路2号', '', null, null, '', '', '', '', '', '', '25259893', '', '', '5949304');
INSERT INTO "sf_defence"."t_hospital" VALUES ('67', '深圳市光明新区公明人民医院', '光明新区公明街道松白路将石段339号', '', null, null, '', '', '', '', '', '', '27166724', '', '', '5949307');
INSERT INTO "sf_defence"."t_hospital" VALUES ('68', '光明新区光明医院', '光明新区光明办事处华夏路', '', null, null, '', '', '', '', '', '', '27400061 27400677', '', '', '5949307');
INSERT INTO "sf_defence"."t_hospital" VALUES ('69', '深圳市坪山新区坪山人民医院', '坪山新区坪山街道人民街19号', '', null, null, '', '', '', '', '', '', '28825080', '', '', '5949308');
INSERT INTO "sf_defence"."t_hospital" VALUES ('70', '坪山新区坑梓人民医院', '坪山新区坑梓街道龙兴南路6号', '', null, null, '', '', '', '', '', '', '84134902', '', '', '');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_hospital
-- ----------------------------
ALTER TABLE "sf_defence"."t_hospital" ADD PRIMARY KEY ("recid");










