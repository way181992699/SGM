package com.ym.demo.pojo;

public class TT<T> {

private T key;

    public TT(T key) {
        this.key = key;
    }

    public T getKey() {
        return key;
    }

    public void setKey(T key) {
        this.key = key;
    }

    @Override
    public String toString() {
        return "TT{" +
                "key=" + key +
                '}';
    }
}
