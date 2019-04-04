package com.ym.demo.pojo;

public class RiskD extends RiskBase {
    private String rName;
    private String sex;

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return "RiskD{" +
                "rName='" + rName + '\'' +
                ", sex='" + sex + '\'' +
                ", lat=" + lat +
                ", lng=" + lng +
                ", level=" + level +
                '}';
    }
}
