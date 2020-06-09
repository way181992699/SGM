package com.ym.demo.test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mchange.io.FileUtils;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import com.ym.demo.pojo.GetRiskPoint;
import com.ym.demo.pojo.Student;
import com.ym.demo.utils.CreateFileUtil;
import jcifs.smb.SmbFile;
import org.junit.Test;

import java.io.*;
import java.net.URISyntaxException;
import java.util.*;

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
            e.printStackTrace();
        } finally {
            try {
                bu.close();
                ty.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        System.out.println("截取完成！");
    }

    @Test
    public void readCSV() {
        String srcPath = "C:/Users/admin/Documents/Thunder_201908082200.csv";
        String charset = "utf-8";
        try (CSVReader csvReader = new CSVReaderBuilder(new BufferedReader(new InputStreamReader(new FileInputStream(new File(srcPath)), charset))).build()) {
            Iterator<String[]> iterator = csvReader.iterator();
            List<GetRiskPoint> getRiskPoints = new ArrayList<>();
            while (iterator.hasNext()) {
                GetRiskPoint getRiskPoint = new GetRiskPoint();
                String[] next = iterator.next();
                getRiskPoint.setLng(Double.valueOf(next[0]));
                getRiskPoint.setLat(Double.valueOf(next[1]));
                getRiskPoint.setLevel(getThunderLevel(Double.valueOf(next[2])));
//                Arrays.stream(iterator.next()).forEach(e-> System.out.print(e+","));
                getRiskPoints.add(getRiskPoint);
            }
            System.out.println(getRiskPoints);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Integer getThunderLevel(double val) {
        if (val > 0 && val <= 30) {
            return 0;
        }
        if (val > 30 && val <= 35) {
            return 1;
        }
        if (val > 35 && val <= 40) {
            return 2;
        }
        if (val > 40) {
            return 3;
        }
        return null;
    }

    //尝试读取文件
    public static void readFileName(String fileName) throws FileNotFoundException, IOException {
        try {

            File file = new File(fileName);
            if (!file.isDirectory()) {
                System.out.println("文件");
                System.out.println("path=" + file.getPath());
                System.out.println("absolutepath=" + file.getAbsolutePath());
                System.out.println("name=" + file.getName());
            } else if (file.isDirectory()) {
//                System.out.println("文件夹");
                String[] filelist = file.list();
                for (int i = 0; i < filelist.length; i++) {
                    File readfile = new File(fileName + "\\" + filelist[i]);
                    if (!readfile.isDirectory()) {
//                        System.out.println("path=" + readfile.getPath());
//                        System.out.println("absolutepath="+ readfile.getAbsolutePath());//绝对地址
//                        System.out.println("name=" + readfile.getName());//文件名
                        System.out.println(readfile.getName());
                    } else if (readfile.isDirectory()) {
                        readFileName(fileName + "\\" + filelist[i]);
                    }
                }
            }
        } catch (FileNotFoundException e) {
            System.out.println("readfile()   Exception:" + e.getMessage());
        }
    }

    //尝试smb读取文件
    public static void readSmbFileName(String fileName) throws FileNotFoundException, IOException {
        try {

            SmbFile file = new SmbFile(fileName);
            if (!file.isDirectory()) {
                System.out.println("文件");
                System.out.println("path=" + file.getPath());
                System.out.println("Canonical=" + file.getCanonicalPath());
                System.out.println("Dfs=" + file.getDfsPath());
                System.out.println("name=" + file.getName());
            } else if (file.isDirectory()) {
//                System.out.println("文件夹");
                String[] filelist = file.list();
                for (int i = 0; i < filelist.length; i++) {
                    File readfile = new File(fileName + "\\" + filelist[i]);
                    if (!readfile.isDirectory()) {
                        System.out.println("path=" + readfile.getPath());
                        System.out.println("Canonical=" + file.getCanonicalPath());
                        System.out.println("Dfs=" + file.getDfsPath());
                        System.out.println("name=" + readfile.getName());//文件名
                        System.out.println(readfile.getName());
                    } else if (readfile.isDirectory()) {
                        readSmbFileName(fileName + "\\" + filelist[i]);
                    }
                }
            }
        } catch (FileNotFoundException e) {
            System.out.println("readfile()   Exception:" + e.getMessage());
        }
    }

    @Test
    public void Test() throws IOException, URISyntaxException {
        String origin = "E:/wkx/深圳项目/智能预报/文档/预警信号发布细则(2019)";
        String origin1 = "\\\\10.153.96.74\\e$\\Resources\\SMB\\WeatherBulletin\\pdf\\2019";//\\IP\E$连接方式
        String origin2 = "smb://administrator:www.yamatech.cn123@10.153.96.74/Resources/SMB/WeatherBulletin/pdf/2019/";//\\IP\E$连接方式
        SmbFile remoteFile = new SmbFile(origin2);

        try {
//            readFileName(origin1);
            readSmbFileName(origin2);
//            System.out.println(smbFileToImageList(remoteFile));
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public List<String> smbFileToImageList(SmbFile file) throws Exception {
        List<String> strings = new ArrayList<>();
        if (file.isDirectory()) {
            // 获得该文件夹内的所有文件
            String[] files = file.list();
            if (files != null) {
                Collections.addAll(strings, files);
            }
        }
        return strings;
    }

    @Test
    public void fileTest() {
        String originB = "E:/wkx/深圳项目/智能预报/文档/UI设计界面/B/1首页(副本).png";
        String originA = "E:/wkx/深圳项目/智能预报/文档/UI设计界面/A/1首页.png";
        File fileB = new File(originB);
        File fileA = new File(originA);
        FileOutputStream fileOutputStream = null;
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(fileA);
            byte[] bytes = new byte[fileInputStream.available()];
            fileInputStream.read(bytes);
            fileOutputStream = new FileOutputStream(fileB);
            fileOutputStream.write(bytes);
            fileInputStream.close();
            fileOutputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
