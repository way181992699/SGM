package com.ym.demo.test;

import com.ym.demo.pojo.*;
import org.apache.poi.ss.formula.functions.T;
import org.junit.Test;
import org.springframework.beans.BeanUtils;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class IoAndCopyTest {

    @Test //序列化拷贝
    public void fun() throws IOException, ClassNotFoundException {
        User u = new User("July", "111", 2);
        String str = "Hello!";
        List<User> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            list.add(new User("张三" + i, i * 2 + "", 1 + i));
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(out);
        objectOutputStream.writeObject(list);
        objectOutputStream.flush();
        ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(out.toByteArray()));
        List<User> o = (List<User>) objectInputStream.readObject();
        list.get(0).setName("李四");
        System.out.println(o);
        System.out.println(list);
    }

    @Test //拷贝测试
    public void fun1() throws IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        User u = new User("July", "111", 2);
        String str = "Hello!";
        List<User> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            list.add(new User("张三" + i, i * 2 + "", 1 + i));
        }

//
        List<UserRes> ts = copyList(list, UserRes.class);
        list.get(0).setName("李四");
        for (UserRes t : ts) {
            System.out.println(t);
        }


    }

    public List<T> copyList(List<T> ts) {
        List<T> t = new ArrayList<>();
        for (T t1 : ts) {
            T t2 = new T();
            BeanUtils.copyProperties(t1, t2);
            t.add(t2);
        }
        return t;
    }

    public void setVal(List<Person> t) {
        List t1 = new ArrayList();
        for (Person person : t) {

        }
    }


    //复制泛型类
    public List copyList(List ts, Class tClass) throws IllegalAccessException, InstantiationException {
        List t = new ArrayList<>();
        for (Object t1 : ts) {
            Object t3 = tClass.newInstance();
            BeanUtils.copyProperties(t1, t3);
            t.add(t3);
        }
        return t;
    }

    @Test//复制父类测试
    public void copyBase() {
        List<RiskA> as = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            RiskA a = new RiskA(22.75 + i * 0.1, 113.7896 + i * 0.1, "避难风险点A" + i);
            as.add(a);
            a = null;
        }
        List<RiskC> cs = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            RiskC c = new RiskC(22.75 + i * 0.2, 113.7896 + i * 0.2, "避难风险点C" + i);
            cs.add(c);
            c = null;
        }

        List<RiskB> b = new ArrayList<>();
        for (RiskA riskA : as) {
            RiskB riskB = new RiskB();
            BeanUtils.copyProperties(riskA, riskB);
            b.add(riskB);
        }
        List<RiskD> d = new ArrayList<>();
        for (RiskC riskA : cs) {
            RiskD riskB = new RiskD();
            BeanUtils.copyProperties(riskA, riskB);
            d.add(riskB);
        }

        List<String> strings = setLatLng(b);
        System.out.println(b.get(0).lat);
       RiskBase asd = b.get(0);
        System.out.println(asd.getLat());
        System.out.println(strings);
    }

    public List<String> setLatLng(List list) {
        List<String> stringlist = new ArrayList<>();
        for (Object riskBase : list) {
            RiskBase base = (RiskBase) riskBase;
            String s = base.getLat() + "," + base.getLng();
            stringlist.add(s);
        }
        return stringlist;
    }


    @Test//复制父类测试
    public void copyDifferentAttribute() {
        Copy1 copy1 = new Copy1();
        copy1.setAge(18);
        copy1.setSex("男");
        copy1.setUserName("张三");
        Copy2 copy2 = new Copy2();
BeanUtils.copyProperties(copy1,copy2);
        System.out.println(copy2);

    }

}
