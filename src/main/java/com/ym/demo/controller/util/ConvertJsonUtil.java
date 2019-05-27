package com.ym.demo.controller.util;

import com.ym.demo.pojo.Point;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@Api(value = "工具类接口", tags = "Json转换工具接口", description = "转换工具")
@RestController
@RequestMapping("/ConvertJson")
public class ConvertJsonUtil {

    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ApiOperation(value = "转换工具-数组转json对象", notes = "")
    public List<Point> register(@RequestBody List<Double[]>  doubles) throws Exception {
        List<Point> points = new ArrayList<>();
        for (Double[] aDouble : doubles) {
            Point point = new Point();
            point.setLat(aDouble[0]);
            point.setLng(aDouble[1]);
            points.add(point);
        }

        return points;
    }

}
