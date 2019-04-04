package com.ym.demo.pojo;

public class Person {
    private String sex;

    public Person() {
    }

    public Person(String sex) {
        this.sex = sex;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "Person{" +
                "sex='" + sex + '\'' +
                '}';
    }
}
