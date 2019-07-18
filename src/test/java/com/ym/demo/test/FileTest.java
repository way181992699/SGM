package com.ym.demo.test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mchange.io.FileUtils;
import com.ym.demo.pojo.Student;
import com.ym.demo.utils.CreateFileUtil;
import org.junit.Test;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
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
        String path = "D:/TestJson.json";
        String data = "D:/Data";
        File file = new File(data);
        String[] list = file.list();
        System.out.println(Arrays.asList(list));
        String str = FileUtils.getContentsAsString(new File(path));

        //json反序列化为java类(报错,未完成.)
        ObjectMapper mapper = new ObjectMapper();
        JavaType javaType = getCollectionType(ArrayList.class, Student.class);
        List<Student> lst = mapper.readValue(str, javaType);
        System.out.println(lst);
    }

    /**
     * 获取泛型的Collection Type
     *
     * @param collectionClass 泛型的Collection
     * @param elementClasses  元素类
     * @return JavaType Java类型
     * @since 1.0
     */
    public static JavaType getCollectionType(Class<?> collectionClass, Class<?>... elementClasses) {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.getTypeFactory().constructParametricType(collectionClass, elementClasses);
    }

    @Test
    public void gieMoreFile() {
        String srcPath = "E:/Seven/MyFiles/SGM/src/test/java/com/ym/demo/test/txt/all.txt";
        qieGe(20, srcPath, null);
    }

    /**
     * 把一个文件截取分成N个文件
     *
     * @param a       将要分为a个子文件
     * @param srcPath 源文件
     * @param desPath
     */
    public static void qieGe(int a, String srcPath, String desPath) {
        File srPath = new File(srcPath);//获得分割文件
        long size = srPath.length();//获得文件大小
        long b = size / a;//每一份分割文件大小
        String lastName = srcPath.substring(srcPath.lastIndexOf("."));//截取后面的文件后缀
        String subName = srcPath.substring(0, srcPath.lastIndexOf("."));//截取文件的前缀
        BufferedInputStream bu = null;
        BufferedOutputStream ty = null;
        try {
            bu = new BufferedInputStream(new FileInputStream(srPath));
            int res = 0;
            int sizeCount = 0;
            for (int i = 0; i < a; i++) {
                ty = new BufferedOutputStream(new FileOutputStream(new File(subName + "_" + i + lastName)));
                byte[] b1 = new byte[1024 * 8];
                while ((res = bu.read(b1)) != -1) {
                    ty.write(b1, 0, res);
                    sizeCount += res;
                    if (sizeCount >= b) {
                        System.out.println(sizeCount);
                        break;
                    }
                    ty.flush();
                }

            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            try {
                bu.close();
                ty.close();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
        System.out.println("截取完成！");
    }


}
