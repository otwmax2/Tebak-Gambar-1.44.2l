package com.vungle.warren.network;

/* JADX INFO: loaded from: classes2.dex */
public class HttpException extends RuntimeException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f28208o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f28209p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient Response<?> f28210q;

    public HttpException(Response<?> response) {
        super(a(response));
        this.f28208o = response.code();
        this.f28209p = response.message();
        this.f28210q = response;
    }

    private static String a(Response<?> response) {
        return "HTTP " + response.code() + " " + response.message();
    }

    public int code() {
        return this.f28208o;
    }

    public String message() {
        return this.f28209p;
    }

    public Response<?> response() {
        return this.f28210q;
    }
}
