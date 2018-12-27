package com.ym.demo.pojo;

import io.swagger.annotations.ApiModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@ApiModel("token刷新类")
public class TokenRefresh {
    private List<String> client_id = new ArrayList(Arrays.asList("insys080_client"));//	是	客户端账号
    private List<String> client_secret = new ArrayList(Arrays.asList("7B4CE23460A90144E0530A9962140144"));//	是	客户端凭证
    private List<String> grant_type = new ArrayList(Arrays.asList("refresh_token"));//		是	固定值
    private List<String> refresh_token;//	是	请求ACCESS_TOKEN时获取的{refresh_token}

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

    public List<String> getRefresh_token() {
        return refresh_token;
    }

    public void setRefresh_token(List<String> refresh_token) {

        this.refresh_token = refresh_token;

    }
}
