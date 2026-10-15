package com.tebakgambar.model.response;

import b7.c;

/* JADX INFO: loaded from: classes2.dex */
public class ApiResponse3<Data> {
    public Data data;
    public Header header;

    public static class Header {

        @c("messages")
        public String[] messages;

        @c("status_code")
        public int statusCode;
    }
}
