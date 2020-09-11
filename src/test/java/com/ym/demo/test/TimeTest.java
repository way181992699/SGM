package com.ym.demo.test;

import com.ym.demo.utils.Judge;
import com.ym.demo.utils.TDOA;
import org.junit.Test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

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

    @Test//Date类测试
    public void fun6() {
        long start = 1541057712;
        long end = 1541144115;
        Date date1 = new Date(start * 1000);
        Date date2 = new Date(end * 1000);
        int i = TDOA.differentDaysByMillisecond(date1, date2);
        System.out.println(i);
    }

    @Test//calendar类测试:设置当年的1月1号0时0分0秒0毫秒
    public void fun7() {
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        //1.用Calendar类内的方法 设置当年的1月1号0时0分0秒0毫秒
        instance.set(instance.DAY_OF_YEAR, 1);//设置当年的天数为第一天, 也就是01月01日(第一天)
        instance.set(instance.HOUR_OF_DAY, 0);//设置当天的小时数为0(0时)
        instance.set(instance.MINUTE, 0);//设置当天的分钟数为0(0分)
        instance.set(instance.SECOND, 0);//设置当天的秒数为0(0秒)
        instance.set(instance.MILLISECOND, 0);//设置当天的毫秒数为0(0毫秒)
//        instance.set(instance.MONTH,0);
//        instance.set(instance.DAY_OF_MONTH,1);
        //2.根据时间戳算出当日的零点零分零秒的毫秒数
//        instance.set(instance.DAY_OF_YEAR, 1);//设置当年的天数为第一天, 也就是01月01日(第一天)
        long b = instance.getTimeInMillis();
        System.out.println(new Timestamp(b));
        long a = instance.getTimeInMillis() / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();
        System.out.println(a);
        System.out.println(new Timestamp(a));

        long timeInMillis = instance.getTimeInMillis();
        System.out.println(new Timestamp(timeInMillis));

    }

    @Test
    public void fun4() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(1569990000000L));
        long currentTime = calendar.getTimeInMillis();
        int year = calendar.get(calendar.YEAR);
        int month = calendar.get(calendar.MONTH);
        int date = calendar.get(calendar.DATE);
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("获取当前月份: " + calendar.get(calendar.MONTH));
        System.out.println("获取当前多少号: " + calendar.get(calendar.DATE));
        System.out.println("当前时间戳: " + new Timestamp(currentTime) + ", " + currentTime);

        calendar.add(calendar.MONTH, -month);
        calendar.add(calendar.DATE, -(date - 1));
        System.out.println("获取当前多少号: " + calendar.get(calendar.DATE));
        long yesteryear = calendar.getTimeInMillis();
        long zero = yesteryear / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("去年时间戳: " + new Timestamp(zero) + ", " + zero);

        Date a = new Date();
        System.out.println(a);
        System.out.println(new Timestamp(a.getTime()));
    }

    @Test
    public void funZero() {
        long l = System.currentTimeMillis()/(1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();
        System.out.println(new Timestamp(l));
    }

    @Test//玩calendar类
    public void calendarTest() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(calendar.DAY_OF_YEAR, -1);
        calendar.set(calendar.HOUR_OF_DAY, 8);
        calendar.set(calendar.MINUTE, 0);//设置当天的分钟数为0(0分)
        calendar.set(calendar.SECOND, 0);//设置当天的秒数为0(0秒)
        calendar.set(calendar.MILLISECOND, 0);//设置当天的毫秒数为0(0毫秒)
//        System.out.println(new Timestamp(calendar.getTimeInMillis()));
        calendar.add(calendar.HOUR_OF_DAY, 31);
//        System.out.println(new Timestamp(calendar.getTimeInMillis()));

        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(1598868000000L);
        System.out.println(new Timestamp(instance.getTimeInMillis()));
        int i = instance.get(Calendar.HOUR_OF_DAY);
        instance.add(Calendar.DAY_OF_YEAR,1);
        instance.set(Calendar.HOUR_OF_DAY,9);
        System.out.println(new Timestamp(instance.getTimeInMillis()));
        int i1 = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
        System.out.println(i+1);
    }

    /**
     * 根据java的Calendar（译：日历）类操作相关函数；
     */
    @Test
    public void fun() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
//        calendar.set(Calendar.HOUR_OF_DAY, 0);
//        calendar.set(Calendar.MINUTE, 0);
//        calendar.set(Calendar.SECOND, 0);
//        Date zero = calendar.getTime();
        long timeInMillis = calendar.getTimeInMillis();
        SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd天 HH时mm分ss秒");
        // System.out.println(format.format(zero));

        long current = System.currentTimeMillis();//当前时间毫秒数
        long zero = current / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
        long current12 = System.currentTimeMillis() + 12 * 60 * 60 * 1000;
        long twelve = zero + 24 * 60 * 60 * 1000 - 1;//今天23点59分59秒的毫秒数
        long yesterday = System.currentTimeMillis() - 24 * 60 * 60 * 1000;//昨天的这一时间的毫秒数
        long ty = yesterday / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//昨天零点零分零秒的毫秒数;
        long zero11 = zero + 11 * 60 * 60 * 1000;
        System.out.println(zero11);
        System.out.println(new Timestamp(zero11));
        System.out.println(new Timestamp(current));//当前时间
        System.out.println(new Timestamp(current12));//当前时间+12小时候之后
        System.out.println(new Timestamp(yesterday));//昨天这一时间点
        System.out.println(new Timestamp(zero));//今天零点零分零秒
        System.out.println(new Timestamp(twelve));//今天23点59分59秒
        System.out.println(new Timestamp(ty));//昨天零点零分零秒
        System.out.println(yesterday);
        System.out.println(twelve);
        System.out.println("-----------------------------");
        System.out.println(current);
        System.out.println(timeInMillis);
        System.out.println(zero);
        System.out.println(TimeZone.getDefault().getRawOffset());
        // System.out.println(current==timeInMillis);判断Calendar获取的时间戳和System.currentTimeMillis();的时间戳是否相等，我认为相等，只是代码执行有时间，所以当前同一时间因为代码执行时间问题，出现了false；
        System.out.println(Judge.isAM_PM());
        //    public int compareTimestamp(long timestamp) {
        //
//        long current = System.currentTimeMillis();//当前时间毫秒数
//        long zero = current / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
//        if(timestamp> zero&&timestamp<){
//
//        }
//        return 0;
//    }
    }

    //T_LOCALOBTDAYD    --- 自动站天表
    //SZIDC.T_LOCALOBTHOURD  --- 自动站小时表


    @Test
    public void fun2() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        long currentTime = calendar.getTimeInMillis();
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("当前时间戳: " + new Timestamp(currentTime) + ", " + currentTime);
        calendar.add(calendar.YEAR, -1);
        long yesteryear = calendar.getTimeInMillis();
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("去年时间戳: " + new Timestamp(yesteryear) + ", " + yesteryear);

    }



    @Test//SimpleDateFomat里面的parse方法的使用
    public void SimpleDateFormatParse() {
        String date = "2018-11-09阿萨德刚";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parse = simpleDateFormat.parse(date);
            System.out.println(parse.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Test//SimpleDateFomat里面的parse方法的使用
    public void CalendarTest() {
        Calendar calendar = Calendar.getInstance();
        int hour = calendar.get(calendar.HOUR_OF_DAY);
        int minute = calendar.get(calendar.MINUTE);
        Date time = calendar.getTime();

        System.out.println(time);
        System.out.println(hour);
        System.out.println(minute);
        System.out.println(((hour - 1) * 60 + minute) / 6);
    }

}
