package com.ym.demo.test;

import com.ym.demo.jiekou.Game;
import com.ym.demo.pojo.GameS;
import com.ym.demo.utils.Judge;
import com.ym.demo.utils.TDOA;
import org.junit.Test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class TheMainClass {

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

    //T_LFS_WELFAREFORECASTDAYS
    @Test
    public void fun3() {
        String name = "罗湖,宝安";
        String name1 = "罗湖";
        String[] split = name.split(",");
        String[] strings = name1.split(",");
        System.out.println(Arrays.toString(split));
        System.out.println(Arrays.toString(strings));
        System.out.println(strings.length);

    }

    @Test
    public void fun4() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
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
        long yesteryear = calendar.getTimeInMillis();
        long zero = yesteryear / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("去年时间戳: " + new Timestamp(zero) + ", " + zero);

        Date a = new Date();
        System.out.println(a);
        System.out.println(new Timestamp(a.getTime()));
    }

    @Test
    public void fun5() {
        String a = "asdf";
        String b = null;
        String c = "false";
        String d = "true";
        System.out.println(Boolean.valueOf(a));
        System.out.println(Boolean.valueOf(b));
        System.out.println(Boolean.valueOf(c));
        System.out.println(Boolean.valueOf(d));
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

    @Test//calendar类测试
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
        instance.set(instance.DAY_OF_YEAR, 1);//设置当年的天数为第一天, 也就是01月01日(第一天)
        long a = instance.getTimeInMillis() / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();
//        System.out.println(a);
//        System.out.println(new Timestamp(a));
//        long timeInMillis = instance.getTimeInMillis();
//        System.out.println(new Timestamp(timeInMillis));

    }

    @Test//SimpleDateFomat里面的parse方法的使用
    public void SimpleDateFormatParse() {
        String date =  "2018-11-09阿萨德刚";
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
        System.out.println(((hour-1) * 60 + minute) / 6);
    }

    @Test//比较接口和抽象类的自身的一些特性;
    public void InterfaceTest() {
        GameS gs = new GameS();
        gs.getG().play();
        GameS.fun1();
        GameS.g1.playFun();
        GameS.g1.play();
    }


}
