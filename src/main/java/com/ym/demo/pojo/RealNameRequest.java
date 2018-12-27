package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.text.SimpleDateFormat;
import java.util.Date;

@ApiModel("实名用户参数类")
public class RealNameRequest {

    @ApiModelProperty(value = "同步id,在所属的系统可以唯一标识该用户(当syncId存在时执行更新)", example = "217")
    private String syncId;//	是	同步id,在所属的系统可以唯一标识该用户(当syncId存在时执行更新)
    @ApiModelProperty(value = "用户在系统的用户名,可以是用于登录的名称，也可以是昵称", example = "18776957654")
    private String username;    //	是	用户在系统的用户名,可以是用于登录的名称，也可以是昵称
    @ApiModelProperty(value = "用户真实姓名", example = "王凯星")
    private String name;//	否	用户真实姓名
    @ApiModelProperty(value = "手机号码", example = "18776957654")
    private String mobile;    //	否	手机号码
    @ApiModelProperty(value = "用户身份证", example = "452133198912200318")
    private String idNumber;    //否	用户身份证
    @ApiModelProperty(value = "0-非实名，1-实名认证", example = "1")
    private String type;    //否	0-非实名，1-实名认证
    @ApiModelProperty(value = "实名认证时间，格式如：yyyy-MM-dd HH:mm:ss", example = "2018-12-7 14:00:10")
    private String confirmDateStr;//	否	实名认证时间，格式如：yyyy-MM-dd HH:mm:ss
    @ApiModelProperty(value = "注册时间，用户在信息系统中注册的时间，格式如：yyyy-MM-dd HH:mm:ss", example = "2018-12-7 14:04:00")
    private String registerDateStr;    //	否	注册时间，用户在信息系统中注册的时间，格式如：yyyy-MM-dd HH:mm:ss
//    @ApiModelProperty(value = "授权token",example = "")
//    private String access_token;    //是	授权token

    public String getSyncId() {
        return syncId;
    }

    public void setSyncId(String syncId) {
        this.syncId = syncId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getConfirmDateStr() {
        return confirmDateStr;
    }

    public void setConfirmDateStr(String confirmDateStr) {
        this.confirmDateStr = confirmDateStr;
    }

    public void setConfirmDateStr(Date confirmDateStr) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(confirmDateStr);
        this.confirmDateStr = format;
    }

    public String getRegisterDateStr() {
        return registerDateStr;
    }

    public void setRegisterDateStr(String registerDateStr) {
        this.registerDateStr = registerDateStr;
    }

    public void setRegisterDateStr() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(new Date());
        this.registerDateStr = format;
    }

//    public String getAccess_token() {
//        return access_token;
//    }
//
//    public void setAccess_token(String access_token) {
//        this.access_token = access_token;
//    }

    @Override
    public String toString() {
        return "RealNameRequest{" +
                "syncId='" + syncId + '\'' +
                ", username='" + username + '\'' +
                ", name='" + name + '\'' +
                ", mobile='" + mobile + '\'' +
                ", idNumber='" + idNumber + '\'' +
                ", type='" + type + '\'' +
                ", confirmDateStr='" + confirmDateStr + '\'' +
                ", registerDateStr='" + registerDateStr + '\'' +
                '}';
    }
}
