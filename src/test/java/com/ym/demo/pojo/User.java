package com.ym.demo.pojo;

import java.util.Objects;

public class User extends Person implements Comparable<User> {
    private String name;

    private String pwd = "123";

    public User() {
    }

    public User(String name, String pwd) {
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
        return "User{" +
                "name='" + name + '\'' +
                ", pwd='" + pwd + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
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
    public int compareTo(User o) {
        return Integer.valueOf(this.pwd) - Integer.valueOf(o.pwd);
    }
}
