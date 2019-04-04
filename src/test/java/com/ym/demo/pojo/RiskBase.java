package com.ym.demo.pojo;

public class RiskBase {
    public double lat;
    public double lng;
    public Integer level;

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

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    @Override
    public String toString() {
        return "RiskBase{" +
                "lat=" + lat +
                ", lng=" + lng +
                ", level=" + level +
                '}';
    }
}
