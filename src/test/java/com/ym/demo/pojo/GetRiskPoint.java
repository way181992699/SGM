package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel("风险点")
public class GetRiskPoint {
    @ApiModelProperty("重点防御单位主键")
    private String flag;
    @ApiModelProperty("纬度")
    private double lat;
    @ApiModelProperty("经度")
    private double lng;
    @ApiModelProperty("风险级别，null为超出范围")
    private Integer level;

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
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

    public Integer getLevel() {
        return level;
    }

    @Override
    public String toString() {
        return "GetRiskPoint{" +
                "flag='" + flag + '\'' +
                ", lat=" + lat +
                ", lng=" + lng +
                ", level=" + level +
                '}';
    }

    public void setLevel(Integer level) {

        this.level = level;
    }
}
