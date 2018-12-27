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

Date: 2018-10-25 09:55:08
*/


-- ----------------------------
-- Table structure for t_port
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_port";
CREATE TABLE "sf_defence"."t_port" (
"RECID" int4 NOT NULL,
"NAME" varchar(255) COLLATE "default",
"ADDRESS" varchar(255) COLLATE "default",
"LNG" varchar(255) COLLATE "default",
"LAT" varchar(255) COLLATE "default",
"PHONE" varchar(255) COLLATE "default",
"EXPANDSION" varchar(255) COLLATE "default",
"AREA" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_port" IS '港口(t_port)';
COMMENT ON COLUMN "sf_defence"."t_port"."RECID" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_port"."NAME" IS '名称';
COMMENT ON COLUMN "sf_defence"."t_port"."ADDRESS" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_port"."LNG" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_port"."LAT" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_port"."PHONE" IS '电话';
COMMENT ON COLUMN "sf_defence"."t_port"."EXPANDSION" IS '扩展';
COMMENT ON COLUMN "sf_defence"."t_port"."AREA" IS '区域';

-- ----------------------------
-- Records of t_port
-- ----------------------------
INSERT INTO "sf_defence"."t_port" VALUES ('1', '大梅沙国际水上运动训练基地', '深圳盐田区盐梅路89号(奥特莱斯)', '114.318646', '22.603966', '15989301512', '', '盐田区');
INSERT INTO "sf_defence"."t_port" VALUES ('2', '深圳蛇口集装箱码头', '南港路蛇口集装箱码头附近', '113.90174', '22.465241', '(0755)26822110', '', '西部海区');
INSERT INTO "sf_defence"."t_port" VALUES ('3', '深圳机场福永码头', '深圳市宝安区新港务码头大道1001号', '113.82089', '22.606182', '', '', '宝安区');
INSERT INTO "sf_defence"."t_port" VALUES ('4', '妈湾港', '妈湾大道27', '113.880664', '22.497348', '', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('5', '渔人码头', '广东省深圳市南山区湾夏路', '113.935032', '22.486294', '', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('6', '深圳蛇口港', '港湾一路1号', '113.91979', '22.481737', '(0755)26695601', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('7', '赤湾港', '深圳市南山区赤湾四路与赤湾九路交汇处', '113.893287', '22.480514', '(0755)26817288', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('8', '盐田国际集装箱码头', '洪安路向东南路头', '114.280228', '22.582008', '', '', '东部海区');
INSERT INTO "sf_defence"."t_port" VALUES ('9', '东角头亘富康信集装箱码头', '深圳市南山区东角头港港区二路', '113.948103', '22.489443', '(0755)26816129', '', '西部海区');
INSERT INTO "sf_defence"."t_port" VALUES ('10', '蛇口客运码头', '广东省深圳市南山区蛇口港湾一路蛇口港客运站', '113.92022', '22.482307', '', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('11', '澳子吓客运码头', '深圳市龙岗区', '114.544538', '22.654194', '(0755)84234222', '', '东部海区');
INSERT INTO "sf_defence"."t_port" VALUES ('12', '东涌码头', '深圳市龙岗区南澳镇东涌社区海滨', '114.590019', '22.491997', '', '', '东部海区');
INSERT INTO "sf_defence"."t_port" VALUES ('13', '沙鱼涌港口', '广东省深圳市龙岗区S360(深葵公路)', '114.417319', '22.616839', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_port" VALUES ('14', '盐田港-保税区南区上步码头', '福田区华强南路1003号', '114.093625', '22.536055', '', '', '');
INSERT INTO "sf_defence"."t_port" VALUES ('15', '承远码头', '宝安大道西1300米', '113.832819', '22.620161', '', '', '宝安区');
INSERT INTO "sf_defence"."t_port" VALUES ('16', '妈湾油港', '深圳市南山区', '113.875798', '22.51069', '', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('17', '深圳赤湾集装箱码头', '深圳市南山区右炮台路7号', '113.887972', '22.473844', '(0755)26694168', '', '南山区');
INSERT INTO "sf_defence"."t_port" VALUES ('18', '东山码头', '东山市场北', '114.53522', '22.561041', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_port" VALUES ('19', '深圳双拥码头', '海港路', '114.496037', '22.537803', '(0755)84406888', '', '大鹏新区');
INSERT INTO "sf_defence"."t_port" VALUES ('20', '盐田-南澳航线', '深圳市盐田区盐田海鲜街金色海岸码头盐田金色海岸码头内', '114.284879', '22.590579', '', '', '盐田区');
INSERT INTO "sf_defence"."t_port" VALUES ('21', '大铲湾码头', '西乡大道', '113.868834', '22.547293', '', '', '宝安区');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_port
-- ----------------------------
ALTER TABLE "sf_defence"."t_port" ADD PRIMARY KEY ("RECID");
