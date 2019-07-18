package com.ym.demo.test.jdbc;

import java.sql.*;

/**
 * @author wkx
 * @description Mysql数据库jdbc查询
 * @date 2019/7/18
 */
public class MysqlTest {


    // MySQL 8.0 以下版本 - JDBC 驱动名及数据库 URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/RUNOOB";

    // MySQL 8.0 以上版本 - JDBC 驱动名及数据库 URL
    //static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    //static final String DB_URL = "jdbc:mysql://localhost:3306/RUNOOB?useSSL=false&serverTimezone=UTC";


    // 数据库的用户名与密码，需要根据自己的设置
    static final String USER = "root";
    static final String PASS = "123456";

    public static void main(String[] args) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs =null;
        try {
            // 注册 JDBC 驱动
            Class.forName(JDBC_DRIVER);

            // 打开链接
            System.out.println("连接数据库...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // 执行查询
            System.out.println(" 实例化Statement对象...");
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT id, name, url FROM websites";
             rs = stmt.executeQuery(sql);


            // 展开结果集数据库
//            while (rs.next()) {
//                // 通过字段检索
//                int id = rs.getInt("id");
//                String name = rs.getString("name");
//                String url = rs.getString("url");
//
//                // 输出数据
//                System.out.print("ID: " + id);
//                System.out.print(", 站点名称: " + name);
//                System.out.print(", 站点 URL: " + url);
//                System.out.print("\n");
//            }

            ResultSetMetaData metaData = rs.getMetaData();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {

                String columnName = metaData.getColumnName(i);
                System.out.println(columnName + ": ");

            }
            System.out.println();
            while (rs.next()) {
                for (int i = 1; i <= metaData.getColumnCount(); i++) {
                    System.out.print(rs.getString(i) + "\t");// 取字段的值，按次序
                }
                System.out.println();
            }

            // 完成后关闭
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException se) {
            // 处理 JDBC 错误
            se.printStackTrace();
        } catch (Exception e) {
            // 处理 Class.forName 错误
            e.printStackTrace();
        } finally {
            // 关闭资源
            try {
                if (stmt != null) stmt.close();
            } catch (SQLException se2) {
            }// 什么都不做
            try {
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
            try {
                if (rs != null)
                    rs.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }

        }
        System.out.println("Goodbye!");
    }


}
