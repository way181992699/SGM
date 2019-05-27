package com.ym.demo.pojo;

import java.util.List;

public class TestPojo extends TestPojo2 {


    /**
     * recid : 779
     * name : 深圳外环高速公路第二合同段
     * address : 广东省深圳市宝安区沙井街道北环路
     * regionCode :
     * buildingType :
     * makespan : 1546099200000
     * contacts :
     * phone :
     * remarks :
     * lat : 22.743687
     * lng : 113.824921
     * expid : eb69cb40-f295-4182-8718-93fdb0d07f0e
     * startTime : 1454169600000
     * scale :
     * obtid :
     * audit : 0
     * riskThresholdRes : [{"pointId":"eb69cb40-f295-4182-8718-93fdb0d07f0e","compare":3,"type":"Rain","twoLevelType":"R06M","threshold":5,"status":1,"examine":0},{"pointId":"eb69cb40-f295-4182-8718-93fdb0d07f0e","compare":3,"type":"Rain","twoLevelType":"R06M","threshold":10,"status":0,"examine":0},{"pointId":"eb69cb40-f295-4182-8718-93fdb0d07f0e","compare":3,"type":"Rain","twoLevelType":"RainForecast","threshold":5,"status":1,"examine":0},{"pointId":"eb69cb40-f295-4182-8718-93fdb0d07f0e","compare":3,"type":"Rain","twoLevelType":"RainForecast","threshold":10,"status":0,"examine":0}]
     */

    private int recid;
    private String name;
    private String address;
    private String regionCode;
    private String buildingType;
    private long makespan;
    private String contacts;
    private String phone;
    private String remarks;
    private double lat;
    private double lng;
    private String expid;
    private long startTime;
    private String scale;
    private String obtid;
    private int audit;
    private List<RiskThresholdResBean> riskThresholdRes;

    public TestPojo(int recid, String name, String address, String regionCode, String buildingType, long makespan, String contacts, String phone, String remarks, double lat, double lng, String expid, long startTime, String scale, String obtid, int audit) {
        this.recid = recid;
        this.name = name;
        this.address = address;
        this.regionCode = regionCode;
        this.buildingType = buildingType;
        this.makespan = makespan;
        this.contacts = contacts;
        this.phone = phone;
        this.remarks = remarks;
        this.lat = lat;
        this.lng = lng;
        this.expid = expid;
        this.startTime = startTime;
        this.scale = scale;
        this.obtid = obtid;
        this.audit = audit;
    }

    public TestPojo(int recid, String name, String address, String regionCode, String buildingType, long makespan, String contacts) {
        this.recid = recid;
        this.name = name;
        this.address = address;
        this.regionCode = regionCode;
        this.buildingType = buildingType;
        this.makespan = makespan;
        this.contacts = contacts;
    }

    public int getId() {
        return recid;
    }

    public void setId(int id) {
        this.recid = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRegionCode() {
        return regionCode;
    }

    public void setRegionCode(String regionCode) {
        this.regionCode = regionCode;
    }

    public String getBuildingType() {
        return buildingType;
    }

    public void setBuildingType(String buildingType) {
        this.buildingType = buildingType;
    }

    public long getMakespan() {
        return makespan;
    }

    public void setMakespan(long makespan) {
        this.makespan = makespan;
    }

    public String getContacts() {
        return contacts;
    }

    public void setContacts(String contacts) {
        this.contacts = contacts;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }

    public String getExpid() {
        return expid;
    }

    public void setExpid(String expid) {
        this.expid = expid;
    }

    public long getStartTime() {
        return startTime;
    }

    public void setStartTime(long startTime) {
        this.startTime = startTime;
    }

    public String getScale() {
        return scale;
    }

    public void setScale(String scale) {
        this.scale = scale;
    }

    public String getObtid() {
        return obtid;
    }

    public void setObtid(String obtid) {
        this.obtid = obtid;
    }

    public int getAudit() {
        return audit;
    }

    public void setAudit(int audit) {
        this.audit = audit;
    }

    public List<RiskThresholdResBean> getRiskThresholdRes() {
        return riskThresholdRes;
    }

    public void setRiskThresholdRes(List<RiskThresholdResBean> riskThresholdRes) {
        this.riskThresholdRes = riskThresholdRes;
    }

    public static class RiskThresholdResBean {
        /**
         * pointId : eb69cb40-f295-4182-8718-93fdb0d07f0e
         * compare : 3
         * type : Rain
         * twoLevelType : R06M
         * threshold : 5
         * status : 1
         * examine : 0
         */

        private String pointId;
        private int compare;
        private String type;
        private String twoLevelType;
        private int threshold;
        private int status;
        private int examine;

        public String getPointId() {
            return pointId;
        }

        public void setPointId(String pointId) {
            this.pointId = pointId;
        }

        public int getCompare() {
            return compare;
        }

        public void setCompare(int compare) {
            this.compare = compare;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public String getTwoLevelType() {
            return twoLevelType;
        }

        public void setTwoLevelType(String twoLevelType) {
            this.twoLevelType = twoLevelType;
        }

        public int getThreshold() {
            return threshold;
        }

        public void setThreshold(int threshold) {
            this.threshold = threshold;
        }

        public int getStatus() {
            return status;
        }

        public void setStatus(int status) {
            this.status = status;
        }

        public int getExamine() {
            return examine;
        }

        public void setExamine(int examine) {
            this.examine = examine;
        }
    }
}
