package com.ym.demo.pojo;

import org.springframework.stereotype.Component;

@Component
public class Hello {
    private String name;

    private String say;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSay() {
        return say;
    }

    public void setSay(String say) {
        this.say = say;
    }

    public String hi() {

        return "Hi world";
    }

    @Override
    public String toString() {
        return "Hello{" +
                "name='" + name + '\'' +
                ", say='" + say + '\'' +
                '}';
    }
}
