package com.ym.demo.test;

import org.junit.Test;

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
        Date date = new Date(a*1000);
        System.out.println(date.getTime());
        String format = simpleDateFormat.format(date);
        System.out.println(format);
    }

}
