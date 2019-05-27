package com.ym.demo.enumTest;

public enum EnumTest {
    //    MON, TUE, WED, THU, FRI, SAT, SUN;
    MON("1"), TUE("2");
    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    EnumTest(String name) {
        this.name = name;
    }

    public static void main(String[] args) {

    }
}
