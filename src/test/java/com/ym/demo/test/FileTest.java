package com.ym.demo.test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mchange.io.FileUtils;
import com.ym.demo.pojo.Student;
import com.ym.demo.utils.CreateFileUtil;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class FileTest {

    @Test//测试导出Json文件
    public void fun() throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        List<Student> list = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            list.add(new Student(111, "张三asdf", "男"));
            list.add(new Student(111, "李四asd", "男"));
            list.add(new Student(111, "王五", "女"));
        }

        String json = mapper.writeValueAsString(list);

        String filePath = "D:/";
        String fileName = "TestJson";
        CreateFileUtil.createJsonFile(json, filePath, fileName);
    }
    @Test//测试读取json文件
    public void fun1() throws IOException {
        String path ="D:/TestJson.json";
        String  str= FileUtils.getContentsAsString(new File(path));

        //json反序列化为java类(报错,未完成.)
        ObjectMapper mapper = new ObjectMapper();
        JavaType javaType = getCollectionType(ArrayList.class, Student.class);
        List<Student> lst =  mapper.readValue(str, javaType);
        System.out.println(lst);
    }
    /**
     * 获取泛型的Collection Type
     * @param collectionClass 泛型的Collection
     * @param elementClasses 元素类
     * @return JavaType Java类型
     * @since 1.0
     */
    public static JavaType getCollectionType(Class<?> collectionClass, Class<?>... elementClasses) {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.getTypeFactory().constructParametricType(collectionClass, elementClasses);
    }

}
