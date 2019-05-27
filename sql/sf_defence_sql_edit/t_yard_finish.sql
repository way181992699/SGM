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

Date: 2018-10-25 09:56:08
*/


-- ----------------------------
-- Table structure for t_yard
-- ----------------------------
DROP TABLE IF EXISTS "sf_defence"."t_yard";
CREATE TABLE "sf_defence"."t_yard" (
"id" int4 NOT NULL,
"address" varchar(255) COLlatE "default",
"postcode" varchar(10) COLlatE "default",
"lng"  numeric(10,5),
"lat"  numeric(10,5),
"grade" varchar(20) COLlatE "default",
"type" varchar(50) COLlatE "default",
"maxheight" varchar(10) COLlatE "default",
"defenselevel" varchar(50) COLlatE "default",
"contact" varchar(20) COLlatE "default",
"phone" varchar(20) COLlatE "default",
"expandsion" varchar(255) COLlatE "default",
"code" varchar(20) COLlatE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_yard" IS '堆场(t_yard)';
COMMENT ON COLUMN "sf_defence"."t_yard"."id" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_yard"."address" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_yard"."postcode" IS '邮编';
COMMENT ON COLUMN "sf_defence"."t_yard"."lng" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_yard"."lat" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_yard"."grade" IS '级别';
COMMENT ON COLUMN "sf_defence"."t_yard"."type" IS '类别';
COMMENT ON COLUMN "sf_defence"."t_yard"."maxheight" IS '最大高度/m';
COMMENT ON COLUMN "sf_defence"."t_yard"."defenselevel" IS '防风（雨）级别';
COMMENT ON COLUMN "sf_defence"."t_yard"."contact" IS '联系人';
COMMENT ON COLUMN "sf_defence"."t_yard"."phone" IS '电话';
COMMENT ON COLUMN "sf_defence"."t_yard"."expandsion" IS '扩展字段';
COMMENT ON COLUMN "sf_defence"."t_yard"."code" IS '区域';

-- ----------------------------
-- Records of t_yard
-- ----------------------------
INSERT INTO "sf_defence"."t_yard" VALUES ('1', '深圳市南山区', '518000', '113.9666667', '22.58333333', '', '余泥渣土受纳场', '50米', '', '陆宏文', '1350288653', '', '5949303');
INSERT INTO "sf_defence"."t_yard" VALUES ('2', '深圳市龙华新区', '518109', '113.9833333', '22.61666667', '', '余泥渣土受纳场', '100米', '', '陆宏文', '1350288653', '', '5949303');
INSERT INTO "sf_defence"."t_yard" VALUES ('3', '深圳市龙岗区郁环路1号', '440307', '114.0888889', '22.61361111', '', '建筑垃圾', '215米', '', '李奇锐', '13632847945', '', '5949305');
INSERT INTO "sf_defence"."t_yard" VALUES ('4', '深圳市罗湖区清水河保洁路下坪固体废弃物填埋场', '518029', '114.0791667', '22.55833333', '', '固体废弃物', '90米', '', '刘小兵', '136026006702', '', '5949302');
INSERT INTO "sf_defence"."t_yard" VALUES ('5', '宝安老虎坑环境园', '518000', '113.8425', '22.83222222', '', '生活垃圾', '117米', '', '隋继超', '13714594353', '', '5949306');
INSERT INTO "sf_defence"."t_yard" VALUES ('6', '龙岗区坪地街道红花岭环境园', '518100', '114.2608333', '22.76222222', '', '生活垃圾', '90米', '', '徐武', '13926574085', '', '5949305');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_yard
-- ----------------------------
ALTER TABLE "sf_defence"."t_yard" ADD PRIMARY KEY ("id");
