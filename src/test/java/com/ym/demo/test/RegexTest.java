package com.ym.demo.test;

import org.junit.Test;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexTest {
    @Test
    public void regexMatches() {
        String str = ".pdf";
        String pattern = "^\\.[a-zA-Z]{2,5}";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(str);
        System.out.println(m.matches());
        System.out.println(pattern);

    }

    // /\d{4}-\[01]\d-[0123]\d\s{1,2}[012]\d:[0-6]\d/
    @Test
    public void regexMatches1() {
        String str = "2019-01-01 15:32:44";
        String pattern = "/^(/d{4})-(0/d{1}|1[0-2])-(0/d{1}|[12]/d{1}|3[01]) (0[0-9]|1[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$/";
        Pattern r = Pattern.compile(pattern);
        Matcher m = r.matcher(str);
        System.out.println(m.matches());
        System.out.println(pattern);
    }

    //
    @Test//测试java中的转义符"\"
    public void characterTest() {
        String a = "\"a\"";
        String b = "^";
        System.out.println(a);
        System.out.println(b);
        String str = "select max(ddatetime) as ddatetime  from radial  where ddatetime>{ddatetime} and reicd<{recid}";
        str.replace("where", "");
        System.out.println(str);
    }


    @Test//测试java中的转义符"\"
    public void characterTest1() {
        regexMatches01("2019-07-18 15:53:00","30");
    }

    public void regexMatches01(String a, String b) {
        String str = "select max(ddatetime) as ddatetime  from radial  where ddatetime>{ddatetime} and reicd<{recid}";
//        String regex = "\\{([^}])*\\}";
        String regex = "\\{[^}]+\\}";
        System.out.println(regex);
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(str);

        while (matcher.find()) {
            String group = matcher.group();
            System.out.println(group);
            if (group.contains("ddatetime")) {
//                str = str.replace(group, "2019-07-18 15:53:00");
                str = str.replace(group, a);
            }
            if (group.contains("recid")) {
//                str = str.replace(group, "30");
                str = str.replace(group, b);
            }
        }
        System.out.println(str);
    }


}
