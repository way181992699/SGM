package com.ym.demo.pojo;

import java.io.Serializable;

public class TestRedis implements Serializable {
    private static final long serialVersionUId = 1L;

    private String id;
    private String name;

    public TestRedis(){
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "TestRedis{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }

}
