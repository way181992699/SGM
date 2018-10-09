package com.ym.demo.utils;

public  class JudgeCode {

    public static String getCodeName(String code) {
        /**
         * SZCode lh = new SZCode("5949301", "罗湖区");
         *         SZCode ft = new SZCode("5949302", "福田区");
         *         SZCode ns = new SZCode("5949303", "南山区");
         *         SZCode yt = new SZCode("5949304", "盐田区");
         *         SZCode ba = new SZCode("5949306", "宝安区");
         *         SZCode lg = new SZCode("5949305", "龙岗区");
         *         SZCode ps = new SZCode("5949308", "坪山区");
         *         SZCode lh1 = new SZCode("5949310", "龙华区");
         *         SZCode gm = new SZCode("5949307", "光明新区");
         *         SZCode dp = new SZCode("59493011", "大鹏新区");
         *         SZCode ss = new SZCode("59493012", "深汕区");
         */
        if (code != null && !"".equals(code)) {
            switch (code) {
                case "5949302":
                    return "福田区";
                case "5949303":
                    return "南山区";
                case "5949304":
                    return "盐田区";
                case "5949306":
                    return "宝安区";
                case "5949305":
                    return "龙岗区";
                case "5949308":
                    return "坪山区";
                case "5949310":
                    return "龙华区";
                case "5949307":
                    return "光明新区";
                case "59493011":
                    return "大鹏新区";
                case "59493012":
                    return "深汕区";
            }
        } else {
            return null;
        }
        return null;
    }

}
