package com.ym.demo.controller;

import com.ym.demo.pojo.Hello;
import com.ym.demo.pojo.HttpSimulation;
import com.ym.demo.utils.jdbc.OracleTest;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(value = "hello", tags = "helloworld接口", description = "helloworld接口")
@RequestMapping("/hello")
public class HelloController {
    @Autowired
    private Hello hi;
    @Autowired
    private OracleTest oracleTest;


    @PostMapping("/hi")
    public String hello() {

        return hi.hi();
    }

    @GetMapping("/fun")
    public String fun() {
        return "asdf";
    }

    @RequestMapping(value = "/fun1", method = RequestMethod.POST)
    public String fun1(HttpSimulation httpSimulation) {
        if (httpSimulation != null) {
            System.out.println(httpSimulation);
        }
        return "hello";
    }

    @RequestMapping(value = "/fun2", method = RequestMethod.POST)
    public String fun2(@RequestParam("userName") String userName, String token) {
        if (userName != null) {
            System.out.println(userName);
        }
        if (token != null) {
            System.out.println(token);
        }
        return "userName+token";
    }

    @PostMapping("/add")
    public void fun(Hello hello) {
        System.out.println(hello);
    }

    @RequestMapping(value = "/GetJson", method = RequestMethod.GET)
    public String getJson() {
        return oracleTest.test1();
    }


}
