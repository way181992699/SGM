package com.ym.demo.test;

import com.ym.demo.pojo.User;
import org.junit.Test;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringTest {
    private static final String LOGIN_URL = "/Airport/Login/GetToken";

    @Test //测试字符串包含(区分大小写)
    public void StringContain() {
        String str = "5949";
        String str12 = "0001";
        String str22 = "000";
        String code = "5949303";
        String str1 = "A";
        String code1 = "ABC";
//        System.out.println(code.contains(str));
//        System.out.println(code1.contains(str1));
        System.out.println(code.substring(0, 3));
        System.out.println(code.substring(4, 7));
        System.out.println(Integer.valueOf(str12));
        System.out.println(Integer.valueOf(str22));
    }

    @Test //测试字符串包含(区分大小写)
    public void StringContain1() {
        String str = "java.lang.Exception: PersonService修改责任人基础信息失败:\n" +
                "        ### Error updating database.  Cause: org.postgresql.util.PSQLException: ERROR: duplicate key value violates unique constraint \"t_person_item_code_phone_uindex\"\n" +
                "        详细：Key (code, phone)=(5949306, 13800365465) already exists.\n" +
                "        ### The error may involve";
        String code = "Key";
        String str1 = "already exists";
        String code1 = "ABC";
        System.out.println(str.contains(code));
        System.out.println(str.contains(str1));
    }

    @Test //测试字符串包含(区分大小写)
    public void StringContain2() {
        String str = " 全市陆地、西部海区、东部海区、宝安区";
        String code = null;
        String str1 = "already exists";
        String code1 = "ABC";
        String empty = " ";
        String url = "http://10.153.96.74/Airport/Login/GetLogin";
        if (url.contains(LOGIN_URL)) { //登录接口不拦截
            System.out.println("拦截放过");

        }
//        System.out.println(str.contains(code));
//        System.out.println(str.contains(str1));
        User user = new User();
        user.setName(str);
        String name = user.getName();
//        System.out.println(name.contains(code));
//        System.out.println(name);
//        System.out.println(user);

        System.out.println(str.equalsIgnoreCase(empty));
        System.out.println(empty.equalsIgnoreCase(str));
        System.out.println(empty.equalsIgnoreCase(str));

    }

    //
    @Test //测试字符串包含(区分大小写)
    public void replaceString() {
        String str = "【防汛Ⅳ级应急响应】区城管局：Warningsignal区三防指挥部于Dayxx日Hourxx时Minutexx分启动防汛Ⅳ级应急响应，请你局督促辖区环卫外包服务企业加强路面清扫保洁工作，及时清理路面垃圾。";
        SimpleDateFormat dayFormat = new SimpleDateFormat("dd");
        SimpleDateFormat hourFormat = new SimpleDateFormat("HH");
        SimpleDateFormat minuteFormat = new SimpleDateFormat("mm");
        String day = dayFormat.format(new Date());
        String hour = hourFormat.format(new Date());
        String minute = minuteFormat.format(new Date());
        System.out.println(day);
        String result = str.replace("Dayxx", day).replace("Hourxx", hour).replace("Minutexx", minute);
        System.out.println(result);

    }


    //
    @Test //测试字符串转int
    public void StringOfValue() {
        String str = "123";
        String str1 = "01";
        Integer integer = Integer.valueOf(str);
        Integer integer1 = Integer.valueOf(str1);
//        System.out.println(integer1);
//        System.out.println(integer + 5);
        String a = "123,,23,34,,,6";
        String[] split = a.split(",");
        Set<String> set = new HashSet<>();
        for (String s : split) {
            System.out.println(s);
            if (!StringUtils.isEmpty(s)) {
                set.add(s);
            }
        }
        System.out.println("-------------------------");
        for (String s : set) {
            System.out.println(s);

        }

    }

    //
    @Test //测试字符串
    public void stringIsEmpty() {
        String str = "宝安区";
//        System.out.println(str.substring(0, 2));
//        System.out.println(str.length());
        String str1 = "http://127.0.0.1:18003/XthApi/ApiData/Aws/ObtCode/ByObtName?name=和平社区";
        String str2 = "/Aws/ObtCode/ByObtName";
//        System.out.println(str1.contains(str2));


        String str22 = "123,456,789,";
        String[] split = str22.split(",");
        for (String s : split) {
//            System.out.println(s);
        }
        String content = "盐田区、大鹏新区,大雾,黄色,2019-03-22 03:45:00;.【深圳市取消火险预警】干燥天气已经缓解，深圳市气象台于2019年03月22日09时00分在全市陆地取消森林火险预警。";
        String content1 = "福田区、罗湖区、盐田区、坪山区、大鹏新区、东部海区、南湾、坪地、宝龙、龙岗、龙城、园山、横岗、布吉,大风,蓝色,2019-03-03 06:10:00;宝安区、南山区、光明区、龙华区、西部海区、坂田、平湖、吉华,大风,黄色,2019-03-03 07:05:00;全市陆地、西部海区、东部海区,雷电, ,2019-03-03 06:10:00;.【深圳市分区大风蓝色预警升级为黄色】深圳市气象台于2019年03月03日07时05分将宝安区，南山区，光明区，龙华区，西部海区和龙岗区（坂田、平湖、吉华街道）大风蓝色预警升级为黄色，预计阵风10级以上，信号可能持续1小时左右，停止高空、水上等户外作业，撤离危险地带人员；船舶采取有效措施避风。";
        String[] split1 = content1.split(";.");
        for (String s : split1) {
            System.out.println(s);
        }


    }


    @Test //截取字符串
    public void subString() {

        String txt = "123456.txt";
        String test = "^[0-2]$";
        System.out.println(test);
        int i = txt.lastIndexOf(".");
        System.out.println(i);

        String substring = txt.substring(txt.lastIndexOf("."));
        String substring1 = txt.substring(0, txt.lastIndexOf("."));
        System.out.println(substring);
        System.out.println(substring1);
    }

    @Test//正则测试
    public void pattenTest() {
        String str = "2";
        String regEx = "^[0-2]$";
        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(str);
        System.out.println(m.find());
    }

    @Test//替换测试
    public void replaceTest() {
        String str = "石岩街道";
        String str1 = "石岩特别合作区";
        String s = str.replace("街道", "");
        String s1 = str1.replace("街道", "");
        System.out.println(s);
        System.out.println(s1);
    }


    @Test//
    public void judgeMap() {

        String sql = "select max(ddatetime) as ddatetime  from radial  where ddatetime> to_date('2019-07-18 15:53:00','yyyy-mm-dd hh24:mi:ss')";
        String sql1 = "select max(ddatetime) as ddatetime  from radial  where ddatetime>" + " to_date('2019-07-18 15:53:00','yyyy-mm-dd hh24:mi:ss')";
        String a = "b";
        String c = "b";
        System.out.println(a.getClass());
        System.out.println(c.getClass());
        System.out.println(a == c);
        System.out.println(sql1.equals(sql));
        System.out.println(sql1 == sql);
        System.out.println(sql);
        System.out.println(sql1);
    }


    @Test//截取字符串
    public void sbuString() {

        String sql = "大风黄色预警提示";
        String sql1 = "山体滑坡橙色预警提示";

        System.out.println(sql.substring(0, sql.indexOf("色") + 1));
        System.out.println(sql1.substring(0, sql1.indexOf("色") + 1));
        System.out.println(sql1.substring(0, 2));
        System.out.println(sql1.substring(2));
        List<String> a = new ArrayList<>();
        a.add(null);
        System.out.println(CollectionUtils.isEmpty(a));

    }


    @Test//截取字符串
    public void sbuString1() throws ParseException {
        String sql = "2020年05月08日 14时05分38秒";
        Date d = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒").parse(sql);
        System.out.println(d);
        System.out.println(d.getTime());
    }

    @Test
    public void sbuString2() throws ParseException {
        //需要变动的day天数,比如2天
        int day = 2;
        //打印今天+day的时间
        System.out.println(new Timestamp(addDay(day).getTime()));
        //打印今天-day的时间
        System.out.println(new Timestamp(deleteDay(day).getTime()));
        System.out.println();
    }

    public Date addDay(int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(calendar.DAY_OF_YEAR, day);
        return calendar.getTime();
    }

    public Date deleteDay(int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(calendar.DAY_OF_YEAR, -day);
        return calendar.getTime();
    }

    @Test
    public void longAndDou()  {
        Double a =  0.5;

        long l = a.longValue();
        System.out.println(l);
        long deferHour =(long)(a * 1000 * 60 * 60) ;

        System.out.println(deferHour);
    }


    @Test
    public void split01()  {
       String a = "sdsdf.txt";
        String[] split = a.split("\\.");
        for (String s : split) {
            System.out.println(s);
        }
        System.out.println(split[0]);
    }

}
