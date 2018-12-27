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
"RECID" int4 NOT NULL,
"ADDRESS" varchar(255) COLLATE "default",
"AREACODE" varchar(255) COLLATE "default",
"LNG" varchar(255) COLLATE "default",
"LAT" varchar(255) COLLATE "default",
"OCCURSTIME" varchar(255) COLLATE "default",
"STRANDEDNUMBER" varchar(255) COLLATE "default",
"DEATHS" varchar(255) COLLATE "default",
"INJURIES" varchar(255) COLLATE "default",
"POTENTIALLOSS" varchar(255) COLLATE "default",
"CONTACT" varchar(255) COLLATE "default",
"TEL" varchar(255) COLLATE "default",
"SURVEYTIME" varchar(255) COLLATE "default",
"ONSPOT" varchar(255) COLLATE "default",
"DISASTERDEGREE" varchar(255) COLLATE "default",
"DISASTERDESC" varchar(255) COLLATE "default",
"EXPANDSION" varchar(255) COLLATE "default",
"AREA" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "sf_defence"."t_forest" IS '森林防火(t_forest)';
COMMENT ON COLUMN "sf_defence"."t_forest"."RECID" IS 'ID';
COMMENT ON COLUMN "sf_defence"."t_forest"."ADDRESS" IS '地址';
COMMENT ON COLUMN "sf_defence"."t_forest"."AREACODE" IS '区域编号';
COMMENT ON COLUMN "sf_defence"."t_forest"."LNG" IS '经度';
COMMENT ON COLUMN "sf_defence"."t_forest"."LAT" IS '纬度';
COMMENT ON COLUMN "sf_defence"."t_forest"."OCCURSTIME" IS '发生时间';
COMMENT ON COLUMN "sf_defence"."t_forest"."STRANDEDNUMBER" IS '受影响人数';
COMMENT ON COLUMN "sf_defence"."t_forest"."DEATHS" IS '死亡人数';
COMMENT ON COLUMN "sf_defence"."t_forest"."INJURIES" IS '受伤人数';
COMMENT ON COLUMN "sf_defence"."t_forest"."POTENTIALLOSS" IS '经济损失';
COMMENT ON COLUMN "sf_defence"."t_forest"."CONTACT" IS '联系人';
COMMENT ON COLUMN "sf_defence"."t_forest"."TEL" IS '电话';
COMMENT ON COLUMN "sf_defence"."t_forest"."SURVEYTIME" IS '调查时间';
COMMENT ON COLUMN "sf_defence"."t_forest"."ONSPOT" IS '是否到达现场（0或1）';
COMMENT ON COLUMN "sf_defence"."t_forest"."DISASTERDEGREE" IS '灾害程度';
COMMENT ON COLUMN "sf_defence"."t_forest"."DISASTERDESC" IS '描述';
COMMENT ON COLUMN "sf_defence"."t_forest"."EXPANDSION" IS '扩展';
COMMENT ON COLUMN "sf_defence"."t_forest"."AREA" IS '区域';

-- ----------------------------
-- Records of t_forest
-- ----------------------------
INSERT INTO "sf_defence"."t_forest" VALUES ('1', '龙华新区新田社区林区气站', '440306', '114.0786111', '22.7', '', '', '', '', '', '王发明', '13927499339', '', '', '', '', '', '龙华新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('2', '龙华新区樟坑径林区气站', '440306', '114.0825', '22.6825', '', '', '', '', '', '王发明', '13927499339', '', '', '', '', '', '龙华新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('3', '大鹏新区水头燕鹏煤气站', '440307', '114.4891417', '22.567793', '', '', '', '', '', '朱子力', '13502857553', '', '', '', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('4', '大鹏新区布新六南煤气站', '440307', '114.4716472', '22.60404', '', '', '', '', '', '朱子力', '13502857553', '', '', '', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('5', '大鹏新区龙南加油站', '440307', '114.4798333', '22.55444', '', '', '', '', '', '江竹林', '13603056553', '', '', '', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('6', '大鹏新区南澳煤气站', '440307', '114.4945417', '22.53506', '', '', '', '', '', '江竹林', '13603056553', '', '', '', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('7', '大鹏新区东山煤气站', '440307', '114.526067', '22.55444', '', '', '', '', '', '江竹林', '13603056553', '', '', '', '', '', '大鹏新区');
INSERT INTO "sf_defence"."t_forest" VALUES ('8', '龙岗区横岗新园路林区油站', '440307', '', '', '', '', '', '', '', '刘群辉', '13823690133', '', '', '', '', '', '');
INSERT INTO "sf_defence"."t_forest" VALUES ('9', '龙岗区溜马石工业区林区油站', '440307', '', '', '', '', '', '', '', '刘群辉', '13823690133', '', '', '', '', '', '');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table t_forest
-- ----------------------------
ALTER TABLE "sf_defence"."t_forest" ADD PRIMARY KEY ("RECID");
