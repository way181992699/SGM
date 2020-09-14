package com.ym.demo.test;

import com.ym.demo.enumTest.EnumTest;
import com.ym.demo.enumTest.IConstants;
import com.ym.demo.exception.BaseException;
import com.ym.demo.pojo.GameS;
import com.ym.demo.pojo.TestPojo1;
import com.ym.demo.pojo.User;
import com.ym.demo.utils.IdCardVerification;
import org.junit.Test;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 草稿类(随便测试玩玩)
 */
public class TheMainClass {


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
        System.out.println(EnumTest.MON);
        System.out.println(EnumTest.MON.getName());
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
        double a = 1.23;
        int b = 3;
        double v = a * b;
        System.out.println(v);

        int c = 3612;
        double v1 = c * 0.001;
        System.out.println(v1);
    }

    @Test //枚举测试
    public void funEnum() {
        int a = 111;
        BigDecimal bigDecimal = BigDecimal.valueOf(111);
        System.out.println(bigDecimal);
        System.out.println(EnumTest.MON.toString());
    }

    @Test //doWhile测试
    public void doWhileTest() {

        List<Integer> integerList = new ArrayList<>();
        int i = 0;
        do {

            integerList.add(i);
            i++;

        } while (integerList.size() < 10);
        System.out.println(integerList);
        List<Integer> integerList1 = integerList.subList(1, integerList.size());
        System.out.println(integerList1);
    }

    @Test //i++ i -- 测试
    public void iTest() {

        int i = -1;
        for (int i1 = 0; i1 < 10; i1++) {
            System.out.println(50 - i);
            i--;
        }
    }

    @Test //  测试绝对值
    public void absest() {

        int i = -1;
        double i1 = -1.16546541;
        System.out.println(Math.abs(i));
        System.out.println(Math.abs(i1));

        TestPojo1 testPojo1 = new TestPojo1();
        System.out.println(testPojo1);

    }


}


// if (Judge.isChinese(e.getMessage().charAt(0))) {
//                return Result.failed(e.getMessage());
//            }forbiddendedicated












