package com.ym.demo.test;

import org.junit.Test;

import java.math.BigDecimal;
import java.text.DecimalFormat;

public class MathTest {

    public static final Double VAL = 2124.1446413d;

    @Test //四舍五入 N种方法
    public void fun1() {
        /***************  1 *********************/
        BigDecimal bigDecimal = new BigDecimal(VAL);
        System.out.println(bigDecimal.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());

        /***************  2 *********************/
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        System.out.println(decimalFormat.format(VAL));

        /***************  3 *********************/
        System.out.println(String.format("%.2f", VAL));

    }

    @Test //四舍五入 N种方法
    public void fun2() {
        //      Math.floor()
        //            通过该函数计算后的返回值是舍去小数点后的数值
        //            如：Math.floor(3.2)返回3
        //            Math.floor(3.9)返回3
        //            Math.floor(3.0)返回3
        //
        //            Math.ceil()
        //            ceil函数只要小数点非0，将返回整数部分+1
        //            如：Math.ceil(3.2)返回4
        //            Math.ceil(3.9)返回4
        //            Math.ceil(3.0)返回3 </div>

    }


}
