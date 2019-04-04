package com.ym.demo.test;

import com.ym.demo.enumTest.EnumTest;
import com.ym.demo.enumTest.IConstants;
import com.ym.demo.exception.BaseException;
import com.ym.demo.pojo.GameS;
import com.ym.demo.pojo.User;
import com.ym.demo.utils.Judge;
import com.ym.demo.utils.TDOA;
import com.ym.demo.utils.idCardCheck.IdCardVerification;
import org.junit.Test;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 草稿类(随便测试玩玩)
 */
public class TheMainClass {

    /**
     * 根据java的Calendar（译：日历）类操作相关函数；
     */
    @Test
    public void fun() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
//        calendar.set(Calendar.HOUR_OF_DAY, 0);
//        calendar.set(Calendar.MINUTE, 0);
//        calendar.set(Calendar.SECOND, 0);
//        Date zero = calendar.getTime();
        long timeInMillis = calendar.getTimeInMillis();
        SimpleDateFormat format = new SimpleDateFormat("yyyy年MM月dd天 HH时mm分ss秒");
        // System.out.println(format.format(zero));

        long current = System.currentTimeMillis();//当前时间毫秒数
        long zero = current / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
        long current12 = System.currentTimeMillis() + 12 * 60 * 60 * 1000;
        long twelve = zero + 24 * 60 * 60 * 1000 - 1;//今天23点59分59秒的毫秒数
        long yesterday = System.currentTimeMillis() - 24 * 60 * 60 * 1000;//昨天的这一时间的毫秒数
        long ty = yesterday / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//昨天零点零分零秒的毫秒数;
        long zero11 = zero + 11 * 60 * 60 * 1000;
        System.out.println(zero11);
        System.out.println(new Timestamp(zero11));
        System.out.println(new Timestamp(current));//当前时间
        System.out.println(new Timestamp(current12));//当前时间+12小时候之后
        System.out.println(new Timestamp(yesterday));//昨天这一时间点
        System.out.println(new Timestamp(zero));//今天零点零分零秒
        System.out.println(new Timestamp(twelve));//今天23点59分59秒
        System.out.println(new Timestamp(ty));//昨天零点零分零秒
        System.out.println(yesterday);
        System.out.println(twelve);
        System.out.println("-----------------------------");
        System.out.println(current);
        System.out.println(timeInMillis);
        System.out.println(zero);
        System.out.println(TimeZone.getDefault().getRawOffset());
        // System.out.println(current==timeInMillis);判断Calendar获取的时间戳和System.currentTimeMillis();的时间戳是否相等，我认为相等，只是代码执行有时间，所以当前同一时间因为代码执行时间问题，出现了false；
        System.out.println(Judge.isAM_PM());
        //    public int compareTimestamp(long timestamp) {
        //
//        long current = System.currentTimeMillis();//当前时间毫秒数
//        long zero = current / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
//        if(timestamp> zero&&timestamp<){
//
//        }
//        return 0;
//    }
    }

    //T_LOCALOBTDAYD    --- 自动站天表
    //SZIDC.T_LOCALOBTHOURD  --- 自动站小时表


    @Test
    public void fun2() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        long currentTime = calendar.getTimeInMillis();
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("当前时间戳: " + new Timestamp(currentTime) + ", " + currentTime);

        calendar.add(calendar.YEAR, -1);
        long yesteryear = calendar.getTimeInMillis();
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("去年时间戳: " + new Timestamp(yesteryear) + ", " + yesteryear);

    }

    //T_LFS_WELFAREFORECASTDAYS
    @Test
    public void fun3() {
        String name = "罗湖,宝安";
        String name1 = "罗湖";
        String[] split = name.split(",");
        String[] strings = name1.split(",");
        System.out.println(Arrays.toString(split));
        System.out.println(Arrays.toString(strings));
        System.out.println(strings.length);

    }

    @Test
    public void fun4() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        long currentTime = calendar.getTimeInMillis();
        int year = calendar.get(calendar.YEAR);
        int month = calendar.get(calendar.MONTH);
        int date = calendar.get(calendar.DATE);
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("获取当前月份: " + calendar.get(calendar.MONTH));
        System.out.println("获取当前多少号: " + calendar.get(calendar.DATE));
        System.out.println("当前时间戳: " + new Timestamp(currentTime) + ", " + currentTime);

        calendar.add(calendar.MONTH, -month);
        calendar.add(calendar.DATE, -(date - 1));
        long yesteryear = calendar.getTimeInMillis();
        long zero = yesteryear / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();//今天零点零分零秒的毫秒数
        System.out.println("获取当前年份: " + calendar.get(calendar.YEAR));
        System.out.println("去年时间戳: " + new Timestamp(zero) + ", " + zero);

        Date a = new Date();
        System.out.println(a);
        System.out.println(new Timestamp(a.getTime()));
    }

    @Test
    public void fun5() {
        String a = "asdf";
        String b = null;
        String c = "false";
        String d = "true";
        System.out.println(Boolean.valueOf(a));
        System.out.println(Boolean.valueOf(b));
        System.out.println(Boolean.valueOf(c));
        System.out.println(Boolean.valueOf(d));
    }

    @Test//Date类测试
    public void fun6() {
        long start = 1541057712;
        long end = 1541144115;
        Date date1 = new Date(start * 1000);
        Date date2 = new Date(end * 1000);
        int i = TDOA.differentDaysByMillisecond(date1, date2);
        System.out.println(i);
    }

    @Test//calendar类测试:设置当年的1月1号0时0分0秒0毫秒
    public void fun7() {
        Calendar instance = Calendar.getInstance();
        instance.setTime(new Date());
        //1.用Calendar类内的方法 设置当年的1月1号0时0分0秒0毫秒
        instance.set(instance.DAY_OF_YEAR, 1);//设置当年的天数为第一天, 也就是01月01日(第一天)
        instance.set(instance.HOUR_OF_DAY, 0);//设置当天的小时数为0(0时)
        instance.set(instance.MINUTE, 0);//设置当天的分钟数为0(0分)
        instance.set(instance.SECOND, 0);//设置当天的秒数为0(0秒)
        instance.set(instance.MILLISECOND, 0);//设置当天的毫秒数为0(0毫秒)
//        instance.set(instance.MONTH,0);
//        instance.set(instance.DAY_OF_MONTH,1);
        //2.根据时间戳算出当日的零点零分零秒的毫秒数
        instance.set(instance.DAY_OF_YEAR, 1);//设置当年的天数为第一天, 也就是01月01日(第一天)
        long a = instance.getTimeInMillis() / (1000 * 3600 * 24) * (1000 * 3600 * 24) - TimeZone.getDefault().getRawOffset();
//        System.out.println(a);
//        System.out.println(new Timestamp(a));
//        long timeInMillis = instance.getTimeInMillis();
//        System.out.println(new Timestamp(timeInMillis));

    }

    @Test//SimpleDateFomat里面的parse方法的使用
    public void SimpleDateFormatParse() {
        String date = "2018-11-09阿萨德刚";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parse = simpleDateFormat.parse(date);
            System.out.println(parse.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Test//SimpleDateFomat里面的parse方法的使用
    public void CalendarTest() {
        Calendar calendar = Calendar.getInstance();
        int hour = calendar.get(calendar.HOUR_OF_DAY);
        int minute = calendar.get(calendar.MINUTE);
        Date time = calendar.getTime();

        System.out.println(time);
        System.out.println(hour);
        System.out.println(minute);
        System.out.println(((hour - 1) * 60 + minute) / 6);
    }

    @Test//比较接口和抽象类的自身的一些特性;
    public void InterfaceTest() {
        GameS gs = new GameS();
        gs.getG().play();
        GameS.fun1();
        GameS.g1.playFun();
        GameS.g1.play();
    }

//T_SWCODET_SWDATA


//    public Map<String, SZDenfence> getSZDenfence(Long timestamp) throws Exception {
//        Map<String, SZDenfence> map = new HashMap<>();
//
//        List<DistrictR> szCodeList = districtService.getSZCode();
//        List<SZDenfence> list = new ArrayList<>();
//        for (int i = 0; i < szCodeList.size(); i++) {
//            List<ReservoirRes> reservoirResList = new ArrayList<>();
//            List<RiverRes> riverResList = new ArrayList<>();
//            List<WaterLoggingRes> waterLoggingResList = new ArrayList<>();
//            SZDenfence szDenfence = new SZDenfence();
//            List<Reservoir> reservoirs = defenceService.getReservoirs(szCodeList.get(i).getCode());
//            for (Reservoir reservoir : reservoirs) {
//                List<String> idcidList = new ArrayList<>();
//                String idcid = reservoir.getIdcid();
//                idcidList.add(idcid);
//                if (timestamp != null) {
//                    Calendar instance = Calendar.getInstance();
//                    instance.setTimeInMillis(timestamp);
//                    instance.add(instance.DATE, -3);
//                    long timeInMillis = instance.getTimeInMillis();
//                    List<DefenceLevel> levelByTimeScope = waterlevelService.getLevelByTimeScope(idcid, timeInMillis, timestamp);
//                    ReservoirRes reservoirRes = new ReservoirRes();
//                    reservoirRes.setAttribute(reservoir);
//                    if (!CollectionUtils.isEmpty(levelByTimeScope)) {
//                        reservoirRes.setCurrentWater(levelByTimeScope.get(levelByTimeScope.size()-1).getLevel());
//                        reservoirRes.setCurrentWaterTime(levelByTimeScope.get(levelByTimeScope.size()-1).getDate());
//                        System.out.println(reservoirRes);
//                    } else {
//                        reservoirRes.setCurrentWater((double) -1);
//                        reservoirRes.setCurrentWaterTime(null);
//                    }
//                    reservoirResList.add(reservoirRes);
//                } else {
//                    List<DefenceLevel> levelByIdcList = waterlevelService.getLevelByIdcList(idcidList);
//                    ReservoirRes reservoirRes = new ReservoirRes();
//                    reservoirRes.setAttribute(reservoir);
//                    if (!CollectionUtils.isEmpty(levelByIdcList)) {
//                        reservoirRes.setCurrentWater(levelByIdcList.get(0).getLevel());
//                        reservoirRes.setCurrentWaterTime(levelByIdcList.get(0).getDate());
//                        System.out.println(reservoirRes);
//                    } else {
//                        reservoirRes.setCurrentWater((double) -1);
//                        reservoirRes.setCurrentWaterTime(null);
//                    }
//                    reservoirResList.add(reservoirRes);
//                }
//            }
//            List<River> rivers = defenceService.getRivers(szCodeList.get(i).getCode());
//            for (River river : rivers) {
//                List<String> idcidList = new ArrayList<>();
//                idcidList.add(river.getIdcid());
//                List<DefenceLevel> levelByIdcList = waterlevelService.getLevelByIdcList(idcidList);
//                RiverRes riverRes = new RiverRes();
//                if (!CollectionUtils.isEmpty(levelByIdcList)) {
//
//                    riverRes.setCurrentWater(levelByIdcList.get(0).getLevel());
//                    riverRes.setCurrentWaterTime(levelByIdcList.get(0).getDate());
//                    System.out.println(riverRes);
//                } else {
//                    riverRes.setCurrentWater((double) -1);
//                    riverRes.setCurrentWaterTime(null);
//                }
//                riverRes.setAttribute(river);
//                riverResList.add(riverRes);
//            }
//            List<WaterLogging> waterLoggings = defenceService.getWaterLoggings(szCodeList.get(i).getCode());
//            for (WaterLogging waterLogging : waterLoggings) {
//                List<String> idcidList = new ArrayList<>();
//                idcidList.add(waterLogging.getIdcid());
//                List<DefenceLevel> levelByIdcList = waterlevelService.getLevelByIdcList(idcidList);
//                WaterLoggingRes waterLoggingRes = new WaterLoggingRes();
//                if (!CollectionUtils.isEmpty(levelByIdcList)) {
//                    System.out.println(waterLogging.getIdcid());
//                    waterLoggingRes.setCurrentWater(levelByIdcList.get(0).getLevel());
//                    waterLoggingRes.setCurrentWaterTime(levelByIdcList.get(0).getDate());
//                } else {
//                    waterLoggingRes.setCurrentWater((double) -1);
//                    waterLoggingRes.setCurrentWaterTime(null);
//                }
//                waterLoggingRes.setAttribute(waterLogging);
//                waterLoggingResList.add(waterLoggingRes);
//            }
//
//            szDenfence.setReservoir(reservoirResList);
//            szDenfence.setRivers(riverResList);
//            szDenfence.setWaterLoggings(waterLoggingResList);
//            szDenfence.setAreaName(szCodeList.get(i).getNameEn());
//            list.add(szDenfence);
//        }
//        for (SZDenfence szDenfence : list) {
//            map.put(szDenfence.getAreaName(), szDenfence);
//        }
//        return map;

    @Test//玩calendar类
    public void calendarTest() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(calendar.DAY_OF_YEAR, -1);
        calendar.set(calendar.HOUR_OF_DAY, 8);
        calendar.set(calendar.MINUTE, 0);//设置当天的分钟数为0(0分)
        calendar.set(calendar.SECOND, 0);//设置当天的秒数为0(0秒)
        calendar.set(calendar.MILLISECOND, 0);//设置当天的毫秒数为0(0毫秒)
        System.out.println(new Timestamp(calendar.getTimeInMillis()));
        calendar.add(calendar.HOUR_OF_DAY, 31);
        System.out.println(new Timestamp(calendar.getTimeInMillis()));
    }

    @Test//身份证校验 test
    public void idCardCheck() throws ParseException {
        // String IdCard="61082120061222612X";
        // 从控制端输入用户身份证
//        Scanner s = new Scanner(System.in);
//        System.out.println("请输入你的身份证号码：");
//        String IdCard = new String(s.next());
        // 将身份证最后一位的x转换为大写，便于统一
        String IdCard = "452133198912200318";
        IdCard = IdCard.toUpperCase();
        System.out.println(IdCardVerification.VERIFY);
        System.out.println(IdCardVerification.IDCardValidate(IdCard));
        System.out.println(IdCardVerification.VERIFY);

    }

    @Test//测试beak关键字的作用域
    public void beakTest() {//--------------------------beak只能用于循环.
        String str = "holle";
        Object user = getUser();
        if (user instanceof User) {
            System.out.println("true");
        } else {
            System.out.println("false");
        }
    }

    @Test//测试Integer和int的比较
    public void IntegerTest() {
        Integer a = new Integer(1);
        Integer c = new Integer(1);
        int b = 1;
        System.out.println(a == b);
        System.out.println(a.equals(b));
        System.out.println(a == c);
        System.out.println(a.equals(c));
    }

    @Test//测试continue和break的测试作用范围
    //竟测试如果存在多个for循环, continue成立时,就不会继续执行continue之后的代码(如果continue后面仍有代码的话),并重新开始当前循环
    //break则是直接停止当前循环,跳到上一层循环继续执行(如果上一层循环仍成立的话).
    public void forTest() {
        List<String> list1 = new ArrayList();
        list1.add("3333");
        list1.add("1111");
        list1.add("2222");
        List<String> list2 = new ArrayList();
        list2.add("3333");
        list2.add("4444");
        list2.add("5555");
        for (String s : list1) {
            Boolean a = false;
            for (String s1 : list2) {
                if (s.equals(s1)) {
                    System.out.println("same");
//                    continue;
                    break;
                }
                System.out.println("hello world!");
            }
            System.out.println("hello world!");
        }
    }

    public Object getUser() {
        User u = new User();
        u.setName("x");
        u.setPwd("123");
        return u;
    }

    @Test//异常博捕获类测试.
    public void ExcptionTest() {
        BaseException baseException = new BaseException(BaseException.ExceptionCode.PARAMS_INCORRECT, "参数值不合法,服务器无法进行有效的计算");
//        throw new BaseException(BaseException.ExceptionCode.PARAMS_INCORRECT, "传参有误!请检查!");
        //            throw new BaseException(BaseException.ExceptionCode.SERVICE_UNAVAILABLE, "参数值不合法,服务器无法进行有效的计算");

        BaseException.ExceptionCode c1 = baseException.getCode();
        BaseException.ExceptionCode params_incorrect = BaseException.ExceptionCode.valueOf("SERVICE_UNAVAILABLE");
//        params_incorrect.setCode(1213);
        System.out.println(params_incorrect.getCode());

        int code = c1.getCode();

        System.out.println(code);
    }

    @Test//枚举测试.
    public void enumTest() {
        //测试原始接口
        String fri = IConstants.FRI;
        System.out.println(fri);
        System.out.println(EnumTest.FRI);
    }

    @Test//2019-2-12,今天太困,所以这个test类主要用于玩耍来抵消困意
    public void noSleep() {
//        回味以前.循环出一个九九乘法表吧
        for (int i = 1; i <= 9; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j + "x" + i + "=" + (j * i) + "  ");
            }
            System.out.println();
        }


    }

    public static void main(String[] args) {
        //终于清醒一些了,在来个三角形吧
//                *
//               ***
//              *****
        Scanner scanner = new Scanner(System.in);
        while (true) {
            int length = scanner.nextInt();
            if (length == 0)
                break;
            for (int i = 1; i <= length; i++) {
                int j = 0;
                while (j < length - i) {
                    System.out.print(" ");
                    j++;
                }
                j = 0;
                while (j < (1 + (2 * (i - 1)))) {
                    System.out.print("*");
                    j++;
                }
                System.out.println();
            }
        }
    }

    @Test
    public void fun77() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        System.out.println(format.format(new Date()));
        String a = "asdf";
        System.out.println(a.contains(""));

        int i = 10;
        int i0 = 0;
        System.out.println(i % 10);
        Integer integer = new Integer(0);
        System.out.println(integer);
        String s = integer.toString();
        System.out.println(s);
    }

    @Test
    public void fun777() {
        String a = "10";
        List<String> strings = new ArrayList<>();
        for (int i = 0; i < 20; i++) {
            strings.add(i + "");
        }
        int aa = 0;
        for (String string : strings) {
            if (string.equals(a)) {
                System.out.println();
                break;
            }
            aa++;
            System.out.println(aa);
        }
    }

    @Test //类型互换
    public void fun7777() {
//        Integer a = 1;
//        Short b = 1;
//        System.out.println(b==(short)1);
    double a =1.23;
    int b =3;
        double v = a * b;
        System.out.println(v);

        int c =3612;
        double v1 = c * 0.001;
        System.out.println(v1);
    }

    @Test //枚举测试
    public void funEnum() {
        System.out.println(EnumTest.FRI.toString());
    }

}



// if (Judge.isChinese(e.getMessage().charAt(0))) {
//                return Result.failed(e.getMessage());
//            }forbiddendedicated












