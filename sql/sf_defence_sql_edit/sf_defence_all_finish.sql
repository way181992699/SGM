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
"id" int4 NOT NULL,
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
COMMENT ON COLUMN "sf_defence"."t_forest"."id" IS 'ID';
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
-- Primary Key structure for table t_forest
-- ----------------------------
ALTER TABLE "sf_defence"."t_forest" ADD PRIMARY KEY ("id");




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

Date: 2018-10-26 10:08:01
*/


-- ----------------------------
-- Table structure for t_gas_station
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_gas_station";
CREATE TABLE "sf_defence"."t_gas_station" (
"id" int4,
"userName" varchar(50) COLLATE "default",
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
COMMENT ON COLUMN "sf_defence"."t_gas_station"."id" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_gas_station"."userName" IS '名称';
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
INSERT INTO "sf_defence"."t_gas_station" VALUES ('2', '深圳市华安液化石油气有限公司', '', '', '114.3862389', '22.61582778', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('3', '深圳市光汇石油化工股份有限公司', '', '', '114.38465', '22.61520278', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('4', '中国石油化工股份有限公司深圳大鹏湾油库', '', '', '114.3841417', '22.61645833', '', '', '5949311', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('5', '中海油销售深圳有限公司一湾油气库', '', '', '113.899649', '22.471465', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('6', '深圳中石油美视妈湾油港油库有限公司', '', '', '113.877825', '22.510977', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('7', '深圳市广聚亿升石油化工储运有限公司', '', '', '113.878247', '22.508591', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('8', '深圳市南油石化妈湾油库', '', '', '113.878893', '22.506935', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('9', '深圳市中南石油有限公司赤湾油库', '南山区蛇口赤湾一路', '', '113.899763', '22.479953', '柴油', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('10', '林德气体（深圳）有限公司', '', '', '113.942091', '22.553269', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('11', '深圳南华气体工业有限公司', '', '', '113.944768', '22.56511', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('12', '空气化工产品气体（深圳）有限公司', '', '', '113.904901', '22.474099', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('13', '深圳市高发特种气体有限公司', '', '', '113.982185', '22.562246', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('14', '招商局国际冷链（深圳）有限公司华南冷库', '', '', '113.907308', '22.472302', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('15', '招商局国际冷链（深圳）有限公司保税冷库', '', '', '113.886068', '22.509808', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('16', '深圳市粮食集团有限公司曙光冷库分公司', '', '', '113.959922', '22.569591', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('17', '南海油脂工业（赤湾）有限公司', '', '', '113.886824', '22.483037', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('18', '深圳市心胜山明冰厂', '', '', '113.960031', '22.550784', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('19', '深圳世界之窗有限公司', '', '', '113.97936', '22.539438', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('20', '深圳水务（集团）有限公司大涌水厂', '', '', '113.958709', '22.551067', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('21', '深圳水务（集团）有限公司南山水厂', '', '', '113.931946', '22.565126', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('22', '中石化销售有限公司华南分公司深圳输油管理处', '', '', '113.878644', '22.50668', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('23', '深圳市固强粘合剂有限公司', '', '', '113.942427', '22.734713', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('24', '深圳市东明涂料有限公司', '', '', '113.953804', '22.774165', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('25', '捷通行粘合制品（深圳）有限公司', '', '', '113.926396', '22.779833', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('26', '宏峰行化工（深圳）有限公司绿田胶水厂', '', '', '113.940068', '22.792711', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('27', '深圳市金泳实业发展有限公司', '', '', '113.913286', '22.803906', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('28', '深圳市顺发贸易有限公司', '', '', '113.891982', '22.742549', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('29', '台大工业气体（深圳）有限公司', '', '', '113.906107', '22.790373', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('30', '广钢林德气体（深圳）有限公司', '', '', '113.928423', '22.74513', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('31', '深圳市圣亚达化工有限公司', '', '', '113.940979', '22.773175', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('32', '空气化工产品（深圳）有限公司', '', '', '113.93', '22.75', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('33', '深圳市晨龙翔实业有限公司', '', '', '113.973102', '22.81608', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('34', '展辰涂料集团股份有限公司', '', '', '113.988136', '22.735219', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('35', '武汉武钢氧气工业气体有限责任公司深圳分公司', '', '', '113.94', '22.72', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('36', '深圳市华特鹏气体有限公司', '', '', '113.991503', '22.74267', '', '', '5949307', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('37', '贺泰科技（深圳）有限公司', '', '', '113.804962', '22.731499', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('38', '东江环保股份有限公司沙井处理基地', '', '', '113.79', '22.75', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('39', '中华制漆（深圳）有限公司', '', '', '113.81', '22.75258333', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('40', '深圳大桥化工有限公司', '', '', '113.857817', '22.708516', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('41', '深圳市宝光工业有限公司', '', '', '113.8572278', '22.72109167', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('42', '深圳华美迪油墨有限公司', '', '', '113.8422222', '22.71888889', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('43', '力高油墨油漆（深圳）有限公司', '', '', '113.845931', '22.714393', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('44', '深圳市旭村化工有限公司', '', '', '113.795482', '22.733778', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('45', '深圳市彩虹精细化工股份有限公司', '', '', '113.929145', '22.700705', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('46', '深圳市永盛辉实业有限公司', '', '', '113.974431', '22.689684', '', '', '5949310', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('47', '深圳市嘉康惠宝肉业有限公司', '', '', '113.969158', '22.698111', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('48', '深圳市文川实业有限公司', '', '', '113.932071', '22.660959', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('49', '深圳市空港油料有限公司', '', '', '113.841', '22.627', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('50', '深圳承远航空油料有限公司', '', '', '113.842', '22.627', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('51', '深圳市深特工业气体有限公司', '', '', '113.5111', '22.3948', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('52', '深圳市创蓝天化工有限公司', '', '', '113.867606', '22.67809', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('53', '深圳市美丽华油墨涂料有限公司', '', '', '113.803351', '22.706726', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('54', '一可油墨涂料（深圳）有限公司', '', '', '113.841911', '22.683949', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('55', '深圳市广田涂料环保有限公司', '', '', '113.813485', '22.69923', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('56', '兴美涂料（深圳）有限公司', '', '', '113.85133', '22.69316', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('57', '松辉化工有限公司', '', '', '114.4492472', '23.30532778', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('58', '宏丰伟业化工有限公司', '', '', '113.8369444', '22.78138889', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('59', '深圳市盟友化工有限公司', '', '', '113.4932', '22.4726', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('60', '德信嘉邦涂料（深圳）有限公司', '', '', '113.80493', '22.776598', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('61', '深圳富骏材料科技有限公司', '', '', '114.4369083', '23.265575', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('62', '宝利树脂有限公司', '', '', '113.8423889', '23.37070833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('63', '确信爱法金属(深圳)有限公司', '', '', '113.8423889', '22.80447222', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('64', '合欢山涂料（深圳）有限公司', '', '', '113.858463', '22.7949039', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('65', '铨丰涂料制品（深圳）有限公司', '', '', '113.875402', '22.806692', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('66', '深圳市晟信达实业有限公司', '', '', '113.8653361', '22.80055833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('67', '深圳市东兴丝印涂料有限公司', '', '', '113.8888889', '22.47', '', '', '5949303', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('68', '深圳市东江环保产品贸易有限公司', '', '', '114.5193778', '23.21010278', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('69', '亿昌兴金属处理材料（深圳）有限公司', '', '', '113.8552778', '22.77305556', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('70', '同兴行新能源开发有限公司', '', '', '113.858127', '22.820132', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('71', '深圳市新社实业有限公司', '', '', '113.8521528', '22.81740833', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('72', '深圳青岛啤酒朝日有限公司', '', '', '114.4211222', '23.32960556', '', '', '5949306', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('73', '深圳市化轻贸易有限公', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('74', '深圳市昭程贸易有限公', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('75', '深圳市弘隆发科技有限公司', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('76', '深圳市富永和实业有限公司', '', '', '114.127611', '22.560394', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('77', '深圳市华德石油化工股份有限公司', '', '', '114.133586', '22.551254', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('78', '深圳市星银化工有限公', '', '', '114.138093', '22.554638', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('79', '深圳市佳迪达化工有限公司', '', '', '114.121009', '22.548537', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('80', '美绿达科技（天津）有限公司深圳分公司', '', '', '114.126176', '22.546849', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('81', '欧宇生国际贸易（上海）有限公司深圳分公司  ', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('82', '大日精化贸易（深圳）有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('83', '安士澳贸易（深圳）有限公司', '', '', '114.126687', '22.547627', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('84', '深圳市宝诚化工实业有限公司', '', '', '114.126176', '22.548154', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('85', '深圳日矿商贸有限公司', '', '', '114.156395', '22.581934', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('86', '深圳市深景浪科技有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('87', '深圳市三美化工贸易有限公司', '', '', '114.125093', '22.543328', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('88', '深圳市华丰科技有限公司', '', '', '114.119995', '22.545468', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('89', '深圳市兰克贸易有限公', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('90', '深圳市南华化工有限公司 ', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('91', '深圳市金海隆化工有限公司(罗湖)', '', '', '114.114143', '22.563173', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('92', '深圳源圭能源有限公司', '', '', '114.11389', '22.54937', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('93', '阿波罗展贸科技（深圳）有限公司     ', '', '', '114.115037', '22.546711', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('94', '深圳市中芙石油化工有限公司', '', '', '114.116861', '22.547606', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('95', '深圳市华润化工有限公', '', '', '114.117199', '22.547515', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('96', '吉世科贸易（深圳）有限公司', '', '', '114.116292', '22.548647', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('97', '深圳市水务（集团）有限公司东湖水厂', '', '', '114.152758', '22.577249', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('98', '深圳市水务（集团）有限公司原水泵站管理所', '', '', '114.15562', '22.571574', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('99', '深圳市布吉供水有限公司', '', '', '114.16538', '22.601274', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('100', '中粮集团（深圳）有限公司', '', '', '114.115467', '22.588177', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('101', '铭基食品有限公司', '', '', '114.117408', '22.589168', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('102', '深圳市罗湖区合群制冰厂', '', '', '114.184856', '22.564319', '', '', '5949301', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('103', '深圳市凯帆商贸有限公司', '', '', '114.5786111', '23.33388889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('104', '深圳市三港联化工有限公司', '', '', '114.58', '23.33083333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('105', '万利制漆（深圳）有限公司', '', '', '114.5572222', '23.32166667', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('106', '深圳市宇鹏化工有限公司', '', '', '114.5725', '23.32805556', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('107', '金英柏化工（深圳）有限公司', '', '', '114.3188889', '22.795', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('108', '深圳市尚宏化工有限公司', '', '', '114.5502778', '23.34111111', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('109', '深圳市欧耐新材股份有限公司', '', '', '114.333409', '22.796258', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('110', '深圳市莱克尔化工新材料有限公司', '', '', '114.348189', '22.769275', '', '', '5949308', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('111', '深圳市宝迪化工有限公司', '', '', '114.5838889', '23.29055556', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('112', '深圳市美宝涂料有限公司', '', '', '114.2891667', '22.77027778', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('113', '深圳市奇士美涂料有限公司', '', '', '114.284985', '22.76222', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('114', '深圳市田景实业有限公司', '', '', '114.2730556', '22.75888889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('115', '大埔中奇油漆化工（深圳）有限公司', '', '', '114.2955556', '22.75944444', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('116', '深圳市高氏粘合剂制品有限公司', '', '', '114.2741667', '22.75888889', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('117', '深圳市东方达商贸有限公司', '', '', '114.3305556', '22.76333333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('118', '深圳市顾康力化工有限公司', '', '', '114.5761111', '23.33222222', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('119', '华润五丰肉类食品（深圳）有限公司龙岗分公司', '', '', '114.2470194', '22.68953611', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('120', '深圳市湘航工业气体有限公司', '', '', '114.2413861', '22.68965278', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('121', '深圳市龙腾工业气体有限公司', '', '', '114.2626889', '22.76284722', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('122', '深圳市友信崧锋实业有限公司', '', '', '114.134391', '22.665745', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('123', '深圳市闽鹏程新兴气体有限公司 ', '', '', '114.166377', '22.632317', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('124', '深圳达利丰涂料有限公司', '', '', '114.326497', '22.732382', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('125', '深圳市万松化工实业有限公司', '', '', '114.31905', '22.739527', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('126', '深圳龙岗永丰化工有限公司', '', '', '114.319111', '22.740333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('127', '深圳市格邦化工有限公司', '', '', '114.330048', '22.722288', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('128', '深圳市绿绿达环保有限公司', '', '', '114.3033333', '22.73583333', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('129', '深圳市福安泰实业有限公司', '', '', '114.327227', '22.733404', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('130', '深圳市宏洲气体工业有限公司', '', '', '114.289919', '22.709868', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('131', '深圳市圳宽工业气体有限公司', '', '', '114.289587', '22.701252', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('132', '深圳市连邦行化工原料有限公司', '', '', '114.3119444', '22.74', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('133', '深圳市瑞兴化工原料有限公司', '', '', '114.335919', '22.744425', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('134', '深圳市恒迪源润达实业有限公司', '', '', '114.311524', '22.73715', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('135', '深圳市千木化工有限公司', '', '', '114.2527778', '22.70777778', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('136', '深圳市鸿发化工有限公司', '', '', '114.326149', '22.737792', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('137', '深圳市东港田化工有限公司', '', '', '114.287005', '22.711697', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('138', '深圳市顺益霖贸易有限公司', '', '', '114.288291', '22.716148', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('139', '万源油品涂料（深圳）有限公司', '', '', '114.139818', '22.670858', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('140', '宏昌行涂料（深圳）有限公司', '', '', '114.114523', '22.688573', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('141', '惠华佳彩涂料（深圳）有限公司', '', '', '114.104481', '27.09963', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('142', '龙高涂料（深圳）有限公司', '', '', '114.109179', '22.710984', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('143', '深圳市一亮顺平化工贸易有限公司', '', '', '114.150244', '22.717271', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('144', '深圳市横岗西坑长深气体有限公司', '', '', '114.2362', '22.620784', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('145', '深圳市金海隆化工有限公司', '', '', '114.249842', '22.671005', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('146', '新龙昌兴工业气体贸易有限公司', '', '', '114.113674', '22.648727', '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('147', '深圳市化轻贸易有限公司', '', '', null, null, '', '', '5949305', '', '');
INSERT INTO "sf_defence"."t_gas_station" VALUES ('148', '深圳市兴喜化工有限公司', '', '', '114.0947', '22.63115', '', '', '5949305', '', '');

-- ----------------------------
-- Alter Sequences Owned By
-- ----------------------------
ALTER TABLE "sf_defence"."t_gas_station" ADD PRIMARY KEY ("id");




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
"id" int4,
"userName" varchar(50) COLLATE "default",
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
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."id" IS '记录号ID';
COMMENT ON COLUMN "sf_defence"."t_geo_hazard"."userName" IS '隐患点名称';
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
ALTER TABLE "sf_defence"."t_geo_hazard" ADD PRIMARY KEY ("id");


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
"id" int4 NOT NULL,
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
COMMENT ON COLUMN "sf_defence"."t_hospital"."id" IS '记录ID';
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
ALTER TABLE "sf_defence"."t_hospital" ADD PRIMARY KEY ("id");
--finish!!!!!!!!!!




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

Date: 2018-10-26 12:00:45
*/


-- ----------------------------
-- Table structure for t_building
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_building";
CREATE TABLE "sf_defence"."t_building" (
"id" int4 NOT NULL,
"userName" varchar(50) COLLATE "default",
"address" varchar(255) COLLATE "default",
"region_code" varchar(120) COLLATE "default",
"building_type" varchar(20) COLLATE "default",
"makespan" date,
"contacts" varchar(50) COLLATE "default",
"phone" varchar(50) COLLATE "default",
"remarks" varchar(255) COLLATE "default",
"lat" numeric(20,5),
"lng" numeric(20,5),
"expandsion" varchar(255) COLLATE "default",
"code" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_building" IS '建筑工地(t_building)';
COMMENT ON COLUMN "sf_defence"."t_building"."id" IS 'id';
COMMENT ON COLUMN "sf_defence"."t_building"."userName" IS '名称';
COMMENT ON COLUMN "sf_defence"."t_building"."address" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_building"."region_code" IS '地区编码';
COMMENT ON COLUMN "sf_defence"."t_building"."building_type" IS '建筑类型';
COMMENT ON COLUMN "sf_defence"."t_building"."makespan" IS '完工时间';
COMMENT ON COLUMN "sf_defence"."t_building"."contacts" IS '联系人';
COMMENT ON COLUMN "sf_defence"."t_building"."phone" IS '手机';
COMMENT ON COLUMN "sf_defence"."t_building"."remarks" IS '备注';
COMMENT ON COLUMN "sf_defence"."t_building"."lat" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_building"."lng" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_building"."expandsion" IS '扩展';
COMMENT ON COLUMN "sf_defence"."t_building"."code" IS '区域code';

-- ----------------------------
-- Records of t_building
-- ----------------------------
INSERT INTO "sf_defence"."t_building" VALUES ('8', '深圳地铁10号线1012-1B标项目经理部', '深圳市龙岗区坂澜大道和中浩一路交叉口西北角', '440307014', '大',to_date ( '2020/3/31' , 'YYYY-MM-DD'), '刘志峰', '15995251551', '市市政站上报', '22.66116', '114.08946', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('11', '深圳市龙华新区现代有轨电车示范线工程三标', '龙华新区观澜镇环观中路横坑社区健康服务中心对面中铁四局集团有限公司有轨电车项目经理部', '440306010', '大', '2016.12.30', '盛世明', '18170279878', '市市政站上报', '22.70789', '114.06450', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('20', '深圳市城市轨道交通10号线1012-2标甘凉区间', '深圳市龙岗区布吉街道中海信众创城对面凉帽山下', '4403007014012', '大', '1905/7/12', '曹国平', '13632957955', '市市政站上报', '22.65437', '114.12030', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('23', '深圳地铁10号线1012-1A标项目部', '龙岗区坂田街道坂雪岗大道与环城北路交汇处', '440307013', '大', '2020.04.29', '边红伟', '18731705799', '市市政站上报', '22.35484', '112.94890', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('24', '深圳地铁10号线1012-1B标雪象北站及雪甘区间', '深圳市龙岗区坂澜大道和中浩一路交叉口西北角', '440307014', '大', '2020/3/31', '刘志峰', '15995251551', '市市政站上报', '22.66116', '114.08946', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('25', '深圳市城市轨道交通10号线1012-2标甘坑站', '深圳市龙岗区布吉街道甘李二路6号佳和园坡下', '440307014012', '大', '1905/7/12', '曹国平', '13632957955', '市市政站上报', '22.65371', '114.11182', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('27', '福田污水处理厂主体工程', '福田区滨海大道红树林路东侧福田汽车站白石路西侧', '4403004006009', '中', '2016/8/30', '陈卫刚', '15361010730', '市市政站上报', '22.38611', '114.02286', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('28', '地铁10号线福田口岸站', '广东省深圳市福田区联检楼西侧', '440304400', '大', '2020/5/27', '吴振元', '13926258280', '市市政站上报', '22.51907', '114.07385', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('29', '地铁10号线福民站', '深圳市福田区福强路与福民路交叉口北侧', '4403004004027', '大', '2020/5/27', '唐洪涛', '18664551361', '市市政站上报', '22.53195', '114.07423', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('30', '地铁10号线福民换乘通道', '深圳市福田区福强路与福民路交叉口西侧', '4403004004028', '大', '2016/9/30', '唐洪涛', '18664551361', '市市政站上报', '22.52870', '114.07418', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('33', '地铁10号线梅林东站', '广东省深圳市福田区梅林街道梅林路与彩田路交汇处', '4403004004033', '大', '2018.11.23', '张晓磊', '18610885818', '市市政站上报', '23.40630', '113.15152', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('34', '地铁10号线有线电视台', '华富街道与莲有街道交汇处 ', '440304009', '大', '2018/12/4', '刘秋雨', '18682370599', '市市政站上报', '22.56547', '114.07345', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('35', '地铁10号线莲有区间', '莲有街道莲花二村', '440304009009', '大', '2018/12/5', '刘秋雨', '18682370599', '市市政站上报', '22.55660', '114.07335', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('36', '地铁10号线福田党校变电所', '深圳市福田区莲有街道', '440303008', '大', '2018/12/7', '刘秋雨', '18682370599', '市市政站上报', '22.56859', '114.07082', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('55', '深圳前海双界河路及其地下道路市政工程一标', '广东省深圳市南山区前海深港合作区', '4403005001020', '市政道路工程', '2016.11.25', '黄潇豪', '18617095406', '市市政站上报', '22.55115', '113.90940', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('56', '深圳前海市政工程I标', '广东省深圳市南山区前海深港合作区', '4403005001020', '市政道路', '2017.6.30', '丁小峰', '13918948230', '市市政站上报', '113.89571', '113.90068', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('73', '深圳市下坪固体废弃物填埋场续建工程-渗滤液处理站改扩建工程第二部分', '罗湖区清水河街道宝洁路下坪填埋场内', '4403003010007', '市政公用工程', '2016.11.29', '黄邦青', '13544292676', '市市政站上报', '22.58969', '114.10155', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('74', '深圳市下坪固体废弃物填埋场安全与环境综合整治工程 ', '罗湖区清水河街道宝洁路下坪填埋场内', '4403003010007', '市政公用工程', '2016.11.29', '钱学民', '13530452054', '市市政站上报', '22.58969', '114.10155', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('75', '深圳市下坪固体废弃物填埋场一期填埋库区封场及3号污泥坑治理工程 ', '罗湖区清水河街道宝洁路下坪填埋场内', '4403003010007', '市政公用工程', '2016.11.29', '杨晓兰', '13699788263', '市市政站上报', '22.58969', '114.10155', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('76', '深圳市下坪固体废弃物填埋场续建工程二区 ', '罗湖区清水河街道宝洁路下坪填埋场内', '4403003010007', '市政公用工程', '2016.11.29', '吴继彬', '18792651028', '市市政站上报', '22.58969', '114.10155', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('79', '深圳市城市轨道交通5号线南延线工程5122-2工区', '振海路与五号路交叉口', '4403005002013', '大,地铁', '2019.12.28', '刘邦', '18718861960', '市市政站上报', '22.51344', '113.89199', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('81', '新屋围余泥渣土收纳场工程', '南山区西丽镇绿平二路', '4403005008004', '大,受纳场', '1905/7/13', '张伟', '18922893811', '市市政站上报', '22.58386', '113.98894', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('84', '南山垃圾焚烧发电厂二期项目场平工程深圳市妈湾城市能源生态园项目场地平整工程', '南山区妈湾大道', '4403005002010', '大,场平工程', '2016.10.1', '吕高', '13808804047', '市市政站上报', '22.49223', '113.88306', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('85', '玛丝菲尔工业厂区二期', '龙华新区龙华大浪', '4403006011005', '厂房', '2014/12/30', '石亚军', '13826560510', '市质监站上报', '22.70722', '113.98959', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('86', '幸福城商业大厦', '龙华新区龙华和平路', '440306012', '办公', '2016/12/31', '巩传柱', '13717122005', '市质监站上报', '22.66770', '114.04298', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('87', '深圳机场开发区西区三期', '宝安区西乡街道航城大道北侧', '4403006003019', '其它', '2016/11/10', '边富平', '13620968711', '市质监站上报', '22.61818', '113.86390', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('88', '金众龙华A805-0050项目', '龙华新区白龙路与致远南路交汇处', '440306013', '其它', '2017/4/30', '王立建', '18603056177', '市质监站上报', '22.60904', '114.03768', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('89', '海安苑', '宝安区新安街道办', '440306001013', '住宅', '2016/7/15', '王中昆', '13922848657', '市质监站上报', '22.59594', '113.92482', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('90', '深圳地铁横岗车辆段综合物业开发项目', '龙岗区六约地铁站', '4403007017006', '其它', '2017/10/11', '吕凌风', '13902458070', '市质监站上报', '22.63758', '114.18699', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('91', '深圳大学南校区理工科教学楼,设计教学楼,实验与信息中心组合项目', '南山区深圳大学南校区', '4403005007004', '公共事业', '2017/5/28', '袁亚军', '18923705240', '市质监站上报', '22.53094', '113.94489', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('92', '深圳市平湖金融与现代服务业基地配套启动区一期融悦山居', '龙岗区平湖街道惠华路', '440307003007', '住宅', '2016/12/16', '王万利', '13249807818', '市质监站上报', '22.71194', '114114.66200', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('93', '香港中文大学深圳一期项目', '龙岗区龙岗区大运公园南侧,龙翔大道以北', '440307015', '公共事业', '2017/5/31', '顾本生', '18925266847', '市质监站上报', '22.69794', '114.22359', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('95', '宝泰大厦', '龙岗区南湾街道', '440307012', '办公', '2017/12/19', '苏德满', '-86321605', '市质监站上报', '22.65808', '114.12850', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('96', '宁佳花园', '龙岗区爱联新屯村', '', '住宅', '2017/3/22', '朱刚', '13922320486', '市质监站上报', '22.70690', '114.25301', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('97', '共享大厦基坑支护工程', '南山区西丽高新北', '440300120150028', '办公', '2017/7/23', '姜小平', '13510692416', '市质监站上报', '22.56605', '113.95318', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('100', '龙华新区民治旭联工业区更新项目01地块莱蒙创智谷大厦', '龙华新区龙胜路与建设路交汇处', '440306013', '住宅', '2017/9/30', '夏镇宇', '13631664613', '市质监站上报', '22.64908', '114.02604', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('101', '中设大厦', '罗湖区深圳市罗湖区布吉路1028号', '440303009', '其它', '2016/12/10', '施晓林', '13652326581', '市质监站上报', '22.58583', '114.12766', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('102', '深圳北站枢纽城市综合体D2地块物业开发项目', '龙华新区北站东广场留仙大道和民塘路交汇处', '4403006013025', '公共事业', '2017/12/15', '王锡玉', '13602689268', '市质监站上报', '22.61790', '114.03752', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('104', '安托山花园一期', '福田区香蜜湖街道安托山四路与侨香五道交汇处东北侧园区', '440304006', '住宅', '2019/5/9', '吴晓真', '15013458823', '市质监站上报', '22.55798', '114.01407', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('105', '南方科技大学B,C栋实验楼建设工程项目', '南山区学院大道1088号', '4403005008004', '办公', '2017/5/10', '徐永浩', '13502827338', '市质监站上报', '22.60088', '113.98242', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('106', '汉国城市商业中心', '福田区深南大道与福明路交汇', '4403004001020', '商业', '2014/7/23', '齐阳', '13808839290', '市质监站上报', '22.54550', '114.08583', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('107', '基金大厦', '福田区中心区', '440304008', '办公', '2016/4/23', '张昌桂', '26963926', '市质监站上报', '22.54672', '114.06134', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('108', '粤信物流基地', '龙岗区南湾街道下李朗平吉大道2号', '4403007012004', '办公', '2013/8/1', '罗涛', '13502811635', '市质监站上报', '22.65271', '114.13404', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('109', '京地大厦', '福田区福田中心区彩田路与福华三路交汇处', '4403004004026', '办公', '2016/5/30', '孙清江', '13602590138', '市质监站上报', '22.53713', '114.07344', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('110', '深圳国家基因库', '龙岗区大鹏新区大鹏街道下沙片区', '440307010', '办公', '2016/3/31', '郭亨豪', '13316834228', '市质监站上报', '22.59421', '114.47143', '', '594911');
INSERT INTO "sf_defence"."t_building" VALUES ('111', '能源大厦', '福田区中心区滨河大道与金田交汇处东北角', '440304004', '办公', '2017/5/2', '蔡永红', '18664957918', '市质监站上报', '22.53599', '114.07029', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('112', '深圳市人民公园改造项目', '罗湖区人民北路3071号人民公园内', '', '公共事业', '2013/3/25', '黄平', '18666392973', '市质监站上报', null, null, '', '');
INSERT INTO "sf_defence"."t_building" VALUES ('113', '深圳国家动漫画产业基地动漫大厦', '罗湖区怡景路2008号', '4403003002020', '办公', '2016/11/27', '蒋献军', '13902914994', '市质监站上报', '22.55558', '114.12685', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('114', '花语馨花园', '龙岗区布吉街道水径地区', '44030701407', '住宅', '2016/2/7', '谢斌', '13728995830', '市质监站上报', '22.61949', '114.12343', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('115', '深业东岭花园黄贝岭旧村改造项目', '罗湖区黄贝岭村', '4403003002003', '住宅', '2017/2/28', '徐亚杰', '13312971165', '市质监站上报', '22.55623', '114.14755', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('116', '天健科技大厦天健技术中心研发大楼', '南山区沙河街道', '4403005003015', '办公', '2016/12/30', '吴桂清', '13243760867', '市质监站上报', '22.55986', '113.99157', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('117', '华大基因中心项目', '盐田区大梅沙成坑', '440308001', '厂房', '2018/5/30', '陈宇', '13823277049', '市质监站上报', '22.58730', '114.25287', '', '594904');
INSERT INTO "sf_defence"."t_building" VALUES ('118', '中电迪富大厦[上步片区第七城市更新单元07-01地块拆除重建项目]', '福田区华发北路与振华路交叉路口东南角', '4403004011006', '住宅', '2017/8/12', '韦涛', '13145928661', '市质监站上报', '22.54915', '114.09579', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('119', '国香山翡翠华庭', '龙岗区南湾街道', '440307012', '住宅', '2016/11/20', '涂志斌', '13714166229', '市质监站上报', '22.62044', '114.17096', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('120', '颐安都会中央花园Ⅱ区颐安天著花园', '龙岗区龙兴大道与红棉路交汇处西北侧', '4403007015001', '住宅', '2016/2/1', '马长春', '13562598425', '市质监站上报', '22.69490', '114.23427', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('121', '核级设备鉴定实验楼核电站安全壳内不可接近设备研发和实验中心二期', '大鹏新区鹏飞路391号', '440307010', '办公', '2015/8/15', '张福元', '-83671606', '市质监站上报', '22.60061', '114.54547', '', '594911');
INSERT INTO "sf_defence"."t_building" VALUES ('122', '深圳市职工继续教育学院新校区建设工程', '坪山新区坪山新区坪山街道创景南路以西,兰田路以南', '4403007007018', '住宅', '2016/12/31', '余洪祥', '13925293878', '市质监站上报', '22.70427', '114.40558', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('123', '深业中城05-03地块', '福田区深圳市福田区', '440304', '其它', '2016/10/30', '蒋凌东', '13510934993', '市质监站上报', '22.54699', '114.03145', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('124', '八卦岭安吉尔饮水科技产业园项目', '福田区深圳市福田区八卦岭工业区八卦四路', '440304002', '其它', '2016/9/20', '武国强', '13602605210', '市质监站上报', '22.56911', '114.10594', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('125', '深业东岭花园', '罗湖区深南东路黄贝岭村', '4403003002004', '住宅', '2017/4/30', '徐亚杰', '13312971165', '市质监站上报', '22.55623', '114.14755', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('126', '御景翠峰小区', '盐田区深盐路梧桐山隧道南侧径口村', '440308', '住宅', '2016/7/10', '索桂喜', '13714563871', '市质监站上报', '22.55906', '114.22779', '', '594904');
INSERT INTO "sf_defence"."t_building" VALUES ('127', '深圳元平特殊教育学校高中部综合楼', '龙岗区布吉西环路元平特殊教育学校', '440307014', '公共事业', '2015/7/31', '谢亚辉', '18675582258', '市质监站上报', '22.59709', '114113.98800', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('128', '花样.乐.广场', '龙岗区龙城街道回龙路北面', '440307015', '住宅', '2017/8/30', '杨文', '13823284429', '市质监站上报', '22.74201', '114.23740', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('129', '康利信息谷大楼', '龙岗区深圳市龙岗区南湾街道平吉大道与友信路交汇处', '440307012004', '办公', '2016/11/29', '周先军', '13590200802', '市质监站上报', '22.66387', '114.13727', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('130', '奋达工业园二期', '宝安区石岩街道办洲石路奋达科技工业园', '440306008', '厂房', '2016/11/30', '王桂生', '18948794985', '市质监站上报', '22.67830', '113.90432', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('131', '康利物联谷大厦', '龙岗区南湾街道平吉大道与友信路交汇处', '440307012', '办公', '2016/11/29', '周先军', '13590200802', '市质监站上报', '22.66491', '114.13470', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('132', '中环阳光星苑', '龙岗区平湖街道', '440307003', '住宅', '2018/4/30', '谢景才', '13527762529', '市质监站上报', '22.69136', '114.12094', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('133', '深圳市城市生物质垃圾处置工程', '坪山新区坪山新区坪山办事处', '440307014', '其它', '2014/8/13', '黄道红', '18688999504', '市质监站上报', '22.61598', '114.09904', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('134', '深业中城05－01地块', '福田区红荔西路与农园路交汇处', '4403004006020', '住宅', '2017/11/24', '杨宁瑄', '15323776581', '市质监站上报', '22.54661', '114.02874', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('135', '中粮凤凰里项目', '宝安区福永街道塘新路与大洋路交汇处', '4403006004011', '住宅', '2016/11/20', '邓进', '18938887048', '市质监站上报', '22.70152', '113.82645', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('136', '深圳市第九高级中学', '坪山新区坪山办事处金田路与创景路交汇处西北侧', '4403007007010', '公共事业', '2016/8/16', '胡国庆', '15218711837', '市质监站上报', '22.69919', '114.40555', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('137', '深圳市宝安区翻身工业区旧城改造项目13-02地块', '宝安区新安街道广深公路与上川路交汇处西侧', '4403006001017', '住宅', '2019/1/27', '黄达林', '13751151716', '市质监站上报', '22.57770', '113.89777', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('138', '深圳市宝安区翻身工业区旧城改造项目13-03地块', '宝安区新安街道广深公路与上川路交汇处东侧', '4403006001017', '住宅', '2019/1/27', '黄达林', '13751151716', '市质监站上报', '22.57579', '113.89977', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('139', '沙浦工业区片区更新单元一期A408-1100号宗地项目', '宝安区松岗镇107国道与松福大道交界处', '4403006006016', '住宅', '2018/8/31', '马旭', '15307378290', '市质监站上报', '22.79052', '113.84545', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('140', '石岩福田保障性住房项目一,二地块', '宝安区石岩镇宗地号：A724-0014', '440306008', '住宅', '2018/6/16', '张小平', '13923750327', '市质监站上报', '22.69706', '113.98141', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('141', '陶柏莉花园一期', '大鹏新区葵涌社区', '4403007009001', '住宅', '2016/8/30', '李维众', '13924659120', '市质监站上报', '22.63886', '114.41749', '', '594911');
INSERT INTO "sf_defence"."t_building" VALUES ('142', '陶柏莉花园二期', '大鹏新区葵涌社区', '4403007009001', '住宅', '2016/8/30', '李维众', '13924659120', '市质监站上报', '22.64111', '114.41461', '', '594911');
INSERT INTO "sf_defence"."t_building" VALUES ('143', '沙浦工业区片区更新单元一期A408-1099号宗地项目', '宝安区松岗镇107国道与松福大道交界处', '440306006', '住宅', '2018/10/30', '左利清', '18665329472', '市质监站上报', '22.79270', '113.84153', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('144', '沙浦工业区片区更新单元二期01-02,02-03,02-11项目', '宝安区松岗街道松瑞路与艺展二路交界处', '440306006', '住宅', '2018/8/30', '王金安', '13480868310', '市质监站上报', '26.59057', '113.79249', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('145', '辉盛阁酒店', '罗湖区振华路与华富路交汇处', '440304', '商业', '2016/9/25', '颜欢民', '13798203219', '市质监站上报', '22.54961', '114.08801', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('146', '坪山街道办竹坑社区综合服务站和户外文体广场', '坪山新区坪山街道竹坑社区', '4403007007012', '办公', '2015/12/19', '黄道红', '18688999504', '市质监站上报', '22.70211', '113.42354', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('147', '深圳市城市生物质垃圾处置工程', '龙岗区布吉街道郁南园环路1号', '440307014', '其它', '2016/12/18', '刘克运', '13723718577', '市质监站上报', '22.61598', '114.09904', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('148', '清华大学深圳研究生院创新基地建设工程二期', '南山区深圳大学城清华大学深圳研究生院西侧', '4403005008012', '公共事业', '2016/6/28', '张宏俊', '13714325432', '市质监站上报', '22.59886', '113.97433', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('149', '深圳市第三高级中学高中部综合楼建设工程', '龙岗区第三高级中学校区', '440307016', '公共事业', '2017/7/31', '董伟兵', '18098947396', '市质监站上报', '22.71236', '114.22758', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('150', '深圳市新明医院', '光明新区凤新路', '4403006002005', '公共事业', '2016/12/15', '杨宪云', '13631522510', '市质监站上报', '22.79234', '113.95773', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('151', '月亮湾山庄', '南山区棉山路与欣月路交汇处', '4403005002010', '住宅', '2016/3/31', '蔡铁军', '13823220926', '市质监站上报', '22.49715', '113.89435', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('152', '恒裕滨城花园', '南山区后海滨路东招商东路北', '4403005005002', '住宅', '2017/4/1', '周先珍', '13428751535', '市质监站上报', '22.50205', '113.94573', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('153', '大成基金总部大厦', '南山区粤海街道科苑大道路西', '4403006005027', '办公', '2017/9/30', '张淑梅', '18319017161', '市质监站上报', '22.73788', '113.79179', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('154', '海信南方大厦', '南山区后海滨路东侧创业路南侧', '4403005007019', '办公', '2017/9/30', '孙灏', '18028707583', '市质监站上报', '22.51789', '113.94647', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('155', '诚盈商务中心', '南山区月亮湾大道与棉山路交汇处东南向', '4403005002010', '办公', '2018/1/20', '黄旭东', '13249844118', '市质监站上报', '22.50116', '113.89099', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('156', '深圳市养老护理院', '南山区桃源村北侧龙珠片区龙苑路', '4403005008013', '住宅', '2016/7/30', '苏觉林', '13808838533', '市质监站上报', '22.56899', '113.98973', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('157', '中熙香山美林苑', '南山区东滨路319号', '4403005002008', '住宅', '2016/5/10', '许静波', '15818752053', '市质监站上报', '22.51408', '113.92357', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('158', '方大广场', '南山区龙珠四路', '4403005008016', '商业', '2017/11/30', '郑立新', '18038013176', '市质监站上报', '22.56174', '113.98036', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('159', '美讯数码科技厂区', '坪山新区坑梓街道锦绣中路以南', '4403007008002', '厂房', '2014/5/31', '刘平', '13691892501', '市质监站上报', '22.73269', '114.39121', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('160', '山胜工业厂区', '龙岗区坪地高桥工业区教育北路与佳兴路交汇处', '4403007006009', '厂房', '2015/12/30', '蒋灯银', '13808809196', '市质监站上报', '22.79191', '114.30626', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('161', '正展逸园', '龙岗区坂田街道办坂澜大道', '4403007013014', '住宅', '2016/5/10', '李东怀', '13702713258', '市质监站上报', '22.65182', '114.08147', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('162', '卓越宝中时代广场', '宝安区深圳市宝安中心区,宝华路以东,海天路以南。', '4403006001021', '办公', '2018/3/30', '宋义刚', '13714680593', '市质监站上报', '22.55207', '113.89145', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('163', '前海东岸花园', '南山区南头北环大道北侧南山大道西侧', '440305001', '住宅', '2017/5/27', '郭凯', '13923748910', '市质监站上报', '22.55823', '113.92338', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('164', '星航华府', '宝安区福永107国道与兴华路交界处', '4403006004007', '住宅', '2016/10/27', '肖喜武', '13828079030', '市质监站上报', '22.64909', '113.83864', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('165', '果园背鼎盛大厦', '坪山新区坪山办事处坪环社区中山大道', '4403007007020', '办公', '2016/11/15', '黄道红', '84884301', '市质监站上报', '22.68626', '114.34211', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('166', '富森大厦', '光明新区高新技术产业园双明大道以南一号路以东', '4403006007015', '', '2016/6/10', '袁陆峰', '82095522', '市质监站上报', '22.77440', '113.92807', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('167', '南山宝湾物流中心项目', '南山区赤湾地铁口', '44030050060054', '厂房', '2017/7/30', '李强', '13828867938', '市质监站上报', '22.48448', '113.90140', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('168', '西北工业大学三航科技大厦', '南山区科园路与粤兴五道交汇处宗地号T204-0115', '4403005007003', '办公', '2017/7/6', '王成山', '13332960898', '市质监站上报', '22.53353', '113.94815', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('169', '荣超后海大厦', '南山区高新区填海六区', '4403005007023', '办公', '2017/11/30', '许建平', '83694220', '市质监站上报', '22.52835', '113.94716', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('170', '南油大厦城市更新项目', '南山区南海大道以东,登良路以南', '440305', '办公', '2019/4/9', '金朝阳', '13826584561', '市质监站上报', '22.51429', '113.93276', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('171', '中粮云景花园南区', '光明新区公明街道', '4403006007005', '住宅', '2016/10/25', '赵坤强', '13684952005', '市质监站上报', '22.78360', '113.89459', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('172', '中粮紫云项目', '宝安区22区新安二路与公园路交汇处', '4403006001006', '住宅', '2017/1/25', '孙庆涛', '18938975510', '市质监站上报', '22.57586', '113.91952', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('173', '鹏远华建仓库1#仓库,2#仓库', '龙岗区南湾街道友信路与李朗路交界处', '4403007012003', '仓库', '2017/5/3', '王杞', '13923848671', '市质监站上报', '22.66611', '114.13866', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('174', '星河雅宝高科创新园项目', '龙岗区坂田监督', '4403007013020', '办公', '2018/9/11', '李明道', '13921715670', '市质监站上报', '22.60934', '114.06419', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('175', '城脉后海湾公馆', '南山区后海大道2066号', '440305007', '住宅', '2015/10/18', '张远平', '13689556933', '市质监站上报', '22.51271', '113.93837', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('176', '中国资本市场学院', '南山区动物园路与沁园路交汇处', '4403005009011', '办公', '2015/10/11', '奚书良', '13901874756', '市质监站上报', '22.60277', '113.97555', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('177', '四方精创资讯中心', '南山区科技南八路', '440305007', '办公', '2015/12/1', '曾敏', '25505574', '市质监站上报', '22.54021', '113.95820', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('178', '中科纳能研发中心', '南山区科技园南区', '440305007', '办公', '2016/4/6', '张再群', '83672361', '市质监站上报', '22.53264', '113.94690', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('179', '天鹅湖1号', '南山区华侨城内', '4403005003026', '住宅', '2015/12/5', '许向平', '13723746581', '市质监站上报', '22.55154', '113.99227', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('180', '地铁科技大厦', '南山区科苑路与深南大道交汇处', '4403005007004', '办公', '2018/3/6', '姜奇', '18924676873', '市质监站上报', '22.54499', '113.94998', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('181', '华联城市全景花园宝安区新安27区华联片区城市更新单元项目', '宝安区27区创业二路与公园路的交汇处', '4403006001000', '其它', '2016/8/31', '张玉民', '13723746581', '市质监站上报', '22.57977', '113.91289', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('182', '豪方天际花园', '南山区北环路以北农批市场以西', '44030500100', '住宅', '2017/1/19', '李强', '', '市质监站上报', '22.56081', '113.92702', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('183', '幸福港湾尚品居', '宝安区西乡大道与兴业路交汇处', '4403006003005', '住宅', '2016/5/16', '彭克非', '13632822103', '市质监站上报', '22.57342', '113.86220', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('184', '中建钢构大厦', '南山区后海中心区中心路西登良路南', '440305007', '办公', '2015/11/30', '刘小军', '13316969706', '市质监站上报', '22.51453', '113.94699', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('185', '天鹅湖2号地', '南山区华侨城内', '4403005003026', '住宅', '2017/5/13', '李福泉', '17727880660', '市质监站上报', '22.55154', '113.99227', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('186', '香江金融中心', '前海区前海合作区兴海大道东北侧', '4403005001020', '办公', '2015/11/30', '许晓曲', '13530152792', '市质监站上报', '22.50744', '113.89530', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('187', '金迪世纪大厦', '南山区华侨城侨香路以北', '4403005003015', '', '2017/8/8', '程传信', '13510417566', '市质监站上报', '22.54730', '114.00045', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('188', '航空航天大厦', '南山区科园路', '4403005007003', '办公', '2016/9/10', '陈建宇', '18142686495', '市质监站上报', '22.53302', '113.94672', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('189', '源政创新大楼城市更新项目', '南山区朗山路19号', '4403005007023', '办公', '2017/3/23', '马剑', '13682382038', '市质监站上报', '22.56214', '113.94828', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('190', '深圳职业技术学院西校区综合楼', '南山区留仙大道深圳职业技术学院西校区', '440305009', '公共事业', '2016/8/19', '乌云高娃', '13809617703', '市质监站上报', '22.58820', '113.93810', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('191', '鹏瑞深圳湾壹号广场南地块三期', '南山区科苑大道与东滨路交汇处西北侧', '4403005007011', '其它', '2018/2/8', '张光福', '13684955561', '市质监站上报', '22.51193', '113.94778', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('192', '星河传奇花园二期原名：龙华新区民治上塘工业区城市更新项目1－02地块', '龙华新区民治街道', '440306013', '住宅', '2017/5/31', '龚裕祥', '13510613257', '市质监站上报', '22.63737', '114.02367', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('193', '达实大厦改扩建项目', '南山区高新南区科技南一路在实大厦原C2厂房旁', '4403005007003', '办公', '2018/5/26', '郑明亮', '13530993330', '市质监站上报', '22.54100', '113.94878', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('194', '中兴通讯工业园南区人才公寓', '南山区西丽留仙洞宗地号：T501-0041', '440305009011', '住宅', '2017/8/21', '刘文华', '13632913784', '市质监站上报', '22.58317', '113.94013', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('195', '宝安区沙井街道金达工业区城市更新项目', '宝安区沙井街道', '4403006005030', '住宅', '2020/4/25', '詹世友', '13632985890', '市质监站上报', '22.72798', '113.81238', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('196', '半岛城邦花园四期', '南山区蛇口东角头望海路南侧', '4403005005001', '住宅', '2018/5/30', '陈汉强', '18923464024', '市质监站上报', '22.48749', '113.94064', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('197', '喜之郎大厦', '南山区后海中心区中心路西侧', '4403005007011', '办公', '2018/12/31', '周国辉', '13592787968', '市质监站上报', '22.51355', '113.94700', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('198', '前海周大福全球商品购物中心', '前海区南山区前湾一路北侧', '440305002', '办公', '2016/4/1', '邱黄德', '13538553156', '市质监站上报', '22.52705', '113.90676', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('199', '星河传奇商厦暂定名：龙华新区民治上塘工业区城市更新项目1-03地块', '龙华新区民治街道A817-0580', '440306013', '办公', '2018/4/12', '李谷良', '18925219728', '市质监站上报', '22.63745', '114.02464', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('212', '万科云城四期', '南山区西丽街道石鼓路西面', '4403005009011', '住宅', '2017/8/18', '颜博智', '18823826290', '市质监站上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('215', '万科云城五期', '南山区西丽街道留新一路南面同发南路西面', '4403005009011', '住宅', '2015/12/24', '张朴', '18200984123', '市质监站上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('218', '鼎和大厦', '福田区深南大道2008号凤凰大厦门1号楼14层', '4403004004030', '办公', '2015/6/4', '马曙', '13823732572', '市质监站上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('234', '大百汇高新技术产业园', '盐田区深盐路以北', '440308004', '办公', '2015/7/18', '张俊伟　', '13713672906', '市质监站上报', '22.57374', '114.25589', '', '594904');
INSERT INTO "sf_defence"."t_building" VALUES ('269', '创益科技大厦', '南山区高新中区科技中一路与高新中一道交汇处', '440305007', '办公', '2018/10/20', '王广陆', '13682374540', '市质监站上报', '22.55526', '113.94413', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('279', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '商业办公,二类住宅', null, '江海炼', '13632831682', '福田区住建局上报', '22.54341', '114.07018', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('280', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '商业办公,公寓', null, '江海炼', '13632831682', '福田区住建局上报', '22.54242', '114.07233', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('281', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '小学幼儿园', null, '江海炼', '13632831682', '福田区住建局上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('282', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '商业办公,商务公寓', null, '江海炼', '13632831682', '福田区住建局上报', '22.54208', '114.07152', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('283', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '商业用地,二类住宅', null, '江海炼', '13632831682', '福田区住建局上报', '22.54052', '114.07323', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('284', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '商业办公', null, '江海炼', '13632831682', '福田区住建局上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('285', '岗厦旧改项目深圳中心天元', '深圳市福田中心区深南大道南金田路东', '岗厦社区4403004004030', '二类住宅,商业服务设施', null, '江海炼', '13632831682', '福田区住建局上报', '22.53905', '114.07242', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('295', '梅富社区环境综合整治工程', '梅富社区', '4403004008010', '综合整治', '2016.10.01', '林凤才', '15815573586', '福田区住建局上报', '22.56213', '114.04999', '', '594902');
INSERT INTO "sf_defence"."t_building" VALUES ('305', '酷派信息港城市更新项目一期基坑支护及开挖工程', '高新北区科苑大道与宝深路交汇处', '440305009006', '基坑支护工程', '2016.8.30', '丁杰', '15889629919', '南山区住建局上报', '22.56637', '113.95139', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('324', '阳光粤海花园', '南山区科技南一路与白石路交汇处', '440305007', '房建', '2017/7/1', '万多义', '13925293934', '南山区住建局上报', '22.54035', '113.94709', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('343', '红花岭工业区南区人行天桥', '红花岭工业区南区红花三路', '440305008', '市政', '2016/12/23', '林建华', '13510826680', '南山区住建局上报', '22.58862', '113.97497', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('348', '海上世界船头广场土石方和基坑支护及桩基础工程', '深圳市南山区蛇口望海路海上世界片区', '440305005014', '公共建筑', '2017.12.1', '夏传涛', '18018720509', '南山区住建局上报', '22.48894', '113.92422', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('349', '石龙仔大道石观路-北环路中压市政燃气管道工程', '石龙社区', '4403006008009', '燃气', '2016/8/1', '杨启锋', '13316907668', '宝安区住建局上报', '22.70094', '113.97034', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('350', '石龙仔大道石岩外环路—北环路中压燃气管道工程', '石龙社区', '4403006008009', '燃气', '2016/8/1', '杨文雄', '13612896023', '宝安区住建局上报', '22.69015', '113.95942', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('351', '松白路石岩西丽交界节点景观工程', '应人石社区', '4403006008029', '市政', '2016/8/1', '王勇', '13672777368', '宝安区住建局上报', '22.64156', '113.93743', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('352', '松白路石岩光明交界节点景观工程', '径贝社区', '4403006008020', '市政', '2016/8/1', '刘保辉', '13510990036', '宝安区住建局上报', '22.71008', '113.92180', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('353', '石岩街道2016.地质灾害治理工程——官田新时代工业区北环北后山弃土点边坡工程', '官田社区', '4403006008012', '市政', '2016/8/1', '周郭荣', '13723400438', '宝安区住建局上报', '22.69060', '113.95249', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('354', '石岩街道2016.地质灾害治理工程——官田新时代工业区后面弃土点治理工程', '官田社区', '4403006008012', '市政', '2017/4/1', '姚清水', '18718515125', '宝安区住建局上报', '22.69072', '113.95498', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('355', '石岩街道2016.地质灾害治理工程——石岩街道北部为原农业采石场石岩东受纳场边坡工程', '上下屋社区', '4403006008015', '市政', '2018/1/1', '郝敬宾', '13715211561', '宝安区住建局上报', '22.70500', '113.94446', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('356', '石岩街道2016.地质灾害治理工程——应人石天宝路32号金星幼儿园边坡地质灾害治理工程', '应人石社区', '4403006008029', '市政', '2016/12/1', '姚清水', '18718515125', '宝安区住建局上报', '22.65375', '113.93178', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('357', '石岩街道2016.地质灾害治理工程——水田第四工业区八方缘科技园外侧挡土墙工程', '水田社区', '4403006008010', '市政', '2016/12/1', '曲莉', '13510929038', '宝安区住建局上报', '22.70191', '113.97005', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('358', '石岩街道2016.地质灾害治理工程——华兴花园旁边坡治理工程', '罗租社区', '4403006008026', '市政', '2016/9/1', '周郭荣', '13723400438', '宝安区住建局上报', '22.67420', '113.93759', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('359', '石岩街道2016.余泥渣土受纳场治理工程——宝达石场位于石岩街道与西丽街道交汇处弃土点边坡工程', '应人石社区', '4403006008029', '市政', '2016/10/1', '黄海珍', '18679798180', '宝安区住建局上报', '22.63671', '113.93107', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('360', '石岩街道2016.余泥渣土受纳场治理工程——宝石路南侧石岩水田受纳场边坡工程', '水田社区', '4403006008010', '市政', '2016/12/1', '杨汉元', '13823782256', '宝安区住建局上报', '22.68340', '113.97261', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('361', '石岩街道2016.余泥渣土受纳场治理工程——宝达石场旁中泛集团弃土点边坡工程', '应人石社区', '4403006008029', '市政', '2016/12/1', '郝敬宾', '13715211561', '宝安区住建局上报', '22.63760', '113.93138', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('362', '石岩街道2016.余泥渣土受纳场治理工程——水田实验学校西侧边坡', '水田社区', '4403006008010', '市政', '2016/11/1', '曲莉', '13510929038', '宝安区住建局上报', '22.68728', '113.96243', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('363', '石岩街道2016.地质灾害治理工程——北环路径贝安吉尔后山弃土点边坡', '径贝社区', '4403006008020', '市政', '2017/12/1', '黄海珍', '18679798180', '宝安区住建局上报', '22.70582', '113.92673', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('364', '汇龙达工业园D栋厂房幕墙工程', '石龙社区', '4403006008009', '幕墙', '2016/8/1', '李晓明', '18925251798', '宝安区住建局上报', '22.70397', '113.98050', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('365', '石岩街道保障性住房配套道路新建工程', '罗租社区', '4403006008026', '市政', '2016/9/1', '黄群', '13902772292', '宝安区住建局上报', '22.67923', '113.95284', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('366', '恩斯迈厂区宿舍楼E3-1员工宿舍楼不含桩基', '塘头社区', '4403006008028', '房建', '2016/11/1', '祝必学', '13501579949', '宝安区住建局上报', '22.67002', '113.91863', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('367', '恩斯迈工业厂区E5-1宿舍楼', '塘头社区', '4403006008028', '房建', '2018/1/1', '祝必学', '13501579949', '宝安区住建局上报', '22.67002', '113.91863', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('368', '人人乐物流中心不含桩基', '料坑社区', '', '房建', '2016/12/1', '陈宜汉', '15980868621', '宝安区住建局上报', '22.67623', '113.89600', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('369', '创维科技工业园二期地下室B区C区及1#楼,2#楼,3#楼含桩基础,4#楼工程', '塘头社区', '4403006008028', '房建', '2018/10/1', '陈建民', '18606795805', '宝安区住建局上报', '22.64637', '113.93039', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('370', '石岩宝石东路高科路—羊台山路中压燃气管道工程', '唐坑社区', '4403006008014', '燃气', '2017/10/1', '马健', '13923857836', '宝安区住建局上报', '22.68629', '113.95574', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('371', '汇龙达工业园D栋厂房不含桩基', '石龙社区', '4403006008009', '房建', '2016/12/1', '姚根兴', '13902955972', '宝安区住建局上报', '22.70397', '113.98050', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('372', '石岩医院扩建一期项目', '罗租社区', '4403006008026', '房建', '2016/12/1', '陈迪', '13760374150', '宝安区住建局上报', '22.68329', '113.94667', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('373', '中熙香莎公馆1栋,2栋,3栋燃气工程', '沙头社区', '4403006005001', '燃气', '2017/1/1', '谭群', '13715268819', '宝安区住建局上报', '22.72927', '113.81513', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('374', '沙井路新和大道-茅洲河中压燃气管道工程', '后亭社区', '4403006005002', '燃气', '2016/12/1', '陈文俊', '13717005694', '宝安区住建局上报', '22.76127', '113.82435', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('375', '沙井新和大道洋下四路-广深公路中压燃气管道工程', '新桥社区', '4403006005022', '燃气', '2016/10/1', '胡家波', '13925247743', '宝安区住建局上报', '22.74431', '113.84511', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('376', '沙井新和大道西环路-东宝路中压燃气管道工程', '共和社区', '4403006005004', '燃气', '2018/2/1', '王勇', '13717005694', '宝安区住建局上报', '22.76671', '113.80984', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('377', '沙井新和大道宝安大道-洋下四路中压燃气管道工程', '后亭社区', '4403006005002', '燃气', '2016/10/1', '田文彬', '13713858666', '宝安区住建局上报', '22.75580', '113.83288', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('378', '沙井中心地区西片项目15-06-02地块土石方及基坑支护', '万丰社区', '4403006005020', '基坑基础', '2016/8/1', '胡瑞超', '13502853385', '宝安区住建局上报', '22.73118', '113.82860', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('379', '华盛新沙荟名庭三期', '壆岗社区', '4403006005019', '房建', '2017/3/1', '孙际宣', '13826583289', '宝安区住建局上报', '22.73880', '113.82412', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('380', '锦胜财富大厦施工总承包工程宗地号：A308-0108', '马安山社区', '4403006005018', '房建', '2018/10/1', '周亚平', '13925251956', '宝安区住建局上报', '22.71848', '113.82468', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('381', '锦胜财富大厦项目桩基础工程宗地号：A308-0108', '马安山社区', '4403006005018', '基坑基础', '2016/10/1', '罗曙东', '18015208068', '宝安区住建局上报', '22.71848', '113.82468', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('382', '锦胜财富大厦项目土石方及基坑支护工程01地块', '马安山社区', '4403006005018', '基坑基础', '2016/10/1', '刘炜', '13510305069', '宝安区住建局上报', '22.71848', '113.82468', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('383', '锦胜财富大厦施工总承包工程宗地号：A308-0109', '马安山社区', '4403006005018', '房建', '2018/10/1', '黄光林', '13902943792', '宝安区住建局上报', '22.71848', '113.82468', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('384', '锦胜财富大厦项目桩基础工程宗地号：A308-0109', '马安山社区', '4403006005018', '基坑基础', '2016/10/1', '罗曙东', '18015208068', '宝安区住建局上报', '22.71848', '113.82468', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('385', '锦胜财富大厦项目土石方及基坑支护工程02地块', '马安山社区', '4403006005018', '基坑基础', '2016/10/1', '刘炜', '13510305069', '宝安区住建局上报', '22.71848', '113.82468', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('386', '广深公路凤塘大道-宝文路中压燃气管道工程', '蚝三社区', '4403006005007', '燃气', '2016/10/1', '杨定省', '13802272998', '宝安区住建局上报', '22.70763', '113.83976', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('387', '广深公路松裕路-宜新街中压燃气管道工程', '东方社区', '4403006006006', '燃气', '2016/10/1', '钟国群', '13530698832', '宝安区住建局上报', '22.77308', '113.85514', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('388', '广深公路广深高速-松裕路中压燃气管道工程', '东方社区', '4403006006006', '燃气', '2016/10/1', '马建勋', '75583138245', '宝安区住建局上报', '22.76088', '113.85307', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('389', '壆岗小学扩建工程', '壆岗社区', '4403006005019', '房建', '2017/3/1', '陈华强', '13751035338', '宝安区住建局上报', '22.73937', '113.82515', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('390', '沙井街道2016.地质灾害治理工程——黄埔社区洪田郊野公园西南侧危险边坡工程', '黄埔社区', '4403006005025', '市政', '2016/10/1', '夏军红', '13713844411', '宝安区住建局上报', '22.70620', '113.86244', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('391', '沙井街道2016.危险边坡治理工程——大坣工业区与马安山社区交界处挡墙工程', '沙头社区', '4403006005001', '市政', '2016/7/1', '王荣贵', '15817447515', '宝安区住建局上报', '22.72407', '113.82011', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('392', '沙井街道2016余泥渣土受纳场治理工程——玉龙路北侧五指耙公园范围内沙井新发受纳场填土边坡工程', '新桥社区', '4403006005022', '市政', '2016/8/1', '贺香宝', '15917911123', '宝安区住建局上报', '22.73428', '113.88055', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('393', '沙井街道2016.地质灾害治理工程——黄埔大坑赛车场北侧边坡工程', '黄埔社区', '4403006005025', '市政', '2016/9/2', '王伏春', '13714910100', '宝安区住建局上报', '22.71690', '113.87788', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('394', '沙井街道2016.地质灾害治理工程——安新路治安队对面挡墙工程', '马安山社区', '4403006005018', '市政', '2016/9/3', '王文超', '18652323058', '宝安区住建局上报', '22.72323', '113.82102', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('395', '沙井街道2016.地质灾害治理工程——大王山公园东侧边坡', '大王山社区', '4403006005017', '市政', '2016/10/4', '洪玲', '13530475696', '宝安区住建局上报', '22.71946', '113.81422', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('396', '沙井街道2016.地质灾害治理工程——马安山北区与捷和厂艺群厂交界处丽丽毛衣厂周边挡墙工程', '沙头社区', '4403006005001', '市政', '2016/8/1', '聂志勇', '15813818475', '宝安区住建局上报', '22.72385', '113.82010', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('397', '沙井街道2016.地质灾害治理工程——沙头社区林坡坑富达工业区边坡工程', '蚝三社区', '4403006005007', '市政', '2016/10/6', '廉宏涛', '13480158304', '宝安区住建局上报', '22.70944', '113.84283', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('398', '沙井街道2016.地质灾害治理工程——沙井国税局西北侧堆填区边坡工程', '壆岗社区', '4403006005019', '市政', '2016/8/1', '聂细生', '13410553995', '宝安区住建局上报', '22.74253', '113.83268', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('399', '沙井街道2016.地质灾害治理工程——蚝四林坡坑工业区挡墙工程', '蚝三社区', '4403006005007', '市政', '2016/7/8', '江政炎', '15220191218', '宝安区住建局上报', '22.70844', '113.84803', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('400', '沙井街道2016.危险边坡治理工程——黄埔社区华艺厂东侧挡墙工程', '黄埔社区', '4403006005025', '市政', '2016/8/1', '赵志强', '13723400438', '宝安区住建局上报', '22.70903', '113.86291', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('401', '南浦路蚝三林坡坑二区挡墙工程', '蚝三社区', '4403006005007', '市政', '2016/7/10', '胡博文', '13428986934', '宝安区住建局上报', '22.70835', '113.84678', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('402', '沙井街道2016.地质灾害治理工程-新二社区华生电机厂北侧挡墙工程', '新二社区', '4403006005021', '市政', '2016/8/1', '王玉梅', '13825262861', '宝安区住建局上报', '22.73533', '113.84847', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('403', '宝亭锦园A,B,C,D座,幼儿园不含桩基', '后亭社区', '4403006005002', '市政', '2017/3/1', '陈铿斌', '13632935432', '宝安区住建局上报', '22.76289', '113.82710', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('404', '沙井街道路网完善工程——步涌社区德兴路新建工程', '步涌社区', '4403006005003', '市政', '2016/6/15', '杨东华', '13694250284', '宝安区住建局上报', '22.76820', '113.80881', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('405', '沙井街道永兴路迎宾路—瑞丰路新建工程', '壆岗社区', '4403006005019', '市政', '2016/9/1', '肖仕旺', '13711111983', '宝安区住建局上报', '22.73833', '113.83342', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('406', '沙井街道路网完善工程—辛养社区泽台路新建工程', '辛养社区', '4403006005013', '市政', '2016/7/1', '黄财学', '13823386244', '宝安区住建局上报', '22.74455', '113.81933', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('407', '康威厂区1,2栋厂房及地下室不含桩基', '黄埔社区', '4403006005025', '房建', '2017/3/1', '陈迎春', '13682386528', '宝安区住建局上报', '22.71856', '113.86123', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('408', '沙井新桥股份合作公司工业厂区工程厂房,宿舍', '新桥社区', '4403006005022', '房建', '2016/9/1', '付山明', '13808830567', '宝安区住建局上报', '22.74549', '113.84905', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('409', '松福大道土建工程K9+700——K13+170', '辛养社区', '4403006005013', '市政', '2016/10/4', '徐鸿兵', '18823211089', '宝安区住建局上报', '22.77374', '113.81123', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('410', '中熙香莎公馆1栋,2栋,3栋不含桩基,含地下室', '沙头社区', '4403006005001', '房建', '2016/12/6', '廖艺力', '13590253379', '宝安区住建局上报', '22.72927', '113.81513', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('411', '轨道交通三期11号线宝安段绿化永久恢复工程', '碧头社区', '4403006006011', '市政', '2016/9/1', '胡苏明', '13510197218', '宝安区住建局上报', '22.78941', '113.82476', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('412', '松岗西片区九.一贯制学校土石方及基坑支护工程', '红星', '440306006007', '房建', '2017/6/16', '余小明', '15012463700', '宝安区住建局上报', '22.79581', '113.82623', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('413', '通港达新能源汽车场桩基础工程', '塘下涌', '440306006014', '房建', '2016/9/14', '吴磊', '15820756502', '宝安区住建局上报', '22.76523', '113.85782', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('414', '松岗街道松岗体育中心周边道路完善工程—岗顶路新建工程', '东方社区', '440306006006', '市政', '2016/9/12', '唐江明', '13809611607', '宝安区住建局上报', '22.77355', '113.88065', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('415', '松岗潭头小学扩建工程', '潭头', '440306006015', '房建', '2017/1/4', '孙勋', '18666665548', '宝安区住建局上报', '22.76608', '113.84944', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('416', '松岗第一小学拆除扩建工程', '花果山', '440306006001', '房建', '2017/6/16', '陈如宏', '13713826099', '宝安区住建局上报', '22.77916', '113.84961', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('417', '老虎坑垃圾卫生填埋场二期工程——中区工程', '燕川', '440306006017', '市政', '2016/11/4', '张安强', '18666686378', '宝安区住建局上报', '22.84845', '113.84281', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('418', '松岗人民医院扩建工程上部工程', '沙浦', '440306006016', '房建', '2017/3/23', '张顺保', '13066877867', '宝安区住建局上报', '22.80047', '113.82997', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('419', '松岗街道燕罗塘片区罗象路新建工程', '罗田', '440306006008', '市政', '2016/10/1', '张宝森', '18589027974', '宝安区住建局上报', '22.86471', '113.88765', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('420', '粤深钢工业厂区二期桩基', '潭头', '440306006015', '房建', '2017/12/14', '林培明', '13501588836', '宝安区住建局上报', '22.75336', '113.87151', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('421', '深圳瑞华泰薄膜科技有限公司二期.产600吨聚酰亚胺薄膜项目', '潭头', '440306006015', '房建', '2017/7/20', '江兴民', '13907306364', '宝安区住建局上报', '22.75224', '113.87132', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('422', '劲嘉工业园区1#,6#宿舍施工总承包', '燕川', '440306006017', '房建', '2017/5/28', '康烟成', '13828779988', '宝安区住建局上报', '22.84832', '113.84625', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('423', '健仓科技研发厂区—员工宿舍一,二,办公楼工程', '潭头', '440306006015', '房建', '2016/10/31', '陈亿衡', '13542836686', '宝安区住建局上报', '22.75423', '113.86294', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('424', '松岗街道燕罗片区红湖路综合改造工程', '燕川', '440306006017', '市政', '2016/10/9', '谭国瑞', '13729853088', '宝安区住建局上报', '22.84832', '113.84625', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('425', '燕罗路松罗路至象山大道改造工程', '塘下涌', '440306006014', '市政', '2016/10/1', '钟伟正', '13510014017', '宝安区住建局上报', '22.80272', '113.87492', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('426', '联投东方华府二期不含桩基', '东方社区', '440306006006', '房建', '2016/9/15', '苏鸿民', '13502819317', '宝安区住建局上报', '22.76525', '113.87497', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('427', '罗田森林公园——单体建筑除外', '罗田', '440306006008', '市政', '2017/6/2', '田玉霞', '13480775659', '宝安区住建局上报', '22.85453', '113.86695', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('428', '松岗街道溪头社区综合服务中心', '溪头', '440306006009', '房建', '2016/12/7', '刘小平', '13922814478', '宝安区住建局上报', '22.80796', '113.84263', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('429', '松岗街道朗碧路河滨北路至松福路综合改造工程', '红星', '440306006007', '市政', '2017/10/27', '杨枫桦', '13576112621', '宝安区住建局上报', '22.79581', '113.82623', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('430', '宝安区中小学生综合实践活动教育基地校舍安全工程', '新羌', '440306002009', '房建', '2017/4/6', '黄泽华', '13543317167', '宝安区住建局上报', '22.80580', '113.95512', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('431', '松岗街道路网完善工程--东富路立业路至埔边南街新建工程', '东方社区', '440306006006', '市政', '2016/9/11', '芮.松', '13528799387', '宝安区住建局上报', '22.76526', '113.87496', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('432', '松岗街道路网完善工程—埔边南街东方大道至东富路北侧新建工程', '东方社区', '440306006006', '市政', '2016/9/1', '许卫', '13312899758', '宝安区住建局上报', '22.76526', '113.87498', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('433', '宝安区松岗街道中心片区雨污分流管网工程', '松岗', '440306006003', '市政', '2017/5/4', '熊信福', '18565726328', '宝安区住建局上报', '22.77917', '113.84962', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('434', '松岗街道燕罗塘片区红燕路综合改造工程', '燕川', '440306006017', '市政', '2016/9/15', '巩文东', '13923482928', '宝安区住建局上报', '22.84828', '113.84630', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('435', '洋冲路广深公路至松罗路改造工程', '燕川', '440306006017', '市政', '2017/4/1', '欧应才', '13923858183', '宝安区住建局上报', '22.80023', '113.84984', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('436', '德弘基创客居项目1栋,2栋基坑支护,桩基础及土石方工程', '西乡街道径贝社区', '440306003011', '桩基础', '2016/9/21', '李小平', '13923702334', '宝安区住建局上报', '22.57227', '113.87318', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('437', '德弘基创客居项目1栋,2栋不含桩基', '西乡街道径贝社区', '440306003011', '房建', '2019/9/21', '陈海泽', '13926583195', '宝安区住建局上报', '22.57227', '113.87318', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('438', '全一电子工业园——综合配套楼', '西乡街道黄田社区', '440306003022', '房建', '2016/12/18', '苏仕怀', '15889566066', '宝安区住建局上报', '22.60644', '113.83581', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('439', '固戍红湾项目基坑支护及土石方工程', '西乡街道固戍社区', '440306003033', '土石方', '2016/11/5', '向润泽', '13590402437', '宝安区住建局上报', '22.60150', '113.84695', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('440', '西乡街道臣田工业区产业升级综合整治更新单元土石方,基坑支护工程', '西乡街道臣田社区', '440306003031', '土石方', '2016/6/5', '王世泽', '13809683976', '宝安区住建局上报', '22.59529', '113.87003', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('441', '蓝湾海岸大厦桩基础工程', '西乡街道蚝业社区', '440306003009', '桩基础', '2016/10/5', '雷建国', '13760424926', '宝安区住建局上报', '22.56017', '113.86319', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('442', '宝安区健康体检中心建设工程含皮肤病防治中心', '西乡街道桃源社区', '440306003007', '装修', '2016/3/4', '李正前', '13530133903', '宝安区住建局上报', '22.61785', '113.85416', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('443', '广深公路航城大道—机场南路中压燃气管道工程', '西乡', '440306003001', '燃气', '2016/1/20', '谢钢', '13612896023', '宝安区住建局上报', '22.61581', '113.86583', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('444', '西乡街道航城学校建设工程', '西乡街道三围社区', '440306003019', '房建', '2017/2/21', '陈远平', '13509694050', '宝安区住建局上报', '22.61386', '113.84946', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('445', '河东第一工业区改造重建项目基坑支护工程', '西乡街道河东社区', '440306003029', '基坑', '2016/12/22', '童国庆', '13543338626', '宝安区住建局上报', '22.58138', '113.88064', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('446', '宝星依力大楼主体工程厂房不含桩基', '西乡街道钟屋社区', '440306003021', '房建', '2017/6/28', '程健虹', '13823101841', '宝安区住建局上报', '22.62249', '113.85380', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('447', '现代网络厂区主体工程厂房,办公,宿舍,食堂,社康中心,邮政所,文化室不含桩基', '西乡', '440306003001', '房建', '2017/6/28', '麦树红', '13620441223', '宝安区住建局上报', '22.62249', '113.85380', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('448', '西乡街道航空路二期107国道-州航路新建工程', '西乡', '440306003001', '市政', '2016/11/29', '周黎', '13691718767', '宝安区住建局上报', '22.61595', '113.85663', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('449', '广深公路兴华路-下沙南村中压燃气管道工程', '西乡', '440306003001', '燃气', '2016/7/29', '陈全金', '13914314853', '宝安区住建局上报', '22.65563', '113.83359', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('450', '广深公路西乡立交-宝田二路中压燃气管道工程', '西乡', '440306003001', '燃气', '2016/7/29', '王留宇', '18851209105', '宝安区住建局上报', '22.60200', '113.87639', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('451', '广深公路机场南路-兰花路中压燃气管道工程', '西乡', '440306003001', '燃气', '2016/7/29', '张琳', '13510598313', '宝安区住建局上报', '22.61731', '113.86692', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('452', '西乡街道办共和工业路银田工业路—通达路工程', '西乡', '440306003001', '市政', '2016/10/13', '蔡矮罗', '13823241080', '宝安区住建局上报', '22.59249', '113.85252', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('453', '西乡街道宾隆路宝安大道—宝源路新建工程', '西乡', '440306003001', '市政', '2017/3/2', '张钦城', '13713692011', '宝安区住建局上报', '22.59687', '113.85888', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('454', '西乡街道2016.地质灾害治理工程——三围北19号东北侧边坡工程', '西乡', '440306003001', '边坡', '2016/6/15', '李依平', '13686870516', '宝安区住建局上报', '22.61999', '113.83837', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('455', '西乡街道2016.地质灾害治理工程——航城学校边坡工程', '西乡', '440306003001', '边坡', '2016/5/27', '张志飞', '13823712094', '宝安区住建局上报', '22.61386', '113.84946', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('456', '西乡街道2016.危险边坡治理工程——富源文武学校西北侧边坡工程', '西乡', '440306003001', '边坡', '2016/5/26', '王良川', '13823241080', '宝安区住建局上报', '22.64353', '113.85285', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('457', '前城滨海花园1#,2#连廊', '西乡街道麻布社区', '440306003012', '房建', '2017/5/24', '刘国强', '13802213555', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('458', '深圳市宝安区职业技术学校天然气接入工程', '西乡', '440306003001', '燃气', '2016/7/7', '张志兵', '13714517749', '宝安区住建局上报', '22.64710', '113.83446', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('459', '前城滨海花园A105-1689商住楼裙楼幕墙工程', '西乡街道麻布社区', '440306003012', '房建', '2017/12/26', '齐小东', '13510981663', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('460', '宝安职校新校食堂二次装修工程', '西乡', '440306003001', '装修', '2016/7/8', '陈磊河', '18026994956', '宝安区住建局上报', '22.64710', '113.83446', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('461', '华海金湾公馆A104-0136燃气管道工程', '西乡', '440306003001', '燃气', '2016/9/17', '向忠', '13556259608', '宝安区住建局上报', '22.57211', '113.84585', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('462', '华海金湾公馆A104-0135燃气管道工程', '西乡', '440306003001', '燃气', '2016/9/17', '邓健', '18318813262', '宝安区住建局上报', '22.57211', '113.84585', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('463', '恒荣立方商厦工程不含桩基', '西乡街道富华社区', '440306003006', '房建', '2017/5/17', '彭旭良', '13554768003', '宝安区住建局上报', '22.58813', '113.87343', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('464', '广深公路兰花路—俊景园中压燃气管道工程', '西乡', '440306003001', '燃气', '2016/1/22', '郭华全', '13809892778', '宝安区住建局上报', '22.61731', '113.86692', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('465', '西乡街道延康路源和苑保障性住房配套路段', '西乡', '440306003001', '市政', '2016/6/23', '刘勇', '13418595954', '宝安区住建局上报', '22.59072', '113.83435', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('466', '机场南路绿化景观提升工程', '西乡', '440306003001', '市政', '2016/5/22', '甘志明', '13321708901', '宝安区住建局上报', '22.62096', '113.84347', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('467', '西气东输二线工程市政设施恢复工程', '西乡', '440306003001', '市政', '2016/5/26', '何其彩', '18617075114', '宝安区住建局上报', '22.60117', '113.86826', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('468', '宝安职业技术学校新校区配套工程', '西乡', '440306003001', '其他', '2016/3/23', '陈迎辉', '13823546623', '宝安区住建局上报', '22.64710', '113.83446', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('469', '前城滨海花园A105-1687地块裙楼及塔楼幕墙工程', '西乡街道麻布社区', '440306003012', '其他', '2016/10/25', '齐小东', '13501569834', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('470', '前城滨海花园A105-1687地块燃气工程', '西乡街道麻布社区', '440306003012', '燃气', '2016/3/15', '俞永鹏', '13751027702', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('471', '碧海君庭不含桩基', '西乡街道永丰社区', '440306003035', '房建', '2017/10/29', '涂晓斌', '13751182879', '宝安区住建局上报', '22.57937', '113.84906', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('472', '润科华府一期二期不含桩基', '西乡', '440306003001', '房建', '2017/6/6', '高险峰', '13570877008', '宝安区住建局上报', '22.62818', '113.85828', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('473', '前城滨海花园A105-1689商住楼及幼儿园', '西乡街道麻布社区', '440306003012', '房建', '2017/10/20', '邵强', '13714101612', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('474', '桃源居—世外桃源2号综合楼改造工程', '西乡街道桃源社区', '440306003007', '其他', '2016/4/18', '王琼', '13670071267', '宝安区住建局上报', '22.61631', '113.85355', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('475', '华海金湾公馆A104-0136施工总承包', '西乡', '440306003001', '房建', '2017/1/27', '汪坤德', '13828759670', '宝安区住建局上报', '22.57211', '113.84585', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('476', '华海金湾公馆A104-0135施工总承包工程', '西乡', '440306003001', '房建', '2017/2/27', '聂家瑞', '13603038567', '宝安区住建局上报', '22.57211', '113.84585', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('477', '前城商业中心土石方及基坑支护工程', '西乡街道麻布社区', '440306003012', '土石方', '2016/5/8', '李华军', '13316973659', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('478', '宝安职业技术学校新校区综合楼1栋,体育场配套看台1栋,食堂二,宿舍九', '西乡', '440306003001', '房建', '2016/9/1', '林玉龙', '13924663988', '宝安区住建局上报', '22.64710', '113.83446', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('479', '华苑工程商住楼A,B座,垃圾收集站', '西乡街道利锦社区', '440306003008', '房建', '2016/5/21', '许武龙', '13590487671', '宝安区住建局上报', '22.63990', '113.83811', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('480', '御品峦山花园地基与基础工程', '西乡街道桃源社区', '440306003007', '基坑', '2015/5/5', '张术炎', '13903012589', '宝安区住建局上报', '22.61731', '113.86692', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('481', '前城滨海花园不含桩基', '西乡街道麻布社区', '440306003012', '房建', '2015/12/20', '申忠伟 ', '13670140663', '宝安区住建局上报', '22.57444', '113.86949', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('482', '恩海高科厂区', '西乡街道三围社区', '440306003019', '房建', '2015/9/30', '谢智华', '18923408110', '宝安区住建局上报', '22.61214', '113.84385', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('483', '72区外留仙三路东侧汇聚创新园后边坡工程', '兴东', '440306001013', '其他工程', '2016/8/1', '王清', '13715129215', '宝安区住建局上报', '22.58807', '113.93321', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('484', '宝安区教育科学研究培训中心实验学校教学楼,综合楼,实验楼,体育馆等', '兴东', '440306001013', '房建工程', '2018/10/20', '苏长财', '18018775306', '宝安区住建局上报', '22.59085', '113.92272', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('485', '新安文体中心', '兴东', '440306001013', '房建工程', '2017/12/31', '吴烈忠', '18384029777', '宝安区住建局上报', '22.58337', '113.93098', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('486', '宝民小学教学楼拆除扩建工程', '灵芝园', '440306001006', '房建工程', '2016/9/23', '朱美蓉', '13510870119', '宝安区住建局上报', '22.57199', '113.91747', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('487', '海滨中学加固工程', '海乐', '440306001010', '其他工程', '2016/8/1', '宋国强', '13715071358', '宝安区住建局上报', '22.56459', '113.90530', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('488', '海纳百川总部大厦A,B座工程不含空中连廊及地下通道临时工程', '海旺', '440306001021', '房建工程', '2017/4/27', '陈劭劭', '13631564181', '宝安区住建局上报', '22.55512', '113.88765', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('489', '盛意家园', '海旺', '440306001021', '房建工程', '2018/1/1', '吴浩文', '13534291720', '宝安区住建局上报', '22.56481', '113.89704', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('490', '壹方商业中心三期裙楼工程,办公B塔工程', '海旺', '440306001021', '房建工程', '2016/12/1', '张炳信', '13714074949', '宝安区住建局上报', '22.55897', '113.89461', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('491', '壹方商业中心住宅6座,7座塔楼工程,办公A塔工程', '海旺', '440306001021', '房建工程', '2016/12/1', '彭良益', '18874938208', '宝安区住建局上报', '22.55897', '113.89461', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('492', '易尚创意科技大厦基坑支护及土石方工程', '海旺', '440306001021', '房建工程', '2016/9/21', '张长辉', '13430874852', '宝安区住建局上报', '22.55414', '113.88624', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('493', '易尚创意科技大厦桩基础工程', '海旺', '440306001021', '房建工程', '2016/10/10', '张长辉', '13430874853', '宝安区住建局上报', '22.55414', '113.88624', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('494', '中意智慧大厦基坑支护工程', '海旺', '440306001021', '房建工程', '2016/12/18', '牛嘉铭', '13560791055', '宝安区住建局上报', '22.55381', '113.88524', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('495', '青少.宫', '海旺', '440306001021', '房建工程', '2016/12/1', '刘育彬', '18126283506', '宝安区住建局上报', '22.55331', '113.88852', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('496', '青少.宫幕墙', '海旺', '440306001021', '其他工程', '2016/11/1', '李灿', '18688833595', '宝安区住建局上报', '22.55331', '113.88852', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('497', '中兴酒店酒店A座,商务公寓B座', '海旺', '440306001021', '房建工程', '2017/12/1', '王卫东', '13823573068', '宝安区住建局上报', '22.55601', '113.89373', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('498', '维也纳3好酒店装修工程', '新安湖', '440306001005', '其他工程', '2016/8/1', '孔德方', '13714170797', '宝安区住建局上报', '22.56414', '113.91382', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('499', '弘雅小学风雨操场及配套设施完善工程', '文雅', '440306001016', '房建工程', '2016/9/1', '廖新煜', '13760391229', '宝安区住建局上报', '22.58100', '113.89911', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('500', '文汇中学体艺楼建设工程', '文汇', '440306001008', '房建工程', '2016/11/1', '肖蕾', '15118840004', '宝安区住建局上报', '22.58201', '113.90178', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('501', '幸福之家养老院施工总承包工程', '海裕', '440306001023', '房建工程', '2018/1/3', '龙志武', '13926514498', '宝安区住建局上报', '22.56469', '113.87705', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('502', '裕安领域轩--土方及基坑支护工程', '海裕', '440306001023', '房建工程', '2016/12/1', '王红星', '13713844411', '宝安区住建局上报', '22.56962', '113.88332', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('503', '尚德大厦主体工程不含桩基', '海裕', '440306001023', '房建工程', '2018/10/27', '杨焕', '13418665266', '宝安区住建局上报', '22.56943', '113.88809', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('504', '裕安领域轩', '海裕', '440306001023', '房建工程', '2017/10/1', '李土帝', '13316828468', '宝安区住建局上报', '22.56962', '113.88332', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('505', '隔岸大楼', '大浪', '440306001012', '房建工程', '2016/12/1', '康维贵', '13828218909', '宝安区住建局上报', '22.58426', '113.91933', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('506', '隔岸如意楼', '大浪', '440306001012', '房建工程', '2016/12/1', '李文斌', '13822505085', '宝安区住建局上报', '22.58366', '113.91843', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('507', '建中大楼土石方及基坑支护工程', '洪浪', '440306001003', '房建工程', '2017/1/1', '王弘', '13602543657', '宝安区住建局上报', '22.57632', '113.92070', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('508', '银鸿大楼', '安乐', '440306001020', '房建工程', '2016/12/1', '周安定', '13713782859', '宝安区住建局上报', '22.55956', '113.90828', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('509', '银鸿大楼室外装饰幕墙工程', '安乐', '440306001020', '其他工程', '2016/10/15', '安勘', '15840693285', '宝安区住建局上报', '22.55956', '113.90828', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('510', '方格凤凰科技大楼', '凤凰', '440306004002', '房建工程', '2018/2/17', '郭西龙', '18718560229', '宝安区住建局上报', '22.69393', '113.84011', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('511', '福安场站', '兴围', '440306004007', '房建工程', '2016/10/1', '霍茂盛', '13535433377', '宝安区住建局上报', '22.64856', '113.84301', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('512', '福永街道2016.地质灾害治理工程——望牛亭公园周边边坡', '怀德', '440306004006', '其他工程', '2016/8/1', '张柳贵', '13510371618', '宝安区住建局上报', '22.68135', '113.82331', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('513', '福永人民医院扩建工程', '怀德', '440306004006', '房建工程', '2017/3/3', '王建明', '13500063443', '宝安区住建局上报', '22.67675', '113.82569', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('514', '怀德峰景南园1～3栋', '怀德', '440306004006', '房建工程', '2016/9/1', '曹向阳', '13632749517', '宝安区住建局上报', '22.66808', '113.82650', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('515', '桥头小学扩建工程', '桥头', '440306004003', '房建工程', '2017/9/15', '黄振源', '13699870089', '宝安区住建局上报', '22.69941', '113.81724', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('517', '盐田现代产业服务中心一期工程', '深圳市盐田区深盐路与沙盐路交汇处', '440308003006', '大', '2016.10.31', '李春荣', '13686411297', '盐田区住建局上报', '22.55619', '114.23777', '', '594904');
INSERT INTO "sf_defence"."t_building" VALUES ('537', '深圳市盐田区第六期保障性住房工程', '盐田区沙头角官上路与田心东路的交汇处', '440308003009', '中', '2019.9.1', '李路明', '13922933557', '盐田区住建局上报', '22.55888', '114.23758', '', '594904');
INSERT INTO "sf_defence"."t_building" VALUES ('555', '集泰工业厂区', '广东省深圳市宝安区观澜街道桔塘社区淑女路', '4403006010047', '工业建筑', '2017.10.15', '黄少雄', '15112275838', '龙华新区城建局', '22.73548', '114.03696', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('559', '龙华污水处理厂大浪片区污水支管网二期工程', '深圳市龙华大浪华宁路新百丽公交总站右侧', '440306011', '市政管网改造工程', '2016.12.16', '姚钦和', '15920878907', '龙华新区城建局', '22.70100', '114.00427', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('560', '库坑片区路网完善工程富安路桂月路-桂香路段', '观澜库坑', '4403006010040', '市政道路工程', '2016.12.25', '林军泽', '13686883488', '龙华新区城建局', '22.74903', '114.05526', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('562', '多彩科技厂区', '深圳市龙华新区观澜高新园', '4403006010015', '工业厂房', '2016.10.03', '张树儒', '13714493194', '龙华新区城建局', '22.69408', '114.07097', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('563', '长安汽车基地三池汽车配件市政配套道路工程', '深圳市龙华新区观澜银星工业园', '4403006010018', '市政道路', '2016.8.23', '陈伟强', '13312913392', '龙华新区城建局', '22.73159', '114.05468', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('566', '龙华污水处理厂龙华片区污水支管网二期工程', '广东省深圳市龙华新区山咀头村', '440306012', '市政管网改造工程', '2017.2.1', '王新艺', '13723716807', '龙华新区城建局', '22.66157', '114.02532', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('568', '人民路龙观快速路—观平路口市政工程第一标段k0+000-k0+800', '龙华新区福城办事处人民路龙观快速路—观平路口', '4403006010024', '市政道路', '2016.12.31', '李远辉', '13714998221', '龙华新区城建局', '22.70927', '114.03781', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('575', '上塘九.一贯制学校工程', '龙华新区人民路与腾龙路交界', '440306013020', '公共建筑', '2017.7.30', '王晓宇', '13838780029', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('576', '红山站东侧低密度商业综合体A818-0462基坑支护及土石方工程', '龙华新区民治街道红山地铁站', '民治街道大岭社区4403006013021', '商业建筑', '2016/12/1', '杨振宏', '18665888168', '龙华新区城建局', '22.62595', '114.03175', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('577', '轨道交通4号线白石龙补偿安置用地项目基坑支护及土石方工程', '民治街道民塘路与宁远路交汇处', '民治街道白石龙社区4403006013011', '住宅', '2016/12/1', '夏保华', '13798288276', '龙华新区城建局', '22.61019', '114.04658', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('578', '白石龙九.一贯制学校', '民治街道民塘路与民宝路交汇处', '民治街道北站社区4403006013025', '公建', '2016/9/1', '罗德志', '13926543385', '龙华新区城建局', '22.62589', '114.03325', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('580', '观澜湖商业中心二期酒店装修工程', '龙华新区高尔夫大道南侧观澜湖商业中心', '观澜街道松元厦社区4403006010030', '商业建筑', '2016/10/1', '刘宗博', '13723420053', '龙华新区城建局', '22.72741', '114.08274', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('581', '高峰学校升级改造工程', '大浪办事处龙华路', '大浪街道上早社区4403006011018', '公建', '2016/12/1', '吴国雄', '13728608648', '龙华新区城建局', '22.66127', '114.01714', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('583', '龙华新区田心石场危险边坡应急整治工程', '龙华新区景田消防支队西侧', '440306010033', '市政工程', '2016.7.30', '张渝', '13909028430', '龙华新区城建局', '22.70561', '114.08584', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('586', '好日子工业园-片烟库E工程', '深圳市龙华新区清宁路2号', '440306012025', '建筑工程', '2016.12.06', '卢浩波', '133169111116', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('590', '观澜河流域樟坑径河综合整治工程', '观澜街道', '440306010', '市政河道整治', '2016.12.30', '张东湖', '18520865079', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('593', '观澜河流域白花河段综合整治工程', '观澜河流域白花河段', '440306010048', '河道整治', '2016.12.31', '雷旭斌', '13713860966', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('595', '深圳市第八高级中学', '深圳市龙华新区观澜观湖办事处五和大道与环观南路路口附近', '4403006013010', '公共建筑', '2016.3.30', '林开龙', '13798326227', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('596', '新田茗苑', '深圳市龙华新区观澜办事处观辅路和观和路交汇处东北侧', '440304009007', '商.住.办公楼', null, '赖庆平', '13662214136', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('597', '银星产业园宗地号：A926-0134施工总承包工程', '深圳市龙华新区观澜街道观光路1301号银星高科技工业园内', '440306010', '厂房,办公楼', '2017-12-21', '刘拥军', '13790264502', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('598', '银星产业园宗地号：A926-0138施工总承包工程', '深圳市龙华新区观澜街道观光路1301号银星高科技工业园内', '440306010', '3栋厂房1栋综合楼', '2017/2/28', '沈攀', '18681463680', '龙华新区城建局', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('601', '龙华三联墩背挡土墙地质灾害治理工程', '深圳市龙华新区龙华街道墩背社区', '440306012011', '边坡', '1905/7/8', '孟总', '13923748692', '龙华新区城建局', '22.67681', '114.02131', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('602', '三联片区支路网完善工程', '深圳市龙华新区龙华街道弓村社区', '440306012008', '市政道路', '1905/7/9', '周总', '15915930939', '龙华新区城建局', '22.66793', '114.02950', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('603', '民治办事处龙华污水处理厂民治片区支管网二期工程', '深圳市龙华新区民治街道大岭社区', '440306013021', '市政管线', '1905/7/9', '杨总', '13560788278', '龙华新区城建局', '22.64592', '114.02777', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('604', '赖屋山宝山新村边坡地质灾害特殊治理工程', '深圳市龙华新区大浪街道赖屋山社区社区', '440306011015', '建筑边坡', '1905/7/9', '吴总', '13823718839', '龙华新区城建局', '22.67352', '113.99504', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('605', '民治人民路街心公园工程', '深圳市龙华新区民治街道大岭社区', '440306013021', '市政公园', '1905/7/8', '吴总', '18923737999', '龙华新区城建局', '22.63448', '114.02867', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('606', '碧澜路北段环观南路-人民路及周边交通改善工程', '深圳市龙华新区观澜街道大和社区', '440306010013', '市政道路', '1905/7/8', '黄总', '13802235269', '龙华新区城建局', '22.69729', '114.05226', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('607', '龙华二线拓展区白石龙一街宁远路-白石龙二街,白石龙二街新区大道-民塘路,白石龙三街宁远路-望辉路工程', '深圳市龙华新区民治街道白石龙社区', '440306013011', '市政道路', '1905/7/8', '赵总', '13510391348', '龙华新区城建局', '22.60855', '114.04527', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('608', '大浪龙胜胜华学校西侧边坡地质灾害治理工程', '深圳市龙华新区大浪街道龙胜社区社区', '440306011024', '建筑边坡', '1905/7/8', '曾总', '13509678608', '龙华新区城建局', '22.65422', '114.02201', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('609', '龙华二线拓展区红棉路红木街-民宝路工程', '深圳市龙华新区民治街道北站社区', '440306013025', '市政道路', '1905/7/8', '林工', '13510990036', '龙华新区城建局', '22.62439', '114.03008', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('610', '龙华二线拓展区天英街腾龙路-民繁路,红棉北路中梅路-红木街工程', '深圳市龙华新区民治街道北站社区', '440306013025', '市政道路', '1905/7/8', '黄工', '13590446610', '龙华新区城建局', '22.62610', '114.02905', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('611', '龙华新区二线拓展区向荣路新区大道-民塘路工程', '深圳市龙华新区民治街道大岭社区', '440306013021', '市政道路', '1905/7/8', '林工', '13662299928', '龙华新区城建局', '22.63736', '114.01947', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('612', '碧澜路南段大和路-环观南路工程', '深圳市龙华新区观澜街道大和社区', '440306010013', '市政道路', '1905/7/8', '胡工', '18818686908', '龙华新区城建局', '22.68955', '114.05631', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('613', '锦山公园第二工业区力顺木制品厂北边坡地质灾害治理工程', '深圳市龙华新区观澜街道横坑社区', '440306010015', '建筑边坡', '1905/7/8', '吕工', '13612868577', '龙华新区城建局', '22.72087', '114.06465', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('614', '民治柏克莱幼儿园后挡墙地质灾害治理工程', '深圳市龙华新区民治街道', '440306013', '边坡治理', '2016.8.30', '纪飞鹏', '13434345426', '龙华新区城建局', '22.64416', '114.04364', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('615', '龙塘新村17号北西侧挡墙地质灾害治理工程', '深圳市龙华新区民治街道', '440306013', '边坡治理', '2016.9.30', '纪飞鹏', '13434345426', '龙华新区城建局', '22.39687', '114.02339', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('616', '观澜黎光社区深越光电厂后边坡地质灾害治理工程', '深圳市龙华新区观澜', '4403006010051', '边坡治理', '2016.9.30', '刘正', '13823399497', '龙华新区城建局', '22.76498', '114.03226', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('617', '龙华伍村1巷9号
东侧挡墙地质灾害
治理工程', '龙华伍村1巷9号东侧', '4403006012018', '边坡支护', '2016.9.20', '林国荣', '15019738581', '龙华新区城建局', '22.66259', '114.05285', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('618', '龙华办事处墩背小学西侧边坡地质灾害治理工程', '墩背小学西侧', '440306012011', '边坡治理', '2016.9.25', '黄志平', '15768205408', '龙华新区城建局', '22.67483', '114.01965', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('619', '观澜库坑社区公园旁边坡地质灾害治理工程', '观澜库坑社区公园旁', '库坑社区', '边坡', '2016.8.8', '林庆', '13714145676', '龙华新区城建局', '22.73970', '114.04343', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('620', '市101保密工程后侧边坡特殊治理工程', '龙华新区民治街道新彩隧道口位于梅林山公园山体', '440306013', '边坡支护', '2016.6.19', '李少强', '13420977518', '龙华新区城建局', '22.59335', '114.05766', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('621', '观澜新田小学后门旁边坡地质灾害治理工程', '新田社区', '440306010033', '边坡治理', '2016.8.15', '修海华', '13922802796', '龙华新区城建局', '22.70501', '114.09453', '', '594905');
INSERT INTO "sf_defence"."t_building" VALUES ('623', '外经同发工业厂区', '深圳市龙华新区观澜街道福民村委核电路', '440306010004', '房屋建筑', '2016.10.15', '刘刚', '13502867636', '龙华新区城建局', '22.72159', '114.03383', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('624', '墩背小学北侧边坡地质灾害治理', '深圳市宝安区龙华街道三联居委会墩背新村', '440306012000', '边坡', '2016.10.15', '郑工', '13510408603', '龙华新区城建局', '22.67588', '114.02049', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('625', '观澜湖新城交通微循环改善工程', '深圳市龙华新区观澜街道', '440306010000', '市政公用工程', '2016.8.15', '宋若兰', '13823594634', '龙华新区城建局', '22.72907', '114.07771', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('629', '骏德物流中心', '广东省深圳市坪山新区大工业区荔景北路与锦绣西路交汇处', '4403007007018', '仓储物流', '2016/11/20', '周顺孝', '18811870083', '坪山新区城建局上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('633', '心海城一期项目施工总承包工程', '深圳市坪山新区比亚迪路与坪环路交汇处', '440307007020', '商住', '2017.08.25', '赵肖忠', '13632505022', '坪山新区城建局上报', null, null, '坐标有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('635', '亚迪三村1-17号楼,商业综合楼', '锦绣中路与翠景路交汇处东侧', '440307008', '商住', '2016/12/31', '陈光合', '13502898934', '坪山新区城建局上报', '22.71693', '113.92422', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('637', '坪山新区吉祥路改扩建工程', '坪山新区坑梓社区', '440307008001', '市政', '2015/9/15', '韦斌', '13923401911', '坪山新区城建局上报', '22.75018', '114.37932', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('638', '深圳市坪山新区兰田路市政工程创景路-上田路段Ⅰ标', '坪山新区田头社区', '440307007010', '市政', '2013/11/30', '陈贵和', '13689536691', '坪山新区城建局上报', '22.70456', '114.40354', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('639', '深圳坪山文化中心项目施工总承包工程', '坪山新区六合社区', '440307007017', '房建', '2016/11/30', '陈劲松', '18665385221', '坪山新区城建局上报', '22.71241', '114.35485', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('640', '新宙邦科技大厦', '坪山新区坪环社区', '440307007020', '房建', '2017/6/30', ' 李国华', '15815563039', '坪山新区城建局上报', '22.68906', '114.34294', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('641', '坪山中心区正山甲单元更新项目一期桩基础工程', '坪山新区六临社区', '440307007016', '房建', '2016/5/20', '徐贵海', '13824454371', '坪山新区城建局上报', '22.71050', '114.34962', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('642', '丹梓西路大工业区体育中心路段完善隔音屏工程', '坪山新区六合社区', '440307007017', '市政', '2016/2/29', '陈三友', '13714684751', '坪山新区城建局上报', '22.71899', '114.35797', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('643', '鸿景路市政工程I标', '坪山新区竹坑社区', '440307007012', '市政', '2017/1/31', '余新求', '18603020015', '坪山新区城建局上报', '22.71193', '114.40189', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('644', '坪山新区妇幼保健院原址改造项目基坑支护工程', '坪山新区龙田社区', '440307008004', '房建', '2015/9/29', '敬俭勤', '13602538592', '坪山新区城建局上报', '22.75391', '114.37790', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('645', '坪山新区科环路市政工程', '坪山新区汤坑社区', '440307007008', '市政', '2017/2/1', ' 王明辉', '18824257660', '坪山新区城建局上报', '22.67165', '114.32334', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('646', '新产业生物大厦', '坪山新区金沙社区', '440307008005', '房建', '2017/12/15', '彭洛郑', '13501565779', '坪山新区城建局上报', '22.74391', '114.40647', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('647', '天峦湖花园项目二期建设施工总承包工程', '马峦北路东面,水渠路西面', '440307007003', '房建', '2017.9.30', '冯宁新', '18665238828', '坪山新区城建局上报', '22.67234', '114.36065', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('651', '坪山新区绣辉路市政工程', '坪山新区坑梓金沙片区', '440307008005', '市政', '2016.5.30', '阳海', '15012892836', '坪山新区城建局上报', '22.74636', '114.41123', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('652', '坪山新区金辉路锦绣东路-丹梓中路段污水管道改造工程', '坪山新区金辉路', '440307008005', '市政', '2016.5.13', '钟平', '13554982209', '坪山新区城建局上报', '22.75144', '114.40743', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('657', '亚迪三村18-21号楼,22号楼,24号楼,幼儿园', '坪山新区锦绣中路与翠景路交汇处东侧', '440307008', '房建', '2016.12.31', '易飞忆', '13922816824', '坪山新区城建局上报', '22.73280', '114.39582', '', '594908');
INSERT INTO "sf_defence"."t_building" VALUES ('671', '深圳市坝光精细化工产业园区整体搬迁安置区西区第二标段', '大鹏新区葵涌坝光社区', '440307009007', '', null, '门诗然', '15625272225', '大鹏新区城建局上报', null, null, '', '');
INSERT INTO "sf_defence"."t_building" VALUES ('676', '光明高新区十八号路科裕路-十二号路市政工程', '光明新区高新技术产业园区西片区', '440306007014', '小', '2016/12/31', '谢蓝霜', '13828893374', '光明新区城建局上报', '22.73739', '113.93254', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('677', '光明高新园区市政配套工程BT项目二十三号路', '项目部所在地光明高铁站旁', '440306002004', '小', '2017/1/1', '陈文建 ', '13530354601', '光明新区城建局上报', '22.73300', '113.95457', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('678', '光明高新园区市政配套工程BT项目三十五号路', '项目部所在地光明高铁站旁', '440306002004', '大', '2017/5/22', '王永志 ', '15989584216', '光明新区城建局上报', '22.73300', '113.95457', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('679', '光明高新园区门户区五十七号路三十五号路-观光路', '高新园区', '440306002004', '小', '2017/12/1', '王永志 ', '15989584216', '光明新区城建局上报', '22.73300', '113.95457', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('680', '光明新区高新园区市政配套工程BT项目五十八号路观光路-二十三号路', '项目部所在地光明高铁站旁', '440306002004', '小', '2017/2/28', '王永志 ', '15989584216', '光明新区城建局上报', '22.73300', '113.95457', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('681', '光明高新技术产业园区科发路十二号路-塘明路市政工程', '项目部所在地新纶科技旁', '440306007014', '大', '2017/9/12', '黄建华', '13682424378', '光明新区城建局上报', '22.73300', '113.95457', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('682', '光明商业中心城市更新项目市政配套工程', '光明街道办', '440306002001', '小', '2016/10/23', '徐世斌', '13530392203', '光明新区城建局上报', '22.76047', '113.94190', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('683', '光明高新园区木墩片区排水沟渠迁改工程含富深排水沟渠改签工程', '木墩村片区', '440306007014', '中', '2016/12/26', '杨辉 ', '13530371304', '光明新区城建局上报', '22.76467', '113.92362', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('684', '光明新区公明街道松白路以东片区污水支管网工程', '光明新区公明办事处', '440306007001', '大', '2017/12/22', '王建洲', '13682507593', '光明新区城建局上报', '22.57924', '114.07580', '', '594901');
INSERT INTO "sf_defence"."t_building" VALUES ('685', '公明红星社区石岩湖度假村公寓旁边坡地质灾害治理工程', '项目部所在地石岩湖度假村口', '440306006007', '小', '2016/10/11', '汪琼斯 ', '13922851629', '光明新区城建局上报', '22.70418', '113.90349', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('686', '公明楼村社区圳美工业区华特尔厂后边坡地质灾害治理工程', '光明新区公明办事处楼村社区', '440306007015', '小', '2017/9/21', '李毅 ', '13632687519', '光明新区城建局上报', '22.78883', '113.93883', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('687', '公明楼村社区盛泰安重工产业园内边坡地质灾害治理工程', '公明楼村社区喜得盛自行车北侧', '440306007015', '小', '2017/12/6', '王建州 ', '13682507593', '光明新区城建局上报', '22.74725', '113.89563', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('688', '公明楼村社区世峰科技园边坡地质灾害治理工程', '公明楼村社区金必达厂区东南侧', '440306007015', '小', '2016/12/6', '王建州', '13682507593', '光明新区城建局上报', '22.54331', '113.94905', '', '594903');
INSERT INTO "sf_defence"."t_building" VALUES ('689', '公明红星社区石岩湖渡假村公寓南东侧边坡治理工程', '公明红星社区星湖路石岩湖公寓北侧', '440306006007', '小', '2016/12/6', '王建州', '13682507593', '光明新区城建局上报', '22.70418', '113.90349', '', '594906');
INSERT INTO "sf_defence"."t_building" VALUES ('690', '金新农大厦', '木墩村内', '440306002002', '中', '2016/8/12', '谢爱国', '13538081349', '光明新区城建局上报', '22.74894', '113.91837', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('691', '广业产业园一期1,2号厂房', '石介头村内', '440306002008', '小', '2016/8/10', '舒畅 ', '15815548579', '光明新区城建局上报', '22.79200', '113.96624', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('692', '松茂御城雅苑', '塘尾牌坊旁', '440306004004', '中', '2017/1/20', '杨昆 ', '13510353499', '光明新区城建局上报', '22.75121', '113.90685', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('693', '证通电子产业园二期工程', '高新园区', '440306007010', '中', '2016/12/2', '张汉精', '13554950549', '光明新区城建局上报', '22.72935', '113.91641', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('694', '公明成校实训楼工程', '光明新区公明办事处', '440306007001', '中', '2016/11/25', '陈琳 ', '13922851629', '光明新区城建局上报', '22.77745', '113.90101', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('695', '深圳市光明水厂一期工程', '项目部所在地光明水厂', '440306002004', '中', '2017/5/31', '康吉森 ', '18948338433', '光明新区城建局上报', '22.72471', '113.96205', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('696', '英威腾光明科技大厦', '公明薯田埔社区', '440306007012', '大', '2017/4/6', '张清', '18002568952', '光明新区城建局上报', '22.78820', '113.85793', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('697', '公明红星社区金明五金塑胶厂南侧边坡地质灾害治理工程', '公明红星社区金明五金塑胶厂南侧', '440306006007', '小', '2016.7.28', '麦贺良', '13428948299', '光明新区城建局上报', '22.70671', '113.90117', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('698', ' 广业产业园一期1#2#厂房消防工程', '光明北区,圳美大道南侧,圳园路北侧,圳美四路两侧', '440306002005', '小', '2016.10.30', '陈长勤', '13622320983', '光明新区城建局上报', '22.79200', '113.96624', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('699', '盛迪嘉光明新宝轩项目基坑支护及土石方工程', '公明街道田寮路北侧', '440306007013', '中', '2016.7.30', '黄泽生', '13500055142', '光明新区城建局上报', '22.72570', '113.89419', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('700', '展辰大厦', '凤凰社区', '440306002004', '中', '2017/6/19', '陈先.', '13808806532', '光明新区城建局上报', '22.74304', '113.95040', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('730', '新羌社区92619部队光明营区公寓房后边坡治理工程', '光明新区', '440306002009', '小', '2016/8/26', '魏巍 ', '13828738646', '光明新区城建局上报', '22.80572', '113.96187', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('731', '展辰大厦幕墙工程', '光明新区光明光桥路东,三十七号路北侧', '440306002004', '小', '2017/6/19', '李娜', '13808806532', '光明新区城建局上报', '22.74304', '113.95040', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('735', '光明华发路松白路-民生大道中压燃气管道工程', '公明街道', '440306007001', '小', '2016.9.21', '黄景文', '13823584102', '光明新区城建局上报', '22.67218', '113.99828', '', '594910');
INSERT INTO "sf_defence"."t_building" VALUES ('736', '长圳学校原长圳小学初中部建设工程', '公明办事处长松路以南,长圳路以北,长祥路西侧', '440306007002', '中', '2017.6.30', '陈文建', '13530354601', '光明新区城建局上报', '22.71859', '113.91666', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('737', '光明办事处市政消防供水设施提升工程', '光明办事处', '440306002001', '大', '2016.8.27', '杨辉', '13530371304', '光明新区城建局上报', '22.75763', '113.94930', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('738', '美盈森大厦建设工程', '光明新区光明高新区光桥路东侧,明政路北侧宗地号A512-0023', '440306002003', '大', '2017.11.01', '胡绍贵', '13902478169', '光明新区城建局上报', null, null, '数据有问题', '');
INSERT INTO "sf_defence"."t_building" VALUES ('740', '公明建设路红花中路—长春路中压燃气管道工程', '公明街道', '440306007001', '小', '2016.7.16', '黄景文', '13823584102', '光明新区城建局上报', '22.77786', '113.89737', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('741', '光明高新园区八号路同观路-光明大道市政工程中止', '光明新区', '440306007010', '大', '2017/8/15', '谢蓝霜 ', '138288933744', '光明新区城建局上报', '22.72798', '113.91850', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('742', '光明高新园区十七号路科裕路-十二号路市政工程', '项目部所在地光明1号旁', '440306007014', '小', '2017/3/31', '谢蓝霜 ', '138288933744', '光明新区城建局上报', '22.73519', '113.92304', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('743', '东长路公明东环大道-东明大道', '光明新区', '440306007010', '大', '2017/12/31', '杨丹 ', '88211656', '光明新区城建局上报', '22.75441', '113.91175', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('744', '东长路十二号路-东明大道绿化工程中止', '东长路', '440306007010', '小', '2017/10/31', '张燕文', '15099922300', '光明新区城建局上报', '22.75441', '113.91175', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('745', '东长路十二号路-东明大道交通工程中止', '东长路', '440306007010', '小', '2017/10/31', '张燕文', '15099922300', '光明新区城建局上报', '22.75441', '113.91175', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('746', '东长路十二号路-东明大道沥青路面工程', '东长路', '440306007010', '小', '2017/10/31', '张燕文', '15099922300', '光明新区城建局上报', '22.75441', '113.91175', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('747', '东长路公明东环大道-东明大道沥青路面工程', '东长路', '440306007010', '小', '2017/10/31', '张燕文', '15099922300', '光明新区城建局上报', '22.75441', '113.91175', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('748', '圳辉路凤新路-圳美五路市政工程', '项目部所在地新明医院旁', '440306002005', '小', '2016/7/6', '黎伟光 ', '13509675200', '光明新区城建局上报', '22.78537', '113.95228', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('749', '光明新区高新园区市政配套工程BT项目二十八路', '深圳市光明新区行政配套区', '440306002003', '小', '2017/12/31', '陈文建 ', '13530354601', '光明新区城建局上报', '22.73300', '113.95457', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('750', '光明社区富安花园9-10栋东侧建筑边坡加固工程', '光明新区', '440306002003', '小', '2016/10/28', '陈瑶瑜 ', '13828769799', '光明新区城建局上报', '22.75095', '113.94547', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('751', '富安花园坡屋顶改造工程中止', '华夏路北侧光桥路西侧', '440306002001', '小', '2016/12/20', '刘亮', '18675529299', '光明新区城建局上报', '22.75874', '113.95426', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('752', '马田路通兴路-公明北环中止', '马田路', '440306007011', '中', '2017/11/1', '麦建辉 ', '13603040954', '光明新区城建局上报', '22.78537', '113.95228', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('753', '振兴路公明西环—周家大道市政工程Ⅰ标中止', '光明新区公明办事处', '440306007011', '中', '2017/4/19', '麦建辉 ', '13603040954', '光明新区城建局上报', '22.78537', '113.95228', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('754', '振兴路公明西环-周家大道市政工程Ⅱ标段中止', '光明新区公明办事处', '440306007011', '中', '2017/4/19', '麦建辉 ', '13603040954', '光明新区城建局上报', '22.78537', '113.95228', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('755', '风景南路工程中止', '光明新区公明办事处', '440306007005', '小', '2017/10/3', '麦建辉 ', '13603040954', '光明新区城建局上报', '22.77279', '113.89826', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('756', '光明新区污水支管网二期建设工程迳口,翠湖社区中止', '项目部所在地迳口社区居委会旁', '440306002008', '大', '2016/12/25', ' 陈育长 ', '13760424370', '光明新区城建局上报', '22.76585', '113.96259', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('757', '钟表产业集聚基地通兴路市政工程中止', '项目部所在地金安路与通兴路交界', '440306007005', '中', '2016/12/31', '陈晓 ', '13728650650', '光明新区城建局上报', '22.76999', '113.88623', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('758', '光明新区2013.室外应急避难场所中止', '项目部所在地楼村小学附近', '440306002001', '小', '2017/2/12', '张玮琳 ', '13714771321', '光明新区城建局上报', '22.74894', '113.93369', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('759', '光明新区污水支管网二期建设工程塘家,甲子塘,红星社区中止', '项目部所在地八号路旁', '440306007010', '大', '2017/4/25', ' 陈育长 ', '13760424370', '光明新区城建局上报', '22.72798', '113.91850', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('760', '光明新区2013.小区排水管网雨污分流改造工程中止', '光明新区', '440306007001', '小', '2016.12.10', '李汉文', '13823641932', '光明新区城建局上报', '22.77851', '113.90550', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('761', '光明水厂一期工程-园林景观工程中止', '项目部所在地光明水厂', '440306002004', '小', '2016/12/1', '康吉森 ', '18948338433', '光明新区城建局上报', '22.72471', '113.96205', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('762', '光明社会福利院工程土石方及基坑支护工程中止', '公园路', '440306002001', '中', '2016/7/30', '邓海东', '13590329302', '光明新区城建局上报', '22.75731', '113.94839', '', '594907');
INSERT INTO "sf_defence"."t_building" VALUES ('763', '楼村小学多功能报告厅装修及变配电房安装工程中止', '光明新区公明办事处', '440306007015', '小', '2016/9/30', '王建洲', '13682507593', '光明新区城建局上报', '22.78729', '113.93665', '', '594907');

-- ----------------------------
-- Alter Sequences Owned By
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_building
-- ----------------------------
ALTER TABLE "sf_defence"."t_building" ADD PRIMARY KEY ("id");



