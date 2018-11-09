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
DROP TABLE IF EXISTS "sf_defence"."t_hospital";
CREATE TABLE "sf_defence"."t_hospital" (
"RECID" int4 NOT NULL,
"UNITNAME" varchar(255) COLLATE "default",
"ADDRESS" varchar(255) COLLATE "default",
"AREACODE" varchar(255) COLLATE "default",
"LNG" varchar(255) COLLATE "default",
"LAT" varchar(255) COLLATE "default",
"DEPARTMENT" varchar(255) COLLATE "default",
"DOCTORNUM" varchar(255) COLLATE "default",
"NURSENUM" varchar(255) COLLATE "default",
"BEDNUM" varchar(255) COLLATE "default",
"AMBULANCENUM" varchar(255) COLLATE "default",
"EMERGENCYCONTACT" varchar(255) COLLATE "default",
"TELEPHONE" varchar(255) COLLATE "default",
"PHONE" varchar(255) COLLATE "default",
"FAX" varchar(255) COLLATE "default",
"AREA" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_hospital" IS '医院数据(t_hospital)';
COMMENT ON COLUMN "sf_defence"."t_hospital"."RECID" IS '记录ID';
COMMENT ON COLUMN "sf_defence"."t_hospital"."UNITNAME" IS '单位名称';
COMMENT ON COLUMN "sf_defence"."t_hospital"."ADDRESS" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_hospital"."AREACODE" IS '地区编码';
COMMENT ON COLUMN "sf_defence"."t_hospital"."LNG" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_hospital"."LAT" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_hospital"."DEPARTMENT" IS '主管部门';
COMMENT ON COLUMN "sf_defence"."t_hospital"."DOCTORNUM" IS '医生数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."NURSENUM" IS '护士数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."BEDNUM" IS '床位数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."AMBULANCENUM" IS '救护车数量';
COMMENT ON COLUMN "sf_defence"."t_hospital"."EMERGENCYCONTACT" IS '应急联系人';
COMMENT ON COLUMN "sf_defence"."t_hospital"."TELEPHONE" IS '电话';
COMMENT ON COLUMN "sf_defence"."t_hospital"."PHONE" IS '手机';
COMMENT ON COLUMN "sf_defence"."t_hospital"."FAX" IS '传真';
COMMENT ON COLUMN "sf_defence"."t_hospital"."AREA" IS '区域';

-- ----------------------------
-- Records of t_hospital
-- ----------------------------
INSERT INTO "sf_defence"."t_hospital" VALUES ('1', '深圳市人民医院', '深圳市罗湖区东门北路1017号大院', '', '114.13428', '22.56305', '', '', '', '', '', '', '25533018', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('2', '深圳市人民医院第一门诊部', '罗湖区深南东路3046号', '', '114.1228', '22.54948', '', '', '', '', '', '', '82197733', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('3', '深圳市第三人民医院(原深圳市东湖医院)', '罗湖区布心路2019号、龙岗区布澜路33号', '', '114.13511', '22.64151', '', '', '', '', '', '', '25509800', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('4', '深圳市康宁医院', '罗湖区翠竹路1080号,罗湖区布心路2019号B座13-15层', '', '114.13717', '22.57049', '', '', '', '', '', '', '25533524', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('5', '深圳市孙逸仙心血管医院', '罗湖区东门北路1021号', '', '114.1355', '22.56281', '', '', '', '', '', '', '25509566', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('6', '深圳市职业病防治院 (深圳市第十二人民医院）', '深圳市罗湖区桂园北路70号', '', '114.12007', '22.55962', '', '', '', '', '', '', '61385409', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('7', '深圳市慢性病防治中心（门诊部）', '罗湖区布心路2010号', '', '114.14163', '22.58078', '', '', '', '', '', '', '25618774', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('8', '深圳市中医院第一门诊部', '罗湖区解放西路3015号', '', '114.11918', '22.55018', '', '', '', '', '', '', '25578220', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('9', '深圳市中医院', '深圳市福华路1号', '', '114.09173', '22.54322', '', '', '', '', '', '', '88359666', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('10', '深圳市第二人民医院', '深圳市福田区笋岗西路3002号', '', '114.0923', '22.56297', '', '', '', '', '', '', '83366388', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('11', '深圳市第二人民医院中西医结合分院', '深圳市福田区振华路2号', '', '114.10224', '22.55077', '', '', '', '', '', '', '', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('12', '北京大学深圳医院', '深圳市福田区莲花路1120号', '', '114.05617', '22.56118', '', '', '', '', '', '', '83923333', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('13', '深圳市儿童医院', '深圳市福田区益田路7019号', '', '114.06207', '22.55324', '', '', '', '', '', '', '83936101', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('14', '深圳市眼科医院', '福田区泽田路18号', '', '114.02083', '22.55243', '', '', '', '', '', '', '23959523', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('15', '深圳市妇幼保健院', '深圳市福田区红荔路2004号', '', '114.10164', '22.55572', '', '', '', '', '', '', '83262288', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('16', '深圳市妇幼保健院（保健部）', '深圳市福田区福强路', '', '114.05576', '22.52357', '', '', '', '', '', '', '', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('17', '深圳市急救中心', '福田区泥岗西路梅岗南街3号', '', '114.09238', '22.52357', '', '', '', '', '', '', '82438120', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('18', '深圳市人民医院龙华分院', '深圳市宝安区龙华街道龙观东路101号', '', '114.03054', '22.67118', '', '', '', '', '', '', '27745118', '', '', '龙华新区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('19', '深圳市罗湖区人民医院(深圳市第五人民医院)', '罗湖区友谊路47号', '', '114.12842', '22.54494', '', '', '', '', '', '', '82203083', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('20', '深圳市罗湖区中医院', '深圳市罗湖区乐园路83号', '', '114.13396', '22.5535', '', '', '', '', '', '', '82311922', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('21', '深圳市罗湖区中医院康复分院', '深圳市罗湖区黄贝路2136号', '', '114.15027', '22.56718', '', '', '', '', '', '', '', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('22', '罗湖区妇幼保健院', '罗湖区太白路2018号', '', '114.14327', '22.58248', '', '', '', '', '', '', '25510061', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('23', '罗湖区慢性病防治院', '罗湖区金湖路11号', '', '114.10793', '22.57635', '', '', '', '', '', '', '82054069', '', '', '罗湖区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('24', '深圳市福田区人民医院(深圳市第四人民医院)', '福田区深南中路3025号', '', '114.08571', '22.54528', '', '', '', '', '', '', '83982222', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('25', '深圳市福田区中医院', '深圳市福田区景田北6001号', '', '114.04959', '22.5644', '', '', '', '', '', '', '83548607', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('26', '福田区第二人民医院(梅林医院)', '福田区中康路27号', '', '114.06561', '22.57248', '', '', '', '', '', '', '83110237', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('27', '福田区妇幼保健院', '福田区金田路2002号', '', '114.0709', '22.52851', '', '', '', '', '', '', '83836163', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('28', '福田区人民医院南园肛肠分院', '福田区松岭路2号', '', '114.1013', '22.54192', '', '', '', '', '', '', '', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('29', '福田区人民医院香蜜湖分院', '福田区竹子林香竹路1号', '', '114.02544', '22.54355', '', '', '', '', '', '', '', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('30', '福田区人民医院第三分院', '福田区八卦路56号', '', '114.06043', '22.57583', '', '', '', '', '', '', '', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('31', '福田区慢性病防治院', '福田区新沙路九号', '', '', '', '', '', '', '', '', '', '83898120', '', '', '福田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('32', '深圳市南山区人民医院(深圳市第六人民医院)', '南山区桃园路', '', '', '', '', '', '', '', '', '', '26553111', '', '', '南山区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('33', '深圳市南山区妇幼保健院', '南山区桃园西路', '', '', '', '', '', '', '', '', '', '26079472', '', '', '南山区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('34', '深圳市南山区蛇口人民医院', '南山区蛇口湾厦路1号、南山区蛇口工业区七路26号', '', '', '', '', '', '', '', '', '', '26866176 26692314', '', '', '南山区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('35', '南山区西丽人民医院', '南山区西丽留仙大道2051号', '', '', '', '', '', '', '', '', '', '26528895', '', '', '南山区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('36', '南山区慢性病防治院', '南山区华明路7号', '', '', '', '', '', '', '', '', '', '26403300', '', '', '南山区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('37', '深圳市宝安区人民医院(深圳市第八人民医院）', '宝安区宝城龙井二路118号', '', '113.92104', '22.56783', '', '', '', '', '', '', '27788311', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('38', '深圳市宝安区妇幼保健院', '宝安区三十区裕安路', '', '113.90477', '22.57706', '', '', '', '', '', '', '27812637', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('39', '深圳市宝安区沙井人民医院', '宝安区沙井大街', '', '113.81218', '22.73849', '', '', '', '', '', '', '27722241', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('40', '深圳市宝安区西乡人民医院', '宝安区西乡街道乐园街60号', '', '113.88641', '22.58648', '', '', '', '', '', '', '27956611', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('41', '深圳市宝安区中医院', '深圳市宝安区裕安二路25号', '', '113.90567', '22.57802', '', '', '', '', '', '', '27806830', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('42', '深圳市宝安区龙华人民医院', '深圳市宝安区龙华街道建设东路', '', '114.0398', '22.66199', '', '', '', '', '', '', '27741585', '', '', '龙华新区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('43', '深圳市宝安区松岗人民医院', '宝安区松岗街道沙江路2号', '', '113.84739', '22.78238', '', '', '', '', '', '', '27717273', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('44', '深圳市宝安区观澜人民医院', '宝安区观澜街道观澜大道西', '', '114.05213', '22.6995', '', '', '', '', '', '', '28015466', '', '', '龙华新区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('45', '宝安区慢性病防治院', '宝安区新安街道新安四路', '', '113.8772', '22.61241', '', '', '', '', '', '', '29187209', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('46', '宝安区福永人民医院', '宝安区福永街道德丰路81号', '', '113.82521', '22.67674', '', '', '', '', '', '', '27391395', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('47', '宝安区石岩人民医院', '石岩街道吉祥路11号', '', '113.94834', '22.6826', '', '', '', '', '', '', '27609071', '', '', '宝安区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('48', '深圳市龙岗中心医院(深圳市第九人民医院)', '龙岗区深惠路龙岗段1228号', '', '', '', '', '', '', '', '', '', '84802448', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('49', '深圳市龙岗区人民医院', '龙岗区中心城爱心路', '', '', '', '', '', '', '', '', '', '28932833', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('50', '龙岗区妇幼保健院', '龙岗区中心城爱龙路', '', '', '', '', '', '', '', '', '', '28933003', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('51', '龙岗区慢性病防治院', '龙岗区中心城黄阁北路32号', '', '', '', '', '', '', '', '', '', '28924199', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('52', '龙岗区坪地人民医院', '龙岗区深惠路坪地段388号', '', '', '', '', '', '', '', '', '', '84094010', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('53', '龙岗区大鹏人民医院', '大鹏街道鹏新东路149号', '', '', '', '', '', '', '', '', '', '84305909', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('54', '龙岗区葵涌人民医院', '龙岗区葵涌街道葵新北路26号', '', '', '', '', '', '', '', '', '', '84207803', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('55', '龙岗区南澳人民医院', '南澳街道人民路6号', '', '', '', '', '', '', '', '', '', '84401957', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('56', '龙岗区南湾人民医院（原南岭医院）', '南湾街道南岭社区', '', '', '', '', '', '', '', '', '', '28700099', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('57', '龙岗区沙湾医院', '南湾街道沙平北路112号', '', '', '', '', '', '', '', '', '', '28753336', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('58', '深圳市龙岗区第二人民医院（原布吉人民医院）', '龙岗区布吉街道吉华路175号', '', '', '', '', '', '', '', '', '', '28870993', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('59', '深圳市龙岗区横岗人民医院', '龙岗区横岗街道松柏路278号', '', '', '', '', '', '', '', '', '', '28863382', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('60', '深圳市龙岗区平湖人民医院', '龙岗区平湖街道双拥街77号', '', '', '', '', '', '', '', '', '', '28457333', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('61', '龙岗中心医院手外科专科医院', '龙岗区龙岗街道办杨梅岗新生西路243号', '', '', '', '', '', '', '', '', '', '', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('62', '龙岗中心医院耳鼻咽喉科医院', '龙岗区龙城街道爱联社区台湾工业区', '', '', '', '', '', '', '', '', '', '', '', '', '龙岗区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('63', '深圳市盐田区人民医院(深圳市第七人民医院)', '盐田区沙头角梧桐路2032号', '', '', '', '', '', '', '', '', '', '25216100', '', '', '盐田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('64', '盐田区妇幼保健院', '盐田区沙头角东和路9号', '', '', '', '', '', '', '', '', '', '25355272', '', '', '盐田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('65', '盐田区盐港医院', '盐田区东海道363号', '', '', '', '', '', '', '', '', '', '25208372', '', '', '盐田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('66', '盐田区梅沙医院', '盐田区大海沙望翠路2号', '', '', '', '', '', '', '', '', '', '25259893', '', '', '盐田区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('67', '深圳市光明新区公明人民医院', '光明新区公明街道松白路将石段339号', '', '', '', '', '', '', '', '', '', '27166724', '', '', '光明新区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('68', '光明新区光明医院', '光明新区光明办事处华夏路', '', '', '', '', '', '', '', '', '', '27400061 27400677', '', '', '光明新区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('69', '深圳市坪山新区坪山人民医院', '坪山新区坪山街道人民街19号', '', '', '', '', '', '', '', '', '', '28825080', '', '', '平山区');
INSERT INTO "sf_defence"."t_hospital" VALUES ('70', '坪山新区坑梓人民医院', '坪山新区坑梓街道龙兴南路6号', '', '', '', '', '', '', '', '', '', '84134902', '', '', '');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_hospital
-- ----------------------------
ALTER TABLE "sf_defence"."t_hospital" ADD PRIMARY KEY ("RECID");
