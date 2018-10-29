package com.ym.demo.controller;

import com.ym.demo.pojo.Hello;
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

    @PostMapping("/add")
    public void fun(Hello hello) {
        System.out.println(hello);
    }

}
