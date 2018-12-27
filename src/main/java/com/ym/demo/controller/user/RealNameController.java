package com.ym.demo.controller.user;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ym.demo.pojo.RealNameRequest;
import com.ym.demo.pojo.RealNameRequestList;
import com.ym.demo.pojo.TokenRequest;
import com.ym.demo.pojo.UserToken;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@RequestMapping("/RealName")
@RestController
@Api(value = "实名用户接口", tags = "实名用户接口", description = "实名用户接口")
public class RealNameController {
    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ApiOperation(httpMethod = "POST", value = "测试能否使用application/x-www-form-urlencoded", consumes = "application/x-www-form-urlencoded")
    public Object metadataTable1(@RequestParam("url") String urlAdd, RealNameRequestList list, List<String> access_token) {
        //urlAdd:https://10.153.121.14:443/uim/rpc/saveUimInfouser
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/x-www-form-urlencoded");
        StringBuilder url = new StringBuilder(urlAdd);
        System.out.println("请求url：" + url.toString());
        MultiValueMap value = new LinkedMultiValueMap();
        value.put("access_token", access_token);
        value.put("confirmDateStr", list.getConfirmDateStr());
        value.put("idNumber", list.getIdNumber());
        value.put("mobile", list.getMobile());
        value.put("name", list.getName());
        value.put("registerDateStr", list.getRegisterDateStr());
        value.put("syncId", list.getSyncId());
        value.put("type", list.getType());
        value.put("username", list.getUsername());
        System.out.println("接收参数：" + value.toString());
        HttpEntity<MultiValueMap<String, Object>> r = new HttpEntity<>(value, headers);
        Map name = restTemplate.postForObject(url.toString(), r, Map.class);
        System.out.println("接收数据：" + name);
        return name;
    }

    @RequestMapping(value = "/addList", method = RequestMethod.POST)
    @ApiOperation(httpMethod = "POST", value = "测试能否使用application/x-www-form-urlencoded", consumes = "application/x-www-form-urlencoded")
    public Object addList() throws JsonProcessingException {
        String url = "https://10.153.121.14/uim/rpc/saveBatchUimInfouser";
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/x-www-form-urlencoded");
        List<RealNameRequest> requests = new ArrayList<>();

        for (int i = 3; i > 0; i--) {
            RealNameRequest realNameRequest = new RealNameRequest();
            realNameRequest.setConfirmDateStr("2018-12-11 10:00:00");
            realNameRequest.setIdNumber("452133198912200318");
            realNameRequest.setMobile("1878741122" + i);
            realNameRequest.setName("王凯星" + i);
            realNameRequest.setType("1");
            realNameRequest.setUsername("1878741122" + i);
            realNameRequest.setRegisterDateStr();
            realNameRequest.setSyncId("22" + i);
            requests.add(realNameRequest);
        }
        System.out.println("请求url：" + url);
        MultiValueMap value = new LinkedMultiValueMap();
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(requests);
        List<String> userJsonArray = new ArrayList<>();
        userJsonArray.add(s);
        List<String> token = new ArrayList<>();
        token.add("adefae2013c6febf2de7a6e16b851be5");
        value.put("access_token", token);
        value.put("userJsonArray", userJsonArray);
        System.out.println("接收参数：" + value.toString());
        HttpEntity<MultiValueMap<String, Object>> r = new HttpEntity<>(value, headers);
        Map name = restTemplate.postForObject(url, r, Map.class);
        System.out.println("接收数据：" + name);
        return name;
    }

    @RequestMapping(value = "/getToken", method = RequestMethod.POST)
    @ApiOperation(httpMethod = "POST", value = "测试能否使用application/x-www-form-urlencoded", consumes = "application/x-www-form-urlencoded")
    public Object getToken() {
        String urlAdd = "https://10.153.121.14:443/uim/auth/token";
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/x-www-form-urlencoded");
        MultiValueMap value = new LinkedMultiValueMap();
        StringBuilder url = new StringBuilder(urlAdd);
        TokenRequest tokenRequest = new TokenRequest();
        System.out.println("请求url：" + url.toString());
        value.put("client_id", tokenRequest.getClient_id());
        value.put("client_secret", tokenRequest.getClient_secret());
        value.put("grant_type", tokenRequest.getGrant_type());
        value.put("scope", tokenRequest.getScope());
        value.put("username", tokenRequest.getUsername());
        value.put("password", tokenRequest.getPassword());
        System.out.println("接收参数：" + value.toString());
        HttpEntity<MultiValueMap<String, Object>> r = new HttpEntity<>(value, headers);
//        UserToken token = restTemplate.postForObject(url.toString(), r, UserToken.class);
        UserToken token = restTemplate.postForObject(url.toString(), r, UserToken.class);
        System.out.println("接收数据：" + token);
        return token;
    }

    @RequestMapping(value = "/example", method = RequestMethod.POST)
    public Object metadataTable1(@RequestParam("url") String urlAdd, @RequestBody RealNameRequest value) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
//        MediaType type = MediaType.parseMediaType("application/json; charset=UTF-8");
//        headers.setContentType(type);
//        headers.add("Accept", MediaType.APPLICATION_JSON.toString());
        headers.add("Content-Type", "application/x-www-form-urlencoded");


        return null;
    }


}
