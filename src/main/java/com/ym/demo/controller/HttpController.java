package com.ym.demo.controller;

import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/http")
public class HttpController {


    @RequestMapping("/addUser")
    public Object addUser() {


        return null;
    }

    @RequestMapping("/{urls}")
    @ResponseBody
    public Object metadataTable(@PathVariable("urls") String urls, @RequestParam MultiValueMap value) {
        RestTemplate restTemplate = new RestTemplate();
        StringBuilder url = new StringBuilder("http://127.0.0.1:8088/hello/fun");
        System.out.println("请求url：" + urls);
        System.out.println("接收参数：" + value.toString());
        Object map = restTemplate.postForObject(urls.trim(), value, Object.class);
        System.out.println("接收数据：" + map.toString());
        return map;
    }

    @RequestMapping(value = "/url", method = RequestMethod.GET)
    @ResponseBody
    public Object metadataTable1() {
        RestTemplate restTemplate = new RestTemplate();
        StringBuilder url = new StringBuilder("http://127.0.0.1:8088/hello/fun2");
        Map<String, List> map = new HashMap<>();
        List<String> strings = new ArrayList<>();
        strings.add("张三");
     MultiValueMap value = new LinkedMultiValueMap();
        List<String> strings1 = new ArrayList<>();
        strings1.add("asdgasdfgsdfhtrhrth#$%^&^%&^$%*^&%");
        value.put("userName", strings);
        value.put("token", strings1);

        System.out.println("请求url：" + url.toString());
        System.out.println("接收参数：" + value.toString());
        String name = restTemplate.postForObject(url.toString(), value, String.class);
        System.out.println("接收数据：" + name);
        return name;
    }

}
