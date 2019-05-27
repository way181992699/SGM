package com.ym.demo.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.io.Serializable;

public class Copy2 implements Serializable {
    @JsonProperty("userName")
    private String name;
    private String ss;
    private int age;

    public String getUserName() {
        return name;
    }

    public void setUserName(String userName) {
        this.name = userName;
    }

    public String getSS() {
        return ss;
    }

    public void setSex(String sex) {
        this.ss = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Copy2{" +
                "name='" + name + '\'' +
                ", ss='" + ss + '\'' +
                ", age=" + age +
                '}';
    }
}
