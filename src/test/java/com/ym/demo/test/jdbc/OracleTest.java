package com.ym.demo.test.jdbc;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author wkx
 * @description Oracle连接数据
 * @date 2019/7/18
 */
public class OracleTest {

    @Test
    public void test1() {
        Connection con = null;// 创建一个数据库连接
        PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement
        ResultSet result = null;// 创建一个结果集对象
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");// 加载Oracle驱动程序
            System.out.println("开始尝试连接数据库！");
            //jdbc:oracle:thin:@//10.117.6.144:1521/racdb

            String url = "jdbc:oracle:thin:@//10.117.6.144:1521/racdb";// 127.0.0.1是本机地址，XE是精简版Oracle的默认数据库名
            String user = "mnt";// 用户名,系统默认的账户名
            String password = "Config_110";// 你安装时选设置的密码
            con = DriverManager.getConnection(url, user, password);// 获取连接
            System.out.println("连接成功！");
            String sql = "select * from mnt_processstatus t";// 预编译语句，“？”代表参数
//            String sql = "select max(ddatetime) as ddatetime  from radial ";// 预编译语句，“？”代表参数
            pre = con.prepareStatement(sql);// 实例化预编译语句
//            pre.setString(1, "小茗同学");// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
            result = pre.executeQuery();// 执行查询，注意括号中不需要再加参数
//            while (result.next())
//                // 当结果集不为空时
//                System.out.println("学号:" + result.getInt("id") + "姓名:"
//                        + result.getString("name"));
            ResultSetMetaData metaData = result.getMetaData();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {

                String columnName = metaData.getColumnName(i);
                System.out.println(columnName + ": ");

            }
            System.out.println();
            List<Map<String, String>> list = new ArrayList<>();
            while (result.next()) {
                Map<String, String> map = new HashMap<>();
                for (int i = 1; i <= metaData.getColumnCount(); i++) {
                    String columnName = metaData.getColumnName(i);
                    map.put(columnName, result.getString(i));
                    System.out.print(columnName + ":");
                    System.out.print(result.getString(i) + "\t");// 取字段的值，按次序
                }
                System.out.println();
                list.add(map);
            }
            System.out.println();
            System.out.println(list);
            System.out.println();
            ObjectMapper objectMapper = new ObjectMapper();
            String s = objectMapper.writeValueAsString(list);
            System.out.println(s);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // 逐一将上面的几个对象关闭，因为不关闭的话会影响性能、并且占用资源
                // 注意关闭的顺序，最后使用的最先关闭
                if (result != null)
                    result.close();
                if (pre != null)
                    pre.close();
                if (con != null)
                    con.close();
                System.out.println("数据库连接已关闭！");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }


}
