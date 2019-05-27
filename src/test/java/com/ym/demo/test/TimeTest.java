package com.ym.demo.test;

import org.junit.Test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class TimeTest {

    @Test
    public void simlpe() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String format = simpleDateFormat.format(new Date(1537106400000L));
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

        Date dateA = new Date(a * 1000);//16:13:04 CST 2018
        Date dateB = new Date(b * 1000);//16:17:29 CST 2018
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

        Date dateA = new Date(a * 1000);//16:13:04 CST 2018
//        Date dateB = ;//16:17:29 CST 2018
        System.out.println(dateA.equals(new Date(b * 1000)));

    }

    //1551196800000
    @Test //时间戳转时间格式测试
    public void DateFormatTest1() {

        Long a = Long.valueOf(1551196800);
        Long b = new Long(1546071184);

        Date dateA = new Date(a * 1000);//16:13:04 CST 2018
        Date dateB = new Date(b * 1000);//16:13:04 CST 2018
        Timestamp timestamp = new Timestamp(b * 1000);//16:13:04 CST 2018
//        Date dateB = ;//16:17:29 CST 2018
        Long aLong = new Long(1000 * 3600 * 24 * 7);
        System.out.println(aLong);
        System.out.println(dateA);
        System.out.println(dateB);
        System.out.println(timestamp);

    }

    @Test
    public void fun1() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        long timeInMillis = calendar.getTimeInMillis();
        int i = calendar.get(calendar.MINUTE);
        int dat = calendar.get(calendar.DAY_OF_MONTH);
        System.out.println(dat);
        calendar.add(Calendar.DAY_OF_MONTH, -5);
        int dat1 = calendar.get(calendar.DAY_OF_MONTH);
        System.out.println(dat1);
        System.out.println(calendar.HOUR_OF_DAY);
        System.out.println(calendar.get(calendar.HOUR_OF_DAY));
        System.out.println(i);
        System.out.println(new Timestamp(timeInMillis));

    }

    @Test
    public void fun11() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(1553220900000L);
        int i = calendar.get(calendar.MINUTE);
        System.out.println(i);


    }

    @Test
    public void getLongList() {
      long  timestamp = new Date().getTime();
       int count = 3;
        List<Long> longList = new ArrayList<>();
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(timestamp);
        int minute = calendar.get(calendar.MINUTE);
        calendar.set(calendar.MINUTE, (minute - minute % 5));
        long timeInMillis = calendar.getTimeInMillis();
        longList.add(timeInMillis);
        for (int i = 1; i < count; i++) {
            long l = i * 60L * 1000 * 5;
            long l1 = timeInMillis - l;
            longList.add(l1);
        }
        for (Long aLong : longList) {
            System.out.println(aLong);
            System.out.println(new Timestamp(aLong));
        }
    }

    @Test
    public void getTimeYear() {
        SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
        String year = format.format(1555473900000l);
        System.out.println(year);
        long newestTime =1555379659000l;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(newestTime);
        calendar.set(calendar.MINUTE, 6);
        long timeInMillis = calendar.getTimeInMillis();
        System.out.println(new Timestamp(newestTime));
        System.out.println(new Timestamp(timeInMillis));

    }


}
