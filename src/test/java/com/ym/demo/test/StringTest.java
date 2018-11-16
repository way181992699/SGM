package com.ym.demo.test;

import org.junit.Test;

public class StringTest {
    @Test //测试字符串包含(区分大小写)
    public void StringContain(){
        String str = "5949";
        String code = "5949303";
        String str1 = "A";
        String code1 = "ABC";
        System.out.println(code.contains(str));
        System.out.println(code1.contains(str1));
    }
}
