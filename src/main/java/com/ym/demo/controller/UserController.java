package com.ym.demo.controller;

import com.ym.demo.pojo.TJuly;
import com.ym.demo.service.JulyService;
import com.ym.demo.utils.JSONResult;
import com.ym.demo.utils.JsonUtils;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.spring.web.json.Json;

@Controller
@RequestMapping("/user")
@Api(value = "用户管理接口，测试用户：userName=tom，password=123456")
public class UserController {

    @Autowired
    JulyService service;

    @ResponseBody
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ApiOperation(value = "用户登录",notes = "测试用户：userName=tom，password=123456")
    @ApiImplicitParams({
               @ApiImplicitParam( paramType = "query", name = "userName",value = "用户名", required = true, dataType = "String"),
            @ApiImplicitParam( paramType = "query", name = "password",value = "用户密码", required = true, dataType = "String")
    })
    public JSONResult login(@RequestParam(value = "userName" ) String userName,@RequestParam(value = "password" ) String password) throws  Exception{

        return service.login(userName,password);
    }

    @ResponseBody
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @ApiOperation(value = "用户注册",notes = "测试提交的数据为‘JSON格式’的用户对象，生成环境中用form表单post提交,已经设置自增，json数据中只需要提交userName和password即可，userid会自动忽略")
    public JSONResult register(@RequestBody TJuly record) throws  Exception{
        return service.addUser(record);
    }
    @ResponseBody
    @RequestMapping(value = "/queryOne",method = RequestMethod.POST)
    @ApiOperation(value = "根据用户名查询单个用户数据")
    public JSONResult findOne(@RequestParam String userName) throws  Exception{
        return service.findOneByUserName(userName);
    }

}
