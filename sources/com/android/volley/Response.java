package com.android.volley;

import com.android.volley.Cache;

/* JADX INFO: loaded from: classes.dex */
public class Response<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f5129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Cache.Entry f5130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VolleyError f5131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5132d;

    public interface ErrorListener {
        void c(VolleyError volleyError);
    }

    public interface Listener<T> {
        void b(T t10);
    }

    private Response(T t10, Cache.Entry entry) {
        this.f5132d = false;
        this.f5129a = t10;
        this.f5130b = entry;
        this.f5131c = null;
    }

    public static <T> Response<T> a(VolleyError volleyError) {
        return new Response<>(volleyError);
    }

    public static <T> Response<T> c(T t10, Cache.Entry entry) {
        return new Response<>(t10, entry);
    }

    public boolean b() {
        return this.f5131c == null;
    }

    private Response(VolleyError volleyError) {
        this.f5132d = false;
        this.f5129a = null;
        this.f5130b = null;
        this.f5131c = volleyError;
    }
}
