package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@ApiModel("实名用户参数类")
public class RealNameRequestList {

    @ApiModelProperty(value = "同步id,在所属的系统可以唯一标识该用户(当syncId存在时执行更新)", example = "217")
    private List<String> syncId;//	是	同步id,在所属的系统可以唯一标识该用户(当syncId存在时执行更新)
    @ApiModelProperty(value = "用户在系统的用户名,可以是用于登录的名称，也可以是昵称", example = "18776957654")
    private List<String> username;    //	是	用户在系统的用户名,可以是用于登录的名称，也可以是昵称
    @ApiModelProperty(value = "用户真实姓名", example = "王凯星")
    private List<String> name;//	否	用户真实姓名
    @ApiModelProperty(value = "手机号码", example = "18776957654")
    private List<String> mobile;    //	否	手机号码
    @ApiModelProperty(value = "用户身份证", example = "452133198912200318")
    private List<String> idNumber;    //否	用户身份证
    @ApiModelProperty(value = "0-非实名，1-实名认证", example = "1")
    private List<String> type;    //否	0-非实名，1-实名认证
    @ApiModelProperty(value = "实名认证时间，格式如：yyyy-MM-dd HH:mm:ss", example = "2018-12-7 14:00:10")
    private List<String> confirmDateStr;//	否	实名认证时间，格式如：yyyy-MM-dd HH:mm:ss
    @ApiModelProperty(value = "注册时间，用户在信息系统中注册的时间，格式如：yyyy-MM-dd HH:mm:ss", example = "2018-12-7 14:04:00")
    private List<String> registerDateStr;    //	否	注册时间，用户在信息系统中注册的时间，格式如：yyyy-MM-dd HH:mm:ss
//    @ApiModelProperty(value = "授权token", example = "")
//    private List<String> access_token;    //是	授权token

    public List<String> getSyncId() {
        return syncId;
    }

    public void setSyncId(List<String> syncId) {
        this.syncId = syncId;
    }

    public void setSyncId(String syncId) {
        this.syncId.add(syncId);
    }

    public List<String> getUsername() {
        return username;
    }

    public void setUsername(List<String> username) {
        this.username = username;
    }

    public void setUsername(String username) {
        this.username.add(username);
    }

    public List<String> getName() {
        return name;
    }

    public void setName(List<String> name) {
        this.name = name;
    }

    public void setName(String name) {
        this.name.add(name);
    }

    public List<String> getMobile() {
        return mobile;
    }

    public void setMobile(List<String> mobile) {
        this.mobile = mobile;
    }

    public void setMobile(String mobile) {
        this.mobile.add(mobile);
    }

    public List<String> getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(List<String> idNumber) {
        this.idNumber = idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber.add(idNumber);
    }

    public List<String> getType() {
        return type;
    }

    public void setType(List<String> type) {
        this.type = type;
    }

    public void setType(String type) {
        this.type.add(type);
    }

    public List<String> getConfirmDateStr() {
        return confirmDateStr;
    }

    public void setConfirmDateStr(List<String> confirmDateStr) {
        this.confirmDateStr = confirmDateStr;
    }

    public void setConfirmDateStr(Date confirmDateStr) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(confirmDateStr);
        this.confirmDateStr.add(format);
    }

    public List<String> getRegisterDateStr() {
        return registerDateStr;
    }

    public void setRegisterDateStr(List<String> registerDateStr) {
        this.registerDateStr = registerDateStr;
    }

    public void setRegisterDateStr() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(new Date());
        this.registerDateStr.add(format);
    }

//    public List<String> getAccess_token() {
//        return access_token;
//    }
//
//    public void setAccess_token(List<String> access_token) {
//        this.access_token = access_token;
//    }
//
//    public void setAccess_token(String access_token) {
//        this.access_token.add(access_token);
//    }
}
