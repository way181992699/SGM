package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.util.Date;

@ApiModel("平台用户")
public class XthUser {

    @ApiModelProperty("用户ID")
    private Integer uId;

    @ApiModelProperty("用户名")
    private String uLogin;

    @ApiModelProperty("密码")
    private String uPassword;

    @ApiModelProperty("级别（0区，1市）")
    private String uClass;

    @ApiModelProperty("区域Code")
    private String uCode;

    @ApiModelProperty("用户资料姓名")
    private String uInfoName;

    @ApiModelProperty("用户资料性别")
    private String uInfoSex;

    @ApiModelProperty("用户资料电话")
    private String uInfoPhone;

    @ApiModelProperty("是否Root用户（只有系统初始用户是1）")
    private Integer uRoot;

    @ApiModelProperty("用户组ID")
    private Integer uGroup;

    @ApiModelProperty("单位ID（base-unit）")
    private Integer uUnit;

    @ApiModelProperty("身份证")
    private String idCard;

    @ApiModelProperty("创建用户时间")
    private Date createTime;

    public XthUser(Integer uId, String uLogin, String uPassword, String uClass, String uCode, String uInfoName, String uInfoSex, String uInfoPhone, Integer uRoot, Integer uGroup, Integer uUnit, String idCard, Date createTime) {
        this.uId = uId;
        this.uLogin = uLogin;
        this.uPassword = uPassword;
        this.uClass = uClass;
        this.uCode = uCode;
        this.uInfoName = uInfoName;
        this.uInfoSex = uInfoSex;
        this.uInfoPhone = uInfoPhone;
        this.uRoot = uRoot;
        this.uGroup = uGroup;
        this.uUnit = uUnit;
        this.idCard = idCard;
        this.createTime = createTime;
    }

    public XthUser() {
        super();
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuLogin() {
        return uLogin;
    }

    public void setuLogin(String uLogin) {
        this.uLogin = uLogin == null ? null : uLogin.trim();
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }

    public String getuClass() {
        return uClass;
    }

    public void setuClass(String uClass) {
        this.uClass = uClass == null ? null : uClass.trim();
    }

    public String getuCode() {
        return uCode;
    }

    public void setuCode(String uCode) {
        this.uCode = uCode == null ? null : uCode.trim();
    }

    public String getuInfoName() {
        return uInfoName;
    }

    public void setuInfoName(String uInfoName) {
        this.uInfoName = uInfoName == null ? null : uInfoName.trim();
    }

    public String getuInfoSex() {
        return uInfoSex;
    }

    public void setuInfoSex(String uInfoSex) {
        this.uInfoSex = uInfoSex == null ? null : uInfoSex.trim();
    }

    public String getuInfoPhone() {
        return uInfoPhone;
    }

    public void setuInfoPhone(String uInfoPhone) {
        this.uInfoPhone = uInfoPhone == null ? null : uInfoPhone.trim();
    }

    public Integer getuRoot() {
        return uRoot;
    }

    public void setuRoot(Integer uRoot) {
        this.uRoot = uRoot;
    }

    public Integer getuGroup() {
        return uGroup;
    }

    public void setuGroup(Integer uGroup) {
        this.uGroup = uGroup;
    }

    public Integer getuUnit() {
        return uUnit;
    }

    public void setuUnit(Integer uUnit) {
        this.uUnit = uUnit;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}