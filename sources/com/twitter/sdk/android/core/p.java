package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.services.AccountService;
import com.twitter.sdk.android.core.services.MediaService;
import com.twitter.sdk.android.core.services.StatusesService;
import java.util.concurrent.ConcurrentHashMap;
import wa.m;

/* JADX INFO: compiled from: TwitterApiClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ConcurrentHashMap<Class, Object> f27494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final wa.m f27495b;

    public p() {
        this(d9.e.d(x.h().f()), new c9.j());
    }

    private ConcurrentHashMap a() {
        return new ConcurrentHashMap();
    }

    private com.google.gson.f b() {
        return new com.google.gson.g().d(new f9.l()).d(new f9.m()).c(f9.c.class, new f9.d()).b();
    }

    private wa.m c(ja.x xVar, c9.j jVar) {
        return new m.b().f(xVar).c(jVar.c()).a(xa.a.e(b())).d();
    }

    public AccountService d() {
        return (AccountService) f(AccountService.class);
    }

    public MediaService e() {
        return (MediaService) f(MediaService.class);
    }

    protected <T> T f(Class<T> cls) {
        if (!this.f27494a.contains(cls)) {
            this.f27494a.putIfAbsent(cls, this.f27495b.d(cls));
        }
        return (T) this.f27494a.get(cls);
    }

    public StatusesService g() {
        return (StatusesService) f(StatusesService.class);
    }

    public p(a0 a0Var) {
        this(d9.e.e(a0Var, x.h().e()), new c9.j());
    }

    p(ja.x xVar, c9.j jVar) {
        this.f27494a = a();
        this.f27495b = c(xVar, jVar);
    }
}
