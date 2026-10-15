package com.android.volley;

/* JADX INFO: loaded from: classes.dex */
public interface RetryPolicy {
    void a(VolleyError volleyError) throws VolleyError;

    int b();

    int c();
}
