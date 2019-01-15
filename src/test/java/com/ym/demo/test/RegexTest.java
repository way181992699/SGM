package com.ym.demo.test;

import org.junit.Test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexTest {
    @Test
    public void regexMatches(){
        String str = ".pdf";
        String pattern = "^\\.[a-zA-Z]{2,5}";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(str);
        System.out.println(m.matches());
        System.out.println(pattern);

    }
// /\d{4}-\[01]\d-[0123]\d\s{1,2}[012]\d:[0-6]\d/
    @Test
    public void regexMatches1(){
        String str = "2019-01-01 15:32:44";
        String pattern = "/^(/d{4})-(0/d{1}|1[0-2])-(0/d{1}|[12]/d{1}|3[01]) (0[0-9]|1[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$/";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(str);
        System.out.println(m.matches());
        System.out.println(pattern);

    }
//
    @Test//测试java中的转义符"\"
    public void characterTest(){
            String a ="\"a\"";
            String b ="^";
        System.out.println(a);
        System.out.println(b);

    }
}
