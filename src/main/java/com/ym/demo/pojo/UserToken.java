package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;

/**
 * access_token	请求接口时需带上的凭证
 * refresh_token	刷新access_token时需要携带的参数；refresh_token过期时间30天
 * token_type	支持Bearer协议
 * expires_in	access_token的过期时间；默认12小时，单位秒
 */
@ApiModel("token类")
public class UserToken {
    private String access_token;
    private String refresh_token;
    private String token_type;
    private String expires_in;

    public String getAccess_token() {
        return access_token;
    }

    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    }

    public String getRefresh_token() {
        return refresh_token;
    }

    public void setRefresh_token(String refresh_token) {
        this.refresh_token = refresh_token;
    }

    public String getToken_type() {
        return token_type;
    }

    public void setToken_type(String token_type) {
        this.token_type = token_type;
    }

    public String getExpires_in() {
        return expires_in;
    }

    public void setExpires_in(String expires_in) {
        this.expires_in = expires_in;
    }

    @Override
    public String toString() {
        return "UserToken{" +
                "access_token='" + access_token + '\'' +
                ", refresh_token='" + refresh_token + '\'' +
                ", token_type='" + token_type + '\'' +
                ", expires_in='" + expires_in + '\'' +
                '}';
    }
}
