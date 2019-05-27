package com.ym.demo.test;

import com.ym.demo.pojo.*;
import org.junit.Test;
import org.springframework.beans.BeanUtils;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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
//        System.out.println(u.getUserName());
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
        User u = new User();
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
        p.setSex("18");
        User u = new User();
        BeanUtils.copyProperties(p, u);//把父类的值copy给子类
        u.setPwd("1345");
        System.out.println(u.getAge());
        System.out.println(u);

//        User u2 = (User) new Person();报错:java.lang.ClassCastException: com.ym.demo.pojo.Person cannot be cast to com.ym.demo.pojo.User
        Person p1 = new User();
        p1.setSex("19");
        User u1 = (User) p1;
        System.out.println(u1.getAge());

    }

    @Test //测试1对多的关系
    public void oneByMany() {

    }

    @Test //判断两个对象是否相等
    public void BeanEquals() {
        User u = new User();
        User u2 = new User();
//        u.setUserName("a");
//        u2.setUserName("a");
        System.out.println(u.equals(u2));
        System.out.println(u == u2);


    }

    @Test //判断两个字符串是否相等
    public void StringEquals() {
        String a = "aaa";
        String c = "aa";
        String b = "a" + c;
        int aa = 1;
        int bb = 1;
        System.out.println(a.equals(b));
        System.out.println(a == b);
        System.out.println("***********************");
        System.out.println(a.equals(b));
        System.out.println(aa == bb);

    }

    @Test //测试拷贝
    public void copyBean() {
        User u = new User();


    }

    @Test //测试get方法
    public void getTest() {
        User u = new User();
        System.out.println(u.getName());
        System.out.println(u.getPwd());
        AnytingLevel anytingLevel = new AnytingLevel();
        AnytingLevel anytingLeve2 = new AnytingLevel();
//        anytingLevel.setR01H(true);
//        anytingLeve2.setR01H(true);
        System.out.println(anytingLevel == anytingLeve2);
        System.out.println(anytingLevel.equals(anytingLeve2));
        u.setName("asdf");
        System.out.println(u);
        u = new User();
        System.out.println(u);
    }

    @Test //测试在不继承的情况下, 两个对象能否进行强转
    public void getConvert() {
        List list = new ArrayList();
        for (int i = 0; i < 100; i++) {
            TestPojo testPojo = new TestPojo(i, "name" + i, "address" + i, "code" + i, "type" + i, 200l + i, "contacts" + i);
            list.add(testPojo);
        }
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            TestPojo2 next =(TestPojo2) iterator.next();
            System.out.println(next);
        }

    }


    //
}
