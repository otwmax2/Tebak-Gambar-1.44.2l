package com.android.volley;

/* JADX INFO: loaded from: classes.dex */
public interface ResponseDelivery {
    void a(Request<?> request, Response<?> response);

    void b(Request<?> request, Response<?> response, Runnable runnable);

    void c(Request<?> request, VolleyError volleyError);
}
