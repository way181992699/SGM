//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.ym.demo.utils;



/** @deprecated */
@Deprecated
public class Result<T> {
    private static final int SUCCESS = 10000;
    private boolean success;
    private long time = System.currentTimeMillis();
    private String reason;
    private int code;
    private T data;

    public Result() {
    }

    private Result(String reason, int code, T data) {
        this.reason = reason;
        this.code = code;
        this.data = data;
        this.success = false;
    }

    private Result(boolean success, T data, String reason, int code) {
        this.success = success;
        this.data = data;
        this.reason = reason;
        this.code = code;
    }

    public static <T> Result<T> success(T t) {
        return new Result(true, t, "success", 10000);
    }

    /** @deprecated */
    @Deprecated
    public static <T> Result<T> failed(String reason) {
        return new Result(false, (Object)null, reason, ExceptionCode.SERVER_UNKNOWN.getCode());
    }

    /** @deprecated */
    @Deprecated
    public static <T> Result<T> failed(T t) {
        return new Result(false, t, "", ExceptionCode.SERVER_UNKNOWN.getCode());
    }

    /** @deprecated */
    @Deprecated
    public static Result<Exception> failed(Exception exception) {
        return new Result(false, exception, exception.getMessage(), ExceptionCode.SERVER_UNKNOWN.getCode());
    }

    public static Result<String> failed(BaseException exception, String reason) {
        return new Result(false, reason, exception.getReason(), exception.getCode().getCode());
    }

    public static Result<Object> failed(BaseException exception) {
        return new Result(false, (Object)null, exception.getReason(), exception.getCode().getCode());
    }

    public int getCode() {
        return this.code;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public long getTime() {
        return this.time;
    }

    public T getData() {
        return this.data;
    }

    public String getReason() {
        return this.reason;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public void setTime(long time) {
        this.time = time;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData(T data) {
        this.data = data;
    }
}
