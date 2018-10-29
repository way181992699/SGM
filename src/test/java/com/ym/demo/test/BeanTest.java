package com.ym.demo.test;

import com.ym.demo.pojo.User;
import org.junit.Test;

public class BeanTest {
    @Test
    public void fun() throws NoSuchFieldException {
//        User user = new User();
//        User user1= null;
//        System.out.println(user1 == null);
//        System.out.println(user == null);
//        System.out.println(user);
//        user = getUser();
//        System.out.println(user);
        User u = new User();
        u.setName("Seven");
        u.setPwd("123456");
//        System.out.println(u.getName());
//        System.out.println(u.getClass().toString());
        Class<? extends User> aClass = u.getClass();
        System.out.println(aClass.getName());

//        System.out.println(u.getClass().getField("pwd"));
//SZIDC.T_LOCALOBTHOURD
        //T_LOCALOBTHOURD
    }

    public User getUser() {
        User u = new User();
        u.setName("Seven");
        u.setPwd("123456");

        return u;
    }

    @Test
    public void countTime() {


        return ;
    }
}
