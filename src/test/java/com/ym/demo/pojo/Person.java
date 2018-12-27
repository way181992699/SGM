package com.ym.demo.pojo;

public class Person {
    private String age;


    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "Person{" +
                "age='" + age + '\'' +
                '}';
    }
}
