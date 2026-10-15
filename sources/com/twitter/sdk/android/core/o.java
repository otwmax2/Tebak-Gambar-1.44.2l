package com.twitter.sdk.android.core;

import android.annotation.SuppressLint;
import android.content.Context;
import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Twitter.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final h f27486g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    static volatile o f27487h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f27488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f27489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final r f27490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c9.a f27491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h f27492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f27493f;

    private o(u uVar) {
        Context context = uVar.f27504a;
        this.f27488a = context;
        this.f27491d = new c9.a(context);
        r rVar = uVar.f27506c;
        if (rVar == null) {
            this.f27490c = new r(c9.b.c(context, "com.twitter.sdk.android.CONSUMER_KEY", BuildConfig.FLAVOR), c9.b.c(context, "com.twitter.sdk.android.CONSUMER_SECRET", BuildConfig.FLAVOR));
        } else {
            this.f27490c = rVar;
        }
        ExecutorService executorService = uVar.f27507d;
        if (executorService == null) {
            this.f27489b = c9.e.e("twitter-worker");
        } else {
            this.f27489b = executorService;
        }
        h hVar = uVar.f27505b;
        if (hVar == null) {
            this.f27492e = f27486g;
        } else {
            this.f27492e = hVar;
        }
        Boolean bool = uVar.f27508e;
        if (bool == null) {
            this.f27493f = false;
        } else {
            this.f27493f = bool.booleanValue();
        }
    }

    static void a() {
        if (f27487h == null) {
            throw new IllegalStateException("Must initialize Twitter before using getInstance()");
        }
    }

    static synchronized o b(u uVar) {
        if (f27487h != null) {
            return f27487h;
        }
        f27487h = new o(uVar);
        return f27487h;
    }

    public static o f() {
        a();
        return f27487h;
    }

    public static h g() {
        return f27487h == null ? f27486g : f27487h.f27492e;
    }

    public static void i(u uVar) {
        b(uVar);
    }

    public c9.a c() {
        return this.f27491d;
    }

    public Context d(String str) {
        return new v(this.f27488a, str, ".TwitterKit" + File.separator + str);
    }

    public ExecutorService e() {
        return this.f27489b;
    }

    public r h() {
        return this.f27490c;
    }
}
