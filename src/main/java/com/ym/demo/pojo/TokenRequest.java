package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@ApiModel("token请求类")
public class TokenRequest {
    private List<String> client_id = new ArrayList(Arrays.asList("insys080_client"));//	是	客户端账号
    private List<String> client_secret = new ArrayList(Arrays.asList("7B4CE23460A90144E0530A9962140144"));//	是	客户端凭证
    private List<String> grant_type = new ArrayList(Arrays.asList("password"));//	是	固定值
    private List<String> scope = new ArrayList(Arrays.asList("all"));//	是	固定值
    private List<String> username = new ArrayList(Arrays.asList("insys080"));    //是	用户名
    private List<String> password = new ArrayList(Arrays.asList("123456"));//	是	用户密码

    public TokenRequest() {
    }

    public TokenRequest(List<String> client_id, List<String> client_secret, List<String> grant_type, List<String> scope, List<String> username, List<String> password) {
        this.client_id = client_id;
        this.client_secret = client_secret;
        this.grant_type = grant_type;
        this.scope = scope;
        this.username = username;
        this.password = password;
    }

    public List<String> getClient_id() {
        return client_id;
    }

    public void setClient_id(List<String> client_id) {
        this.client_id = client_id;
    }

    public List<String> getClient_secret() {
        return client_secret;
    }

    public void setClient_secret(List<String> client_secret) {
        this.client_secret = client_secret;
    }

    public List<String> getGrant_type() {
        return grant_type;
    }

    public void setGrant_type(List<String> grant_type) {
        this.grant_type = grant_type;
    }

    public List<String> getScope() {
        return scope;
    }

    public void setScope(List<String> scope) {
        this.scope = scope;
    }

    public List<String> getUsername() {
        return username;
    }

    public void setUsername(List<String> username) {
        this.username = username;
    }

    public List<String> getPassword() {
        return password;
    }

    public void setPassword(List<String> password) {
        this.password = password;
    }
}
