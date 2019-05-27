package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Objects;

@ApiModel("风、雨等级划分基础")
public class AnytingLevel {

    @ApiModelProperty(value = "5分钟雨量类型")
    private boolean R06M;
    @ApiModelProperty(value = "10分钟雨量类型")
    private boolean R12M;
    @ApiModelProperty(value = "30分钟雨量类型")
    private boolean R30M;
    @ApiModelProperty(value = "1小时雨量类型")
    private boolean R01H;
    @ApiModelProperty(value = "2小时雨量类型")
    private boolean R02H;
    @ApiModelProperty(value = "3小时雨量类型")
    private boolean R03H;
    @ApiModelProperty(value = "6小时雨量类型")
    private boolean R06H;
    @ApiModelProperty(value = "12小时雨量类型")
    private boolean R12H;
    @ApiModelProperty(value = "24小时雨量类型")
    private boolean R24H;
    @ApiModelProperty(value = "48小时雨量类型")
    private boolean R48H;
    @ApiModelProperty(value = "72小时雨量类型")
    private boolean R72H;
    @ApiModelProperty(value = "极大风类型")
    private boolean WD3SMAXDF;

    public boolean getR06M() {
        return R06M;
    }

    public void setR06M(boolean r06M) {
        R06M = r06M;
    }

    public boolean getR12M() {
        return R12M;
    }

    public void setR12M(boolean r12M) {
        R12M = r12M;
    }

    public boolean getR30M() {
        return R30M;
    }

    public void setR30M(boolean r30M) {
        R30M = r30M;
    }

    public boolean getR01H() {
        return R01H;
    }

    public void setR01H(boolean r01H) {
        R01H = r01H;
    }

    public boolean getR02H() {
        return R02H;
    }

    public void setR02H(boolean r02H) {
        R02H = r02H;
    }

    public boolean getR03H() {
        return R03H;
    }

    public void setR03H(boolean r03H) {
        R03H = r03H;
    }

    public boolean getR06H() {
        return R06H;
    }

    public void setR06H(boolean r06H) {
        R06H = r06H;
    }

    public boolean getR12H() {
        return R12H;
    }

    public void setR12H(boolean r12H) {
        R12H = r12H;
    }

    public boolean getR24H() {
        return R24H;
    }

    public void setR24H(boolean r24H) {
        R24H = r24H;
    }

    public boolean getR48H() {
        return R48H;
    }

    public void setR48H(boolean r48H) {
        R48H = r48H;
    }

    public boolean getR72H() {
        return R72H;
    }

    public void setR72H(boolean r72H) {
        R72H = r72H;
    }

    public boolean getWD3SMAXDF() {
        return WD3SMAXDF;
    }

    public void setWD3SMAXDF(boolean WD3SMAXDF) {
        this.WD3SMAXDF = WD3SMAXDF;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AnytingLevel that = (AnytingLevel) o;
        return R06M == that.R06M &&
                R12M == that.R12M &&
                R30M == that.R30M &&
                R01H == that.R01H &&
                R02H == that.R02H &&
                R03H == that.R03H &&
                R06H == that.R06H &&
                R12H == that.R12H &&
                R24H == that.R24H &&
                R48H == that.R48H &&
                R72H == that.R72H &&
                WD3SMAXDF == that.WD3SMAXDF;
    }

    @Override
    public int hashCode() {

        return Objects.hash(R06M, R12M, R30M, R01H, R02H, R03H, R06H, R12H, R24H, R48H, R72H, WD3SMAXDF);
    }
}
