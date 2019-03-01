package com.ym.demo.controller;

import com.ym.demo.pojo.TestRedis;
import com.ym.demo.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/redis")
public class RedisController {

    @Autowired
    RedisService redisService;

    /**
     * 设置Str缓存
     *
     * @param key
     * @param val
     * @return
     */
    @RequestMapping(value = "setStr")
    public String setStr(String key, String val) {
        try {
            redisService.setStr(key, val);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    /**
     * 根据key查询Str缓存
     *
     * @param key
     * @return
     */
    @RequestMapping(value = "getStr")
    public String getStr(String key) {
        return redisService.getStr(key);
    }


    /**
     * 根据key产出Str缓存
     *
     * @param key
     * @return
     */
    @RequestMapping(value = "delStr")
    public String delStr(String key) {
        try {
            redisService.del(key);
            return "success";
        } catch (Exception e) {
            return "error";
        }
    }


    /**
     * 设置obj缓存
     *
     * @param key
     * @param user
     * @return
     */
    @RequestMapping(value = "setObj")
    public String setObj(String key, TestRedis user) {
        try {
            redisService.setObj(key, user);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    /**
     * 获取obj缓存
     *
     * @param key
     * @return
     */
    @RequestMapping(value = "getObj")
    public Object getObj(String key) {
        return redisService.getObj(key);
    }


    /**
     * 删除obj缓存
     *
     * @param key
     * @return
     */
    @RequestMapping(value = "delObj")
    public Object delObj(String key) {
        try {
            redisService.delObj(key);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    //4.运行测试
    //1.StringRedisTemplate
    //http://127.0.0.1:8080/redis/setStr?key=aa&val=name
    //
    //http://127.0.0.1:8080/redis/getStr?key=aa
    //
    //http://127.0.0.1:8080/redis/delStr?key=aa
    //
    //2.RedisTemplate
    //http://127.0.0.1:8080/redis/setObj?key=aa&id=1&name=test
    //
    //http://127.0.0.1:8080/redis/getObj?key=aa
    //
    //http://127.0.0.1:8080/redis/delObj?key=aa
}
