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

    @Test//测试java中的转义符"\"
    public void characterTest(){
            String a ="\"a\"";
            String b ="^";
        System.out.println(a);
        System.out.println(b);

    }
}
