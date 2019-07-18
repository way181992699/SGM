package com.ym.demo.bean;

import com.ym.demo.pojo.TestBean;
import com.ym.demo.utils.JSONResult;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
@Api(value = "获取bean", tags = "获取bean", description = "获取bean")
@RestController
@RequestMapping("/Bean")
public class BeanController {

    @Autowired
    TestBean testBean;

    @ApiOperation(value = "获取bean")
    @RequestMapping(value = "/Get", method = RequestMethod.GET)
    public JSONResult getBean() {
        return JSONResult.ok(testBean);
    }

}
