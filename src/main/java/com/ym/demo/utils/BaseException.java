//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.ym.demo.utils;

public class BaseException extends Exception {
    private final ExceptionCode code;
    private final String reason;

    /** @deprecated */
    @Deprecated
    public BaseException(String reason) {
        super(reason);
        this.code = ExceptionCode.SERVER_UNKNOWN;
        this.reason = reason;
    }

    /** @deprecated */
    @Deprecated
    public BaseException(ExceptionCode code, String reason) {
        super(reason);
        this.code = code;
        this.reason = reason;
    }

    public BaseException(ExceptionCode code) {
        super(code.name());
        this.code = code;
        this.reason = code.name();
    }

    public ExceptionCode getCode() {
        return this.code;
    }

    public String getReason() {
        return this.reason;
    }
}
