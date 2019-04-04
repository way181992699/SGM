package com.ym.demo.pojo;

import java.io.Serializable;
import java.util.Objects;

public class UserRes extends Person implements Comparable<UserRes>, Cloneable, Serializable {
    private String name;

    private String pwd = "123";

    private int age;

    private String lover;

    public UserRes(String name, String pwd, int age) {
        this.name = name;
        this.pwd = pwd;
        this.age = age;
    }

    public UserRes() {
    }

    public UserRes(UserRes u) { //浅拷贝核心代码
        this.name = u.getName();
        this.pwd = u.getPwd();
        this.age = u.getAge();
    }

    public String getLover() {
        return lover;
    }

    public void setLover(String lover) {
        this.lover = lover;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public UserRes(String name, String pwd) {
        this.name = name;
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    @Override
    public String toString() {
        return "UserRes{" +
                "name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                ", age=" + age +
                ", lover='" + lover + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserRes user = (UserRes) o;
        return Objects.equals(name, user.name) &&
                Objects.equals(pwd, user.pwd);
    }

    @Override
    public int hashCode() {

        return Objects.hash(name, pwd);
    }

    protected int number() {
        return 1;
    }

    @Override
    public int compareTo(UserRes o) {
        return Integer.valueOf(this.pwd) - Integer.valueOf(o.pwd);
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }


}
