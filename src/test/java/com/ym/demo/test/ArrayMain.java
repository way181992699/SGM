package com.ym.demo.test;

import com.ym.demo.pojo.User;
import org.junit.Test;
import org.springframework.util.CollectionUtils;

import java.sql.Time;
import java.util.*;

public class ArrayMain {

    public static void main(String[] args) {
        List<String> list1 = new ArrayList<>();
        list1.add("asdf");
        System.out.println(list1);
        list1.clear();
        list1.add("asdfasdf");
        System.out.println(list1);
        List<String> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            list.add("a" + i);
            System.out.println(list);
            list.clear();
        }
        /**
         * 获取当前类名
         * 适用于非静态方法：this.getClass().getName()
         * 适用于静态方法：Thread.currentThread().getStackTrace()[1].getClassName()
         */
    }

    @Test
    public void fun() {
        List<User> list = new ArrayList<>();
       // list = null;
//        System.out.println(list.size());
//        System.out.println(list.isEmpty());
        System.out.println(CollectionUtils.isEmpty(list));
    }
    @Test
    public void fun1() {
        List<User> list = null;
        list=new ArrayList<>();
        User str = new User();
        for (User user : list) {
            if (user.getName().equals("a"))
                str.setPwd("1123");
        }
        System.out.println(list);
        System.out.println(str);
    }
    @Test//
    public void ListTest() {
        List list =null;
        ArrayList arrayList = new ArrayList(list);
        LinkedList objects = new LinkedList(list);
    }


}
