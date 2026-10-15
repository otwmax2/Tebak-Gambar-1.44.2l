package com.android.volley;

/* JADX INFO: loaded from: classes.dex */
public class VolleyError extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final NetworkResponse f5133o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f5134p;

    public VolleyError() {
        this.f5133o = null;
    }

    void a(long j10) {
        this.f5134p = j10;
    }

    public VolleyError(NetworkResponse networkResponse) {
        this.f5133o = networkResponse;
    }

    public VolleyError(String str) {
        super(str);
        this.f5133o = null;
    }

    public VolleyError(Throwable th) {
        super(th);
        this.f5133o = null;
    }
}
