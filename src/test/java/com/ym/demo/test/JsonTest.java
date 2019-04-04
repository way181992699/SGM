package com.ym.demo.test;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mchange.io.FileUtils;
import com.ym.demo.pojo.Data;
import org.junit.Test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

public class JsonTest {

    @Test //读取json文件,并转换json数据为java数据类型
    public void fun() throws IOException {
        String path = getClass().getClassLoader().getResource("JsonData.json").toString();
//        System.out.println(path);
        path.replace("\\", "/");
        if (path.contains(":")) {
//            path = path.substring(6);// 1
//            System.out.println(path);
            path = path.replace("file:/", "");// 2
        }
        String str = FileUtils.getContentsAsString(new File(path));
        ObjectMapper objectMapper = new ObjectMapper();
        List<Data> list = objectMapper.readValue(str, new TypeReference<List<Data>>() {
        });
        System.out.println(list);
        System.out.println(list.get(0).getD());
        System.out.println(list.get(1).getD());
//        System.out.println(str);
    }

    public static String ReadFile(String path) {
        File file = new File(path);
        BufferedReader reader = null;
        String laststr = "";
        try {
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;
            while ((tempString = reader.readLine()) != null) {
                laststr = laststr + tempString;
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
        return laststr;
    }

}
