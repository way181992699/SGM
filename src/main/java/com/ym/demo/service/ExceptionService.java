package com.ym.demo.service;

import com.ym.demo.exception.BaseException;
import org.springframework.stereotype.Service;

@Service
public class ExceptionService {

    public Double getDoble(Integer val) throws Exception {

        if (null == val) {
            throw new BaseException(BaseException.ExceptionCode.PARAMS_INCORRECT, "传参有误!请检查!");
        }
        if (val == 0) {
            throw new BaseException(BaseException.ExceptionCode.SERVICE_UNAVAILABLE, "参数值不合法,服务器无法进行有效的计算");
        }
        double v = val.doubleValue();
        return v / 3;

    }

}
