package com.ym.demo.test;

import com.ym.demo.pojo.Person;
import com.ym.demo.pojo.User;
import org.junit.Test;
import org.springframework.beans.BeanUtils;

public class BeanTest extends User {


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
        User user = new User();
        BeanTest beanTest = new BeanTest();
        int number = beanTest.number();
        System.out.println(number + 3);
    }
    @Test
    public void beanTest() {
        User u= new User();
        u.setName("Seven");
        u.setPwd("123456");
        User u1 = u;
        u1.setName("Seven1");
        u1.setPwd("1234567");
        System.out.println(u.getName());
    }

    @Test//测试父类与子类的成员属性引用
    public void BeanExtendsTest() {
        Person p = new Person();
        p.setAge("18");
        User u = new User();
        BeanUtils.copyProperties(p,u);//把父类的值copy给子类
        u.setPwd("1345");
        System.out.println(u.getAge());
        System.out.println(u);

//        User u2 = (User) new Person();报错:java.lang.ClassCastException: com.ym.demo.pojo.Person cannot be cast to com.ym.demo.pojo.User
        Person p1 = new User();
        p1.setAge("19");
        User u1 = (User) p1;
        System.out.println(u1.getAge());

    }

    @Test //测试1对多的关系
    public void oneByMany() {

    }

}
