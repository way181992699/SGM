package com.ym.demo.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

/**
 * Swagger使用的注解及其说明：
 *
 * @Api：用在类上，说明该类的作用。
 * @ApiOperation：注解来给API增加方法说明。
 * @ApiImplicitParams : 用在方法上包含一组参数说明。
 * @ApiImplicitParam：用来注解来给方法入参增加说明。
 * @ApiResponses：用于表示一组响应
 * @ApiResponse：用在@ApiResponses中，一般用于表达一个错误的响应信息 l   code：数字，例如400
 * <p>
 * l   message：信息，例如"请求参数没填好"
 * <p>
 * l   response：抛出异常的类
 * @ApiModel：描述一个Model的信息（一般用在请求参数无法使用@ApiImplicitParam注解进行描述的时候） l   @ApiModelProperty：描述一个model的属性
 * 注意：@ApiImplicitParam的参数说明：
 * <p>
 * paramType：指定参数放在哪个地方
 * <p>
 * header：请求参数放置于Request Header，使用@RequestHeader获取
 * <p>
 * query：请求参数放置于请求地址，使用@RequestParam获取
 * <p>
 * path：（用于restful接口）-->请求参数的获取：@PathVariable
 * body：（不常用
 * form（不常用）
 * name：参数名
 * dataType：参数类型
 * required：参数是否必须传
 * true | false
 * value：说明参数的意思
 * defaultValue：参数的默认值
 */
@Controller
@RequestMapping("/swagger")
@Api(value = "TestController ---》测试swagger注解的controller",tags = "测试swagger注解的controller")
public class TestController {
    @ResponseBody
    @RequestMapping(value = "/getUserName", method = RequestMethod.GET)
    @ApiOperation(value = "根据用户编号获取用户姓名", notes = "test: 仅1和2有正确返回")//API增加方法说明。
    @ApiImplicitParam(paramType = "query", name = "userNumer", value = "用户编号", required = true, dataType = "Integer")
//用来注解来给方法入参增加说明。
    public String getUserName( Integer userNumber) {
        if (userNumber == 1) {
            return "July";
        }
        if (userNumber == 2) {
            return "Seven";
        }
        return "不存在该用户编号";
    }

    @ResponseBody
    @RequestMapping(value = "/updatePassword",method = RequestMethod.PUT)
    @ApiOperation(value="修改用户密码", notes="根据用户id修改密码")
    @ApiImplicitParams({
            @ApiImplicitParam(paramType="query", name = "userId", value = "用户ID", required = true, dataType = "Integer"),
            @ApiImplicitParam(paramType="query", name = "password", value = "旧密码", required = true, dataType = "String"),
            @ApiImplicitParam(paramType="query", name = "newPassword", value = "新密码", required = true, dataType = "String")

    })
    public String updatePassword(@RequestParam(value = "userId") Integer userId, @RequestParam(value = "password") String password, @RequestParam(value = "newPassword") String newPassword) {
        if (userId <= 0 || userId > 2) {
            return "未知的用户";
        }
        if (StringUtils.isEmpty(password) || StringUtils.isEmpty(newPassword)) {
            return "密码不能为空";
        }
        if (password.equals(newPassword)) {
            return "新旧密码不能相同";
        }
        return "密码修改成功!";
    }



}



