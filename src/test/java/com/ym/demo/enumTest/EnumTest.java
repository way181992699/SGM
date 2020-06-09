package com.ym.demo.enumTest;

import org.assertj.core.util.Lists;

import java.util.ArrayList;
import java.util.List;

public enum EnumTest {
    //    MON, TUE, WED, THU, FRI, SAT, SUN;
    MON(Lists.newArrayList("局领导","办公室","减灾处")), TUE(Lists.newArrayList("观象台","气象监测台"));
    String name;
    List<String> list ;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    EnumTest(List<String> list) {
        this.list = list;
    }

    public List<String> getList() {
        return list;
    }

    public void setList(List<String> list) {
        this.list = list;
    }

    public static void main(String[] args) {
        EnumTest.MON.setName("234");
                System.out.println(EnumTest.MON.getList());
        for (EnumTest enumTest : EnumTest.values()) {
            System.out.println(enumTest.list);
        }

    }
}
