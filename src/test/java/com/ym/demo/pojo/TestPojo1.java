package com.ym.demo.pojo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import java.util.List;


@Data
public class TestPojo1 {

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
    private List<String> strings;


}
