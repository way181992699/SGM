package com.ym.demo.pojo;

public class HttpStatus401Exception extends Throwable {
    private String errorMessage;
    private String errorStatus;
    private String errorCause;
    private String helpMessage;
    public HttpStatus401Exception(String errorMessage, String errorStatus, String errorCause, String helpMessage) {
        this.errorMessage = errorMessage;
        this.errorStatus=errorStatus;
        this.errorCause=errorCause;
        this.helpMessage=helpMessage;
    }
}
