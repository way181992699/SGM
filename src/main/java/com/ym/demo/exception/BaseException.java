package com.ym.demo.exception;

public class BaseException extends Exception {

    private ExceptionCode code;
    private String reason;

    public BaseException(ExceptionCode code, String reason) {
        super(reason);
        this.code = code;
        this.reason = reason;
    }

    public ExceptionCode getCode() {
        return code;
    }

    public void setCode(ExceptionCode code) {
        this.code = code;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public enum ExceptionCode {
        PARAMS_INCORRECT(402), SERVICE_UNAVAILABLE(501);
        private int code;

        ExceptionCode(int code) {
            this.code = code;
        }

        public int getCode() {
            return code;
        }

        public void setCode(int code) {
            this.code = code;
        }
    }



}
