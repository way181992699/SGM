package com.ym.demo.pojo;

import java.util.LinkedHashMap;
import java.util.Map;

public class One {
    int a;
    private static final Map<String,String> map = new LinkedHashMap<>();

    public static Map<String, String> getMap() {
        return map;
    }

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }
}
