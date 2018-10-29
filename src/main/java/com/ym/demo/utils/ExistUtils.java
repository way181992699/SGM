package com.ym.demo.utils;

public class ExistUtils {

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
