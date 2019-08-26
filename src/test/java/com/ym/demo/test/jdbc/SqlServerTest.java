package com.ym.demo.test.jdbc;

import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SqlServerTest {
    final static String cfn = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    final static String url = "jdbc:sqlserver://10.117.6.141:1433;DatabaseName=ncqxdb";


    @Test
    public void test1() {
        Connection con = null;
        PreparedStatement statement = null;
        ResultSet res = null;
        try {
            Class.forName(cfn);
            con = DriverManager.getConnection(url, "qxt", "qxttxq");

            String sql = "SELECT * FROM  qxt.forecaster";//查询test表
            statement = con.prepareStatement(sql);
            res = statement.executeQuery();
            while (res.next()) {
                String title = res.getString("name");//获取test_name列的元素                                                                                                                                                    ;
                System.out.println("姓名：" + title);
            }

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        } finally {
            try {
                if (res != null) res.close();
                if (statement != null) statement.close();
                if (con != null) con.close();
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
        }

    }
}
