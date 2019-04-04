package com.ym.demo.pojo;

public class RiskB  extends RiskBase {
    private String name;
    public double lat;
    public double lng;
    public Integer level;

    @Override
    public double getLat() {
        return lat;
    }

    @Override
    public void setLat(double lat) {
        this.lat = lat;
    }

    @Override
    public double getLng() {
        return lng;
    }

    @Override
    public void setLng(double lng) {
        this.lng = lng;
    }

    @Override
    public Integer getLevel() {
        return level;
    }

    @Override
    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
