package com.ym.demo.utils;

import java.util.Date;

/**
 * 判断两个时间差的工具类
 */
public class TDOA {
    /**
     * 通过时间秒毫秒数判断两个时间的间隔(参数为Date类型)
     *
     * @param date1
     * @param date2
     * @return
     */
    public static int differentDaysByMillisecond(Date date1, Date date2) {
//        long end = date2.getTime() / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//转化成该时间零点零分零秒的毫秒数
//        long start = date1.getTime() / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//转化成该时间零点零分零秒的毫秒数
        int days = (int) ((date2.getTime() - date1.getTime()) / (1000 * 3600 * 24));
        return days;
    }

    /**
     * 通过时间秒毫秒数判断两个时间的间隔(参数为Long类型)
     *
     * @param timestamp1
     * @param timestamp2
     * @return
     */
    public static int differentDaysByMillisecond(Long timestamp1, Long timestamp2) {
//        long end = timestamp2 / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//转化成该时间零点零分零秒的毫秒数
//        long start = timestamp1 / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//转化成该时间零点零分零秒的毫秒数
        int days = (int) ((timestamp2 - timestamp1) / (1000 * 3600 * 24));
        return days;
    }
}
