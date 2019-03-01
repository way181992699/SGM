package com.ym.demo.pojo;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "k")
public class K {
    String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "K{" +
                "name='" + name + '\'' +
                '}';
    }
}
