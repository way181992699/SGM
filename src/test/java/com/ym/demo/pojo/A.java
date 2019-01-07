package com.ym.demo.pojo;

import java.util.ArrayList;
import java.util.List;

public class A {
    private String name;
    private List<Integer> integerList = new ArrayList<>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Integer> getIntegerList() {
        return integerList;
    }

    public void setIntegerList(List<Integer> integerList) {
        this.integerList = integerList;
    }

    @Override
    public String toString() {
        return "A{" +
                "name='" + name + '\'' +
                ", integerList=" + integerList +
                '}';
    }
}
