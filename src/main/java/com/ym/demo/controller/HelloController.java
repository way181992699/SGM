package com.ym.demo.controller;

import com.ym.demo.pojo.Hello;
import com.ym.demo.pojo.HttpSimulation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/hello")
public class HelloController {
    @Autowired
    private Hello hi;


    @PostMapping("/hi")
    public String hello() {

        return hi.hi();
    }
    @GetMapping("/fun")
    public String fun() {
        return "asdf";
    }

    @RequestMapping(value = "/fun1",method = RequestMethod.POST)
    public String fun1(HttpSimulation httpSimulation) {
        if (httpSimulation!=null) {
            System.out.println(httpSimulation);
        }
        return "hello";
    }

    @RequestMapping(value = "/fun2",method = RequestMethod.POST)
    public String fun2(@RequestParam("userName") String  userName  ,String  token) {
        if (userName!=null) {
            System.out.println(userName);
        }
        if (token!=null) {
            System.out.println(token);
        }
        return "userName+token";
    }

    @PostMapping("/add")
    public void fun(Hello hello) {
        System.out.println(hello);
    }

}
