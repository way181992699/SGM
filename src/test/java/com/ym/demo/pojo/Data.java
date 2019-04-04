package com.ym.demo.pojo;

public class Data {
    private Double y;
    private Long x;
    private Double d;
    private Double z;

    public Double getZ() {
        return z;
    }

    public void setZ(Double z) {
        this.z = z;
    }

    @Override
    public String toString() {
        return "Data{" +
                "y=" + y +
                ", x=" + x +
                ", d=" + d +
                ", z=" + z +
                '}';
    }

    public Double getY() {
        return y;
    }

    public void setY(Double y) {
        this.y = y;
    }

    public Long getX() {
        return x;
    }

    public void setX(Long x) {
        this.x = x;
    }

    public Double getD() {
        return d;
    }

    public void setD(Double d) {
        this.d = d;
    }
}
