package com.ym.demo.test;

import com.ym.demo.pojo.User;
import io.swagger.models.auth.In;
import org.junit.Test;
import org.springframework.util.CollectionUtils;

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
        list = new ArrayList<>();
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
        List list = null;
        ArrayList arrayList = new ArrayList(list);
        LinkedList objects = new LinkedList(list);
    }

    @Test//subList(int fromIndex,int toIndex)截取函数测试
    //返回列表中指定的 fromIndex（包括 ）和 toIndex（不包括）之间的部分视图。
    public void ListSubListTest() {
        List list = new ArrayList();
        for (int i = 0; i < 50; i++) {
            list.add(i);
        }
//        System.out.println(list);

        System.out.println(list.subList(list.size() - 50, list.size()));
        System.out.println(list.get(list.size() - 1));
    }

    @Test//创建集合的集中方式
    public void ListCreate() {
        List<Integer> list = new ArrayList(Arrays.asList(Integer.valueOf("1")));
        System.out.println(list);
        System.out.println(list.get(0) + 1);
    }


    @Test//判断两个集合是否相等
    public void equalsList() {
        List u1 = new ArrayList<>();
        List<User> u2 = new ArrayList<>();
        for (int i = 10; i > 0; i--) {
            User u = new User();
            u.setName("张三" + i);
//            u.setPwd((i +(int)(Math.random()*100))+"");
            u.setPwd(i + "");
            u1.add(u);
        }

        for (int i = 1; i < 10; i++) {
            User u = new User();
            u.setName("张三" + i);
            u.setPwd(i + "");
            u2.add(u);
        }
        System.out.println(u1);
        Collections.sort(u1);
        System.out.println(u1);
        System.out.println(Collections.disjoint(u1, u2));
        System.out.println();
        System.out.println(u1.containsAll(u2));
        System.out.println(u2.containsAll(u1));
    }

    @Test//集合赋值
    public void ListTest1() {
        List<User> u1 = new ArrayList<>();
        List<User> u2 = new ArrayList<>();
        for (int i = 10; i > 0; i--) {
            User u = new User();
            u.setName("张三" + i);
            u.setPwd((i + (int) (Math.random() * 100)) + "");
            u1.add(u);
        }
        System.out.println(u1);
        u2 = u1;
        System.out.println(u2.size() == u1.size());
        System.out.println(u2);
        u2.clear();
        User uu = new User();
        uu.setName("罗西陈");
        User uu1 = new User();
        uu1.setName("沈光耀");
        System.out.println(uu);
        uu = uu1;
        System.out.println(uu);
        u2.add(uu);
        System.out.println(u2);

    }

    @Test//集合对比, 获取多出的部分
    public void ListTest2() {
        List<User> u1 = new ArrayList<>();
        List<User> u2 = new ArrayList<>();
        for (int i = 100; i > 0; i--) {
            User u = new User();
            u.setName("张三" + i);
            u.setPwd(i + "");
            u1.add(u);
        }
        for (int i = 105; i > 0; i--) {
            User u = new User();
            u.setName("张三" + i);
            u.setPwd(i + "");
            u2.add(u);
        }
        System.out.println(u1.size());
        System.out.println(u2.size());
        u2.removeAll(u1);
        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < u2.size(); i++) {
            builder.append(u2.get(i).getPwd());
            if (i != (u2.size() - 1)) {
                builder.append(",");
            }
        }
        System.out.println(builder.toString().trim());

    }

    @Test//测试两个list 合并
    public void addAllList() {
        List<User> u1 = new ArrayList<>();
        List<User> u2 = new ArrayList<>();
        for (int i = 100; i > 0; i--) {
            User u = new User();
            u.setName("张三" + i);
            u.setPwd(i + "");
            u1.add(u);
        }
        for (int i = 105; i > 0; i--) {
            User u = new User();
            u.setName("张三" + i);
            u.setPwd(i + "");
            u2.add(u);
        }
        boolean b = u1.addAll(u2);
        System.out.println(u1);
        System.out.println(u1.size());
    }

    @Test//测试list 的Remove方法
    public void removeList() {
        List<String> a1 = new ArrayList<>();
        List<String> a2 = new ArrayList<>();
        for (int i = 0; i < 20; i++) {
            a1.add(i + "");
        }
        for (int i = 0; i < 30; i++) {
            a2.add(i + "");
        }
        for (int i = 0; i < a1.size(); i++) {
            if (a1.get(i).equalsIgnoreCase("5")) {
            }
        }
    }

    @Test//测试list 的split方法
    public void splitList() {
       String str ="1";
       String str1 ="1，2";
        String[] split = str.split(",");
        List<String> strings = Arrays.asList(split);
        System.out.println(strings);
        String[] split1 = str1.split("，");
        List<String> strings1 = Arrays.asList(split1);
        System.out.println(strings1.get(1));

        System.out.println(str1.contains("，"));

    }

}
