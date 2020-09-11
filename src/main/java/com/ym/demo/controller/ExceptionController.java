package com.ym.demo.controller;

import com.ym.demo.service.ExceptionService;
import com.ym.demo.utils.Result;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("Exception")
@Api(value = "ExceptionTest",tags = "ExceptionTest",description = "funTest")
public class ExceptionController {

    @Autowired
    private ExceptionService exceptionService;

    @RequestMapping(value = "/Test", method = RequestMethod.GET)
    public Result fun(Integer val) throws Exception {
        System.out.println("asdf");
        return Result.success("请求成功,结果为:" + exceptionService.getDoble(val));
    }

}
