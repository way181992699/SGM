package com.ym.demo.test;

import com.ym.demo.pojo.A;
import com.ym.demo.pojo.CompareBean;
import com.ym.demo.pojo.User;
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
        String str = "1";
        String str1 = "1，2";
        String[] split = str.split(",");
        List<String> strings = Arrays.asList(split);
        System.out.println(strings);
        String[] split1 = str1.split("，");
        List<String> strings1 = Arrays.asList(split1);
        System.out.println(strings1.get(1));

        System.out.println(str1.contains("，"));

    }


    @Test//
    public void fun5() {
        List<Integer> aa = null;
        aa.add(2);
        System.out.println(aa);

        A a = new A();
        a.getIntegerList().add(1);
        System.out.println("asdf");
        System.out.println(a);


    }

    @Test//
    public void fun6() {
        List<User> aa = new ArrayList<>();
        List<User> bb = new ArrayList<>();
        User a1 = new User("a1", "123");
        User a2 = new User("a2", "123");
        User a3 = new User("a3", "123");
        User b1 = new User("a3", "123");
        User b2 = new User("a2", "123");
        aa.add(a1);
        aa.add(a2);
        aa.add(a3);
        bb.add(b1);
        bb.add(b2);
        System.out.println(aa);
        System.out.println(bb);
        System.out.println(aa.containsAll(bb));
        aa.removeAll(bb);
        System.out.println(aa);
        aa = null;
        aa = bb;
        System.out.println(aa);
    }

    @Test//compare 测试
    public void fun7() {
        List<CompareBean> c1 = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            c1.add(new CompareBean("張三" + i, (int) (i + (Math.random() * 100)), i % 2 == 0 ? "男" : "女"));
        }
        System.out.println(c1);
        Collections.sort(c1);
        System.out.println(c1);
        List<CompareBean> c2 = new ArrayList<>();
    }

    @Test//compare 体验可变参数
    public void fun8() {
//        Double avg = getAvg(1.5, 3.5, 7.0, 13.0);
        Double avg = getAvg(null, null, null, 7.0, 13.0);

        System.out.println(avg);

    }


    @Test
    public void ListUtils() {
        List list1 = new ArrayList();
        list1.add("1111");
        list1.add("2222");
        list1.add("3333");
        List list2 = new ArrayList();
        list2.add("3333");
        list2.add("4444");
        list2.add("5555");
        //并集
        //list1.addAll(list2); // addAll命令，会把第2个list中的数据添加到第一个list中
        //System.out.println(list1);//[1111, 2222, 3333, 3333, 4444, 5555]
        //交集
        // retainAll命令，返回的是一个boolean值，如果结果修改了第一个list就返回true，没修改就返回false，结果会直接修改第一个list，如果第2个list是第一个的子集，就不会修改第一个list。retainAll命令返回的是两个list同时包含的内容
        //1、首先调用retainAll的方法
        //2、通过判断结果集合是否大于0，来确定是否存在交集。不能通过方法返回的True和False来判断。
        //3、当集合A的大小改变的时候返回的是True,大小没有改变的时候返回的是False
//        boolean b = list1.retainAll(list2);
//        System.out.println(b);
        //System.out.println(list1);//[3333]
        //差集
//        list1.removeAll(list2);// removeAll命令，使用第一个list的内容去减第2个list，也就是说第1个list的结果保留第2个list中没有的内容。
//        System.out.println(list1);//[1111, 2222]
        //无重复并集
//        list2.removeAll(list1);
//        list1.addAll(list2);
//        System.out.println(list1);//[1111, 2222, 3333, 4444, 5555]
//        Iterator<String> it = list1.iterator();
//        while (it.hasNext()) {
//            System.out.println(it.next());
//        }

    }

    public static Double getAvg(Double... a) {
        double sum = 0.0;
        int isEmpty = 0;
        for (int i = 0; i < a.length; i++) {
            if (null == a[i]) {
                isEmpty++;
                continue;
            }
            sum += a[i];
        }
        if (a.length > 0) {
            if (isEmpty == a.length) {
                return null;
            } else if (isEmpty > 0 && isEmpty < a.length) {
                return sum / (a.length - isEmpty);
            }
        }
        return null;
    }


}
