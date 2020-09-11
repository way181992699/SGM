package com.ym.demo.controller;


import com.ym.demo.pojo.Hello;
import com.ym.demo.pojo.TestBean;
import com.ym.demo.utils.Result;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(value = "Aop测试接口", tags = "Aop测试接口", description = "Aop测试接口")
@RequestMapping("/Aop")
public class AopController {

    @Autowired
    private TestBean testBean;

    @RequestMapping(value = "/GetParams", method = RequestMethod.GET)
    public String fun(@RequestParam("starTime") Long startTime) {
        System.out.println(startTime);
        return "asdf:" + startTime;
    }


    @RequestMapping(value = "/SetTestBean", method = RequestMethod.GET)
    public void setTestBean(@RequestParam("num") Integer num) {
        System.out.println(TestBean.num);
        TestBean.num = num;
        testBean.setVal(num + 1);
    }

    @RequestMapping(value = "/GetTestBean", method = RequestMethod.GET)
    public Integer getTestBean() {
        return TestBean.getNum();
    }

    @RequestMapping(value = "/ExceptionBean", method = RequestMethod.GET)
    public Result exceptionBean() {
        try {
            int a = 1 / 0;
            return Result.success("oh! year!");
        } catch (Exception e) {
//            return Result.failed("oh! no!");
            return Result.failed(e.getMessage());
        }
    }

    @RequestMapping(value = "/GetObjectParams", method = RequestMethod.POST)
    public String fun4(@RequestBody Hello hello) {
        System.out.println(hello.toString());
        return hello.getName();
    }

}
