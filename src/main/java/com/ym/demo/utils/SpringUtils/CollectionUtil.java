package com.ym.demo.utils.SpringUtils;

import org.springframework.util.ResourceUtils;

import java.io.FileNotFoundException;

/**
 * 整理一些Spring框架的工具类
 * 此类为Spring处理集合的工具类
 */
public class CollectionUtil {
/**
 * 集合判断：
 * 　　例1: 判断集合是否为空:
 * 　　CollectionUtils.isEmpty(null): true
 * 　　CollectionUtils.isEmpty(new ArrayList()): true　　
 * 　　CollectionUtils.isEmpty({a,b}): false
 *
 * 　　例2: 判断集合是否不为空:
 * 　　CollectionUtils.isNotEmpty(null): false
 * 　　CollectionUtils.isNotEmpty(new ArrayList()): false
 * 　　CollectionUtils.isNotEmpty({a,b}): true
 */

public static void main(String[] args) throws FileNotFoundException {
    String path = ResourceUtils.getFile("classpath:JsonData.json").getPath();
    System.out.println(path);
}

}
