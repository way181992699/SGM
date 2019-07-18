package com.ym.demo.test;

import com.ym.demo.pojo.TT;
import org.junit.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * 泛型测试
 */
public class TTest {
    @Test
    public void Test01() {
        List<String> stringArrayList = new ArrayList<>();
        List<Integer> integerArrayList = new ArrayList<Integer>();
        Class classStringArrayList = stringArrayList.getClass();
        Class classIntegerArrayList = integerArrayList.getClass();
        System.out.println(classStringArrayList.equals(classIntegerArrayList)); //true
    }

    @Test
    public void Test02() {
//        TT<Number> t = new TT<Number>(123);
//        TT<Integer> t1 = new TT<Integer>(321);
//        showKey(t);
        TT t = new TT<Number>(123);
        TT<Integer> t1 = new TT<Integer>(321);
        showKey(t1);
    }

    @Test
    public void Test03() throws Exception {
            test();
    }

    public void showKey(TT<?> o) {
        System.out.println(o);
    }

    public void showKey1(List<?> o) {
        System.out.println(o);
    }

    private void test() throws Exception {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            conn = DriverManager.getConnection("jdbc:odbc:MNT", "mnt", "Config_110");
            pstmt = conn.prepareStatement("select * from mnt_processstatus t");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString(2));
            }
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                rs = null;
            }

            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                pstmt = null;
            }

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                conn = null;
            }
        }
    }


}
