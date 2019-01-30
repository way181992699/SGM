package com.ym.demo.test;

import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

public class MapTest {

    @Test//Map类的一些测试
    public void MapKey() {
        Map<String, Integer> map = new HashMap<>();
        for (int i = 0; i < 10; i++) {
            map.put("第" + (i + 1) + "个key", (int) (Math.random() * 100));
        }
        System.out.println(map);
        System.out.println(map.entrySet());
        System.out.println(map.keySet());
        System.out.println(map.values());
        System.out.println(map.isEmpty());
    }


    @Test//Map类的浅拷贝
    public void MapCopy() {
        Map<String, Integer> map = new HashMap<>();
        for (int i = 0; i < 10; i++) {
            map.put("第" + (i + 1) + "个key", (int) (Math.random() * 100));
        }
        System.out.println(map);
        Object clone = ((HashMap<String, Integer>) map).clone();
        System.out.println(clone);


//        Map<String, Integer> mapClone = ((HashMap<String, Integer>) map).clone();
    }

}
