package com.ym.demo.test;

import org.junit.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTest {

    @Test
    public void simlpe() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(new Date());
        System.out.println(format);
    }

    @Test
    public void simlpe1() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Long a = new Long(1544406582);
        Date date = new Date(a * 1000);
        System.out.println(date.getTime());
        String format = simpleDateFormat.format(date);
        System.out.println(format);
    }

    @Test
    public void DateFormatTest() throws ParseException {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Date parse = simpleDateFormat.parse("2018-12-29 09:30:40");
        System.out.println(parse);
        System.out.println(parse.getTime());
    }

    @Test //两个时间的前后时间比较
    public void DateAfterAndBefor() throws ParseException {

        Long a = Long.valueOf(1546071184);
        Long b = Long.valueOf(1546071449);

        Date dateA = new Date(a*1000);//16:13:04 CST 2018
        Date dateB = new Date(b*1000);//16:17:29 CST 2018
        System.out.println(dateA);
        System.out.println(dateB);
        System.out.println(dateA.after(dateB));
        System.out.println(dateA.before(dateB));
        System.out.println(dateB.before(dateA));
        System.out.println(dateB.after(dateA));

    }


    @Test //两个时间的前后时间比较
    public void DateEquals() throws ParseException {

        Long a = Long.valueOf(1546071184);
        Long b = Long.valueOf(1546071184);

        Date dateA = new Date(a*1000);//16:13:04 CST 2018
//        Date dateB = ;//16:17:29 CST 2018
        System.out.println(dateA.equals(new Date(b*1000)));

    }





}
