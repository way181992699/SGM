package com.ym.demo.test;

import com.ym.demo.pojo.User;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;

public class StringTest {
    @Test //测试字符串包含(区分大小写)
    public void StringContain() {
        String str = "5949";
        String code = "5949303";
        String str1 = "A";
        String code1 = "ABC";
//        System.out.println(code.contains(str));
//        System.out.println(code1.contains(str1));
        System.out.println(code.substring(0, 3));
        System.out.println(code.substring(4, 7));
    }

    @Test //测试字符串包含(区分大小写)
    public void StringContain1() {
        String str = "java.lang.Exception: PersonService修改责任人基础信息失败:\n" +
                "        ### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint \"t_person_item_code_phone_uindex\"\n" +
                "        详细：Key (code, phone)=(5949306, 13800365465) already exists.\n" +
                "        ### The error may involve";
        String code = "Key";
        String str1 = "already exists";
        String code1 = "ABC";
        System.out.println(str.contains(code));
        System.out.println(str.contains(str1));
    }

    @Test //测试字符串包含(区分大小写)
    public void StringContain2() {
        String str = " 全市陆地、西部海区、东部海区、宝安区";
        String code = null;
        String str1 = "already exists";
        String code1 = "ABC";
        String empty = " ";
//        System.out.println(str.contains(code));
//        System.out.println(str.contains(str1));
        User user = new User();
        user.setName(str);
        String name = user.getName();
//        System.out.println(name.contains(code));
//        System.out.println(name);
//        System.out.println(user);

        System.out.println(str.equalsIgnoreCase(empty));
        System.out.println(empty.equalsIgnoreCase(str));
        System.out.println(empty.equalsIgnoreCase(str));

    }

    //
    @Test //测试字符串包含(区分大小写)
    public void replaceString() {
        String str = "【防汛Ⅳ级应急响应】区城管局：Warningsignal区三防指挥部于Dayxx日Hourxx时Minutexx分启动防汛Ⅳ级应急响应，请你局督促辖区环卫外包服务企业加强路面清扫保洁工作，及时清理路面垃圾。";
        SimpleDateFormat dayFormat = new SimpleDateFormat("dd");
        SimpleDateFormat hourFormat = new SimpleDateFormat("HH");
        SimpleDateFormat minuteFormat = new SimpleDateFormat("mm");
        String day = dayFormat.format(new Date());
        String hour = hourFormat.format(new Date());
        String minute = minuteFormat.format(new Date());
        System.out.println(day);
        String result = str.replace("Dayxx", day).replace("Hourxx", hour).replace("Minutexx", minute);
        System.out.println(result);

    }


    //
    @Test //测试字符串转int
    public void StringOfValue() {
       String str = "123";
        Integer integer = Integer.valueOf(str);
        System.out.println(integer + 5);
    }

    //
    @Test //测试字符串
    public void stringIsEmpty() {
        String str = "宝安区";
        System.out.println(str.substring(0, 2));
        System.out.println(str.length());
    }

}
