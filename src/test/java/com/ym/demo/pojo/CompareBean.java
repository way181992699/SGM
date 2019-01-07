package com.ym.demo.pojo;

import java.util.Objects;

public class CompareBean implements Comparable<CompareBean> {

    private String name;
    private int age;
    private String sex;

    public CompareBean() {
    }

    public CompareBean(String name, int age, String sex) {
        this.name = name;
        this.age = age;
        this.sex = sex;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CompareBean that = (CompareBean) o;
        return age == that.age &&
                Objects.equals(name, that.name) &&
                Objects.equals(sex, that.sex);
    }

    @Override
    public int hashCode() {

        return Objects.hash(name, age, sex);
    }

    @Override
    public String toString() {
        return "CompareBean{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                '}';
    }


    public int compareTo(CompareBean o) {

        return this.age - o.getAge();
    }


}
