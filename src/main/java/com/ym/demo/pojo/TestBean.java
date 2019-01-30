package com.ym.demo.pojo;

public class TestBean {

    public Integer val;

    public static Integer num = 7;

    public Integer getVal() {
        return val;
    }

    public void setVal(Integer val) {
        this.val = val;
    }

    public static Integer getNum() {
        return num;
    }

    public static void setNum(Integer num) {
        TestBean.num = num;
    }
}
