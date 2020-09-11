//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.ym.demo.utils;

public enum ExceptionCode {
    SUCCESS(10000),
    CLIENT_NO_AUTHORIZATION(10401),
    CLIENT_INVALID_AUTHORIZATION(10402),
    CLIENT_FORBIDDEN_ID(10403),
    CLIENT_URL_NOT_FOUND(10404),
    CLIENT_INVALID_ID(10405),
    CLIENT_USER_ALREADY_EXIST(10406),
    CLIENT_PERMITTION_DENY(10407),
    CLIENT_INVALID_PARAM(10408),
    CLIENT_INVALID_METHOD(10409),
    SERVER_UNKNOWN(10500),
    SERVER_LOGIN_FAILED(10501),
    SERVER_INTERNAL_FAILED(10502);

    private int code;

    private ExceptionCode(int code) {
        this.code = code;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
