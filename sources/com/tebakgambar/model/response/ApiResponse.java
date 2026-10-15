package com.tebakgambar.model.response;

import b7.c;

/* JADX INFO: loaded from: classes2.dex */
public class ApiResponse<T> {
    public static final int STATUS_ALREADY_REGISTER = 307;
    public static final int STATUS_LINK_FAILED = 207;
    public static final int STATUS_LINK_SUCCESS = 204;
    public static final int STATUS_MUST_REGISTER = 309;

    @c("data")
    public T data;
    public Header header;

    @c("message")
    public String message;

    @c("result")
    public T result;

    @c("status")
    public int status;

    public static class Header {

        @c("messages")
        public String[] messages;

        @c("status_code")
        public int statusCode;
    }
}
