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

Date: 2018-10-26 10:24:26
*/


-- ----------------------------
-- Table structure for t_hospital
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_hospital";
CREATE TABLE "sf_defence"."t_hospital" (
"id" int4 NOT NULL,
"unitname" varchar(50) COLLATE "default",
"address" varchar(255) COLLATE "default",
"areacode" varchar(50) COLLATE "default",
"lng" varchar(50) COLLATE "default",
"lat" varchar(50) COLLATE "default",
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
