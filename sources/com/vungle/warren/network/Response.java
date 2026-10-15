package com.vungle.warren.network;

import ja.a0;
import ja.c0;
import ja.d0;
import ja.s;
import ja.y;

/* JADX INFO: loaded from: classes2.dex */
public final class Response<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f28221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f28222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d0 f28223c;

    private Response(c0 c0Var, T t10, d0 d0Var) {
        this.f28221a = c0Var;
        this.f28222b = t10;
        this.f28223c = d0Var;
    }

    public static <T> Response<T> error(int i10, d0 d0Var) {
        if (i10 >= 400) {
            return error(d0Var, new c0.a().g(i10).k("Response.error()").n(y.HTTP_1_1).p(new a0.a().j("http://localhost/").b()).c());
        }
        throw new IllegalArgumentException("code < 400: " + i10);
    }

    public static <T> Response<T> success(T t10) {
        return success(t10, new c0.a().g(200).k("OK").n(y.HTTP_1_1).p(new a0.a().j("http://localhost/").b()).c());
    }

    public T body() {
        return this.f28222b;
    }

    public int code() {
        return this.f28221a.d();
    }

    public d0 errorBody() {
        return this.f28223c;
    }

    public s headers() {
        return this.f28221a.h();
    }

    public boolean isSuccessful() {
        return this.f28221a.i();
    }

    public String message() {
        return this.f28221a.j();
    }

    public c0 raw() {
        return this.f28221a;
    }

    public String toString() {
        return this.f28221a.toString();
    }

    public static <T> Response<T> success(T t10, c0 c0Var) {
        if (c0Var.i()) {
            return new Response<>(c0Var, t10, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    public static <T> Response<T> error(d0 d0Var, c0 c0Var) {
        if (!c0Var.i()) {
            return new Response<>(c0Var, null, d0Var);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }
}
