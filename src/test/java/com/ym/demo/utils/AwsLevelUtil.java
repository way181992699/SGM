package com.ym.demo.utils;

//匹配自動站等級 风等级、 雨等级
public class AwsLevelUtil {

    //雨等级 - level： 0-小雨，1-中雨，2-大雨,3-暴雨，4-大暴雨，5-特大暴雨
    //雨类型 - type： R06M(5分钟滑动雨量),R12M(10分钟滑动雨量),R30M(30分钟滑动雨量),R01H(1小时滑动雨量),R02H,R03H,R06H,R12H,R24H,R48H,R72H ...依次类推

    /**
     * 查看自动站的值是否被命中, 数据库的值
     *
     * @param level
     * @param type
     * @param val
     * @return
     */
    public static Boolean getRainLevel(String level, String type, double val) {
        switch (level) {
            case "0":
                switch (type) {
                    case "R30M":
                        if (val >= 0.1 && val <= 2) {
                            return true;
                        } else return false;

                    case "R01H":
                        if (val >= 0.1 && val <= 5) {
                            return true;
                        } else return false;

                    case "R02H":
                        if (val >= 0.1 && val <= 10) {
                            return true;
                        } else return false;

                    case "R03H":
                        if (val >= 0.1 && val <= 10) {
                            return true;
                        } else return false;

                    case "R06H":
                        if (val >= 0.1 && val <= 10) {
                            return true;
                        } else return false;

                    case "R24H":
                        if (val >= 0.1 && val <= 20) {
                            return true;
                        } else return false;

                    case "R72H":
                        if (val >= 0.1 && val <= 30) {
                            return true;
                        } else return false;
                }
            case "1":
                switch (type) {
                    case "R30M":
                        if (val >= 2 && val <= 5) {
                            return true;
                        } else return false;

                    case "R01H":
                        if (val >= 5 && val <= 10) {
                            return true;
                        } else return false;

                    case "R02H":
                        if (val >= 10 && val <= 15) {
                            return true;
                        } else return false;

                    case "R03H":
                        if (val >= 10 && val <= 15) {
                            return true;
                        } else return false;

                    case "R06H":
                        if (val >= 10 && val <= 15) {
                            return true;
                        } else return false;

                    case "R24H":
                        if (val >= 10 && val <= 25) {
                            return true;
                        } else return false;

                    case "R72H":
                        if (val >= 30 && val <= 50) {
                            return true;
                        } else return false;

                }
            case "2":
                switch (type) {
                    case "R30M":
                        if (val >= 5 && val <= 15) {
                            return true;
                        } else return false;

                    case "R01H":
                        if (val >= 10 && val <= 20) {
                            return true;
                        } else return false;

                    case "R02H":
                        if (val >= 10 && val <= 20) {
                            return true;
                        } else return false;

                    case "R03H":
                        if (val >= 15 && val <= 30) {
                            return true;
                        } else return false;

                    case "R06H":
                        if (val >= 15 && val <= 30) {
                            return true;
                        } else return false;

                    case "R24H":
                        if (val >= 25 && val <= 50) {
                            return true;
                        } else return false;

                    case "R72H":
                        if (val >= 50 && val <= 100) {
                            return true;
                        } else return false;

                }
            case "3":
                switch (type) {
                    case "R30M":
                        if (val >= 15 && val <= 30) {
                            return true;
                        } else return false;

                    case "R01H":
                        if (val >= 20 && val <= 40) {
                            return true;
                        } else return false;

                    case "R02H":
                        if (val >= 20 && val <= 40) {
                            return true;
                        } else return false;

                    case "R03H":
                        if (val >= 30 && val <= 50) {
                            return true;
                        } else return false;

                    case "R06H":
                        if (val >= 30 && val <= 70) {
                            return true;
                        } else return false;

                    case "R24H":
                        if (val >= 50 && val <= 100) {
                            return true;
                        } else return false;

                    case "R72H":
                        if (val >= 100 && val <= 175) {
                            return true;
                        } else return false;

                }
            case "4":
                switch (type) {
                    case "R30M":
                        if (val >= 30 && val <= 50) {
                            return true;
                        } else return false;

                    case "R01H":
                        if (val >= 40 && val <= 60) {
                            return true;
                        } else return false;

                    case "R02H":
                        if (val >= 40 && val <= 60) {
                            return true;
                        } else return false;

                    case "R03H":
                        if (val >= 50 && val <= 100) {
                            return true;
                        } else return false;

                    case "R06H":
                        if (val >= 70 && val <= 140) {
                            return true;
                        } else return false;

                    case "R24H":
                        if (val >= 100 && val <= 250) {
                            return true;
                        } else return false;

                    case "R72H":
                        if (val >= 175 && val <= 300) {
                            return true;
                        } else return false;

                }
            case "5":
                switch (type) {
                    case "R30M":
                        if (val >= 50) {
                            return true;
                        } else return false;

                    case "R01H":
                        if (val >= 60) {
                            return true;
                        } else return false;

                    case "R02H":
                        if (val >= 60) {
                            return true;
                        } else return false;

                    case "R03H":
                        if (val >= 100) {
                            return true;
                        } else return false;

                    case "R06H":
                        if (val >= 140) {
                            return true;
                        } else return false;

                    case "R24H":
                        if (val >= 250) {
                            return true;
                        } else return false;

                    case "R72H":
                        if (val >= 300) {
                            return true;
                        } else return false;

                }
        }
        return null;
    }
    
}
