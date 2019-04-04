package com.ym.demo.pojo;

public class RiskC {
    private String rName;
    private String sex;
    private double lat;
    private double lng;

    public RiskC() {
    }

    public RiskC(double lat, double lng, String rName) {
        this.rName = rName;
        this.lat = lat;
        this.lng = lng;
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

    public RiskC(String rName) {
        this.rName = rName;
        this.sex = sex;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "RiskC{" +
                "rName='" + rName + '\'' +
                ", sex='" + sex + '\'' +
                ", lat=" + lat +
                ", lng=" + lng +
                '}';
    }
}
