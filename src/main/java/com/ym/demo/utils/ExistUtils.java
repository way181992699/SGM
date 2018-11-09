package com.ym.demo.utils;

/**
 * 判断数据类型是否为null或""
 */
public class ExistUtils {
    /**
     * 判断String类型是否为空或"";
     * @param str
     * @return
     */
    public static boolean StrIsEmpty(String str) {
        if (str == null || "".equals(str.trim())) {
            return true;
        }
        return false;
    }


    public static void main(String[] args) {
        String a = "";
        System.out.println(ExistUtils.StrIsEmpty(a));
    }
}
