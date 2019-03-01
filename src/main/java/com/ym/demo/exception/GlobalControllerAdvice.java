package com.ym.demo.exception;

import com.ym.response.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalControllerAdvice {

    private final Logger logger = LoggerFactory.getLogger(GlobalControllerAdvice.class);

    @ResponseBody
    @ExceptionHandler(Exception.class)
    public Result errorHandler(Exception e) {
        if (e instanceof BaseException) {
            // 内部业务错误，可返回前端
            BaseException ee = (BaseException) e;
            return Result.failed(e.getMessage());
        } else {
            // 非处理业务，记录Log
            logger.error(e.getMessage());
            return Result.failed("内部业务错误：请联系维护人员");
        }
    }

}
